// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module mobilenet_block_accel_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 8,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   input_r,
    output wire [63:0]                   dw_weights,
    output wire [63:0]                   dw_bias,
    output wire [63:0]                   pw_weights,
    output wire [63:0]                   pw_bias,
    output wire [63:0]                   output_r,
    output wire [31:0]                   height,
    output wire [31:0]                   width,
    output wire [31:0]                   c_in,
    output wire [31:0]                   c_out,
    output wire [31:0]                   dw_in_zp,
    output wire [31:0]                   dw_w_zp,
    output wire [31:0]                   dw_out_zp,
    output wire [31:0]                   dw_multiplier,
    output wire [31:0]                   dw_shift,
    output wire [31:0]                   dw_apply_relu6,
    output wire [31:0]                   pw_act_zp,
    output wire [31:0]                   pw_wgt_zp,
    output wire [31:0]                   pw_out_zp,
    output wire [31:0]                   pw_M_mantissa,
    output wire [31:0]                   pw_M_shift,
    output wire [31:0]                   pw_use_bias,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// Protocol Used: ap_ctrl_hs
//
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

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL               = 8'h00,
    ADDR_GIE                   = 8'h04,
    ADDR_IER                   = 8'h08,
    ADDR_ISR                   = 8'h0c,
    ADDR_INPUT_R_DATA_0        = 8'h10,
    ADDR_INPUT_R_DATA_1        = 8'h14,
    ADDR_INPUT_R_CTRL          = 8'h18,
    ADDR_DW_WEIGHTS_DATA_0     = 8'h1c,
    ADDR_DW_WEIGHTS_DATA_1     = 8'h20,
    ADDR_DW_WEIGHTS_CTRL       = 8'h24,
    ADDR_DW_BIAS_DATA_0        = 8'h28,
    ADDR_DW_BIAS_DATA_1        = 8'h2c,
    ADDR_DW_BIAS_CTRL          = 8'h30,
    ADDR_PW_WEIGHTS_DATA_0     = 8'h34,
    ADDR_PW_WEIGHTS_DATA_1     = 8'h38,
    ADDR_PW_WEIGHTS_CTRL       = 8'h3c,
    ADDR_PW_BIAS_DATA_0        = 8'h40,
    ADDR_PW_BIAS_DATA_1        = 8'h44,
    ADDR_PW_BIAS_CTRL          = 8'h48,
    ADDR_OUTPUT_R_DATA_0       = 8'h4c,
    ADDR_OUTPUT_R_DATA_1       = 8'h50,
    ADDR_OUTPUT_R_CTRL         = 8'h54,
    ADDR_HEIGHT_DATA_0         = 8'h58,
    ADDR_HEIGHT_CTRL           = 8'h5c,
    ADDR_WIDTH_DATA_0          = 8'h60,
    ADDR_WIDTH_CTRL            = 8'h64,
    ADDR_C_IN_DATA_0           = 8'h68,
    ADDR_C_IN_CTRL             = 8'h6c,
    ADDR_C_OUT_DATA_0          = 8'h70,
    ADDR_C_OUT_CTRL            = 8'h74,
    ADDR_DW_IN_ZP_DATA_0       = 8'h78,
    ADDR_DW_IN_ZP_CTRL         = 8'h7c,
    ADDR_DW_W_ZP_DATA_0        = 8'h80,
    ADDR_DW_W_ZP_CTRL          = 8'h84,
    ADDR_DW_OUT_ZP_DATA_0      = 8'h88,
    ADDR_DW_OUT_ZP_CTRL        = 8'h8c,
    ADDR_DW_MULTIPLIER_DATA_0  = 8'h90,
    ADDR_DW_MULTIPLIER_CTRL    = 8'h94,
    ADDR_DW_SHIFT_DATA_0       = 8'h98,
    ADDR_DW_SHIFT_CTRL         = 8'h9c,
    ADDR_DW_APPLY_RELU6_DATA_0 = 8'ha0,
    ADDR_DW_APPLY_RELU6_CTRL   = 8'ha4,
    ADDR_PW_ACT_ZP_DATA_0      = 8'ha8,
    ADDR_PW_ACT_ZP_CTRL        = 8'hac,
    ADDR_PW_WGT_ZP_DATA_0      = 8'hb0,
    ADDR_PW_WGT_ZP_CTRL        = 8'hb4,
    ADDR_PW_OUT_ZP_DATA_0      = 8'hb8,
    ADDR_PW_OUT_ZP_CTRL        = 8'hbc,
    ADDR_PW_M_MANTISSA_DATA_0  = 8'hc0,
    ADDR_PW_M_MANTISSA_CTRL    = 8'hc4,
    ADDR_PW_M_SHIFT_DATA_0     = 8'hc8,
    ADDR_PW_M_SHIFT_CTRL       = 8'hcc,
    ADDR_PW_USE_BIAS_DATA_0    = 8'hd0,
    ADDR_PW_USE_BIAS_CTRL      = 8'hd4,
    WRIDLE                     = 2'd0,
    WRDATA                     = 2'd1,
    WRRESP                     = 2'd2,
    WRRESET                    = 2'd3,
    RDIDLE                     = 2'd0,
    RDDATA                     = 2'd1,
    RDRESET                    = 2'd2,
    ADDR_BITS                = 8;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle = 1'b0;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    wire                          auto_restart_done;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_input_r = 'b0;
    reg  [63:0]                   int_dw_weights = 'b0;
    reg  [63:0]                   int_dw_bias = 'b0;
    reg  [63:0]                   int_pw_weights = 'b0;
    reg  [63:0]                   int_pw_bias = 'b0;
    reg  [63:0]                   int_output_r = 'b0;
    reg  [31:0]                   int_height = 'b0;
    reg  [31:0]                   int_width = 'b0;
    reg  [31:0]                   int_c_in = 'b0;
    reg  [31:0]                   int_c_out = 'b0;
    reg  [31:0]                   int_dw_in_zp = 'b0;
    reg  [31:0]                   int_dw_w_zp = 'b0;
    reg  [31:0]                   int_dw_out_zp = 'b0;
    reg  [31:0]                   int_dw_multiplier = 'b0;
    reg  [31:0]                   int_dw_shift = 'b0;
    reg  [31:0]                   int_dw_apply_relu6 = 'b0;
    reg  [31:0]                   int_pw_act_zp = 'b0;
    reg  [31:0]                   int_pw_wgt_zp = 'b0;
    reg  [31:0]                   int_pw_out_zp = 'b0;
    reg  [31:0]                   int_pw_M_mantissa = 'b0;
    reg  [31:0]                   int_pw_M_shift = 'b0;
    reg  [31:0]                   int_pw_use_bias = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= {AWADDR[ADDR_BITS-1:2], {2{1'b0}}};
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_INPUT_R_DATA_0: begin
                    rdata <= int_input_r[31:0];
                end
                ADDR_INPUT_R_DATA_1: begin
                    rdata <= int_input_r[63:32];
                end
                ADDR_DW_WEIGHTS_DATA_0: begin
                    rdata <= int_dw_weights[31:0];
                end
                ADDR_DW_WEIGHTS_DATA_1: begin
                    rdata <= int_dw_weights[63:32];
                end
                ADDR_DW_BIAS_DATA_0: begin
                    rdata <= int_dw_bias[31:0];
                end
                ADDR_DW_BIAS_DATA_1: begin
                    rdata <= int_dw_bias[63:32];
                end
                ADDR_PW_WEIGHTS_DATA_0: begin
                    rdata <= int_pw_weights[31:0];
                end
                ADDR_PW_WEIGHTS_DATA_1: begin
                    rdata <= int_pw_weights[63:32];
                end
                ADDR_PW_BIAS_DATA_0: begin
                    rdata <= int_pw_bias[31:0];
                end
                ADDR_PW_BIAS_DATA_1: begin
                    rdata <= int_pw_bias[63:32];
                end
                ADDR_OUTPUT_R_DATA_0: begin
                    rdata <= int_output_r[31:0];
                end
                ADDR_OUTPUT_R_DATA_1: begin
                    rdata <= int_output_r[63:32];
                end
                ADDR_HEIGHT_DATA_0: begin
                    rdata <= int_height[31:0];
                end
                ADDR_WIDTH_DATA_0: begin
                    rdata <= int_width[31:0];
                end
                ADDR_C_IN_DATA_0: begin
                    rdata <= int_c_in[31:0];
                end
                ADDR_C_OUT_DATA_0: begin
                    rdata <= int_c_out[31:0];
                end
                ADDR_DW_IN_ZP_DATA_0: begin
                    rdata <= int_dw_in_zp[31:0];
                end
                ADDR_DW_W_ZP_DATA_0: begin
                    rdata <= int_dw_w_zp[31:0];
                end
                ADDR_DW_OUT_ZP_DATA_0: begin
                    rdata <= int_dw_out_zp[31:0];
                end
                ADDR_DW_MULTIPLIER_DATA_0: begin
                    rdata <= int_dw_multiplier[31:0];
                end
                ADDR_DW_SHIFT_DATA_0: begin
                    rdata <= int_dw_shift[31:0];
                end
                ADDR_DW_APPLY_RELU6_DATA_0: begin
                    rdata <= int_dw_apply_relu6[31:0];
                end
                ADDR_PW_ACT_ZP_DATA_0: begin
                    rdata <= int_pw_act_zp[31:0];
                end
                ADDR_PW_WGT_ZP_DATA_0: begin
                    rdata <= int_pw_wgt_zp[31:0];
                end
                ADDR_PW_OUT_ZP_DATA_0: begin
                    rdata <= int_pw_out_zp[31:0];
                end
                ADDR_PW_M_MANTISSA_DATA_0: begin
                    rdata <= int_pw_M_mantissa[31:0];
                end
                ADDR_PW_M_SHIFT_DATA_0: begin
                    rdata <= int_pw_M_shift[31:0];
                end
                ADDR_PW_USE_BIAS_DATA_0: begin
                    rdata <= int_pw_use_bias[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign auto_restart_done = auto_restart_status && (ap_idle && !int_ap_idle);
assign input_r           = int_input_r;
assign dw_weights        = int_dw_weights;
assign dw_bias           = int_dw_bias;
assign pw_weights        = int_pw_weights;
assign pw_bias           = int_pw_bias;
assign output_r          = int_output_r;
assign height            = int_height;
assign width             = int_width;
assign c_in              = int_c_in;
assign c_out             = int_c_out;
assign dw_in_zp          = int_dw_in_zp;
assign dw_w_zp           = int_dw_w_zp;
assign dw_out_zp         = int_dw_out_zp;
assign dw_multiplier     = int_dw_multiplier;
assign dw_shift          = int_dw_shift;
assign dw_apply_relu6    = int_dw_apply_relu6;
assign pw_act_zp         = int_pw_act_zp;
assign pw_wgt_zp         = int_pw_wgt_zp;
assign pw_out_zp         = int_pw_out_zp;
assign pw_M_mantissa     = int_pw_M_mantissa;
assign pw_M_shift        = int_pw_M_shift;
assign pw_use_bias       = int_pw_use_bias;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_done)
            int_task_ap_done <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_task_ap_done <= 1'b0; // clear on read
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <= WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_input_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_R_DATA_0)
            int_input_r[31:0] <= (WDATA[31:0] & wmask) | (int_input_r[31:0] & ~wmask);
    end
end

// int_input_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_input_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_INPUT_R_DATA_1)
            int_input_r[63:32] <= (WDATA[31:0] & wmask) | (int_input_r[63:32] & ~wmask);
    end
end

// int_dw_weights[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_weights[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_WEIGHTS_DATA_0)
            int_dw_weights[31:0] <= (WDATA[31:0] & wmask) | (int_dw_weights[31:0] & ~wmask);
    end
end

// int_dw_weights[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_weights[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_WEIGHTS_DATA_1)
            int_dw_weights[63:32] <= (WDATA[31:0] & wmask) | (int_dw_weights[63:32] & ~wmask);
    end
end

// int_dw_bias[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_bias[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_BIAS_DATA_0)
            int_dw_bias[31:0] <= (WDATA[31:0] & wmask) | (int_dw_bias[31:0] & ~wmask);
    end
end

// int_dw_bias[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_bias[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_BIAS_DATA_1)
            int_dw_bias[63:32] <= (WDATA[31:0] & wmask) | (int_dw_bias[63:32] & ~wmask);
    end
end

// int_pw_weights[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_weights[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_WEIGHTS_DATA_0)
            int_pw_weights[31:0] <= (WDATA[31:0] & wmask) | (int_pw_weights[31:0] & ~wmask);
    end
end

// int_pw_weights[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_weights[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_WEIGHTS_DATA_1)
            int_pw_weights[63:32] <= (WDATA[31:0] & wmask) | (int_pw_weights[63:32] & ~wmask);
    end
end

// int_pw_bias[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_bias[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_BIAS_DATA_0)
            int_pw_bias[31:0] <= (WDATA[31:0] & wmask) | (int_pw_bias[31:0] & ~wmask);
    end
end

// int_pw_bias[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_bias[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_BIAS_DATA_1)
            int_pw_bias[63:32] <= (WDATA[31:0] & wmask) | (int_pw_bias[63:32] & ~wmask);
    end
end

// int_output_r[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_R_DATA_0)
            int_output_r[31:0] <= (WDATA[31:0] & wmask) | (int_output_r[31:0] & ~wmask);
    end
end

// int_output_r[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_output_r[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_OUTPUT_R_DATA_1)
            int_output_r[63:32] <= (WDATA[31:0] & wmask) | (int_output_r[63:32] & ~wmask);
    end
end

// int_height[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_height[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_HEIGHT_DATA_0)
            int_height[31:0] <= (WDATA[31:0] & wmask) | (int_height[31:0] & ~wmask);
    end
end

// int_width[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_width[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_WIDTH_DATA_0)
            int_width[31:0] <= (WDATA[31:0] & wmask) | (int_width[31:0] & ~wmask);
    end
end

// int_c_in[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_in[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_IN_DATA_0)
            int_c_in[31:0] <= (WDATA[31:0] & wmask) | (int_c_in[31:0] & ~wmask);
    end
end

// int_c_out[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_c_out[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_C_OUT_DATA_0)
            int_c_out[31:0] <= (WDATA[31:0] & wmask) | (int_c_out[31:0] & ~wmask);
    end
end

// int_dw_in_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_in_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_IN_ZP_DATA_0)
            int_dw_in_zp[31:0] <= (WDATA[31:0] & wmask) | (int_dw_in_zp[31:0] & ~wmask);
    end
end

// int_dw_w_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_w_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_W_ZP_DATA_0)
            int_dw_w_zp[31:0] <= (WDATA[31:0] & wmask) | (int_dw_w_zp[31:0] & ~wmask);
    end
end

// int_dw_out_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_out_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_OUT_ZP_DATA_0)
            int_dw_out_zp[31:0] <= (WDATA[31:0] & wmask) | (int_dw_out_zp[31:0] & ~wmask);
    end
end

// int_dw_multiplier[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_multiplier[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_MULTIPLIER_DATA_0)
            int_dw_multiplier[31:0] <= (WDATA[31:0] & wmask) | (int_dw_multiplier[31:0] & ~wmask);
    end
end

// int_dw_shift[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_shift[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_SHIFT_DATA_0)
            int_dw_shift[31:0] <= (WDATA[31:0] & wmask) | (int_dw_shift[31:0] & ~wmask);
    end
end

// int_dw_apply_relu6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_dw_apply_relu6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DW_APPLY_RELU6_DATA_0)
            int_dw_apply_relu6[31:0] <= (WDATA[31:0] & wmask) | (int_dw_apply_relu6[31:0] & ~wmask);
    end
end

// int_pw_act_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_act_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_ACT_ZP_DATA_0)
            int_pw_act_zp[31:0] <= (WDATA[31:0] & wmask) | (int_pw_act_zp[31:0] & ~wmask);
    end
end

// int_pw_wgt_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_wgt_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_WGT_ZP_DATA_0)
            int_pw_wgt_zp[31:0] <= (WDATA[31:0] & wmask) | (int_pw_wgt_zp[31:0] & ~wmask);
    end
end

// int_pw_out_zp[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_out_zp[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_OUT_ZP_DATA_0)
            int_pw_out_zp[31:0] <= (WDATA[31:0] & wmask) | (int_pw_out_zp[31:0] & ~wmask);
    end
end

// int_pw_M_mantissa[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_M_mantissa[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_M_MANTISSA_DATA_0)
            int_pw_M_mantissa[31:0] <= (WDATA[31:0] & wmask) | (int_pw_M_mantissa[31:0] & ~wmask);
    end
end

// int_pw_M_shift[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_M_shift[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_M_SHIFT_DATA_0)
            int_pw_M_shift[31:0] <= (WDATA[31:0] & wmask) | (int_pw_M_shift[31:0] & ~wmask);
    end
end

// int_pw_use_bias[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_pw_use_bias[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PW_USE_BIAS_DATA_0)
            int_pw_use_bias[31:0] <= (WDATA[31:0] & wmask) | (int_pw_use_bias[31:0] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
