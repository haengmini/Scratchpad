// =============================================================================
// mobilenet_block_accel.hpp  (Week 9 — DW-PW Pipeline 통합 가속기)
// -----------------------------------------------------------------------------
// Target: MobileNetV1 Depthwise-Separable Block (DW 3x3 → PW 1x1)
//         ZCU104 (Zynq UltraScale+ MPSoC, xczu7ev-ffvc1156-2-e)
//
// 아키텍처 개요
// -------------
//   PS (Cortex-A53)
//     ├─ AXI GP0  (32-bit)  ──→ s_axilite  : DW + PW 통합 제어 레지스터
//     ├─ AXI HP0  (128-bit) ←── m_axi gmem_in   : DW 입력 activation (읽기)
//     ├─ AXI HP1  (128-bit) ←── m_axi gmem_dw_w : DW 가중치 (읽기)
//     ├─ AXI HP2  (128-bit) ←── m_axi gmem_pw_w : PW 가중치 (읽기)
//     └─ AXI HP3  (128-bit) ──→ m_axi gmem_out  : PW 출력 (쓰기)
//
// 핵심 설계 결정: DDR-Free 중간 버퍼
// ------------------------------------
//   DW 출력 → PW 입력 경로에 DDR 접근 없음.
//   대신 on-chip Ping-Pong BRAM 버퍼를 사용:
//
//   [Ping-Pong 버퍼 구조]
//     inter_buf[2][BLK_MAX_H * BLK_MAX_W * BLK_MAX_CIN]
//     - 버퍼 0 (Ping): DW가 쓰는 동안 PW가 읽음
//     - 버퍼 1 (Pong): PW가 읽는 동안 DW가 씀
//     - HLS DATAFLOW pragma로 DW/PW 스테이지 동시 실행
//
//   [BRAM 사용량 계산 (ZCU104 기준)]
//     최대 크기: 112 × 112 × 32 = 401,408 bytes × 2 (Ping-Pong)
//     → 802,816 bytes = 784 KB
//     → BRAM_18K 필요: ceil(784K / 2K) = 392개  ← ZCU104 총 312개 초과!
//
//     [해결책: 타일 기반 Ping-Pong]
//     행(Row) 단위 타일링: 한 번에 TILE_ROWS 행만 처리
//     TILE_ROWS = 4 기준:
//       버퍼 크기 = 4 × 112 × 32 = 14,336 bytes × 2 = 28,672 bytes = 28 KB
//       BRAM_18K 필요: ceil(28K / 2K) = 14개  ← ZCU104 312개 중 ~4.5% ✓
//
// DATAFLOW 파이프라인 구조
// -------------------------
//   mobilenet_block_accel()
//     └─ #pragma HLS DATAFLOW
//          ├─ dw_stage()   : DW 3x3 연산 → inter_buf[ping] 쓰기
//          └─ pw_stage()   : inter_buf[pong] 읽기 → PW 1x1 연산 → DDR 쓰기
//
//   [타일 루프 (외부 제어)]
//     for (tile = 0; tile < num_tiles; tile++) {
//         ping = tile & 1;  pong = 1 - ping;
//         DATAFLOW { dw_stage(ping), pw_stage(pong) }
//     }
//
// 인터페이스 요약
// ---------------
//   m_axi gmem_in   : DW 입력 activation [H][W][Cin]  uint8 NHWC
//   m_axi gmem_dw_w : DW 가중치 [Cin][3][3]            uint8
//   m_axi gmem_pw_w : PW 가중치 [Cout][Cin]            uint8
//   m_axi gmem_out  : PW 출력   [H][W][Cout]           uint8 NHWC
//   s_axilite control: DW + PW 양자화 파라미터 (분리된 레지스터 세트)
//
// 지원 레이어 (MobileNetV1 기준)
// --------------------------------
//   Block | H   | W   | Cin | Cout | Stride | 비고
//   ----- | --- | --- | --- | ---- | ------ | ----
//   B1    | 112 | 112 | 32  | 64   | 1      | 첫 번째 DW-PW 블록
//   B2    | 56  | 56  | 64  | 128  | 1      |
//   B3    | 56  | 56  | 128 | 128  | 1      |
//   B4    | 28  | 28  | 128 | 256  | 1      |
//   B5    | 28  | 28  | 256 | 256  | 1      |
//   B6    | 14  | 14  | 256 | 512  | 1      |
//   B7~11 | 14  | 14  | 512 | 512  | 1      |
//   B12   | 7   | 7   | 512 | 1024 | 1      |
//   B13   | 7   | 7   | 1024| 1024 | 1      |
//
// 고정소수점 양자화 (TFLite 호환)
// ---------------------------------
//   DW 스테이지: out_q = clamp(round(acc * dw_M) >> dw_shift) + dw_out_zp, 0, 255)
//   PW 스테이지: out_q = clamp((acc * pw_M_mantissa) >> (31 + pw_M_shift) + pw_out_zp, 0, 255)
// =============================================================================

