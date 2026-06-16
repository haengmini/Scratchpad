set moduleName dw_row_stage
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
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
set C_modelName {dw_row_stage}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict inter_buf_0 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_1 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_2 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_3 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_4 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_5 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_6 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_7 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_8 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_9 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_10 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_11 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_12 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_13 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_14 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
dict set ap_memory_interface_dict inter_buf_15 { MEM_WIDTH 8 MEM_SIZE 7168 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ gmem_in int 8 regular {axi_master 0}  }
	{ input_r int 64 regular  }
	{ gmem_dw_w int 32 regular {axi_master 0}  }
	{ dw_weights int 64 regular  }
	{ dw_bias int 64 regular  }
	{ inter_buf_0 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_1 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_2 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_3 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_4 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_5 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_6 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_7 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_8 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_9 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_10 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_11 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_12 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_13 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_14 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ inter_buf_15 int 8 regular {array 7168 { 0 3 } 0 1 }  }
	{ h_start int 31 regular  }
	{ height int 32 regular  }
	{ width int 32 regular  }
	{ c_in int 32 regular  }
	{ dw_in_zp int 32 regular  }
	{ dw_w_zp int 32 regular  }
	{ dw_out_zp int 32 regular  }
	{ dw_multiplier int 32 regular  }
	{ dw_shift int 32 regular  }
	{ dw_apply_relu6 int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_dw_w", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dw_weights","offset": { "type": "dynamic","port_name": "dw_weights","bundle": "control"},"direction": "READONLY"},{"cName": "dw_bias","offset": { "type": "dynamic","port_name": "dw_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "dw_weights", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "dw_bias", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "inter_buf_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "h_start", "interface" : "wire", "bitwidth" : 31, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_in_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_w_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_out_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_multiplier", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "dw_apply_relu6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 175
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_in_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem_in_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ input_r sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_dw_w_0_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_dw_w_0_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_dw_w_0_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_dw_w_0_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_dw_w_0_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_dw_w_0_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_dw_w_0_BUSER sc_in sc_lv 1 signal 2 } 
	{ dw_weights sc_in sc_lv 64 signal 3 } 
	{ dw_bias sc_in sc_lv 64 signal 4 } 
	{ inter_buf_0_address0 sc_out sc_lv 13 signal 5 } 
	{ inter_buf_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ inter_buf_0_we0 sc_out sc_logic 1 signal 5 } 
	{ inter_buf_0_d0 sc_out sc_lv 8 signal 5 } 
	{ inter_buf_1_address0 sc_out sc_lv 13 signal 6 } 
	{ inter_buf_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ inter_buf_1_we0 sc_out sc_logic 1 signal 6 } 
	{ inter_buf_1_d0 sc_out sc_lv 8 signal 6 } 
	{ inter_buf_2_address0 sc_out sc_lv 13 signal 7 } 
	{ inter_buf_2_ce0 sc_out sc_logic 1 signal 7 } 
	{ inter_buf_2_we0 sc_out sc_logic 1 signal 7 } 
	{ inter_buf_2_d0 sc_out sc_lv 8 signal 7 } 
	{ inter_buf_3_address0 sc_out sc_lv 13 signal 8 } 
	{ inter_buf_3_ce0 sc_out sc_logic 1 signal 8 } 
	{ inter_buf_3_we0 sc_out sc_logic 1 signal 8 } 
	{ inter_buf_3_d0 sc_out sc_lv 8 signal 8 } 
	{ inter_buf_4_address0 sc_out sc_lv 13 signal 9 } 
	{ inter_buf_4_ce0 sc_out sc_logic 1 signal 9 } 
	{ inter_buf_4_we0 sc_out sc_logic 1 signal 9 } 
	{ inter_buf_4_d0 sc_out sc_lv 8 signal 9 } 
	{ inter_buf_5_address0 sc_out sc_lv 13 signal 10 } 
	{ inter_buf_5_ce0 sc_out sc_logic 1 signal 10 } 
	{ inter_buf_5_we0 sc_out sc_logic 1 signal 10 } 
	{ inter_buf_5_d0 sc_out sc_lv 8 signal 10 } 
	{ inter_buf_6_address0 sc_out sc_lv 13 signal 11 } 
	{ inter_buf_6_ce0 sc_out sc_logic 1 signal 11 } 
	{ inter_buf_6_we0 sc_out sc_logic 1 signal 11 } 
	{ inter_buf_6_d0 sc_out sc_lv 8 signal 11 } 
	{ inter_buf_7_address0 sc_out sc_lv 13 signal 12 } 
	{ inter_buf_7_ce0 sc_out sc_logic 1 signal 12 } 
	{ inter_buf_7_we0 sc_out sc_logic 1 signal 12 } 
	{ inter_buf_7_d0 sc_out sc_lv 8 signal 12 } 
	{ inter_buf_8_address0 sc_out sc_lv 13 signal 13 } 
	{ inter_buf_8_ce0 sc_out sc_logic 1 signal 13 } 
	{ inter_buf_8_we0 sc_out sc_logic 1 signal 13 } 
	{ inter_buf_8_d0 sc_out sc_lv 8 signal 13 } 
	{ inter_buf_9_address0 sc_out sc_lv 13 signal 14 } 
	{ inter_buf_9_ce0 sc_out sc_logic 1 signal 14 } 
	{ inter_buf_9_we0 sc_out sc_logic 1 signal 14 } 
	{ inter_buf_9_d0 sc_out sc_lv 8 signal 14 } 
	{ inter_buf_10_address0 sc_out sc_lv 13 signal 15 } 
	{ inter_buf_10_ce0 sc_out sc_logic 1 signal 15 } 
	{ inter_buf_10_we0 sc_out sc_logic 1 signal 15 } 
	{ inter_buf_10_d0 sc_out sc_lv 8 signal 15 } 
	{ inter_buf_11_address0 sc_out sc_lv 13 signal 16 } 
	{ inter_buf_11_ce0 sc_out sc_logic 1 signal 16 } 
	{ inter_buf_11_we0 sc_out sc_logic 1 signal 16 } 
	{ inter_buf_11_d0 sc_out sc_lv 8 signal 16 } 
	{ inter_buf_12_address0 sc_out sc_lv 13 signal 17 } 
	{ inter_buf_12_ce0 sc_out sc_logic 1 signal 17 } 
	{ inter_buf_12_we0 sc_out sc_logic 1 signal 17 } 
	{ inter_buf_12_d0 sc_out sc_lv 8 signal 17 } 
	{ inter_buf_13_address0 sc_out sc_lv 13 signal 18 } 
	{ inter_buf_13_ce0 sc_out sc_logic 1 signal 18 } 
	{ inter_buf_13_we0 sc_out sc_logic 1 signal 18 } 
	{ inter_buf_13_d0 sc_out sc_lv 8 signal 18 } 
	{ inter_buf_14_address0 sc_out sc_lv 13 signal 19 } 
	{ inter_buf_14_ce0 sc_out sc_logic 1 signal 19 } 
	{ inter_buf_14_we0 sc_out sc_logic 1 signal 19 } 
	{ inter_buf_14_d0 sc_out sc_lv 8 signal 19 } 
	{ inter_buf_15_address0 sc_out sc_lv 13 signal 20 } 
	{ inter_buf_15_ce0 sc_out sc_logic 1 signal 20 } 
	{ inter_buf_15_we0 sc_out sc_logic 1 signal 20 } 
	{ inter_buf_15_d0 sc_out sc_lv 8 signal 20 } 
	{ h_start sc_in sc_lv 31 signal 21 } 
	{ height sc_in sc_lv 32 signal 22 } 
	{ width sc_in sc_lv 32 signal 23 } 
	{ c_in sc_in sc_lv 32 signal 24 } 
	{ dw_in_zp sc_in sc_lv 32 signal 25 } 
	{ dw_w_zp sc_in sc_lv 32 signal 26 } 
	{ dw_out_zp sc_in sc_lv 32 signal 27 } 
	{ dw_multiplier sc_in sc_lv 32 signal 28 } 
	{ dw_shift sc_in sc_lv 32 signal 29 } 
	{ dw_apply_relu6 sc_in sc_lv 32 signal 30 } 
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
 	{ "name": "input_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "input_r", "role": "default" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_dw_w_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "0_BUSER" }} , 
 	{ "name": "dw_weights", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dw_weights", "role": "default" }} , 
 	{ "name": "dw_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dw_bias", "role": "default" }} , 
 	{ "name": "inter_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "address0" }} , 
 	{ "name": "inter_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "ce0" }} , 
 	{ "name": "inter_buf_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "we0" }} , 
 	{ "name": "inter_buf_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "d0" }} , 
 	{ "name": "inter_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "address0" }} , 
 	{ "name": "inter_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "ce0" }} , 
 	{ "name": "inter_buf_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "we0" }} , 
 	{ "name": "inter_buf_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "d0" }} , 
 	{ "name": "inter_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "address0" }} , 
 	{ "name": "inter_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "ce0" }} , 
 	{ "name": "inter_buf_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "we0" }} , 
 	{ "name": "inter_buf_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "d0" }} , 
 	{ "name": "inter_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "address0" }} , 
 	{ "name": "inter_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "ce0" }} , 
 	{ "name": "inter_buf_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "we0" }} , 
 	{ "name": "inter_buf_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "d0" }} , 
 	{ "name": "inter_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "address0" }} , 
 	{ "name": "inter_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "ce0" }} , 
 	{ "name": "inter_buf_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "we0" }} , 
 	{ "name": "inter_buf_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "d0" }} , 
 	{ "name": "inter_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "address0" }} , 
 	{ "name": "inter_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "ce0" }} , 
 	{ "name": "inter_buf_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "we0" }} , 
 	{ "name": "inter_buf_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "d0" }} , 
 	{ "name": "inter_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "address0" }} , 
 	{ "name": "inter_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "ce0" }} , 
 	{ "name": "inter_buf_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "we0" }} , 
 	{ "name": "inter_buf_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "d0" }} , 
 	{ "name": "inter_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "address0" }} , 
 	{ "name": "inter_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "ce0" }} , 
 	{ "name": "inter_buf_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "we0" }} , 
 	{ "name": "inter_buf_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "d0" }} , 
 	{ "name": "inter_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "address0" }} , 
 	{ "name": "inter_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "ce0" }} , 
 	{ "name": "inter_buf_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "we0" }} , 
 	{ "name": "inter_buf_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "d0" }} , 
 	{ "name": "inter_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "address0" }} , 
 	{ "name": "inter_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "ce0" }} , 
 	{ "name": "inter_buf_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "we0" }} , 
 	{ "name": "inter_buf_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "d0" }} , 
 	{ "name": "inter_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "address0" }} , 
 	{ "name": "inter_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "ce0" }} , 
 	{ "name": "inter_buf_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "we0" }} , 
 	{ "name": "inter_buf_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "d0" }} , 
 	{ "name": "inter_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "address0" }} , 
 	{ "name": "inter_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "ce0" }} , 
 	{ "name": "inter_buf_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "we0" }} , 
 	{ "name": "inter_buf_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "d0" }} , 
 	{ "name": "inter_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "address0" }} , 
 	{ "name": "inter_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "ce0" }} , 
 	{ "name": "inter_buf_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "we0" }} , 
 	{ "name": "inter_buf_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "d0" }} , 
 	{ "name": "inter_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "address0" }} , 
 	{ "name": "inter_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "ce0" }} , 
 	{ "name": "inter_buf_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "we0" }} , 
 	{ "name": "inter_buf_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "d0" }} , 
 	{ "name": "inter_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "address0" }} , 
 	{ "name": "inter_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "ce0" }} , 
 	{ "name": "inter_buf_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "we0" }} , 
 	{ "name": "inter_buf_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "d0" }} , 
 	{ "name": "inter_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "address0" }} , 
 	{ "name": "inter_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "ce0" }} , 
 	{ "name": "inter_buf_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "we0" }} , 
 	{ "name": "inter_buf_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "d0" }} , 
 	{ "name": "h_start", "direction": "in", "datatype": "sc_lv", "bitwidth":31, "type": "signal", "bundle":{"name": "h_start", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "c_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_in", "role": "default" }} , 
 	{ "name": "dw_in_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_in_zp", "role": "default" }} , 
 	{ "name": "dw_w_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_w_zp", "role": "default" }} , 
 	{ "name": "dw_out_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_out_zp", "role": "default" }} , 
 	{ "name": "dw_multiplier", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_multiplier", "role": "default" }} , 
 	{ "name": "dw_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_shift", "role": "default" }} , 
 	{ "name": "dw_apply_relu6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "dw_apply_relu6", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "6", "9", "11", "24", "25"],
		"CDFG" : "dw_row_stage",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "6", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476", "Port" : "gmem_in", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "gmem_in", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_dw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_dw_w_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450", "Port" : "gmem_dw_w", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "h_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_w_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DW_LOOP_C", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "15", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state15"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.line_buf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "w_cache_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "w_cache", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_dw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_dw_w_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "w_cache_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "w_cache_9_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DW_LOAD_W_VITIS_LOOP_187_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476", "Parent" : "0", "Child" : ["7", "8"],
		"CDFG" : "dw_row_stage_Pipeline_DW_INIT_LB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "235", "EstimateLatencyMax" : "235",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "line_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "line_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "line_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "empty_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln181_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln181", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_in_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_in_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln181_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_start", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DW_INIT_LB", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476.mul_33s_31ns_64_1_1_U23", "Parent" : "6"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_INIT_WIN_fu_493", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "dw_row_stage_Pipeline_DW_INIT_WIN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "window_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "window", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "window_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "window_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "window_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "window_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "window_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "window_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "DW_INIT_WIN", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_INIT_WIN_fu_493.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"],
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
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U50", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U51", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U52", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U53", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U54", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U55", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U56", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U57", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U58", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U59", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_33s_31ns_64_1_1_U60", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_31ns_32s_32_1_1_U117", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U118", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dw_row_stage {
		gmem_in {Type I LastRead 10 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		gmem_dw_w {Type I LastRead 11 FirstWrite -1}
		dw_weights {Type I LastRead 0 FirstWrite -1}
		dw_bias {Type I LastRead 0 FirstWrite -1}
		inter_buf_0 {Type O LastRead -1 FirstWrite 12}
		inter_buf_1 {Type O LastRead -1 FirstWrite 12}
		inter_buf_2 {Type O LastRead -1 FirstWrite 12}
		inter_buf_3 {Type O LastRead -1 FirstWrite 12}
		inter_buf_4 {Type O LastRead -1 FirstWrite 12}
		inter_buf_5 {Type O LastRead -1 FirstWrite 12}
		inter_buf_6 {Type O LastRead -1 FirstWrite 12}
		inter_buf_7 {Type O LastRead -1 FirstWrite 12}
		inter_buf_8 {Type O LastRead -1 FirstWrite 12}
		inter_buf_9 {Type O LastRead -1 FirstWrite 12}
		inter_buf_10 {Type O LastRead -1 FirstWrite 12}
		inter_buf_11 {Type O LastRead -1 FirstWrite 12}
		inter_buf_12 {Type O LastRead -1 FirstWrite 12}
		inter_buf_13 {Type O LastRead -1 FirstWrite 12}
		inter_buf_14 {Type O LastRead -1 FirstWrite 12}
		inter_buf_15 {Type O LastRead -1 FirstWrite 12}
		h_start {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		dw_in_zp {Type I LastRead 0 FirstWrite -1}
		dw_w_zp {Type I LastRead 0 FirstWrite -1}
		dw_out_zp {Type I LastRead 0 FirstWrite -1}
		dw_multiplier {Type I LastRead 0 FirstWrite -1}
		dw_shift {Type I LastRead 0 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 0 FirstWrite -1}}
	dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1 {
		w_cache_8 {Type I LastRead 0 FirstWrite -1}
		w_cache_7 {Type I LastRead 0 FirstWrite -1}
		w_cache_6 {Type I LastRead 0 FirstWrite -1}
		w_cache_5 {Type I LastRead 0 FirstWrite -1}
		w_cache_4 {Type I LastRead 0 FirstWrite -1}
		w_cache_3 {Type I LastRead 0 FirstWrite -1}
		w_cache_2 {Type I LastRead 0 FirstWrite -1}
		w_cache_1 {Type I LastRead 0 FirstWrite -1}
		w_cache {Type I LastRead 0 FirstWrite -1}
		zext_ln181_3 {Type I LastRead 0 FirstWrite -1}
		dw_weights {Type I LastRead 0 FirstWrite -1}
		gmem_dw_w {Type I LastRead 9 FirstWrite -1}
		w_cache_17_out {Type O LastRead -1 FirstWrite 9}
		w_cache_16_out {Type O LastRead -1 FirstWrite 9}
		w_cache_15_out {Type O LastRead -1 FirstWrite 9}
		w_cache_14_out {Type O LastRead -1 FirstWrite 9}
		w_cache_13_out {Type O LastRead -1 FirstWrite 9}
		w_cache_12_out {Type O LastRead -1 FirstWrite 9}
		w_cache_11_out {Type O LastRead -1 FirstWrite 9}
		w_cache_10_out {Type O LastRead -1 FirstWrite 9}
		w_cache_9_out {Type O LastRead -1 FirstWrite 9}}
	dw_row_stage_Pipeline_DW_INIT_LB {
		line_buf {Type O LastRead -1 FirstWrite 0}
		line_buf_1 {Type O LastRead -1 FirstWrite 0}
		line_buf_2 {Type O LastRead -1 FirstWrite 0}
		empty_59 {Type I LastRead 0 FirstWrite -1}
		sext_ln181 {Type I LastRead 0 FirstWrite -1}
		sext_ln181_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln181 {Type I LastRead 0 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 10 FirstWrite -1}
		sext_ln181_2 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		h_start {Type I LastRead 0 FirstWrite -1}}
	dw_row_stage_Pipeline_DW_INIT_WIN {
		window_5 {Type I LastRead 0 FirstWrite -1}
		window_4 {Type I LastRead 0 FirstWrite -1}
		window_3 {Type I LastRead 0 FirstWrite -1}
		window_2 {Type I LastRead 0 FirstWrite -1}
		window_1 {Type I LastRead 0 FirstWrite -1}
		window {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		window_11_out {Type O LastRead -1 FirstWrite 1}
		window_10_out {Type O LastRead -1 FirstWrite 1}
		window_9_out {Type O LastRead -1 FirstWrite 1}
		window_8_out {Type O LastRead -1 FirstWrite 1}
		window_7_out {Type O LastRead -1 FirstWrite 1}
		window_6_out {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_in_0_AWVALID VALID 1 1 }  { m_axi_gmem_in_0_AWREADY READY 0 1 }  { m_axi_gmem_in_0_AWADDR ADDR 1 64 }  { m_axi_gmem_in_0_AWID ID 1 1 }  { m_axi_gmem_in_0_AWLEN SIZE 1 32 }  { m_axi_gmem_in_0_AWSIZE BURST 1 3 }  { m_axi_gmem_in_0_AWBURST LOCK 1 2 }  { m_axi_gmem_in_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_0_AWCACHE PROT 1 4 }  { m_axi_gmem_in_0_AWPROT QOS 1 3 }  { m_axi_gmem_in_0_AWQOS REGION 1 4 }  { m_axi_gmem_in_0_AWREGION USER 1 4 }  { m_axi_gmem_in_0_AWUSER DATA 1 1 }  { m_axi_gmem_in_0_WVALID VALID 1 1 }  { m_axi_gmem_in_0_WREADY READY 0 1 }  { m_axi_gmem_in_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_in_0_WSTRB STRB 1 1 }  { m_axi_gmem_in_0_WLAST LAST 1 1 }  { m_axi_gmem_in_0_WID ID 1 1 }  { m_axi_gmem_in_0_WUSER DATA 1 1 }  { m_axi_gmem_in_0_ARVALID VALID 1 1 }  { m_axi_gmem_in_0_ARREADY READY 0 1 }  { m_axi_gmem_in_0_ARADDR ADDR 1 64 }  { m_axi_gmem_in_0_ARID ID 1 1 }  { m_axi_gmem_in_0_ARLEN SIZE 1 32 }  { m_axi_gmem_in_0_ARSIZE BURST 1 3 }  { m_axi_gmem_in_0_ARBURST LOCK 1 2 }  { m_axi_gmem_in_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_0_ARCACHE PROT 1 4 }  { m_axi_gmem_in_0_ARPROT QOS 1 3 }  { m_axi_gmem_in_0_ARQOS REGION 1 4 }  { m_axi_gmem_in_0_ARREGION USER 1 4 }  { m_axi_gmem_in_0_ARUSER DATA 1 1 }  { m_axi_gmem_in_0_RVALID VALID 0 1 }  { m_axi_gmem_in_0_RREADY READY 1 1 }  { m_axi_gmem_in_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_in_0_RLAST LAST 0 1 }  { m_axi_gmem_in_0_RID ID 0 1 }  { m_axi_gmem_in_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_in_0_RUSER DATA 0 1 }  { m_axi_gmem_in_0_RRESP RESP 0 2 }  { m_axi_gmem_in_0_BVALID VALID 0 1 }  { m_axi_gmem_in_0_BREADY READY 1 1 }  { m_axi_gmem_in_0_BRESP RESP 0 2 }  { m_axi_gmem_in_0_BID ID 0 1 }  { m_axi_gmem_in_0_BUSER DATA 0 1 } } }
	input_r { ap_none {  { input_r in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_dw_w_0_AWVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_AWREADY READY 0 1 }  { m_axi_gmem_dw_w_0_AWADDR ADDR 1 64 }  { m_axi_gmem_dw_w_0_AWID ID 1 1 }  { m_axi_gmem_dw_w_0_AWLEN SIZE 1 32 }  { m_axi_gmem_dw_w_0_AWSIZE BURST 1 3 }  { m_axi_gmem_dw_w_0_AWBURST LOCK 1 2 }  { m_axi_gmem_dw_w_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_0_AWCACHE PROT 1 4 }  { m_axi_gmem_dw_w_0_AWPROT QOS 1 3 }  { m_axi_gmem_dw_w_0_AWQOS REGION 1 4 }  { m_axi_gmem_dw_w_0_AWREGION USER 1 4 }  { m_axi_gmem_dw_w_0_AWUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_WVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_WREADY READY 0 1 }  { m_axi_gmem_dw_w_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_dw_w_0_WSTRB STRB 1 4 }  { m_axi_gmem_dw_w_0_WLAST LAST 1 1 }  { m_axi_gmem_dw_w_0_WID ID 1 1 }  { m_axi_gmem_dw_w_0_WUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_ARVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_ARREADY READY 0 1 }  { m_axi_gmem_dw_w_0_ARADDR ADDR 1 64 }  { m_axi_gmem_dw_w_0_ARID ID 1 1 }  { m_axi_gmem_dw_w_0_ARLEN SIZE 1 32 }  { m_axi_gmem_dw_w_0_ARSIZE BURST 1 3 }  { m_axi_gmem_dw_w_0_ARBURST LOCK 1 2 }  { m_axi_gmem_dw_w_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_0_ARCACHE PROT 1 4 }  { m_axi_gmem_dw_w_0_ARPROT QOS 1 3 }  { m_axi_gmem_dw_w_0_ARQOS REGION 1 4 }  { m_axi_gmem_dw_w_0_ARREGION USER 1 4 }  { m_axi_gmem_dw_w_0_ARUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_RVALID VALID 0 1 }  { m_axi_gmem_dw_w_0_RREADY READY 1 1 }  { m_axi_gmem_dw_w_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_dw_w_0_RLAST LAST 0 1 }  { m_axi_gmem_dw_w_0_RID ID 0 1 }  { m_axi_gmem_dw_w_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_dw_w_0_RUSER DATA 0 1 }  { m_axi_gmem_dw_w_0_RRESP RESP 0 2 }  { m_axi_gmem_dw_w_0_BVALID VALID 0 1 }  { m_axi_gmem_dw_w_0_BREADY READY 1 1 }  { m_axi_gmem_dw_w_0_BRESP RESP 0 2 }  { m_axi_gmem_dw_w_0_BID ID 0 1 }  { m_axi_gmem_dw_w_0_BUSER DATA 0 1 } } }
	dw_weights { ap_none {  { dw_weights in_data 0 64 } } }
	dw_bias { ap_none {  { dw_bias in_data 0 64 } } }
	inter_buf_0 { ap_memory {  { inter_buf_0_address0 mem_address 1 13 }  { inter_buf_0_ce0 mem_ce 1 1 }  { inter_buf_0_we0 mem_we 1 1 }  { inter_buf_0_d0 mem_din 1 8 } } }
	inter_buf_1 { ap_memory {  { inter_buf_1_address0 mem_address 1 13 }  { inter_buf_1_ce0 mem_ce 1 1 }  { inter_buf_1_we0 mem_we 1 1 }  { inter_buf_1_d0 mem_din 1 8 } } }
	inter_buf_2 { ap_memory {  { inter_buf_2_address0 mem_address 1 13 }  { inter_buf_2_ce0 mem_ce 1 1 }  { inter_buf_2_we0 mem_we 1 1 }  { inter_buf_2_d0 mem_din 1 8 } } }
	inter_buf_3 { ap_memory {  { inter_buf_3_address0 mem_address 1 13 }  { inter_buf_3_ce0 mem_ce 1 1 }  { inter_buf_3_we0 mem_we 1 1 }  { inter_buf_3_d0 mem_din 1 8 } } }
	inter_buf_4 { ap_memory {  { inter_buf_4_address0 mem_address 1 13 }  { inter_buf_4_ce0 mem_ce 1 1 }  { inter_buf_4_we0 mem_we 1 1 }  { inter_buf_4_d0 mem_din 1 8 } } }
	inter_buf_5 { ap_memory {  { inter_buf_5_address0 mem_address 1 13 }  { inter_buf_5_ce0 mem_ce 1 1 }  { inter_buf_5_we0 mem_we 1 1 }  { inter_buf_5_d0 mem_din 1 8 } } }
	inter_buf_6 { ap_memory {  { inter_buf_6_address0 mem_address 1 13 }  { inter_buf_6_ce0 mem_ce 1 1 }  { inter_buf_6_we0 mem_we 1 1 }  { inter_buf_6_d0 mem_din 1 8 } } }
	inter_buf_7 { ap_memory {  { inter_buf_7_address0 mem_address 1 13 }  { inter_buf_7_ce0 mem_ce 1 1 }  { inter_buf_7_we0 mem_we 1 1 }  { inter_buf_7_d0 mem_din 1 8 } } }
	inter_buf_8 { ap_memory {  { inter_buf_8_address0 mem_address 1 13 }  { inter_buf_8_ce0 mem_ce 1 1 }  { inter_buf_8_we0 mem_we 1 1 }  { inter_buf_8_d0 mem_din 1 8 } } }
	inter_buf_9 { ap_memory {  { inter_buf_9_address0 mem_address 1 13 }  { inter_buf_9_ce0 mem_ce 1 1 }  { inter_buf_9_we0 mem_we 1 1 }  { inter_buf_9_d0 mem_din 1 8 } } }
	inter_buf_10 { ap_memory {  { inter_buf_10_address0 mem_address 1 13 }  { inter_buf_10_ce0 mem_ce 1 1 }  { inter_buf_10_we0 mem_we 1 1 }  { inter_buf_10_d0 mem_din 1 8 } } }
	inter_buf_11 { ap_memory {  { inter_buf_11_address0 mem_address 1 13 }  { inter_buf_11_ce0 mem_ce 1 1 }  { inter_buf_11_we0 mem_we 1 1 }  { inter_buf_11_d0 mem_din 1 8 } } }
	inter_buf_12 { ap_memory {  { inter_buf_12_address0 mem_address 1 13 }  { inter_buf_12_ce0 mem_ce 1 1 }  { inter_buf_12_we0 mem_we 1 1 }  { inter_buf_12_d0 mem_din 1 8 } } }
	inter_buf_13 { ap_memory {  { inter_buf_13_address0 mem_address 1 13 }  { inter_buf_13_ce0 mem_ce 1 1 }  { inter_buf_13_we0 mem_we 1 1 }  { inter_buf_13_d0 mem_din 1 8 } } }
	inter_buf_14 { ap_memory {  { inter_buf_14_address0 mem_address 1 13 }  { inter_buf_14_ce0 mem_ce 1 1 }  { inter_buf_14_we0 mem_we 1 1 }  { inter_buf_14_d0 mem_din 1 8 } } }
	inter_buf_15 { ap_memory {  { inter_buf_15_address0 mem_address 1 13 }  { inter_buf_15_ce0 mem_ce 1 1 }  { inter_buf_15_we0 mem_we 1 1 }  { inter_buf_15_d0 mem_din 1 8 } } }
	h_start { ap_none {  { h_start in_data 0 31 } } }
	height { ap_none {  { height in_data 0 32 } } }
	width { ap_none {  { width in_data 0 32 } } }
	c_in { ap_none {  { c_in in_data 0 32 } } }
	dw_in_zp { ap_none {  { dw_in_zp in_data 0 32 } } }
	dw_w_zp { ap_none {  { dw_w_zp in_data 0 32 } } }
	dw_out_zp { ap_none {  { dw_out_zp in_data 0 32 } } }
	dw_multiplier { ap_none {  { dw_multiplier in_data 0 32 } } }
	dw_shift { ap_none {  { dw_shift in_data 0 32 } } }
	dw_apply_relu6 { ap_none {  { dw_apply_relu6 in_data 0 32 } } }
}
