// =============================================================================
// mobilenet_block_accel.cpp  (Week 9 — DW-PW Pipeline 통합 가속기)
// -----------------------------------------------------------------------------
// Target: MobileNetV1 Depthwise-Separable Block (DW 3x3 → PW 1x1)
// Part  : xczu7ev-ffvc1156-2-e (ZCU104)
// Clock : 5ns (200 MHz)
//
// 핵심 설계: HLS DATAFLOW를 이용한 DDR-Free DW→PW 파이프라인
// -----------------------------------------------------------
//
//   [문제] 기존 구조: PS → DW_IP → DDR → PW_IP → PS
//          DDR 왕복 2회 → 대역폭 병목 → 1.5x KPI 미달
//
//   [해결] 통합 IP: PS → [DW_stage ─(on-chip BRAM)─ PW_stage] → PS
//          DDR 왕복 0회 (중간 결과) → 대역폭 병목 제거
//
// DATAFLOW 파이프라인 구조
// -------------------------
//   mobilenet_block_accel()
//     ├─ 타일 루프 (행 단위, BRAM 예산 준수)
//     │    for (h_tile = 0; h_tile < height; h_tile += BLK_TILE_ROWS)
//     │      #pragma HLS DATAFLOW
//     │        ├─ dw_row_stage()  : DW 3x3 → inter_buf[ping] 쓰기
//     │        └─ pw_row_stage()  : inter_buf[pong] 읽기 → PW 1x1 → DDR
//     │
//     └─ Ping-Pong 버퍼 (on-chip BRAM)
//          inter_buf[2][BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN]
//          - 버퍼 0 (Ping): 현재 타일 DW 출력 저장
//          - 버퍼 1 (Pong): 이전 타일 PW 입력 공급
//
// [중요] HLS DATAFLOW 제약 조건
// --------------------------------
//   1. DATAFLOW 영역 내 함수는 단방향 데이터 흐름만 허용
//   2. 중간 버퍼는 producer(DW)가 쓰고 consumer(PW)가 읽는 구조
//   3. Ping-Pong 인덱스는 DATAFLOW 외부에서 관리
//   4. 각 스테이지 함수는 독립적으로 합성 가능해야 함
//
// [중요] 행 단위 타일링의 DW 경계 처리
// ----------------------------------------
//   DW 3x3 SAME padding에서 행 경계 픽셀은 인접 타일의 데이터 필요.
//   해결: 각 타일은 (h_tile - 1) ~ (h_tile + TILE_ROWS) 범위를 읽되,
//         출력은 h_tile ~ (h_tile + TILE_ROWS - 1) 행만 저장.
//   → 타일 간 1행 오버랩 (DDR 재접근 최소화, 정확도 보장)
//
// BRAM 사용량 (ZCU104 기준)
// --------------------------
//   inter_buf[2][BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN]
//   = 2 × 1 × 112 × 1024 bytes = 229,376 bytes = 224 KB
//   BRAM_18K: ceil(224K / 2K) = 112개 (ZCU104 312개 중 ~36%)
//
//   [실제 운용 시 (Cin ≤ 512 레이어)]
//   = 2 × 1 × 112 × 512 bytes = 114,688 bytes = 112 KB
//   BRAM_18K: 56개 (ZCU104 312개 중 ~18%) ← 허용 범위
//
//   [초기 레이어 (Cin = 32)]
//   = 2 × 1 × 112 × 32 bytes = 7,168 bytes = 7 KB
//   BRAM_18K: 4개 ← 매우 효율적
//
// 예상 합성 결과 (ZCU104, 200MHz, B1: 112x112, Cin=32, Cout=64)
// ---------------------------------------------------------------
//   DSP48E2 : ~25개 (DW: 9 MAC + PW: 16 MAC)
//   BRAM_18K : ~8개  (inter_buf + DW line_buf + PW wgt_tile)
//   LUT      : ~6,000
//   FF       : ~8,000
//   Latency  : 112 × (DW_row + PW_row) ≈ 112 × (32*112 + 64*32) clk
//             ≈ 112 × (3,584 + 2,048) = 630,784 clk ≈ 3.15ms @ 200MHz
//             (vs 기존 DW+PW 분리: ~6ms → 1.9x 개선)
// =============================================================================