#ifndef MOBILENET_BLOCK_ACCEL_HPP
#define MOBILENET_BLOCK_ACCEL_HPP

#include <stdint.h>
// ap_int.h, hls_stream.h: HLS 합성 환경에서만 포함 (.cpp에서 처리)

// ---------------------------------------------------------------------------
// 컴파일 타임 상수
// ---------------------------------------------------------------------------

// 공간 차원 최대값 (MobileNetV1 최대 112x112)
#define BLK_MAX_H       112
#define BLK_MAX_W       112

// 채널 차원 최대값
#define BLK_MAX_CIN     1024    // 최대 입력 채널 (DW 입력 = PW 입력)
#define BLK_MAX_COUT    1024    // 최대 출력 채널 (PW 출력)

// DW 커널 고정 크기
#define BLK_KERNEL_SIZE 3
#define BLK_PAD         1       // SAME padding

// ---------------------------------------------------------------------------
// Ping-Pong 중간 버퍼 타일 설정
// ---------------------------------------------------------------------------
// [BRAM 예산 계산]
//   ZCU104 BRAM_18K: 312개 (총 5.6 Mb)
//   목표: 중간 버퍼에 최대 20개 BRAM_18K 사용 (전체의 ~6%)
//
//   버퍼 크기 = TILE_ROWS × BLK_MAX_W × BLK_MAX_CIN × 2 (Ping-Pong)
//   TILE_ROWS = 4:
//     4 × 112 × 1024 bytes × 2 = 917,504 bytes = 896 KB → 너무 큼
//
//   [현실적 타일 설정]
//   실제 운용 레이어별 Cin은 최대 512 (B12 이전):
//     TILE_ROWS = 4, Cin = 512:
//       4 × 112 × 512 × 2 = 458,752 bytes = 448 KB → 여전히 큼
//
//   [최적 설계: 행 단위 스트리밍]
//   TILE_ROWS = 1 (행 단위):
//     1 × 112 × 512 × 2 = 114,688 bytes = 112 KB
//     BRAM_18K: ceil(112K / 2K) = 56개 → 허용 범위 내
//
//   TILE_ROWS = 1, Cin = 32 (초기 레이어):
//     1 × 112 × 32 × 2 = 7,168 bytes = 7 KB → BRAM_18K 4개
//
//   → TILE_ROWS = 1로 고정하여 모든 레이어에서 BRAM 예산 준수
#define BLK_TILE_ROWS   1       // 행 단위 타일링 (BRAM 예산 최적화)

// PW 출력 채널 타일 크기 (pw_conv_accel과 동일)
#define BLK_TILE_CO     16

// PW 입력 채널 언롤 인수 (pw_conv_accel과 동일)
#define BLK_UNROLL_CI   16

// ---------------------------------------------------------------------------
// 데이터 타입 (기존 dw_conv_accel / pw_conv_accel 타입과 호환)
// ---------------------------------------------------------------------------
typedef uint8_t  blk_data_t;   // 입력/출력/가중치: uint8 quantized
typedef int32_t  blk_acc_t;    // 누산기: int32

