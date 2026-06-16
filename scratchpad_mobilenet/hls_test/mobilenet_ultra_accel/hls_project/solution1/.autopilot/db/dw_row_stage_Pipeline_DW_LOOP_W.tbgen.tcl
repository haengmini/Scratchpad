set moduleName dw_row_stage_Pipeline_DW_LOOP_W
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type loop_auto_rewind
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 17
set C_modelName {dw_row_stage_Pipeline_DW_LOOP_W}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict inter_buf_15 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_14 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_13 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_12 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_11 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_10 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_9 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_8 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_7 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_6 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_5 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_4 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_3 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_2 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_1 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict inter_buf_0 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict line_buf_2 { MEM_WIDTH 8 MEM_SIZE 112 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict line_buf_1 { MEM_WIDTH 8 MEM_SIZE 112 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
dict set ap_memory_interface_dict line_buf { MEM_WIDTH 8 MEM_SIZE 112 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ window_11_reload int 8 regular  }
	{ window_10_reload int 8 regular  }
	{ window_9_reload int 8 regular  }
	{ window_8_reload int 8 regular  }
	{ window_7_reload int 8 regular  }
	{ window_6_reload int 8 regular  }
	{ width int 31 regular  }
	{ inter_buf_15 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_14 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_13 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_12 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_11 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_10 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_9 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_8 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_7 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_6 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_5 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_4 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_3 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_2 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_1 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_0 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ line_buf_2 int 8 regular {array 112 { 0 1 } 1 1 }  }
	{ line_buf_1 int 8 regular {array 112 { 0 1 } 1 1 }  }
	{ line_buf int 8 regular {array 112 { 2 3 } 1 1 }  }
	{ mul102_cast int 32 regular  }
	{ sext_ln181_1 int 31 regular  }
	{ zext_ln181 int 31 regular  }
	{ input_r int 64 regular  }
	{ gmem_in int 8 regular {axi_master 0}  }
	{ dw_in_zp int 32 regular  }
	{ b_4 int 32 regular  }
	{ b_7 int 32 regular  }
	{ b_6 int 32 regular  }
	{ b int 32 regular  }
	{ b_5 int 32 regular  }
	{ b_1 int 32 regular  }
	{ b_2 int 32 regular  }
	{ b_3 int 32 regular  }
	{ b_8 int 32 regular  }
	{ bias_val int 32 regular  }
	{ dw_multiplier int 32 regular  }
	{ half int 32 regular  }
	{ dw_shift int 32 regular  }
	{ dw_out_zp int 32 regular  }
	{ empty_58 int 17 regular  }
	{ empty int 17 regular  }
	{ dw_apply_relu6 int 32 regular  }
	{ p_out int 8 regular {pointer 1}  }
	{ p_out1 int 8 regular {pointer 1}  }
	{ p_out2 int 8 regular {pointer 1}  }
	{ p_out3 int 8 regular {pointer 1}  }
	{ p_out4 int 8 regular {pointer 1}  }
	{ p_out5 int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "window_11_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_10_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_9_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_8_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_7_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "window_6_reload", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "line_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "line_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "line_buf", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "mul102_cast", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln181_1", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln181", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "dw_in_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "b_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bias_val", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_multiplier", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "half", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_out_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "empty_58", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "empty", "interface" : "wire", "bitwidth" : 17, "direction" : "READONLY"} , 
 	{ "Name" : "dw_apply_relu6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 176
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_in_0_AWVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_AWREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_AWADDR sc_out sc_lv 64 signal 30 } 
	{ m_axi_gmem_in_0_AWID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_AWLEN sc_out sc_lv 32 signal 30 } 
	{ m_axi_gmem_in_0_AWSIZE sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_in_0_AWBURST sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_AWLOCK sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_AWCACHE sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_AWPROT sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_in_0_AWQOS sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_AWREGION sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_AWUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_WVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_WREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_WDATA sc_out sc_lv 8 signal 30 } 
	{ m_axi_gmem_in_0_WSTRB sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_WLAST sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_WID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_WUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_ARVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_ARREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_ARADDR sc_out sc_lv 64 signal 30 } 
	{ m_axi_gmem_in_0_ARID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_ARLEN sc_out sc_lv 32 signal 30 } 
	{ m_axi_gmem_in_0_ARSIZE sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_in_0_ARBURST sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_ARLOCK sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_ARCACHE sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_ARPROT sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_in_0_ARQOS sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_ARREGION sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_in_0_ARUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_RVALID sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_RREADY sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_RDATA sc_in sc_lv 8 signal 30 } 
	{ m_axi_gmem_in_0_RLAST sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_RID sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_RFIFONUM sc_in sc_lv 11 signal 30 } 
	{ m_axi_gmem_in_0_RUSER sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_RRESP sc_in sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_BVALID sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_BREADY sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_in_0_BRESP sc_in sc_lv 2 signal 30 } 
	{ m_axi_gmem_in_0_BID sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_in_0_BUSER sc_in sc_lv 1 signal 30 } 
	{ window_11_reload sc_in sc_lv 8 signal 0 } 
	{ window_10_reload sc_in sc_lv 8 signal 1 } 
	{ window_9_reload sc_in sc_lv 8 signal 2 } 
	{ window_8_reload sc_in sc_lv 8 signal 3 } 
	{ window_7_reload sc_in sc_lv 8 signal 4 } 
	{ window_6_reload sc_in sc_lv 8 signal 5 } 
	{ width sc_in sc_lv 31 signal 6 } 
	{ inter_buf_15_address0 sc_out sc_lv 13 signal 7 } 
	{ inter_buf_15_ce0 sc_out sc_logic 1 signal 7 } 
	{ inter_buf_15_we0 sc_out sc_logic 1 signal 7 } 
	{ inter_buf_15_d0 sc_out sc_lv 8 signal 7 } 
	{ inter_buf_14_address0 sc_out sc_lv 13 signal 8 } 
	{ inter_buf_14_ce0 sc_out sc_logic 1 signal 8 } 
	{ inter_buf_14_we0 sc_out sc_logic 1 signal 8 } 
	{ inter_buf_14_d0 sc_out sc_lv 8 signal 8 } 
	{ inter_buf_13_address0 sc_out sc_lv 13 signal 9 } 
	{ inter_buf_13_ce0 sc_out sc_logic 1 signal 9 } 
	{ inter_buf_13_we0 sc_out sc_logic 1 signal 9 } 
	{ inter_buf_13_d0 sc_out sc_lv 8 signal 9 } 
	{ inter_buf_12_address0 sc_out sc_lv 13 signal 10 } 
	{ inter_buf_12_ce0 sc_out sc_logic 1 signal 10 } 
	{ inter_buf_12_we0 sc_out sc_logic 1 signal 10 } 
	{ inter_buf_12_d0 sc_out sc_lv 8 signal 10 } 
	{ inter_buf_11_address0 sc_out sc_lv 13 signal 11 } 
	{ inter_buf_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ inter_buf_11_we0 sc_out sc_logic 1 signal 11 } 
	{ inter_buf_11_d0 sc_out sc_lv 8 signal 11 } 
	{ inter_buf_10_address0 sc_out sc_lv 13 signal 12 } 
	{ inter_buf_10_ce0 sc_out sc_logic 1 signal 12 } 
	{ inter_buf_10_we0 sc_out sc_logic 1 signal 12 } 
	{ inter_buf_10_d0 sc_out sc_lv 8 signal 12 } 
	{ inter_buf_9_address0 sc_out sc_lv 13 signal 13 } 
	{ inter_buf_9_ce0 sc_out sc_logic 1 signal 13 } 
	{ inter_buf_9_we0 sc_out sc_logic 1 signal 13 } 
	{ inter_buf_9_d0 sc_out sc_lv 8 signal 13 } 
	{ inter_buf_8_address0 sc_out sc_lv 13 signal 14 } 
	{ inter_buf_8_ce0 sc_out sc_logic 1 signal 14 } 
	{ inter_buf_8_we0 sc_out sc_logic 1 signal 14 } 
	{ inter_buf_8_d0 sc_out sc_lv 8 signal 14 } 
	{ inter_buf_7_address0 sc_out sc_lv 13 signal 15 } 
	{ inter_buf_7_ce0 sc_out sc_logic 1 signal 15 } 
	{ inter_buf_7_we0 sc_out sc_logic 1 signal 15 } 
	{ inter_buf_7_d0 sc_out sc_lv 8 signal 15 } 
	{ inter_buf_6_address0 sc_out sc_lv 13 signal 16 } 
	{ inter_buf_6_ce0 sc_out sc_logic 1 signal 16 } 
	{ inter_buf_6_we0 sc_out sc_logic 1 signal 16 } 
	{ inter_buf_6_d0 sc_out sc_lv 8 signal 16 } 
	{ inter_buf_5_address0 sc_out sc_lv 13 signal 17 } 
	{ inter_buf_5_ce0 sc_out sc_logic 1 signal 17 } 
	{ inter_buf_5_we0 sc_out sc_logic 1 signal 17 } 
	{ inter_buf_5_d0 sc_out sc_lv 8 signal 17 } 
	{ inter_buf_4_address0 sc_out sc_lv 13 signal 18 } 
	{ inter_buf_4_ce0 sc_out sc_logic 1 signal 18 } 
	{ inter_buf_4_we0 sc_out sc_logic 1 signal 18 } 
	{ inter_buf_4_d0 sc_out sc_lv 8 signal 18 } 
	{ inter_buf_3_address0 sc_out sc_lv 13 signal 19 } 
	{ inter_buf_3_ce0 sc_out sc_logic 1 signal 19 } 
	{ inter_buf_3_we0 sc_out sc_logic 1 signal 19 } 
	{ inter_buf_3_d0 sc_out sc_lv 8 signal 19 } 
	{ inter_buf_2_address0 sc_out sc_lv 13 signal 20 } 
	{ inter_buf_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ inter_buf_2_we0 sc_out sc_logic 1 signal 20 } 
	{ inter_buf_2_d0 sc_out sc_lv 8 signal 20 } 
	{ inter_buf_1_address0 sc_out sc_lv 13 signal 21 } 
	{ inter_buf_1_ce0 sc_out sc_logic 1 signal 21 } 
	{ inter_buf_1_we0 sc_out sc_logic 1 signal 21 } 
	{ inter_buf_1_d0 sc_out sc_lv 8 signal 21 } 
	{ inter_buf_0_address0 sc_out sc_lv 13 signal 22 } 
	{ inter_buf_0_ce0 sc_out sc_logic 1 signal 22 } 
	{ inter_buf_0_we0 sc_out sc_logic 1 signal 22 } 
	{ inter_buf_0_d0 sc_out sc_lv 8 signal 22 } 
	{ line_buf_2_address0 sc_out sc_lv 7 signal 23 } 
	{ line_buf_2_ce0 sc_out sc_logic 1 signal 23 } 
	{ line_buf_2_we0 sc_out sc_logic 1 signal 23 } 
	{ line_buf_2_d0 sc_out sc_lv 8 signal 23 } 
	{ line_buf_2_address1 sc_out sc_lv 7 signal 23 } 
	{ line_buf_2_ce1 sc_out sc_logic 1 signal 23 } 
	{ line_buf_2_q1 sc_in sc_lv 8 signal 23 } 
	{ line_buf_1_address0 sc_out sc_lv 7 signal 24 } 
	{ line_buf_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ line_buf_1_we0 sc_out sc_logic 1 signal 24 } 
	{ line_buf_1_d0 sc_out sc_lv 8 signal 24 } 
	{ line_buf_1_address1 sc_out sc_lv 7 signal 24 } 
	{ line_buf_1_ce1 sc_out sc_logic 1 signal 24 } 
	{ line_buf_1_q1 sc_in sc_lv 8 signal 24 } 
	{ line_buf_address0 sc_out sc_lv 7 signal 25 } 
	{ line_buf_ce0 sc_out sc_logic 1 signal 25 } 
	{ line_buf_we0 sc_out sc_logic 1 signal 25 } 
	{ line_buf_d0 sc_out sc_lv 8 signal 25 } 
	{ line_buf_q0 sc_in sc_lv 8 signal 25 } 
	{ mul102_cast sc_in sc_lv 32 signal 26 } 
	{ sext_ln181_1 sc_in sc_lv 31 signal 27 } 
	{ zext_ln181 sc_in sc_lv 31 signal 28 } 
	{ input_r sc_in sc_lv 64 signal 29 } 
	{ dw_in_zp sc_in sc_lv 32 signal 31 } 
	{ b_4 sc_in sc_lv 32 signal 32 } 
	{ b_7 sc_in sc_lv 32 signal 33 } 
	{ b_6 sc_in sc_lv 32 signal 34 } 
	{ b sc_in sc_lv 32 signal 35 } 
	{ b_5 sc_in sc_lv 32 signal 36 } 
	{ b_1 sc_in sc_lv 32 signal 37 } 
	{ b_2 sc_in sc_lv 32 signal 38 } 
	{ b_3 sc_in sc_lv 32 signal 39 } 
	{ b_8 sc_in sc_lv 32 signal 40 } 
	{ bias_val sc_in sc_lv 32 signal 41 } 
	{ dw_multiplier sc_in sc_lv 32 signal 42 } 
	{ half sc_in sc_lv 32 signal 43 } 
	{ dw_shift sc_in sc_lv 32 signal 44 } 
	{ dw_out_zp sc_in sc_lv 32 signal 45 } 
	{ empty_58 sc_in sc_lv 17 signal 46 } 
	{ empty sc_in sc_lv 17 signal 47 } 
	{ dw_apply_relu6 sc_in sc_lv 32 signal 48 } 
	{ p_out sc_out sc_lv 8 signal 49 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ p_out1 sc_out sc_lv 8 signal 50 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ p_out2 sc_out sc_lv 8 signal 51 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ p_out3 sc_out sc_lv 8 signal 52 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ p_out4 sc_out sc_lv 8 signal 53 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ p_out5 sc_out sc_lv 8 signal 54 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 54 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_in_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_in_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_in_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_in_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_in_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_in_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_in_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_in_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_in_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_in_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_in_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_in_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_in_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_in_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_in_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_in_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_in_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_in_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_in_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_in_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_in_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_in_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_in_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_in_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_in_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_in_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_in_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_in_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_in_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_in_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_in_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_in_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_in_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_in_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_in_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "0_BUSER" }} , 
 	{ "name": "window_11_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_11_reload", "role": "default" }} , 
 	{ "name": "window_10_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_10_reload", "role": "default" }} , 
 	{ "name": "window_9_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_9_reload", "role": "default" }} , 
 	{ "name": "window_8_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_8_reload", "role": "default" }} , 
 	{ "name": "window_7_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_7_reload", "role": "default" }} , 
 	{ "name": "window_6_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "window_6_reload", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "inter_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "address0" }} , 
 	{ "name": "inter_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "ce0" }} , 
 	{ "name": "inter_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "we0" }} , 
 	{ "name": "inter_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "d0" }} , 
 	{ "name": "inter_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "address0" }} , 
 	{ "name": "inter_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "ce0" }} , 
 	{ "name": "inter_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "we0" }} , 
 	{ "name": "inter_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "d0" }} , 
 	{ "name": "inter_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "address0" }} , 
 	{ "name": "inter_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "ce0" }} , 
 	{ "name": "inter_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "we0" }} , 
 	{ "name": "inter_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "d0" }} , 
 	{ "name": "inter_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "address0" }} , 
 	{ "name": "inter_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "ce0" }} , 
 	{ "name": "inter_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "we0" }} , 
 	{ "name": "inter_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "d0" }} , 
 	{ "name": "inter_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "address0" }} , 
 	{ "name": "inter_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "ce0" }} , 
 	{ "name": "inter_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "we0" }} , 
 	{ "name": "inter_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "d0" }} , 
 	{ "name": "inter_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "address0" }} , 
 	{ "name": "inter_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "ce0" }} , 
 	{ "name": "inter_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "we0" }} , 
 	{ "name": "inter_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "d0" }} , 
 	{ "name": "inter_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "address0" }} , 
 	{ "name": "inter_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "ce0" }} , 
 	{ "name": "inter_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "we0" }} , 
 	{ "name": "inter_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "d0" }} , 
 	{ "name": "inter_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "address0" }} , 
 	{ "name": "inter_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "ce0" }} , 
 	{ "name": "inter_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "we0" }} , 
 	{ "name": "inter_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "d0" }} , 
 	{ "name": "inter_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "address0" }} , 
 	{ "name": "inter_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "ce0" }} , 
 	{ "name": "inter_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "we0" }} , 
 	{ "name": "inter_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "d0" }} , 
 	{ "name": "inter_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "address0" }} , 
 	{ "name": "inter_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "ce0" }} , 
 	{ "name": "inter_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "we0" }} , 
 	{ "name": "inter_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "d0" }} , 
 	{ "name": "inter_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "address0" }} , 
 	{ "name": "inter_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "ce0" }} , 
 	{ "name": "inter_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "we0" }} , 
 	{ "name": "inter_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "d0" }} , 
 	{ "name": "inter_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "address0" }} , 
 	{ "name": "inter_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "ce0" }} , 
 	{ "name": "inter_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "we0" }} , 
 	{ "name": "inter_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "d0" }} , 
 	{ "name": "inter_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "address0" }} , 
 	{ "name": "inter_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "ce0" }} , 
 	{ "name": "inter_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "we0" }} , 
 	{ "name": "inter_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "d0" }} , 
 	{ "name": "inter_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "address0" }} , 
 	{ "name": "inter_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "ce0" }} , 
 	{ "name": "inter_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "we0" }} , 
 	{ "name": "inter_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "d0" }} , 
 	{ "name": "inter_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "address0" }} , 
 	{ "name": "inter_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "ce0" }} , 
 	{ "name": "inter_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "we0" }} , 
 	{ "name": "inter_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "d0" }} , 
 	{ "name": "inter_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "address0" }} , 
 	{ "name": "inter_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "ce0" }} , 
 	{ "name": "inter_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "we0" }} , 
 	{ "name": "inter_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "d0" }} , 
 	{ "name": "line_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "line_buf_2", "role": "address0" }} , 
 	{ "name": "line_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_2", "role": "ce0" }} , 
 	{ "name": "line_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_2", "role": "we0" }} , 
 	{ "name": "line_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf_2", "role": "d0" }} , 
 	{ "name": "line_buf_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "line_buf_2", "role": "address1" }} , 
 	{ "name": "line_buf_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_2", "role": "ce1" }} , 
 	{ "name": "line_buf_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf_2", "role": "q1" }} , 
 	{ "name": "line_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "line_buf_1", "role": "address0" }} , 
 	{ "name": "line_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_1", "role": "ce0" }} , 
 	{ "name": "line_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_1", "role": "we0" }} , 
 	{ "name": "line_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf_1", "role": "d0" }} , 
 	{ "name": "line_buf_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "line_buf_1", "role": "address1" }} , 
 	{ "name": "line_buf_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf_1", "role": "ce1" }} , 
 	{ "name": "line_buf_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf_1", "role": "q1" }} , 
 	{ "name": "line_buf_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "line_buf", "role": "address0" }} , 
 	{ "name": "line_buf_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf", "role": "ce0" }} , 
 	{ "name": "line_buf_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "line_buf", "role": "we0" }} , 
 	{ "name": "line_buf_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf", "role": "d0" }} , 
 	{ "name": "line_buf_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "line_buf", "role": "q0" }} , 
 	{ "name": "mul102_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "mul102_cast", "role": "default" }} , 
 	{ "name": "sext_ln181_1", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "sext_ln181_1", "role": "default" }} , 
 	{ "name": "zext_ln181", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "zext_ln181", "role": "default" }} , 
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "dw_in_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_in_zp", "role": "default" }} , 
 	{ "name": "b_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_4", "role": "default" }} , 
 	{ "name": "b_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_7", "role": "default" }} , 
 	{ "name": "b_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_6", "role": "default" }} , 
 	{ "name": "b", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b", "role": "default" }} , 
 	{ "name": "b_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_5", "role": "default" }} , 
 	{ "name": "b_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_1", "role": "default" }} , 
 	{ "name": "b_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_2", "role": "default" }} , 
 	{ "name": "b_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_3", "role": "default" }} , 
 	{ "name": "b_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "b_8", "role": "default" }} , 
 	{ "name": "bias_val", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bias_val", "role": "default" }} , 
 	{ "name": "dw_multiplier", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_multiplier", "role": "default" }} , 
 	{ "name": "half", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "half", "role": "default" }} , 
 	{ "name": "dw_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_shift", "role": "default" }} , 
 	{ "name": "dw_out_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_out_zp", "role": "default" }} , 
 	{ "name": "empty_58", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty_58", "role": "default" }} , 
 	{ "name": "empty", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "empty", "role": "default" }} , 
 	{ "name": "dw_apply_relu6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_apply_relu6", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12"],
		"CDFG" : "dw_row_stage_Pipeline_DW_LOOP_W",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "window_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "inter_buf_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "line_buf_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buf_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "line_buf", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "mul102_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln181_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "b", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "b_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "half", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DW_LOOP_W", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter12", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter12", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U50", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U51", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U52", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U53", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U54", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U55", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U56", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U57", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U58", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U59", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_33s_31ns_64_1_1_U60", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dw_row_stage_Pipeline_DW_LOOP_W {
		window_11_reload {Type I LastRead 0 FirstWrite -1}
		window_10_reload {Type I LastRead 0 FirstWrite -1}
		window_9_reload {Type I LastRead 0 FirstWrite -1}
		window_8_reload {Type I LastRead 0 FirstWrite -1}
		window_7_reload {Type I LastRead 0 FirstWrite -1}
		window_6_reload {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		inter_buf_15 {Type O LastRead -1 FirstWrite 12}
		inter_buf_14 {Type O LastRead -1 FirstWrite 12}
		inter_buf_13 {Type O LastRead -1 FirstWrite 12}
		inter_buf_12 {Type O LastRead -1 FirstWrite 12}
		inter_buf_11 {Type O LastRead -1 FirstWrite 12}
		inter_buf_10 {Type O LastRead -1 FirstWrite 12}
		inter_buf_9 {Type O LastRead -1 FirstWrite 12}
		inter_buf_8 {Type O LastRead -1 FirstWrite 12}
		inter_buf_7 {Type O LastRead -1 FirstWrite 12}
		inter_buf_6 {Type O LastRead -1 FirstWrite 12}
		inter_buf_5 {Type O LastRead -1 FirstWrite 12}
		inter_buf_4 {Type O LastRead -1 FirstWrite 12}
		inter_buf_3 {Type O LastRead -1 FirstWrite 12}
		inter_buf_2 {Type O LastRead -1 FirstWrite 12}
		inter_buf_1 {Type O LastRead -1 FirstWrite 12}
		inter_buf_0 {Type O LastRead -1 FirstWrite 12}
		line_buf_2 {Type IO LastRead 0 FirstWrite 10}
		line_buf_1 {Type IO LastRead 0 FirstWrite 1}
		line_buf {Type IO LastRead 1 FirstWrite 1}
		mul102_cast {Type I LastRead 0 FirstWrite -1}
		sext_ln181_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 9 FirstWrite -1}
		dw_in_zp {Type I LastRead 0 FirstWrite -1}
		b_4 {Type I LastRead 0 FirstWrite -1}
		b_7 {Type I LastRead 0 FirstWrite -1}
		b_6 {Type I LastRead 0 FirstWrite -1}
		b {Type I LastRead 0 FirstWrite -1}
		b_5 {Type I LastRead 0 FirstWrite -1}
		b_1 {Type I LastRead 0 FirstWrite -1}
		b_2 {Type I LastRead 0 FirstWrite -1}
		b_3 {Type I LastRead 0 FirstWrite -1}
		b_8 {Type I LastRead 0 FirstWrite -1}
		bias_val {Type I LastRead 0 FirstWrite -1}
		dw_multiplier {Type I LastRead 0 FirstWrite -1}
		half {Type I LastRead 0 FirstWrite -1}
		dw_shift {Type I LastRead 0 FirstWrite -1}
		dw_out_zp {Type I LastRead 0 FirstWrite -1}
		empty_58 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 11}
		p_out1 {Type O LastRead -1 FirstWrite 11}
		p_out2 {Type O LastRead -1 FirstWrite 11}
		p_out3 {Type O LastRead -1 FirstWrite 11}
		p_out4 {Type O LastRead -1 FirstWrite 11}
		p_out5 {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "14", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	window_11_reload { ap_none {  { window_11_reload in_data 0 8 } } }
	window_10_reload { ap_none {  { window_10_reload in_data 0 8 } } }
	window_9_reload { ap_none {  { window_9_reload in_data 0 8 } } }
	window_8_reload { ap_none {  { window_8_reload in_data 0 8 } } }
	window_7_reload { ap_none {  { window_7_reload in_data 0 8 } } }
	window_6_reload { ap_none {  { window_6_reload in_data 0 8 } } }
	width { ap_none {  { width in_data 0 31 } } }
	inter_buf_15 { ap_memory {  { inter_buf_15_address0 mem_address 1 13 }  { inter_buf_15_ce0 mem_ce 1 1 }  { inter_buf_15_we0 mem_we 1 1 }  { inter_buf_15_d0 mem_din 1 8 } } }
	inter_buf_14 { ap_memory {  { inter_buf_14_address0 mem_address 1 13 }  { inter_buf_14_ce0 mem_ce 1 1 }  { inter_buf_14_we0 mem_we 1 1 }  { inter_buf_14_d0 mem_din 1 8 } } }
	inter_buf_13 { ap_memory {  { inter_buf_13_address0 mem_address 1 13 }  { inter_buf_13_ce0 mem_ce 1 1 }  { inter_buf_13_we0 mem_we 1 1 }  { inter_buf_13_d0 mem_din 1 8 } } }
	inter_buf_12 { ap_memory {  { inter_buf_12_address0 mem_address 1 13 }  { inter_buf_12_ce0 mem_ce 1 1 }  { inter_buf_12_we0 mem_we 1 1 }  { inter_buf_12_d0 mem_din 1 8 } } }
	inter_buf_11 { ap_memory {  { inter_buf_11_address0 mem_address 1 13 }  { inter_buf_11_ce0 mem_ce 1 1 }  { inter_buf_11_we0 mem_we 1 1 }  { inter_buf_11_d0 mem_din 1 8 } } }
	inter_buf_10 { ap_memory {  { inter_buf_10_address0 mem_address 1 13 }  { inter_buf_10_ce0 mem_ce 1 1 }  { inter_buf_10_we0 mem_we 1 1 }  { inter_buf_10_d0 mem_din 1 8 } } }
	inter_buf_9 { ap_memory {  { inter_buf_9_address0 mem_address 1 13 }  { inter_buf_9_ce0 mem_ce 1 1 }  { inter_buf_9_we0 mem_we 1 1 }  { inter_buf_9_d0 mem_din 1 8 } } }
	inter_buf_8 { ap_memory {  { inter_buf_8_address0 mem_address 1 13 }  { inter_buf_8_ce0 mem_ce 1 1 }  { inter_buf_8_we0 mem_we 1 1 }  { inter_buf_8_d0 mem_din 1 8 } } }
	inter_buf_7 { ap_memory {  { inter_buf_7_address0 mem_address 1 13 }  { inter_buf_7_ce0 mem_ce 1 1 }  { inter_buf_7_we0 mem_we 1 1 }  { inter_buf_7_d0 mem_din 1 8 } } }
	inter_buf_6 { ap_memory {  { inter_buf_6_address0 mem_address 1 13 }  { inter_buf_6_ce0 mem_ce 1 1 }  { inter_buf_6_we0 mem_we 1 1 }  { inter_buf_6_d0 mem_din 1 8 } } }
	inter_buf_5 { ap_memory {  { inter_buf_5_address0 mem_address 1 13 }  { inter_buf_5_ce0 mem_ce 1 1 }  { inter_buf_5_we0 mem_we 1 1 }  { inter_buf_5_d0 mem_din 1 8 } } }
	inter_buf_4 { ap_memory {  { inter_buf_4_address0 mem_address 1 13 }  { inter_buf_4_ce0 mem_ce 1 1 }  { inter_buf_4_we0 mem_we 1 1 }  { inter_buf_4_d0 mem_din 1 8 } } }
	inter_buf_3 { ap_memory {  { inter_buf_3_address0 mem_address 1 13 }  { inter_buf_3_ce0 mem_ce 1 1 }  { inter_buf_3_we0 mem_we 1 1 }  { inter_buf_3_d0 mem_din 1 8 } } }
	inter_buf_2 { ap_memory {  { inter_buf_2_address0 mem_address 1 13 }  { inter_buf_2_ce0 mem_ce 1 1 }  { inter_buf_2_we0 mem_we 1 1 }  { inter_buf_2_d0 mem_din 1 8 } } }
	inter_buf_1 { ap_memory {  { inter_buf_1_address0 mem_address 1 13 }  { inter_buf_1_ce0 mem_ce 1 1 }  { inter_buf_1_we0 mem_we 1 1 }  { inter_buf_1_d0 mem_din 1 8 } } }
	inter_buf_0 { ap_memory {  { inter_buf_0_address0 mem_address 1 13 }  { inter_buf_0_ce0 mem_ce 1 1 }  { inter_buf_0_we0 mem_we 1 1 }  { inter_buf_0_d0 mem_din 1 8 } } }
	line_buf_2 { ap_memory {  { line_buf_2_address0 mem_address 1 7 }  { line_buf_2_ce0 mem_ce 1 1 }  { line_buf_2_we0 mem_we 1 1 }  { line_buf_2_d0 mem_din 1 8 }  { line_buf_2_address1 MemPortADDR2 1 7 }  { line_buf_2_ce1 MemPortCE2 1 1 }  { line_buf_2_q1 MemPortDOUT2 0 8 } } }
	line_buf_1 { ap_memory {  { line_buf_1_address0 mem_address 1 7 }  { line_buf_1_ce0 mem_ce 1 1 }  { line_buf_1_we0 mem_we 1 1 }  { line_buf_1_d0 mem_din 1 8 }  { line_buf_1_address1 MemPortADDR2 1 7 }  { line_buf_1_ce1 MemPortCE2 1 1 }  { line_buf_1_q1 MemPortDOUT2 0 8 } } }
	line_buf { ap_memory {  { line_buf_address0 mem_address 1 7 }  { line_buf_ce0 mem_ce 1 1 }  { line_buf_we0 mem_we 1 1 }  { line_buf_d0 mem_din 1 8 }  { line_buf_q0 mem_dout 0 8 } } }
	mul102_cast { ap_none {  { mul102_cast in_data 0 32 } } }
	sext_ln181_1 { ap_none {  { sext_ln181_1 in_data 0 31 } } }
	zext_ln181 { ap_none {  { zext_ln181 in_data 0 31 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_in_0_AWVALID VALID 1 1 }  { m_axi_gmem_in_0_AWREADY READY 0 1 }  { m_axi_gmem_in_0_AWADDR ADDR 1 64 }  { m_axi_gmem_in_0_AWID ID 1 1 }  { m_axi_gmem_in_0_AWLEN SIZE 1 32 }  { m_axi_gmem_in_0_AWSIZE BURST 1 3 }  { m_axi_gmem_in_0_AWBURST LOCK 1 2 }  { m_axi_gmem_in_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_0_AWCACHE PROT 1 4 }  { m_axi_gmem_in_0_AWPROT QOS 1 3 }  { m_axi_gmem_in_0_AWQOS REGION 1 4 }  { m_axi_gmem_in_0_AWREGION USER 1 4 }  { m_axi_gmem_in_0_AWUSER DATA 1 1 }  { m_axi_gmem_in_0_WVALID VALID 1 1 }  { m_axi_gmem_in_0_WREADY READY 0 1 }  { m_axi_gmem_in_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_in_0_WSTRB STRB 1 1 }  { m_axi_gmem_in_0_WLAST LAST 1 1 }  { m_axi_gmem_in_0_WID ID 1 1 }  { m_axi_gmem_in_0_WUSER DATA 1 1 }  { m_axi_gmem_in_0_ARVALID VALID 1 1 }  { m_axi_gmem_in_0_ARREADY READY 0 1 }  { m_axi_gmem_in_0_ARADDR ADDR 1 64 }  { m_axi_gmem_in_0_ARID ID 1 1 }  { m_axi_gmem_in_0_ARLEN SIZE 1 32 }  { m_axi_gmem_in_0_ARSIZE BURST 1 3 }  { m_axi_gmem_in_0_ARBURST LOCK 1 2 }  { m_axi_gmem_in_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_0_ARCACHE PROT 1 4 }  { m_axi_gmem_in_0_ARPROT QOS 1 3 }  { m_axi_gmem_in_0_ARQOS REGION 1 4 }  { m_axi_gmem_in_0_ARREGION USER 1 4 }  { m_axi_gmem_in_0_ARUSER DATA 1 1 }  { m_axi_gmem_in_0_RVALID VALID 0 1 }  { m_axi_gmem_in_0_RREADY READY 1 1 }  { m_axi_gmem_in_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_in_0_RLAST LAST 0 1 }  { m_axi_gmem_in_0_RID ID 0 1 }  { m_axi_gmem_in_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_in_0_RUSER DATA 0 1 }  { m_axi_gmem_in_0_RRESP RESP 0 2 }  { m_axi_gmem_in_0_BVALID VALID 0 1 }  { m_axi_gmem_in_0_BREADY READY 1 1 }  { m_axi_gmem_in_0_BRESP RESP 0 2 }  { m_axi_gmem_in_0_BID ID 0 1 }  { m_axi_gmem_in_0_BUSER DATA 0 1 } } }
	dw_in_zp { ap_none {  { dw_in_zp in_data 0 32 } } }
	b_4 { ap_none {  { b_4 in_data 0 32 } } }
	b_7 { ap_none {  { b_7 in_data 0 32 } } }
	b_6 { ap_none {  { b_6 in_data 0 32 } } }
	b { ap_none {  { b in_data 0 32 } } }
	b_5 { ap_none {  { b_5 in_data 0 32 } } }
	b_1 { ap_none {  { b_1 in_data 0 32 } } }
	b_2 { ap_none {  { b_2 in_data 0 32 } } }
	b_3 { ap_none {  { b_3 in_data 0 32 } } }
	b_8 { ap_none {  { b_8 in_data 0 32 } } }
	bias_val { ap_none {  { bias_val in_data 0 32 } } }
	dw_multiplier { ap_none {  { dw_multiplier in_data 0 32 } } }
	half { ap_none {  { half in_data 0 32 } } }
	dw_shift { ap_none {  { dw_shift in_data 0 32 } } }
	dw_out_zp { ap_none {  { dw_out_zp in_data 0 32 } } }
	empty_58 { ap_none {  { empty_58 in_data 0 17 } } }
	empty { ap_none {  { empty in_data 0 17 } } }
	dw_apply_relu6 { ap_none {  { dw_apply_relu6 in_data 0 32 } } }
	p_out { ap_vld {  { p_out out_data 1 8 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 8 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 8 }  { p_out2_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 8 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 8 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 8 }  { p_out5_ap_vld out_vld 1 1 } } }
}