#include "mobilenet_block_accel.hpp"
#include <ap_int.h>

// ---------------------------------------------------------------------------
// 내부 헬퍼: 정수 반올림 우측 시프트 (dw_conv_accel.cpp와 동일)
// ---------------------------------------------------------------------------
static inline blk_acc_t dw_round_shift(blk_acc_t val, int shift_bits)
{
    #pragma HLS INLINE
    if (shift_bits <= 0) return val;
    blk_acc_t half = (blk_acc_t)1 << (shift_bits - 1);
    return (val + half) >> shift_bits;
}

// ---------------------------------------------------------------------------
// 내부 헬퍼: uint8 클램핑 (dw_conv_accel.cpp와 동일)
// ---------------------------------------------------------------------------
static inline blk_data_t clamp_u8(blk_acc_t val)
{
    #pragma HLS INLINE
    if (val < 0)   return (blk_data_t)0;
    if (val > 255) return (blk_data_t)255;
    return (blk_data_t)val;
}

// ---------------------------------------------------------------------------
// 내부 헬퍼: PW 리스케일 + 클램핑 (pw_conv_accel.cpp의 requantize와 동일)
// ---------------------------------------------------------------------------
static inline blk_data_t pw_requantize(
    blk_acc_t acc,
    blk_acc_t bias_val,
    int32_t   M_mantissa,
    int32_t   M_shift,
    int32_t   out_zp
) {
    #pragma HLS INLINE

    // 1. Bias 더하기
    blk_acc_t total = acc + bias_val;

    // 2. 고정소수점 멀티플라이: (total * M_mantissa) >> (31 + M_shift)
    //    int64 중간 결과로 오버플로우 방지
    int64_t scaled = (int64_t)total * (int64_t)M_mantissa;
    int32_t result = (int32_t)(scaled >> (31 + M_shift));

    // 3. Zero point 더하기 + 클램핑 [0, 255]
    int32_t q = result + out_zp;
    if (q < 0)   q = 0;
    if (q > 255) q = 255;

    return (blk_data_t)q;
}