// ---------------------------------------------------------------------------
// DW 스테이지 양자화 파라미터
// ---------------------------------------------------------------------------
// dw_conv_accel.hpp의 파라미터 세트와 동일한 의미
struct DwQuantParams {
    int32_t in_zp;          // DW 입력 zero-point
    int32_t w_zp;           // DW 가중치 zero-point
    int32_t out_zp;         // DW 출력 zero-point (= PW 입력 zero-point)
    int32_t multiplier;     // 고정소수점 스케일 멀티플라이어
    int32_t shift;          // 우측 시프트 비트 수
    int32_t apply_relu6;    // 1이면 ReLU6 적용
};

// ---------------------------------------------------------------------------
// PW 스테이지 양자화 파라미터
// ---------------------------------------------------------------------------
// pw_conv_accel.hpp의 QuantParams와 동일한 의미
struct PwQuantParams {
    int32_t act_zp;         // PW 입력 zero-point (= DW 출력 zero-point)
    int32_t wgt_zp;         // PW 가중치 zero-point
    int32_t out_zp;         // PW 출력 zero-point
    int32_t M_mantissa;     // 고정소수점 멀티플라이어 (Q31 형식)
    int32_t M_shift;        // 우측 시프트 양 (≥ 0)
    int32_t use_bias;       // 1: bias 적용, 0: 생략
};

// ---------------------------------------------------------------------------
// Top-Level Function Declaration
// ---------------------------------------------------------------------------
//
// mobilenet_block_accel: DW 3x3 + PW 1x1 통합 HLS 가속기
//
// 입력 레이아웃: NHWC (N=1 고정)
//   input    [H * W * Cin]        : uint8 DW 입력 activation
//   dw_weights [Cin * 9]          : uint8 DW 가중치 [Cin][3][3]
//   dw_bias    [Cin]              : int32 DW 바이어스 (NULL 허용)
//   pw_weights [Cout * Cin]       : uint8 PW 가중치 [Cout][Cin]
//   pw_bias    [Cout]             : int32 PW 바이어스 (NULL 허용)
//   output   [H * W * Cout]       : uint8 PW 출력 activation
//
// 제어 파라미터 (AXI-Lite 레지스터):
//   height, width : 공간 차원 (≤ BLK_MAX_H, BLK_MAX_W)
//   c_in          : 입력 채널 수 (DW 채널 = PW 입력 채널, ≤ BLK_MAX_CIN)
//   c_out         : PW 출력 채널 수 (≤ BLK_MAX_COUT)
//   dw_qp         : DW 양자화 파라미터 (6개 int32 레지스터)
//   pw_qp         : PW 양자화 파라미터 (6개 int32 레지스터)
//
void mobilenet_block_accel(
    // --- AXI4 Master 데이터 포트 ---
    const blk_data_t* input,        // gmem_in:   DW 입력 [H*W*Cin]
    const blk_data_t* dw_weights,   // gmem_dw_w: DW 가중치 [Cin*9]
    const blk_acc_t*  dw_bias,      // gmem_dw_w: DW 바이어스 [Cin]
    const blk_data_t* pw_weights,   // gmem_pw_w: PW 가중치 [Cout*Cin]
    const blk_acc_t*  pw_bias,      // gmem_pw_w: PW 바이어스 [Cout]
    blk_data_t*       output,       // gmem_out:  PW 출력 [H*W*Cout]
    // --- AXI-Lite 제어 파라미터 ---
    int               height,
    int               width,
    int               c_in,
    int               c_out,
    // DW 양자화 파라미터 (별도 레지스터 세트)
    int32_t           dw_in_zp,
    int32_t           dw_w_zp,
    int32_t           dw_out_zp,
    int32_t           dw_multiplier,
    int32_t           dw_shift,
    int32_t           dw_apply_relu6,
    // PW 양자화 파라미터 (별도 레지스터 세트)
    int32_t           pw_act_zp,
    int32_t           pw_wgt_zp,
    int32_t           pw_out_zp,
    int32_t           pw_M_mantissa,
    int32_t           pw_M_shift,
    int32_t           pw_use_bias
);

#endif // MOBILENET_BLOCK_ACCEL_HPP
