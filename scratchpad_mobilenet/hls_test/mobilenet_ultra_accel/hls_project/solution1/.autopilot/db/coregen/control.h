// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of input_r
//        bit 31~0 - input_r[31:0] (Read/Write)
// 0x14 : Data signal of input_r
//        bit 31~0 - input_r[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of dw_weights
//        bit 31~0 - dw_weights[31:0] (Read/Write)
// 0x20 : Data signal of dw_weights
//        bit 31~0 - dw_weights[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of dw_bias
//        bit 31~0 - dw_bias[31:0] (Read/Write)
// 0x2c : Data signal of dw_bias
//        bit 31~0 - dw_bias[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of pw_weights
//        bit 31~0 - pw_weights[31:0] (Read/Write)
// 0x38 : Data signal of pw_weights
//        bit 31~0 - pw_weights[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of pw_bias
//        bit 31~0 - pw_bias[31:0] (Read/Write)
// 0x44 : Data signal of pw_bias
//        bit 31~0 - pw_bias[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x50 : Data signal of output_r
//        bit 31~0 - output_r[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of height
//        bit 31~0 - height[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of width
//        bit 31~0 - width[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of c_in
//        bit 31~0 - c_in[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of c_out
//        bit 31~0 - c_out[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of dw_in_zp
//        bit 31~0 - dw_in_zp[31:0] (Read/Write)
// 0x7c : reserved
// 0x80 : Data signal of dw_w_zp
//        bit 31~0 - dw_w_zp[31:0] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of dw_out_zp
//        bit 31~0 - dw_out_zp[31:0] (Read/Write)
// 0x8c : reserved
// 0x90 : Data signal of dw_multiplier
//        bit 31~0 - dw_multiplier[31:0] (Read/Write)
// 0x94 : reserved
// 0x98 : Data signal of dw_shift
//        bit 31~0 - dw_shift[31:0] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of dw_apply_relu6
//        bit 31~0 - dw_apply_relu6[31:0] (Read/Write)
// 0xa4 : reserved
// 0xa8 : Data signal of pw_act_zp
//        bit 31~0 - pw_act_zp[31:0] (Read/Write)
// 0xac : reserved
// 0xb0 : Data signal of pw_wgt_zp
//        bit 31~0 - pw_wgt_zp[31:0] (Read/Write)
// 0xb4 : reserved
// 0xb8 : Data signal of pw_out_zp
//        bit 31~0 - pw_out_zp[31:0] (Read/Write)
// 0xbc : reserved
// 0xc0 : Data signal of pw_M_mantissa
//        bit 31~0 - pw_M_mantissa[31:0] (Read/Write)
// 0xc4 : reserved
// 0xc8 : Data signal of pw_M_shift
//        bit 31~0 - pw_M_shift[31:0] (Read/Write)
// 0xcc : reserved
// 0xd0 : Data signal of pw_use_bias
//        bit 31~0 - pw_use_bias[31:0] (Read/Write)
// 0xd4 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL             0x00
#define CONTROL_ADDR_GIE                 0x04
#define CONTROL_ADDR_IER                 0x08
#define CONTROL_ADDR_ISR                 0x0c
#define CONTROL_ADDR_INPUT_R_DATA        0x10
#define CONTROL_BITS_INPUT_R_DATA        64
#define CONTROL_ADDR_DW_WEIGHTS_DATA     0x1c
#define CONTROL_BITS_DW_WEIGHTS_DATA     64
#define CONTROL_ADDR_DW_BIAS_DATA        0x28
#define CONTROL_BITS_DW_BIAS_DATA        64
#define CONTROL_ADDR_PW_WEIGHTS_DATA     0x34
#define CONTROL_BITS_PW_WEIGHTS_DATA     64
#define CONTROL_ADDR_PW_BIAS_DATA        0x40
#define CONTROL_BITS_PW_BIAS_DATA        64
#define CONTROL_ADDR_OUTPUT_R_DATA       0x4c
#define CONTROL_BITS_OUTPUT_R_DATA       64
#define CONTROL_ADDR_HEIGHT_DATA         0x58
#define CONTROL_BITS_HEIGHT_DATA         32
#define CONTROL_ADDR_WIDTH_DATA          0x60
#define CONTROL_BITS_WIDTH_DATA          32
#define CONTROL_ADDR_C_IN_DATA           0x68
#define CONTROL_BITS_C_IN_DATA           32
#define CONTROL_ADDR_C_OUT_DATA          0x70
#define CONTROL_BITS_C_OUT_DATA          32
#define CONTROL_ADDR_DW_IN_ZP_DATA       0x78
#define CONTROL_BITS_DW_IN_ZP_DATA       32
#define CONTROL_ADDR_DW_W_ZP_DATA        0x80
#define CONTROL_BITS_DW_W_ZP_DATA        32
#define CONTROL_ADDR_DW_OUT_ZP_DATA      0x88
#define CONTROL_BITS_DW_OUT_ZP_DATA      32
#define CONTROL_ADDR_DW_MULTIPLIER_DATA  0x90
#define CONTROL_BITS_DW_MULTIPLIER_DATA  32
#define CONTROL_ADDR_DW_SHIFT_DATA       0x98
#define CONTROL_BITS_DW_SHIFT_DATA       32
#define CONTROL_ADDR_DW_APPLY_RELU6_DATA 0xa0
#define CONTROL_BITS_DW_APPLY_RELU6_DATA 32
#define CONTROL_ADDR_PW_ACT_ZP_DATA      0xa8
#define CONTROL_BITS_PW_ACT_ZP_DATA      32
#define CONTROL_ADDR_PW_WGT_ZP_DATA      0xb0
#define CONTROL_BITS_PW_WGT_ZP_DATA      32
#define CONTROL_ADDR_PW_OUT_ZP_DATA      0xb8
#define CONTROL_BITS_PW_OUT_ZP_DATA      32
#define CONTROL_ADDR_PW_M_MANTISSA_DATA  0xc0
#define CONTROL_BITS_PW_M_MANTISSA_DATA  32
#define CONTROL_ADDR_PW_M_SHIFT_DATA     0xc8
#define CONTROL_BITS_PW_M_SHIFT_DATA     32
#define CONTROL_ADDR_PW_USE_BIAS_DATA    0xd0
#define CONTROL_BITS_PW_USE_BIAS_DATA    32