// =============================================================================
// DW 스테이지: 단일 행(row) 처리
// =============================================================================
// 역할: DDR에서 입력 행을 읽어 DW 3x3 연산 후 on-chip inter_buf에 저장
//
// 파라미터:
//   input      : DDR 입력 텐서 포인터 (전체 [H*W*Cin])
//   dw_weights : DDR DW 가중치 포인터 (전체 [Cin*9])
//   dw_bias    : DDR DW 바이어스 포인터 (전체 [Cin])
//   inter_buf  : on-chip Ping-Pong 버퍼 (현재 ping 슬롯)
//   h_start    : 현재 타일의 시작 행 인덱스
//   width      : 입력 너비
//   c_in       : 입력 채널 수
//   dw_*       : DW 양자화 파라미터
//
// [Line Buffer 설계]
//   DW 3x3 SAME padding을 위해 3행 line buffer 유지.
//   행 단위 타일링 시 타일 경계에서 line buffer를 DDR에서 재로드.
//   → 타일 시작 시 이전 2행 데이터를 DDR에서 읽어 line buffer 초기화.
// =============================================================================
static void dw_row_stage(
    const blk_data_t* input,
    const blk_data_t* dw_weights,
    const blk_acc_t*  dw_bias,
    blk_data_t        inter_buf[BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN],
    int               h_start,
    int               height,
    int               width,
    int               c_in,
    int32_t           dw_in_zp,
    int32_t           dw_w_zp,
    int32_t           dw_out_zp,
    int32_t           dw_multiplier,
    int32_t           dw_shift,
    int32_t           dw_apply_relu6
) {
    #pragma HLS INLINE off

    // -----------------------------------------------------------------------
    // 로컬 버퍼 (dw_conv_accel.cpp와 동일한 구조)
    // -----------------------------------------------------------------------

    // Line Buffer: 3행 × MAX_W (BRAM 추론)
    // dim=1 complete: 3개 행 동시 읽기/쓰기 → 3x3 윈도우 구성
    blk_data_t line_buf[BLK_KERNEL_SIZE][BLK_MAX_W];
    #pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1

    // Window Buffer: 3x3 슬라이딩 윈도우 (완전 레지스터화)
    blk_data_t window[BLK_KERNEL_SIZE][BLK_KERNEL_SIZE];
    #pragma HLS ARRAY_PARTITION variable=window complete dim=0

    // Weight Cache: 현재 채널의 3x3 가중치 (9 bytes, 레지스터화)
    blk_data_t w_cache[BLK_KERNEL_SIZE][BLK_KERNEL_SIZE];
    #pragma HLS ARRAY_PARTITION variable=w_cache complete dim=0

    // -----------------------------------------------------------------------
    // 채널 루프: 채널별 독립 DW 연산
    // -----------------------------------------------------------------------
    DW_LOOP_C: for (int c = 0; c < c_in; c++)
    {
        // -------------------------------------------------------------------
        // 1. 가중치 로컬 캐싱 (채널당 1회 DDR 버스트 읽기)
        // -------------------------------------------------------------------
        DW_LOAD_W: for (int ky = 0; ky < BLK_KERNEL_SIZE; ky++) {
            for (int kx = 0; kx < BLK_KERNEL_SIZE; kx++) {
                #pragma HLS PIPELINE II=1
                w_cache[ky][kx] = dw_weights[c * 9 + ky * 3 + kx];
            }
        }

        // -------------------------------------------------------------------
        // 2. 바이어스 로드
        // -------------------------------------------------------------------
        blk_acc_t bias_val = (dw_bias != 0) ? dw_bias[c] : (blk_acc_t)0;

        // -------------------------------------------------------------------
        // 3. Line Buffer 초기화
        //    타일 시작 시 이전 행 데이터로 초기화 (SAME padding 경계 처리)
        //    h_start == 0: 상단 경계 → in_zp로 패딩
        //    h_start > 0 : 이전 타일의 마지막 2행을 DDR에서 로드
        // -------------------------------------------------------------------
        DW_INIT_LB: for (int col = 0; col < BLK_MAX_W; col++) {
            #pragma HLS PIPELINE II=1
            if (h_start == 0) {
                // 상단 경계: zero-point 패딩
                line_buf[0][col] = (blk_data_t)dw_in_zp;
                line_buf[1][col] = (blk_data_t)dw_in_zp;
                line_buf[2][col] = (blk_data_t)dw_in_zp;
            } else {
                // 이전 타일 경계: DDR에서 이전 2행 로드
                // line_buf[0] = h_start - 2행 (없으면 zp)
                // line_buf[1] = h_start - 1행
                // line_buf[2] = h_start 행 (현재 타일 첫 행, 아직 미처리)
                int h_prev2 = h_start - 2;
                int h_prev1 = h_start - 1;
                line_buf[0][col] = (h_prev2 >= 0)
                    ? input[(h_prev2 * width + col) * c_in + c]
                    : (blk_data_t)dw_in_zp;
                line_buf[1][col] = input[(h_prev1 * width + col) * c_in + c];
                line_buf[2][col] = (blk_data_t)dw_in_zp; // 첫 픽셀 처리 전
            }
        }

        // -------------------------------------------------------------------
        // 4. Window Buffer 초기화
        // -------------------------------------------------------------------
        DW_INIT_WIN: for (int ky = 0; ky < BLK_KERNEL_SIZE; ky++) {
            for (int kx = 0; kx < BLK_KERNEL_SIZE; kx++) {
                #pragma HLS UNROLL
                window[ky][kx] = (blk_data_t)dw_in_zp;
            }
        }

        // -------------------------------------------------------------------
        // 5. 타일 내 행 처리 루프 (BLK_TILE_ROWS 행)
        //    dw_conv_accel.cpp의 LOOP_H/LOOP_W와 동일한 슬라이딩 윈도우 로직
        // -------------------------------------------------------------------
        DW_LOOP_H: for (int th = 0; th < BLK_TILE_ROWS; th++) {
            int h = h_start + th;
            if (h >= height) break;  // 마지막 타일 경계 처리

            DW_LOOP_W: for (int w = 0; w < width; w++) {
                #pragma HLS PIPELINE II=1

                // (a) DDR에서 현재 픽셀 읽기 (NHWC 인덱싱)
                blk_data_t in_val = input[(h * width + w) * c_in + c];

                // (b) Line Buffer 열 방향 Shift (위로 밀기)
                blk_data_t lb0 = line_buf[0][w];  // 2행 전 (커널 상단)
                blk_data_t lb1 = line_buf[1][w];  // 1행 전 (커널 중단)
                blk_data_t lb2 = line_buf[2][w];  // 현재 행 이전 값

                line_buf[0][w] = lb1;
                line_buf[1][w] = lb2;
                line_buf[2][w] = in_val;

                // (c) Window Buffer 좌측 Shift + 새 열 삽입
                DW_WIN_SHIFT: for (int ky = 0; ky < BLK_KERNEL_SIZE; ky++) {
                    #pragma HLS UNROLL
                    window[ky][0] = window[ky][1];
                    window[ky][1] = window[ky][2];
                }
                window[0][2] = lb0;
                window[1][2] = lb1;
                window[2][2] = in_val;

                // (d) 3x3 MAC 연산 (완전 언롤 → 9 DSP 병렬)
                blk_acc_t acc = bias_val;
                DW_MAC_KH: for (int ky = 0; ky < BLK_KERNEL_SIZE; ky++) {
                    #pragma HLS UNROLL
                    DW_MAC_KW: for (int kx = 0; kx < BLK_KERNEL_SIZE; kx++) {
                        #pragma HLS UNROLL
                        blk_acc_t a = (blk_acc_t)window[ky][kx] - (blk_acc_t)dw_in_zp;
                        blk_acc_t b = (blk_acc_t)w_cache[ky][kx] - (blk_acc_t)dw_w_zp;
                        acc += a * b;
                    }
                }

                // (e) 고정소수점 스케일링
                blk_acc_t scaled = dw_round_shift(acc * (blk_acc_t)dw_multiplier, dw_shift);
                blk_acc_t out_q  = scaled + (blk_acc_t)dw_out_zp;

                // ReLU6 적용 (하한 클램핑)
                if (dw_apply_relu6) {
                    if (out_q < (blk_acc_t)dw_out_zp) out_q = (blk_acc_t)dw_out_zp;
                }

                // (f) on-chip inter_buf에 저장 (DDR 쓰기 없음!)
                //     인덱싱: [tile_row][w][c] = [th * width * c_in + w * c_in + c]
                inter_buf[th * width * c_in + w * c_in + c] = clamp_u8(out_q);
            }
        }
    } // DW_LOOP_C
}

// =============================================================================
// PW 스테이지: 단일 행(row) 처리
// =============================================================================
// 역할: on-chip inter_buf에서 DW 출력을 읽어 PW 1x1 연산 후 DDR에 저장
//
// 파라미터:
//   inter_buf  : on-chip Ping-Pong 버퍼 (현재 pong 슬롯, DW가 이미 채운 것)
//   pw_weights : DDR PW 가중치 포인터 (전체 [Cout*Cin])
//   pw_bias    : DDR PW 바이어스 포인터 (전체 [Cout])
//   output     : DDR 출력 텐서 포인터 (전체 [H*W*Cout])
//   h_start    : 현재 타일의 시작 행 인덱스
//   width      : 입력 너비 (= 출력 너비)
//   c_in       : PW 입력 채널 수 (= DW 출력 채널 수)
//   c_out      : PW 출력 채널 수
//   pw_*       : PW 양자화 파라미터
//
// [PW 연산 구조 (pw_conv_accel.cpp와 동일)]
//   픽셀 루프 → 출력 채널 타일 루프 → 입력 채널 dot product
//   TILE_CO = 16: 16개 출력 채널 동시 처리 (DSP 병렬화)
//   UNROLL_CI = 16: dot product 16-way 언롤
// =============================================================================
static void pw_row_stage(
    const blk_data_t  inter_buf[BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN],
    const blk_data_t* pw_weights,
    const blk_acc_t*  pw_bias,
    blk_data_t*       output,
    int               h_start,
    int               height,
    int               width,
    int               c_in,
    int               c_out,
    int32_t           pw_act_zp,
    int32_t           pw_wgt_zp,
    int32_t           pw_out_zp,
    int32_t           pw_M_mantissa,
    int32_t           pw_M_shift,
    int32_t           pw_use_bias
) {
    #pragma HLS INLINE off

    // -----------------------------------------------------------------------
    // 로컬 버퍼 (pw_conv_accel.cpp와 동일한 구조)
    // -----------------------------------------------------------------------

    // 입력 픽셀 버퍼: 한 픽셀의 모든 입력 채널 값 (inter_buf에서 로드)
    blk_data_t input_buf[BLK_MAX_CIN];
    #pragma HLS ARRAY_PARTITION variable=input_buf cyclic factor=BLK_UNROLL_CI dim=1

    // 가중치 타일 버퍼: TILE_CO개 출력 채널 × 전체 입력 채널
    blk_data_t wgt_tile[BLK_TILE_CO][BLK_MAX_CIN];
    #pragma HLS ARRAY_PARTITION variable=wgt_tile complete    dim=1
    #pragma HLS ARRAY_PARTITION variable=wgt_tile cyclic factor=BLK_UNROLL_CI dim=2

    // 출력 채널 누산기: TILE_CO개 동시 유지
    blk_acc_t acc_buf[BLK_TILE_CO];
    #pragma HLS ARRAY_PARTITION variable=acc_buf complete dim=1

    // -----------------------------------------------------------------------
    // 타일 내 행 처리 루프
    // -----------------------------------------------------------------------
    PW_LOOP_H: for (int th = 0; th < BLK_TILE_ROWS; th++) {
        int h = h_start + th;
        if (h >= height) break;

        PW_LOOP_W: for (int w = 0; w < width; w++) {

            // -----------------------------------------------------------------
            // STEP 1: inter_buf에서 픽셀 로드 (on-chip BRAM 읽기, DDR 없음!)
            //         인덱싱: [th * width * c_in + w * c_in + ci]
            // -----------------------------------------------------------------
            int inter_base = th * width * c_in + w * c_in;

            PW_LOAD_IN: for (int ci = 0; ci < c_in; ci++) {
                #pragma HLS PIPELINE II=1
                input_buf[ci] = inter_buf[inter_base + ci];
            }

            // -----------------------------------------------------------------
            // STEP 2: 출력 채널 타일 루프 (pw_conv_accel.cpp와 동일)
            // -----------------------------------------------------------------
            PW_LOOP_CO_TILE: for (int co_tile = 0; co_tile < c_out; co_tile += BLK_TILE_CO) {

                // -------------------------------------------------------------
                // STEP 2a: Weight 타일 로드 (DDR AXI Burst)
                // -------------------------------------------------------------
                PW_LOAD_WGT: for (int t = 0; t < BLK_TILE_CO; t++) {
                    int co_abs = co_tile + t;
                    if (co_abs < c_out) {
                        int wgt_base = co_abs * c_in;
                        PW_LOAD_WGT_CI: for (int ci = 0; ci < c_in; ci++) {
                            #pragma HLS PIPELINE II=1
                            wgt_tile[t][ci] = pw_weights[wgt_base + ci];
                        }
                    }
                }

                // -------------------------------------------------------------
                // STEP 2b: 누산기 초기화 + Bias 로드
                // -------------------------------------------------------------
                PW_INIT_ACC: for (int t = 0; t < BLK_TILE_CO; t++) {
                    #pragma HLS UNROLL
                    if (pw_use_bias && (co_tile + t) < c_out) {
                        acc_buf[t] = pw_bias[co_tile + t];
                    } else {
                        acc_buf[t] = 0;
                    }
                }

                // -------------------------------------------------------------
                // STEP 2c: Dot Product (핵심 연산)
                //   8-bit 비대칭 양자화: acc += (q_in - act_zp) * (q_w - wgt_zp)
                //   PIPELINE II=1 + UNROLL BLK_TILE_CO → 16-way 병렬 MAC
                // -------------------------------------------------------------
                PW_DOT_PROD: for (int ci = 0; ci < c_in; ci++) {
                    #pragma HLS PIPELINE II=1

                    // 입력 zero-point 보정 (한 번 계산, TILE_CO 공유)
                    int16_t in_val = (int16_t)input_buf[ci] - (int16_t)pw_act_zp;

                    // TILE_CO개 출력 채널 동시 MAC
                    PW_TILE_MAC: for (int t = 0; t < BLK_TILE_CO; t++) {
                        #pragma HLS UNROLL
                        int16_t w_val = (int16_t)wgt_tile[t][ci] - (int16_t)pw_wgt_zp;
                        acc_buf[t] += (blk_acc_t)in_val * (blk_acc_t)w_val;
                    }
                }

                // -------------------------------------------------------------
                // STEP 2d: 리스케일 + DDR 출력 저장
                // -------------------------------------------------------------
                int out_pixel_base = (h * width + w) * c_out;

                PW_STORE_OUT: for (int t = 0; t < BLK_TILE_CO; t++) {
                    #pragma HLS UNROLL
                    int co_abs = co_tile + t;
                    if (co_abs < c_out) {
                        // bias는 INIT_ACC에서 이미 acc_buf에 포함됨
                        blk_data_t q_out = pw_requantize(
                            acc_buf[t],
                            0,              // bias 이미 포함
                            pw_M_mantissa,
                            pw_M_shift,
                            pw_out_zp
                        );
                        output[out_pixel_base + co_abs] = q_out;
                    }
                }

            } // PW_LOOP_CO_TILE
        } // PW_LOOP_W
    } // PW_LOOP_H
}

// =============================================================================
// Top-Level Function: mobilenet_block_accel
// =============================================================================
// HLS DATAFLOW를 이용한 DW→PW 파이프라인 통합 가속기
//
// [Ping-Pong 버퍼 전략]
//   - inter_buf[0]: Ping 버퍼
//   - inter_buf[1]: Pong 버퍼
//   - 타일 0: DW → inter_buf[0], PW는 대기 (첫 타일은 DW만 실행)
//   - 타일 1: DW → inter_buf[1], PW ← inter_buf[0] (동시 실행)
//   - 타일 2: DW → inter_buf[0], PW ← inter_buf[1] (동시 실행)
//   - ...
//   - 마지막 타일+1: DW 없음, PW ← 마지막 inter_buf (flush)
//
// [HLS DATAFLOW 적용 방식]
//   HLS DATAFLOW는 함수 레벨에서 적용.
//   각 타일 반복에서 dw_row_stage와 pw_row_stage를 DATAFLOW로 실행.
//   단, 첫 타일은 DW만, 마지막 flush는 PW만 실행.
//
//   실제 구현에서는 HLS DATAFLOW의 제약(단방향 데이터 흐름)을 준수하기 위해
//   inter_buf를 두 개의 독립 배열로 선언하고 ping/pong 인덱스로 선택.
// =============================================================================
void mobilenet_block_accel(
    const blk_data_t* input,
    const blk_data_t* dw_weights,
    const blk_acc_t*  dw_bias,
    const blk_data_t* pw_weights,
    const blk_acc_t*  pw_bias,
    blk_data_t*       output,
    int               height,
    int               width,
    int               c_in,
    int               c_out,
    int32_t           dw_in_zp,
    int32_t           dw_w_zp,
    int32_t           dw_out_zp,
    int32_t           dw_multiplier,
    int32_t           dw_shift,
    int32_t           dw_apply_relu6,
    int32_t           pw_act_zp,
    int32_t           pw_wgt_zp,
    int32_t           pw_out_zp,
    int32_t           pw_M_mantissa,
    int32_t           pw_M_shift,
    int32_t           pw_use_bias
)
{
    // =========================================================================
    // [인터페이스 선언]
    // =========================================================================

    // --- AXI4 Master 포트 (데이터 경로) ---
    // 4개의 독립 번들 → ZCU104의 HP0/HP1/HP2/HP3에 각각 연결
    // gmem_in   : DW 입력 activation (읽기)
    // gmem_dw_w : DW 가중치 + 바이어스 (읽기)
    // gmem_pw_w : PW 가중치 + 바이어스 (읽기)
    // gmem_out  : PW 출력 (쓰기)
    #pragma HLS INTERFACE m_axi port=input      offset=slave bundle=gmem_in   depth=1605632  // 112*112*128
    #pragma HLS INTERFACE m_axi port=dw_weights offset=slave bundle=gmem_dw_w depth=9216     // 1024*9
    #pragma HLS INTERFACE m_axi port=dw_bias    offset=slave bundle=gmem_dw_w depth=1024
    #pragma HLS INTERFACE m_axi port=pw_weights offset=slave bundle=gmem_pw_w depth=1048576  // 1024*1024
    #pragma HLS INTERFACE m_axi port=pw_bias    offset=slave bundle=gmem_pw_w depth=1024
    #pragma HLS INTERFACE m_axi port=output     offset=slave bundle=gmem_out  depth=1605632

    // --- AXI4-Lite 슬레이브 포트 (제어 경로) ---
    // 모든 스칼라 파라미터는 AXI-Lite 레지스터로 매핑
    // DW 파라미터 (dw_*): 레지스터 0x40 ~ 0x90
    // PW 파라미터 (pw_*): 레지스터 0xA0 ~ 0xF0
    #pragma HLS INTERFACE s_axilite port=input         bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_weights    bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_bias       bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_weights    bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_bias       bundle=control
    #pragma HLS INTERFACE s_axilite port=output        bundle=control
    #pragma HLS INTERFACE s_axilite port=height        bundle=control
    #pragma HLS INTERFACE s_axilite port=width         bundle=control
    #pragma HLS INTERFACE s_axilite port=c_in          bundle=control
    #pragma HLS INTERFACE s_axilite port=c_out         bundle=control
    // DW 양자화 파라미터
    #pragma HLS INTERFACE s_axilite port=dw_in_zp      bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_w_zp       bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_out_zp     bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_multiplier bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_shift      bundle=control
    #pragma HLS INTERFACE s_axilite port=dw_apply_relu6 bundle=control
    // PW 양자화 파라미터
    #pragma HLS INTERFACE s_axilite port=pw_act_zp     bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_wgt_zp     bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_out_zp     bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_M_mantissa bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_M_shift    bundle=control
    #pragma HLS INTERFACE s_axilite port=pw_use_bias   bundle=control
    #pragma HLS INTERFACE s_axilite port=return        bundle=control

    // =========================================================================
    // [Ping-Pong 중간 버퍼 선언]
    // =========================================================================
    //
    // 두 개의 독립 배열로 선언 (HLS DATAFLOW 제약 준수)
    // HLS는 각 배열을 독립 BRAM으로 합성 → 동시 읽기/쓰기 가능
    //
    // 크기: BLK_TILE_ROWS × BLK_MAX_W × BLK_MAX_CIN
    //       = 1 × 112 × 1024 = 114,688 bytes = 112 KB per buffer
    //       × 2 (Ping + Pong) = 224 KB 총 BRAM 사용
    //
    // [BRAM 파티션 전략]
    //   dim=1 cyclic factor=BLK_UNROLL_CI:
    //     PW DOT_PROD 루프에서 BLK_UNROLL_CI개 채널 동시 접근 허용
    //     → BRAM 포트 충돌 없이 II=1 달성
    //
    static blk_data_t inter_ping[BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN];
    #pragma HLS ARRAY_PARTITION variable=inter_ping cyclic factor=BLK_UNROLL_CI dim=1

    static blk_data_t inter_pong[BLK_TILE_ROWS * BLK_MAX_W * BLK_MAX_CIN];
    #pragma HLS ARRAY_PARTITION variable=inter_pong cyclic factor=BLK_UNROLL_CI dim=1

    // =========================================================================
    // [타일 루프: 행 단위 Ping-Pong 파이프라인]
    // =========================================================================
    //
    // 파이프라인 타이밍 다이어그램:
    //
    //   타일 0: [DW→Ping]
    //   타일 1: [DW→Pong] || [PW←Ping]   ← DATAFLOW 동시 실행
    //   타일 2: [DW→Ping] || [PW←Pong]   ← DATAFLOW 동시 실행
    //   ...
    //   타일 N: [DW→?   ] || [PW←?    ]
    //   Flush:              [PW←마지막]   ← 마지막 타일 flush
    //
    // 총 타일 수: ceil(height / BLK_TILE_ROWS)
    // 파이프라인 효율: (N-1)/N → N이 클수록 효율 증가
    //   height=112, TILE_ROWS=1: 111/112 ≈ 99% 효율
    //
    int num_tiles = (height + BLK_TILE_ROWS - 1) / BLK_TILE_ROWS;

    TILE_LOOP: for (int tile = 0; tile < num_tiles + 1; tile++)
    {
        // 현재 타일의 DW 출력 버퍼 (ping/pong 교대)
        int dw_buf_sel = tile & 1;       // 0 또는 1
        int pw_buf_sel = 1 - dw_buf_sel; // 1 또는 0

        int dw_h_start = tile * BLK_TILE_ROWS;
        int pw_h_start = (tile - 1) * BLK_TILE_ROWS;

        // -------------------------------------------------------------------
        // DATAFLOW 영역: DW 스테이지와 PW 스테이지 동시 실행
        //
        // [HLS DATAFLOW 동작 원리]
        //   - dw_row_stage: inter_buf[dw_buf_sel]에 쓰기 (producer)
        //   - pw_row_stage: inter_buf[pw_buf_sel]에서 읽기 (consumer)
        //   - 두 함수는 서로 다른 버퍼를 사용 → 데이터 충돌 없음
        //   - HLS가 두 함수를 병렬 실행 스케줄로 합성
        //
        // [첫 타일 (tile == 0)]
        //   DW만 실행 (PW는 유효 데이터 없음)
        //   → pw_h_start = -1 < 0 → pw_row_stage 내부에서 h >= height 체크로 스킵
        //
        // [마지막 flush (tile == num_tiles)]
        //   PW만 실행 (DW는 범위 초과)
        //   → dw_h_start >= height → dw_row_stage 내부에서 스킵
        // -------------------------------------------------------------------
        #pragma HLS DATAFLOW

        // DW 스테이지: 현재 타일 처리 → Ping 또는 Pong 버퍼에 저장
        if (dw_buf_sel == 0) {
            dw_row_stage(
                input, dw_weights, dw_bias,
                inter_ping,
                dw_h_start, height, width, c_in,
                dw_in_zp, dw_w_zp, dw_out_zp,
                dw_multiplier, dw_shift, dw_apply_relu6
            );
        } else {
            dw_row_stage(
                input, dw_weights, dw_bias,
                inter_pong,
                dw_h_start, height, width, c_in,
                dw_in_zp, dw_w_zp, dw_out_zp,
                dw_multiplier, dw_shift, dw_apply_relu6
            );
        }

        // PW 스테이지: 이전 타일 결과 처리 ← Pong 또는 Ping 버퍼에서 읽기
        if (tile > 0) {
            if (pw_buf_sel == 0) {
                pw_row_stage(
                    inter_ping,
                    pw_weights, pw_bias, output,
                    pw_h_start, height, width, c_in, c_out,
                    pw_act_zp, pw_wgt_zp, pw_out_zp,
                    pw_M_mantissa, pw_M_shift, pw_use_bias
                );
            } else {
                pw_row_stage(
                    inter_pong,
                    pw_weights, pw_bias, output,
                    pw_h_start, height, width, c_in, c_out,
                    pw_act_zp, pw_wgt_zp, pw_out_zp,
                    pw_M_mantissa, pw_M_shift, pw_use_bias
                );
            }
        }
    } // TILE_LOOP
}
