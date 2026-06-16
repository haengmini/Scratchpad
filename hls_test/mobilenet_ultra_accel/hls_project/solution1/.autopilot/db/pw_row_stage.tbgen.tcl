set moduleName pw_row_stage
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
set C_modelName {pw_row_stage}
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
	{ inter_buf_0 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_1 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_2 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_3 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_4 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_5 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_6 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_7 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_8 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_9 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_10 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_11 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_12 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_13 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_14 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ inter_buf_15 int 8 regular {array 7168 { 1 3 } 1 1 }  }
	{ gmem_pw_w int 32 regular {axi_master 0}  }
	{ pw_weights int 64 regular  }
	{ pw_bias int 64 regular  }
	{ gmem_out int 8 regular {axi_master 1}  }
	{ output_r int 64 regular  }
	{ h_start int 32 regular  }
	{ height int 32 regular  }
	{ width int 32 regular  }
	{ c_in int 32 regular  }
	{ c_out int 32 regular  }
	{ pw_act_zp int 16 regular  }
	{ pw_wgt_zp int 16 regular  }
	{ pw_out_zp int 32 regular  }
	{ pw_M_mantissa int 32 regular  }
	{ pw_M_shift int 32 regular  }
	{ pw_use_bias int 32 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "inter_buf_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_8", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_9", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_10", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_11", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_12", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_13", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_14", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "inter_buf_15", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_pw_w", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "pw_weights","offset": { "type": "dynamic","port_name": "pw_weights","bundle": "control"},"direction": "READONLY"},{"cName": "pw_bias","offset": { "type": "dynamic","port_name": "pw_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "pw_weights", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "pw_bias", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_out", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "output_r", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "h_start", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "height", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "width", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_in", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "c_out", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pw_act_zp", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pw_wgt_zp", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "pw_out_zp", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pw_M_mantissa", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pw_M_shift", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pw_use_bias", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 160
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ inter_buf_0_address0 sc_out sc_lv 13 signal 0 } 
	{ inter_buf_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ inter_buf_0_q0 sc_in sc_lv 8 signal 0 } 
	{ inter_buf_1_address0 sc_out sc_lv 13 signal 1 } 
	{ inter_buf_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ inter_buf_1_q0 sc_in sc_lv 8 signal 1 } 
	{ inter_buf_2_address0 sc_out sc_lv 13 signal 2 } 
	{ inter_buf_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ inter_buf_2_q0 sc_in sc_lv 8 signal 2 } 
	{ inter_buf_3_address0 sc_out sc_lv 13 signal 3 } 
	{ inter_buf_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ inter_buf_3_q0 sc_in sc_lv 8 signal 3 } 
	{ inter_buf_4_address0 sc_out sc_lv 13 signal 4 } 
	{ inter_buf_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ inter_buf_4_q0 sc_in sc_lv 8 signal 4 } 
	{ inter_buf_5_address0 sc_out sc_lv 13 signal 5 } 
	{ inter_buf_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ inter_buf_5_q0 sc_in sc_lv 8 signal 5 } 
	{ inter_buf_6_address0 sc_out sc_lv 13 signal 6 } 
	{ inter_buf_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ inter_buf_6_q0 sc_in sc_lv 8 signal 6 } 
	{ inter_buf_7_address0 sc_out sc_lv 13 signal 7 } 
	{ inter_buf_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ inter_buf_7_q0 sc_in sc_lv 8 signal 7 } 
	{ inter_buf_8_address0 sc_out sc_lv 13 signal 8 } 
	{ inter_buf_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ inter_buf_8_q0 sc_in sc_lv 8 signal 8 } 
	{ inter_buf_9_address0 sc_out sc_lv 13 signal 9 } 
	{ inter_buf_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ inter_buf_9_q0 sc_in sc_lv 8 signal 9 } 
	{ inter_buf_10_address0 sc_out sc_lv 13 signal 10 } 
	{ inter_buf_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ inter_buf_10_q0 sc_in sc_lv 8 signal 10 } 
	{ inter_buf_11_address0 sc_out sc_lv 13 signal 11 } 
	{ inter_buf_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ inter_buf_11_q0 sc_in sc_lv 8 signal 11 } 
	{ inter_buf_12_address0 sc_out sc_lv 13 signal 12 } 
	{ inter_buf_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ inter_buf_12_q0 sc_in sc_lv 8 signal 12 } 
	{ inter_buf_13_address0 sc_out sc_lv 13 signal 13 } 
	{ inter_buf_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ inter_buf_13_q0 sc_in sc_lv 8 signal 13 } 
	{ inter_buf_14_address0 sc_out sc_lv 13 signal 14 } 
	{ inter_buf_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ inter_buf_14_q0 sc_in sc_lv 8 signal 14 } 
	{ inter_buf_15_address0 sc_out sc_lv 13 signal 15 } 
	{ inter_buf_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ inter_buf_15_q0 sc_in sc_lv 8 signal 15 } 
	{ m_axi_gmem_pw_w_0_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_WDATA sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_pw_w_0_WSTRB sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARLEN sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_pw_w_0_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RDATA sc_in sc_lv 32 signal 16 } 
	{ m_axi_gmem_pw_w_0_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RFIFONUM sc_in sc_lv 9 signal 16 } 
	{ m_axi_gmem_pw_w_0_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_pw_w_0_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_pw_w_0_BUSER sc_in sc_lv 1 signal 16 } 
	{ pw_weights sc_in sc_lv 64 signal 17 } 
	{ pw_bias sc_in sc_lv 64 signal 18 } 
	{ m_axi_gmem_out_0_AWVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_AWREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_AWADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_gmem_out_0_AWID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_AWLEN sc_out sc_lv 32 signal 19 } 
	{ m_axi_gmem_out_0_AWSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_out_0_AWBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_AWLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_AWCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_AWPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_out_0_AWQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_AWREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_AWUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_WVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_WREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_WDATA sc_out sc_lv 8 signal 19 } 
	{ m_axi_gmem_out_0_WSTRB sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_WLAST sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_WID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_WUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_ARVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_ARREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_ARADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_gmem_out_0_ARID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_ARLEN sc_out sc_lv 32 signal 19 } 
	{ m_axi_gmem_out_0_ARSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_out_0_ARBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_ARLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_ARCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_ARPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_out_0_ARQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_ARREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_out_0_ARUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_RVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_RREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_RDATA sc_in sc_lv 8 signal 19 } 
	{ m_axi_gmem_out_0_RLAST sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_RID sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_RFIFONUM sc_in sc_lv 11 signal 19 } 
	{ m_axi_gmem_out_0_RUSER sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_RRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_BVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_BREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_out_0_BRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_gmem_out_0_BID sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_out_0_BUSER sc_in sc_lv 1 signal 19 } 
	{ output_r sc_in sc_lv 64 signal 20 } 
	{ h_start sc_in sc_lv 32 signal 21 } 
	{ height sc_in sc_lv 32 signal 22 } 
	{ width sc_in sc_lv 32 signal 23 } 
	{ c_in sc_in sc_lv 32 signal 24 } 
	{ c_out sc_in sc_lv 32 signal 25 } 
	{ pw_act_zp sc_in sc_lv 16 signal 26 } 
	{ pw_wgt_zp sc_in sc_lv 16 signal 27 } 
	{ pw_out_zp sc_in sc_lv 32 signal 28 } 
	{ pw_M_mantissa sc_in sc_lv 32 signal 29 } 
	{ pw_M_shift sc_in sc_lv 32 signal 30 } 
	{ pw_use_bias sc_in sc_lv 32 signal 31 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "inter_buf_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "address0" }} , 
 	{ "name": "inter_buf_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "ce0" }} , 
 	{ "name": "inter_buf_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_0", "role": "q0" }} , 
 	{ "name": "inter_buf_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "address0" }} , 
 	{ "name": "inter_buf_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "ce0" }} , 
 	{ "name": "inter_buf_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_1", "role": "q0" }} , 
 	{ "name": "inter_buf_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "address0" }} , 
 	{ "name": "inter_buf_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "ce0" }} , 
 	{ "name": "inter_buf_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_2", "role": "q0" }} , 
 	{ "name": "inter_buf_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "address0" }} , 
 	{ "name": "inter_buf_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "ce0" }} , 
 	{ "name": "inter_buf_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_3", "role": "q0" }} , 
 	{ "name": "inter_buf_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "address0" }} , 
 	{ "name": "inter_buf_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "ce0" }} , 
 	{ "name": "inter_buf_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_4", "role": "q0" }} , 
 	{ "name": "inter_buf_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "address0" }} , 
 	{ "name": "inter_buf_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "ce0" }} , 
 	{ "name": "inter_buf_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_5", "role": "q0" }} , 
 	{ "name": "inter_buf_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "address0" }} , 
 	{ "name": "inter_buf_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "ce0" }} , 
 	{ "name": "inter_buf_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_6", "role": "q0" }} , 
 	{ "name": "inter_buf_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "address0" }} , 
 	{ "name": "inter_buf_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "ce0" }} , 
 	{ "name": "inter_buf_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_7", "role": "q0" }} , 
 	{ "name": "inter_buf_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "address0" }} , 
 	{ "name": "inter_buf_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "ce0" }} , 
 	{ "name": "inter_buf_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_8", "role": "q0" }} , 
 	{ "name": "inter_buf_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "address0" }} , 
 	{ "name": "inter_buf_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "ce0" }} , 
 	{ "name": "inter_buf_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_9", "role": "q0" }} , 
 	{ "name": "inter_buf_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "address0" }} , 
 	{ "name": "inter_buf_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "ce0" }} , 
 	{ "name": "inter_buf_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_10", "role": "q0" }} , 
 	{ "name": "inter_buf_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "address0" }} , 
 	{ "name": "inter_buf_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "ce0" }} , 
 	{ "name": "inter_buf_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_11", "role": "q0" }} , 
 	{ "name": "inter_buf_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "address0" }} , 
 	{ "name": "inter_buf_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "ce0" }} , 
 	{ "name": "inter_buf_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_12", "role": "q0" }} , 
 	{ "name": "inter_buf_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "address0" }} , 
 	{ "name": "inter_buf_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "ce0" }} , 
 	{ "name": "inter_buf_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_13", "role": "q0" }} , 
 	{ "name": "inter_buf_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "address0" }} , 
 	{ "name": "inter_buf_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "ce0" }} , 
 	{ "name": "inter_buf_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_14", "role": "q0" }} , 
 	{ "name": "inter_buf_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "address0" }} , 
 	{ "name": "inter_buf_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "ce0" }} , 
 	{ "name": "inter_buf_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "inter_buf_15", "role": "q0" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_pw_w_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "0_BUSER" }} , 
 	{ "name": "pw_weights", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pw_weights", "role": "default" }} , 
 	{ "name": "pw_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "pw_bias", "role": "default" }} , 
 	{ "name": "m_axi_gmem_out_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWADDR" }} , 
 	{ "name": "m_axi_gmem_out_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWID" }} , 
 	{ "name": "m_axi_gmem_out_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWLEN" }} , 
 	{ "name": "m_axi_gmem_out_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWSIZE" }} , 
 	{ "name": "m_axi_gmem_out_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWBURST" }} , 
 	{ "name": "m_axi_gmem_out_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWLOCK" }} , 
 	{ "name": "m_axi_gmem_out_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWCACHE" }} , 
 	{ "name": "m_axi_gmem_out_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWPROT" }} , 
 	{ "name": "m_axi_gmem_out_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWQOS" }} , 
 	{ "name": "m_axi_gmem_out_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWREGION" }} , 
 	{ "name": "m_axi_gmem_out_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_AWUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WDATA" }} , 
 	{ "name": "m_axi_gmem_out_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WSTRB" }} , 
 	{ "name": "m_axi_gmem_out_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WLAST" }} , 
 	{ "name": "m_axi_gmem_out_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WID" }} , 
 	{ "name": "m_axi_gmem_out_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_WUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARADDR" }} , 
 	{ "name": "m_axi_gmem_out_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARID" }} , 
 	{ "name": "m_axi_gmem_out_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARLEN" }} , 
 	{ "name": "m_axi_gmem_out_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARSIZE" }} , 
 	{ "name": "m_axi_gmem_out_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARBURST" }} , 
 	{ "name": "m_axi_gmem_out_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARLOCK" }} , 
 	{ "name": "m_axi_gmem_out_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARCACHE" }} , 
 	{ "name": "m_axi_gmem_out_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARPROT" }} , 
 	{ "name": "m_axi_gmem_out_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARQOS" }} , 
 	{ "name": "m_axi_gmem_out_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARREGION" }} , 
 	{ "name": "m_axi_gmem_out_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_ARUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RDATA" }} , 
 	{ "name": "m_axi_gmem_out_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RLAST" }} , 
 	{ "name": "m_axi_gmem_out_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RID" }} , 
 	{ "name": "m_axi_gmem_out_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_out_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RUSER" }} , 
 	{ "name": "m_axi_gmem_out_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_RRESP" }} , 
 	{ "name": "m_axi_gmem_out_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BVALID" }} , 
 	{ "name": "m_axi_gmem_out_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BREADY" }} , 
 	{ "name": "m_axi_gmem_out_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BRESP" }} , 
 	{ "name": "m_axi_gmem_out_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BID" }} , 
 	{ "name": "m_axi_gmem_out_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "0_BUSER" }} , 
 	{ "name": "output_r", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "output_r", "role": "default" }} , 
 	{ "name": "h_start", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "h_start", "role": "default" }} , 
 	{ "name": "height", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "height", "role": "default" }} , 
 	{ "name": "width", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "width", "role": "default" }} , 
 	{ "name": "c_in", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_in", "role": "default" }} , 
 	{ "name": "c_out", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "c_out", "role": "default" }} , 
 	{ "name": "pw_act_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pw_act_zp", "role": "default" }} , 
 	{ "name": "pw_wgt_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "pw_wgt_zp", "role": "default" }} , 
 	{ "name": "pw_out_zp", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pw_out_zp", "role": "default" }} , 
 	{ "name": "pw_M_mantissa", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pw_M_mantissa", "role": "default" }} , 
 	{ "name": "pw_M_shift", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pw_M_shift", "role": "default" }} , 
 	{ "name": "pw_use_bias", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pw_use_bias", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "276", "278", "313", "314", "315", "316", "317"],
		"CDFG" : "pw_row_stage",
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
			{"Name" : "inter_buf_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "273", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_pw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_pw_w_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "276", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222", "Port" : "gmem_pw_w", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_out_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_out_blk_n_B", "Type" : "RtlSignal"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "h_start", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_mantissa", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_use_bias", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "PW_LOAD_WGT", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "280", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state6"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state7", "ap_ST_fsm_state16"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "PW_LOOP_CO_TILE", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "280", "FirstState" : "ap_ST_fsm_state4", "LastState" : ["ap_ST_fsm_state280"], "QuitState" : ["ap_ST_fsm_state4"], "PreState" : ["ap_ST_fsm_state3"], "PostState" : ["ap_ST_fsm_state2"], "OneDepthLoop" : "0", "OneStateBlock": ""}},
			{"Name" : "PW_LOOP_W", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "280", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state4"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.input_buf_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_1_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_2_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_3_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_4_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_5_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_6_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_7_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_8_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_9_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_10_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_11_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_12_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_13_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_14_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_15_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_16_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_17_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_18_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_19_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_20_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_21_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_22_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_23_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_24_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_25_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_26_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_27_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_28_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_29_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_30_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_31_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_32_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_33_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_34_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_35_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_36_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_37_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_38_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_39_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_40_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_41_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_42_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_43_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_44_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_45_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_46_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_47_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_48_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_49_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_50_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_51_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_52_U", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_53_U", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_54_U", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_55_U", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_56_U", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_57_U", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_58_U", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_59_U", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_60_U", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_61_U", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_62_U", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_63_U", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_64_U", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_65_U", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_66_U", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_67_U", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_68_U", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_69_U", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_70_U", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_71_U", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_72_U", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_73_U", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_74_U", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_75_U", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_76_U", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_77_U", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_78_U", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_79_U", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_80_U", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_81_U", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_82_U", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_83_U", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_84_U", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_85_U", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_86_U", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_87_U", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_88_U", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_89_U", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_90_U", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_91_U", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_92_U", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_93_U", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_94_U", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_95_U", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_96_U", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_97_U", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_98_U", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_99_U", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_100_U", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_101_U", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_102_U", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_103_U", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_104_U", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_105_U", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_106_U", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_107_U", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_108_U", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_109_U", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_110_U", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_111_U", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_112_U", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_113_U", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_114_U", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_115_U", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_116_U", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_117_U", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_118_U", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_119_U", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_120_U", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_121_U", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_122_U", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_123_U", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_124_U", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_125_U", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_126_U", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_127_U", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_128_U", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_129_U", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_130_U", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_131_U", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_132_U", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_133_U", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_134_U", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_135_U", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_136_U", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_137_U", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_138_U", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_139_U", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_140_U", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_141_U", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_142_U", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_143_U", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_144_U", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_145_U", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_146_U", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_147_U", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_148_U", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_149_U", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_150_U", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_151_U", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_152_U", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_153_U", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_154_U", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_155_U", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_156_U", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_157_U", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_158_U", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_159_U", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_160_U", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_161_U", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_162_U", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_163_U", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_164_U", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_165_U", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_166_U", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_167_U", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_168_U", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_169_U", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_170_U", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_171_U", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_172_U", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_173_U", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_174_U", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_175_U", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_176_U", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_177_U", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_178_U", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_179_U", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_180_U", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_181_U", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_182_U", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_183_U", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_184_U", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_185_U", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_186_U", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_187_U", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_188_U", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_189_U", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_190_U", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_191_U", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_192_U", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_193_U", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_194_U", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_195_U", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_196_U", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_197_U", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_198_U", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_199_U", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_200_U", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_201_U", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_202_U", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_203_U", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_204_U", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_205_U", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_206_U", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_207_U", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_208_U", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_209_U", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_210_U", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_211_U", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_212_U", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_213_U", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_214_U", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_215_U", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_216_U", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_217_U", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_218_U", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_219_U", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_220_U", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_221_U", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_222_U", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_223_U", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_224_U", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_225_U", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_226_U", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_227_U", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_228_U", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_229_U", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_230_U", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_231_U", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_232_U", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_233_U", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_234_U", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_235_U", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_236_U", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_237_U", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_238_U", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_239_U", "Parent" : "0"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_240_U", "Parent" : "0"},
	{"ID" : "258", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_241_U", "Parent" : "0"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_242_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_243_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_244_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_245_U", "Parent" : "0"},
	{"ID" : "263", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_246_U", "Parent" : "0"},
	{"ID" : "264", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_247_U", "Parent" : "0"},
	{"ID" : "265", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_248_U", "Parent" : "0"},
	{"ID" : "266", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_249_U", "Parent" : "0"},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_250_U", "Parent" : "0"},
	{"ID" : "268", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_251_U", "Parent" : "0"},
	{"ID" : "269", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_252_U", "Parent" : "0"},
	{"ID" : "270", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_253_U", "Parent" : "0"},
	{"ID" : "271", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_254_U", "Parent" : "0"},
	{"ID" : "272", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wgt_tile_255_U", "Parent" : "0"},
	{"ID" : "273", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Parent" : "0", "Child" : ["274", "275"],
		"CDFG" : "pw_row_stage_Pipeline_PW_LOAD_IN",
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
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_buf_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_buf", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "mul_ln368", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter_buf_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "PW_LOAD_IN", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168.sparsemux_33_4_8_1_1_U201", "Parent" : "273"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168.flow_control_loop_pipe_sequential_init_U", "Parent" : "273"},
	{"ID" : "276", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222", "Parent" : "0", "Child" : ["277"],
		"CDFG" : "pw_row_stage_Pipeline_PW_LOAD_WGT_CI",
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
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "wgt_tile_255", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_254", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_253", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_252", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_251", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_250", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_249", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_248", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_247", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_246", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_245", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_244", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_243", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_242", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_241", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_240", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_239", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_238", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_237", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_236", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_235", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_234", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_233", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_232", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_231", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_230", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_229", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_228", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_227", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_226", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_225", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_224", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_223", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_222", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_221", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_220", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_219", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_218", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_217", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_216", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_215", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_214", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_213", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_212", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_211", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_210", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_209", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_208", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_207", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_206", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_205", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_204", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_203", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_202", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_201", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_200", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_199", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_198", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_197", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_196", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_195", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_194", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_193", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_192", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_191", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_190", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_189", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_188", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_187", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_186", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_185", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_184", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_183", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_182", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_181", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_180", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_179", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_178", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_177", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_176", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_175", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_174", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_173", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_172", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_171", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_170", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_169", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_168", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_167", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_166", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_165", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_164", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_163", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_162", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_161", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_160", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_159", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_158", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_157", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_156", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_155", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_154", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_153", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_152", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_151", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_150", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_149", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_148", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_147", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_146", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_145", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_144", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_143", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_142", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_141", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_140", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_139", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_138", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_137", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_136", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_135", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_134", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_133", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_132", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_131", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_130", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_129", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_128", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_127", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_126", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_125", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_124", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_123", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_122", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_121", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_120", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_119", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_118", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_117", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_116", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_115", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_114", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_113", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_112", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_111", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_110", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_109", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_108", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_107", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_106", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_105", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_104", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_103", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_102", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_101", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_100", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_99", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_98", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_97", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_96", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_95", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_94", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_93", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_92", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_91", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_90", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_89", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_88", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_87", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_86", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_85", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_84", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_83", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_82", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_81", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_80", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_79", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_78", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_77", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_76", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_75", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_74", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_73", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_72", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_71", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_70", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_69", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_68", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_67", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_66", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_65", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_64", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_63", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_62", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_61", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_60", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_59", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_58", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_57", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_56", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_55", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_54", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_53", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_52", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_51", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_50", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_49", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_48", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_47", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_46", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_45", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_44", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_43", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_42", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_41", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_40", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_39", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_38", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_37", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_36", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_35", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_34", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_33", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_32", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "wgt_tile", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp1", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_pw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_pw_w_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "t", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "PW_LOAD_WGT_CI", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter10", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter10", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222.flow_control_loop_pipe_sequential_init_U", "Parent" : "276"},
	{"ID" : "278", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488", "Parent" : "0", "Child" : ["279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312"],
		"CDFG" : "pw_row_stage_Pipeline_PW_DOT_PROD",
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
			{"Name" : "total_15_ph", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_14_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_13_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_12_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_11_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_10_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_9_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_8_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_7_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_6_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_5_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_4_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_3_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_2_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_1_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "arrayidx96_promoted", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "input_buf", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "input_buf_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "wgt_tile", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "wgt_tile_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_32", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_33", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_34", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_35", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_36", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_37", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_38", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_39", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_40", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_41", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_42", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_43", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_44", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_45", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_46", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_47", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_48", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_49", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_50", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_51", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_52", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_53", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_54", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_55", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_56", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_57", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_58", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_59", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_60", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_61", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_62", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_63", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_64", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_65", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_66", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_67", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_68", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_69", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_70", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_71", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_72", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_73", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_74", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_75", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_76", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_77", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_78", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_79", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_80", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_81", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_82", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_83", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_84", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_85", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_86", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_87", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_88", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_89", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_90", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_91", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_92", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_93", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_94", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_95", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_96", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_97", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_98", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_99", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_100", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_101", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_102", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_103", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_104", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_105", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_106", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_107", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_108", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_109", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_110", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_111", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_112", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_113", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_114", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_115", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_116", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_117", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_118", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_119", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_120", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_121", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_122", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_123", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_124", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_125", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_126", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_127", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_128", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_129", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_130", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_131", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_132", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_133", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_134", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_135", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_136", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_137", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_138", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_139", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_140", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_141", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_142", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_143", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_144", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_145", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_146", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_147", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_148", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_149", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_150", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_151", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_152", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_153", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_154", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_155", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_156", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_157", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_158", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_159", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_160", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_161", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_162", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_163", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_164", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_165", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_166", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_167", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_168", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_169", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_170", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_171", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_172", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_173", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_174", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_175", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_176", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_177", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_178", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_179", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_180", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_181", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_182", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_183", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_184", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_185", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_186", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_187", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_188", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_189", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_190", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_191", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_192", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_193", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_194", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_195", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_196", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_197", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_198", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_199", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_200", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_201", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_202", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_203", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_204", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_205", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_206", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_207", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_208", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_209", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_210", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_211", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_212", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_213", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_214", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_215", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_216", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_217", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_218", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_219", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_220", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_221", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_222", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_223", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_224", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_225", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_226", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_227", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_228", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_229", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_230", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_231", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_232", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_233", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_234", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_235", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_236", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_237", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_238", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_239", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_240", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_241", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_242", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_243", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_244", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_245", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_246", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_247", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_248", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_249", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_250", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_251", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_252", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_253", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_254", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "wgt_tile_255", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "total_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "total_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "PW_DOT_PROD", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U498", "Parent" : "278"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U499", "Parent" : "278"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U500", "Parent" : "278"},
	{"ID" : "282", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U501", "Parent" : "278"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U502", "Parent" : "278"},
	{"ID" : "284", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U503", "Parent" : "278"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U504", "Parent" : "278"},
	{"ID" : "286", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U505", "Parent" : "278"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U506", "Parent" : "278"},
	{"ID" : "288", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U507", "Parent" : "278"},
	{"ID" : "289", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U508", "Parent" : "278"},
	{"ID" : "290", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U509", "Parent" : "278"},
	{"ID" : "291", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U510", "Parent" : "278"},
	{"ID" : "292", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U511", "Parent" : "278"},
	{"ID" : "293", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U512", "Parent" : "278"},
	{"ID" : "294", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U513", "Parent" : "278"},
	{"ID" : "295", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U514", "Parent" : "278"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U515", "Parent" : "278"},
	{"ID" : "297", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U516", "Parent" : "278"},
	{"ID" : "298", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U517", "Parent" : "278"},
	{"ID" : "299", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U518", "Parent" : "278"},
	{"ID" : "300", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U519", "Parent" : "278"},
	{"ID" : "301", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U520", "Parent" : "278"},
	{"ID" : "302", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U521", "Parent" : "278"},
	{"ID" : "303", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U522", "Parent" : "278"},
	{"ID" : "304", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U523", "Parent" : "278"},
	{"ID" : "305", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U524", "Parent" : "278"},
	{"ID" : "306", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U525", "Parent" : "278"},
	{"ID" : "307", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U526", "Parent" : "278"},
	{"ID" : "308", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U527", "Parent" : "278"},
	{"ID" : "309", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U528", "Parent" : "278"},
	{"ID" : "310", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U529", "Parent" : "278"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U530", "Parent" : "278"},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.flow_control_loop_pipe_sequential_init_U", "Parent" : "278"},
	{"ID" : "313", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32ns_31ns_63_1_1_U839", "Parent" : "0"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_32_1_1_U840", "Parent" : "0"},
	{"ID" : "315", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_32s_32s_64_1_1_U841", "Parent" : "0"},
	{"ID" : "316", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_33s_32s_64_1_1_U842", "Parent" : "0"},
	{"ID" : "317", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_17s_17s_17_1_1_U843", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	pw_row_stage {
		inter_buf_0 {Type I LastRead 0 FirstWrite -1}
		inter_buf_1 {Type I LastRead 0 FirstWrite -1}
		inter_buf_2 {Type I LastRead 0 FirstWrite -1}
		inter_buf_3 {Type I LastRead 0 FirstWrite -1}
		inter_buf_4 {Type I LastRead 0 FirstWrite -1}
		inter_buf_5 {Type I LastRead 0 FirstWrite -1}
		inter_buf_6 {Type I LastRead 0 FirstWrite -1}
		inter_buf_7 {Type I LastRead 0 FirstWrite -1}
		inter_buf_8 {Type I LastRead 0 FirstWrite -1}
		inter_buf_9 {Type I LastRead 0 FirstWrite -1}
		inter_buf_10 {Type I LastRead 0 FirstWrite -1}
		inter_buf_11 {Type I LastRead 0 FirstWrite -1}
		inter_buf_12 {Type I LastRead 0 FirstWrite -1}
		inter_buf_13 {Type I LastRead 0 FirstWrite -1}
		inter_buf_14 {Type I LastRead 0 FirstWrite -1}
		inter_buf_15 {Type I LastRead 0 FirstWrite -1}
		gmem_pw_w {Type I LastRead 163 FirstWrite -1}
		pw_weights {Type I LastRead 0 FirstWrite -1}
		pw_bias {Type I LastRead 0 FirstWrite -1}
		gmem_out {Type O LastRead 274 FirstWrite 168}
		output_r {Type I LastRead 0 FirstWrite -1}
		h_start {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		c_out {Type I LastRead 0 FirstWrite -1}
		pw_act_zp {Type I LastRead 0 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 0 FirstWrite -1}
		pw_out_zp {Type I LastRead 0 FirstWrite -1}
		pw_M_mantissa {Type I LastRead 0 FirstWrite -1}
		pw_M_shift {Type I LastRead 0 FirstWrite -1}
		pw_use_bias {Type I LastRead 0 FirstWrite -1}}
	pw_row_stage_Pipeline_PW_LOAD_IN {
		c_in {Type I LastRead 0 FirstWrite -1}
		input_buf_15 {Type O LastRead -1 FirstWrite 1}
		input_buf_14 {Type O LastRead -1 FirstWrite 1}
		input_buf_13 {Type O LastRead -1 FirstWrite 1}
		input_buf_12 {Type O LastRead -1 FirstWrite 1}
		input_buf_11 {Type O LastRead -1 FirstWrite 1}
		input_buf_10 {Type O LastRead -1 FirstWrite 1}
		input_buf_9 {Type O LastRead -1 FirstWrite 1}
		input_buf_8 {Type O LastRead -1 FirstWrite 1}
		input_buf_7 {Type O LastRead -1 FirstWrite 1}
		input_buf_6 {Type O LastRead -1 FirstWrite 1}
		input_buf_5 {Type O LastRead -1 FirstWrite 1}
		input_buf_4 {Type O LastRead -1 FirstWrite 1}
		input_buf_3 {Type O LastRead -1 FirstWrite 1}
		input_buf_2 {Type O LastRead -1 FirstWrite 1}
		input_buf_1 {Type O LastRead -1 FirstWrite 1}
		input_buf {Type O LastRead -1 FirstWrite 1}
		mul_ln368 {Type I LastRead 0 FirstWrite -1}
		inter_buf_0 {Type I LastRead 0 FirstWrite -1}
		inter_buf_1 {Type I LastRead 0 FirstWrite -1}
		inter_buf_2 {Type I LastRead 0 FirstWrite -1}
		inter_buf_3 {Type I LastRead 0 FirstWrite -1}
		inter_buf_4 {Type I LastRead 0 FirstWrite -1}
		inter_buf_5 {Type I LastRead 0 FirstWrite -1}
		inter_buf_6 {Type I LastRead 0 FirstWrite -1}
		inter_buf_7 {Type I LastRead 0 FirstWrite -1}
		inter_buf_8 {Type I LastRead 0 FirstWrite -1}
		inter_buf_9 {Type I LastRead 0 FirstWrite -1}
		inter_buf_10 {Type I LastRead 0 FirstWrite -1}
		inter_buf_11 {Type I LastRead 0 FirstWrite -1}
		inter_buf_12 {Type I LastRead 0 FirstWrite -1}
		inter_buf_13 {Type I LastRead 0 FirstWrite -1}
		inter_buf_14 {Type I LastRead 0 FirstWrite -1}
		inter_buf_15 {Type I LastRead 0 FirstWrite -1}}
	pw_row_stage_Pipeline_PW_LOAD_WGT_CI {
		c_in {Type I LastRead 0 FirstWrite -1}
		wgt_tile_255 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_254 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_253 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_252 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_251 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_250 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_249 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_248 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_247 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_246 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_245 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_244 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_243 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_242 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_241 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_240 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_239 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_238 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_237 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_236 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_235 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_234 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_233 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_232 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_231 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_230 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_229 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_228 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_227 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_226 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_225 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_224 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_223 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_222 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_221 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_220 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_219 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_218 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_217 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_216 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_215 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_214 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_213 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_212 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_211 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_210 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_209 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_208 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_207 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_206 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_205 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_204 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_203 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_202 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_201 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_200 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_199 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_198 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_197 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_196 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_195 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_194 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_193 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_192 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_191 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_190 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_189 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_188 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_187 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_186 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_185 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_184 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_183 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_182 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_181 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_180 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_179 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_178 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_177 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_176 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_175 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_174 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_173 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_172 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_171 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_170 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_169 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_168 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_167 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_166 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_165 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_164 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_163 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_162 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_161 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_160 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_159 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_158 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_157 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_156 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_155 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_154 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_153 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_152 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_151 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_150 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_149 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_148 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_147 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_146 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_145 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_144 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_143 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_142 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_141 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_140 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_139 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_138 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_137 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_136 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_135 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_134 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_133 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_132 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_131 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_130 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_129 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_128 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_127 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_126 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_125 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_124 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_123 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_122 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_121 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_120 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_119 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_118 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_117 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_116 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_115 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_114 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_113 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_112 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_111 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_110 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_109 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_108 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_107 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_106 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_105 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_104 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_103 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_102 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_101 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_100 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_99 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_98 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_97 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_96 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_95 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_94 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_93 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_92 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_91 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_90 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_89 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_88 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_87 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_86 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_85 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_84 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_83 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_82 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_81 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_80 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_79 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_78 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_77 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_76 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_75 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_74 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_73 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_72 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_71 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_70 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_69 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_68 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_67 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_66 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_65 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_64 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_63 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_62 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_61 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_60 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_59 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_58 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_57 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_56 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_55 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_54 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_53 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_52 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_51 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_50 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_49 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_48 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_47 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_46 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_45 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_44 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_43 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_42 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_41 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_40 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_39 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_38 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_37 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_36 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_35 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_34 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_33 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_32 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_31 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_30 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_29 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_28 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_27 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_26 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_25 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_24 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_23 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_22 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_21 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_20 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_19 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_18 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_17 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_16 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_15 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_14 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_13 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_12 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_11 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_10 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_9 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_8 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_7 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_6 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_5 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_4 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_3 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_2 {Type O LastRead -1 FirstWrite 10}
		wgt_tile_1 {Type O LastRead -1 FirstWrite 10}
		wgt_tile {Type O LastRead -1 FirstWrite 10}
		tmp1 {Type I LastRead 0 FirstWrite -1}
		pw_weights {Type I LastRead 0 FirstWrite -1}
		gmem_pw_w {Type I LastRead 9 FirstWrite -1}
		t {Type I LastRead 0 FirstWrite -1}}
	pw_row_stage_Pipeline_PW_DOT_PROD {
		total_15_ph {Type I LastRead 0 FirstWrite -1}
		arrayidx96_14_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_13_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_12_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_11_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_10_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_9_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_8_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_7_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_6_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_5_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_4_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_3_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_2_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_1_promoted {Type I LastRead 0 FirstWrite -1}
		arrayidx96_promoted {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		input_buf {Type I LastRead 0 FirstWrite -1}
		input_buf_1 {Type I LastRead 0 FirstWrite -1}
		input_buf_2 {Type I LastRead 0 FirstWrite -1}
		input_buf_3 {Type I LastRead 0 FirstWrite -1}
		input_buf_4 {Type I LastRead 0 FirstWrite -1}
		input_buf_5 {Type I LastRead 0 FirstWrite -1}
		input_buf_6 {Type I LastRead 0 FirstWrite -1}
		input_buf_7 {Type I LastRead 0 FirstWrite -1}
		input_buf_8 {Type I LastRead 0 FirstWrite -1}
		input_buf_9 {Type I LastRead 0 FirstWrite -1}
		input_buf_10 {Type I LastRead 0 FirstWrite -1}
		input_buf_11 {Type I LastRead 0 FirstWrite -1}
		input_buf_12 {Type I LastRead 0 FirstWrite -1}
		input_buf_13 {Type I LastRead 0 FirstWrite -1}
		input_buf_14 {Type I LastRead 0 FirstWrite -1}
		input_buf_15 {Type I LastRead 0 FirstWrite -1}
		pw_act_zp {Type I LastRead 0 FirstWrite -1}
		wgt_tile {Type I LastRead 0 FirstWrite -1}
		wgt_tile_1 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_2 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_3 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_4 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_5 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_6 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_7 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_8 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_9 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_10 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_11 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_12 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_13 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_14 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_15 {Type I LastRead 0 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 0 FirstWrite -1}
		wgt_tile_16 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_17 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_18 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_19 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_20 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_21 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_22 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_23 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_24 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_25 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_26 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_27 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_28 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_29 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_30 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_31 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_32 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_33 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_34 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_35 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_36 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_37 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_38 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_39 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_40 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_41 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_42 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_43 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_44 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_45 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_46 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_47 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_48 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_49 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_50 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_51 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_52 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_53 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_54 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_55 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_56 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_57 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_58 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_59 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_60 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_61 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_62 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_63 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_64 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_65 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_66 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_67 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_68 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_69 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_70 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_71 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_72 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_73 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_74 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_75 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_76 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_77 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_78 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_79 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_80 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_81 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_82 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_83 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_84 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_85 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_86 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_87 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_88 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_89 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_90 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_91 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_92 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_93 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_94 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_95 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_96 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_97 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_98 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_99 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_100 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_101 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_102 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_103 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_104 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_105 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_106 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_107 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_108 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_109 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_110 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_111 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_112 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_113 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_114 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_115 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_116 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_117 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_118 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_119 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_120 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_121 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_122 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_123 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_124 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_125 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_126 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_127 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_128 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_129 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_130 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_131 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_132 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_133 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_134 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_135 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_136 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_137 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_138 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_139 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_140 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_141 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_142 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_143 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_144 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_145 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_146 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_147 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_148 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_149 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_150 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_151 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_152 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_153 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_154 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_155 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_156 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_157 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_158 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_159 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_160 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_161 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_162 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_163 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_164 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_165 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_166 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_167 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_168 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_169 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_170 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_171 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_172 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_173 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_174 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_175 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_176 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_177 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_178 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_179 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_180 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_181 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_182 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_183 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_184 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_185 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_186 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_187 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_188 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_189 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_190 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_191 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_192 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_193 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_194 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_195 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_196 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_197 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_198 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_199 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_200 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_201 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_202 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_203 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_204 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_205 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_206 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_207 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_208 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_209 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_210 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_211 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_212 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_213 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_214 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_215 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_216 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_217 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_218 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_219 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_220 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_221 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_222 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_223 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_224 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_225 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_226 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_227 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_228 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_229 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_230 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_231 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_232 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_233 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_234 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_235 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_236 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_237 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_238 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_239 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_240 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_241 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_242 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_243 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_244 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_245 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_246 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_247 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_248 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_249 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_250 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_251 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_252 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_253 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_254 {Type I LastRead 0 FirstWrite -1}
		wgt_tile_255 {Type I LastRead 0 FirstWrite -1}
		total_15_out {Type O LastRead -1 FirstWrite 3}
		total_14_out {Type O LastRead -1 FirstWrite 3}
		total_13_out {Type O LastRead -1 FirstWrite 3}
		total_12_out {Type O LastRead -1 FirstWrite 3}
		total_11_out {Type O LastRead -1 FirstWrite 3}
		total_10_out {Type O LastRead -1 FirstWrite 3}
		total_9_out {Type O LastRead -1 FirstWrite 3}
		total_8_out {Type O LastRead -1 FirstWrite 3}
		total_7_out {Type O LastRead -1 FirstWrite 3}
		total_6_out {Type O LastRead -1 FirstWrite 3}
		total_5_out {Type O LastRead -1 FirstWrite 3}
		total_4_out {Type O LastRead -1 FirstWrite 3}
		total_3_out {Type O LastRead -1 FirstWrite 3}
		total_2_out {Type O LastRead -1 FirstWrite 3}
		total_1_out {Type O LastRead -1 FirstWrite 3}
		total_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	inter_buf_0 { ap_memory {  { inter_buf_0_address0 mem_address 1 13 }  { inter_buf_0_ce0 mem_ce 1 1 }  { inter_buf_0_q0 mem_dout 0 8 } } }
	inter_buf_1 { ap_memory {  { inter_buf_1_address0 mem_address 1 13 }  { inter_buf_1_ce0 mem_ce 1 1 }  { inter_buf_1_q0 mem_dout 0 8 } } }
	inter_buf_2 { ap_memory {  { inter_buf_2_address0 mem_address 1 13 }  { inter_buf_2_ce0 mem_ce 1 1 }  { inter_buf_2_q0 mem_dout 0 8 } } }
	inter_buf_3 { ap_memory {  { inter_buf_3_address0 mem_address 1 13 }  { inter_buf_3_ce0 mem_ce 1 1 }  { inter_buf_3_q0 mem_dout 0 8 } } }
	inter_buf_4 { ap_memory {  { inter_buf_4_address0 mem_address 1 13 }  { inter_buf_4_ce0 mem_ce 1 1 }  { inter_buf_4_q0 mem_dout 0 8 } } }
	inter_buf_5 { ap_memory {  { inter_buf_5_address0 mem_address 1 13 }  { inter_buf_5_ce0 mem_ce 1 1 }  { inter_buf_5_q0 mem_dout 0 8 } } }
	inter_buf_6 { ap_memory {  { inter_buf_6_address0 mem_address 1 13 }  { inter_buf_6_ce0 mem_ce 1 1 }  { inter_buf_6_q0 mem_dout 0 8 } } }
	inter_buf_7 { ap_memory {  { inter_buf_7_address0 mem_address 1 13 }  { inter_buf_7_ce0 mem_ce 1 1 }  { inter_buf_7_q0 mem_dout 0 8 } } }
	inter_buf_8 { ap_memory {  { inter_buf_8_address0 mem_address 1 13 }  { inter_buf_8_ce0 mem_ce 1 1 }  { inter_buf_8_q0 mem_dout 0 8 } } }
	inter_buf_9 { ap_memory {  { inter_buf_9_address0 mem_address 1 13 }  { inter_buf_9_ce0 mem_ce 1 1 }  { inter_buf_9_q0 mem_dout 0 8 } } }
	inter_buf_10 { ap_memory {  { inter_buf_10_address0 mem_address 1 13 }  { inter_buf_10_ce0 mem_ce 1 1 }  { inter_buf_10_q0 mem_dout 0 8 } } }
	inter_buf_11 { ap_memory {  { inter_buf_11_address0 mem_address 1 13 }  { inter_buf_11_ce0 mem_ce 1 1 }  { inter_buf_11_q0 mem_dout 0 8 } } }
	inter_buf_12 { ap_memory {  { inter_buf_12_address0 mem_address 1 13 }  { inter_buf_12_ce0 mem_ce 1 1 }  { inter_buf_12_q0 mem_dout 0 8 } } }
	inter_buf_13 { ap_memory {  { inter_buf_13_address0 mem_address 1 13 }  { inter_buf_13_ce0 mem_ce 1 1 }  { inter_buf_13_q0 mem_dout 0 8 } } }
	inter_buf_14 { ap_memory {  { inter_buf_14_address0 mem_address 1 13 }  { inter_buf_14_ce0 mem_ce 1 1 }  { inter_buf_14_q0 mem_dout 0 8 } } }
	inter_buf_15 { ap_memory {  { inter_buf_15_address0 mem_address 1 13 }  { inter_buf_15_ce0 mem_ce 1 1 }  { inter_buf_15_q0 mem_dout 0 8 } } }
	 { m_axi {  { m_axi_gmem_pw_w_0_AWVALID VALID 1 1 }  { m_axi_gmem_pw_w_0_AWREADY READY 0 1 }  { m_axi_gmem_pw_w_0_AWADDR ADDR 1 64 }  { m_axi_gmem_pw_w_0_AWID ID 1 1 }  { m_axi_gmem_pw_w_0_AWLEN SIZE 1 32 }  { m_axi_gmem_pw_w_0_AWSIZE BURST 1 3 }  { m_axi_gmem_pw_w_0_AWBURST LOCK 1 2 }  { m_axi_gmem_pw_w_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_pw_w_0_AWCACHE PROT 1 4 }  { m_axi_gmem_pw_w_0_AWPROT QOS 1 3 }  { m_axi_gmem_pw_w_0_AWQOS REGION 1 4 }  { m_axi_gmem_pw_w_0_AWREGION USER 1 4 }  { m_axi_gmem_pw_w_0_AWUSER DATA 1 1 }  { m_axi_gmem_pw_w_0_WVALID VALID 1 1 }  { m_axi_gmem_pw_w_0_WREADY READY 0 1 }  { m_axi_gmem_pw_w_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_pw_w_0_WSTRB STRB 1 4 }  { m_axi_gmem_pw_w_0_WLAST LAST 1 1 }  { m_axi_gmem_pw_w_0_WID ID 1 1 }  { m_axi_gmem_pw_w_0_WUSER DATA 1 1 }  { m_axi_gmem_pw_w_0_ARVALID VALID 1 1 }  { m_axi_gmem_pw_w_0_ARREADY READY 0 1 }  { m_axi_gmem_pw_w_0_ARADDR ADDR 1 64 }  { m_axi_gmem_pw_w_0_ARID ID 1 1 }  { m_axi_gmem_pw_w_0_ARLEN SIZE 1 32 }  { m_axi_gmem_pw_w_0_ARSIZE BURST 1 3 }  { m_axi_gmem_pw_w_0_ARBURST LOCK 1 2 }  { m_axi_gmem_pw_w_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_pw_w_0_ARCACHE PROT 1 4 }  { m_axi_gmem_pw_w_0_ARPROT QOS 1 3 }  { m_axi_gmem_pw_w_0_ARQOS REGION 1 4 }  { m_axi_gmem_pw_w_0_ARREGION USER 1 4 }  { m_axi_gmem_pw_w_0_ARUSER DATA 1 1 }  { m_axi_gmem_pw_w_0_RVALID VALID 0 1 }  { m_axi_gmem_pw_w_0_RREADY READY 1 1 }  { m_axi_gmem_pw_w_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_pw_w_0_RLAST LAST 0 1 }  { m_axi_gmem_pw_w_0_RID ID 0 1 }  { m_axi_gmem_pw_w_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_pw_w_0_RUSER DATA 0 1 }  { m_axi_gmem_pw_w_0_RRESP RESP 0 2 }  { m_axi_gmem_pw_w_0_BVALID VALID 0 1 }  { m_axi_gmem_pw_w_0_BREADY READY 1 1 }  { m_axi_gmem_pw_w_0_BRESP RESP 0 2 }  { m_axi_gmem_pw_w_0_BID ID 0 1 }  { m_axi_gmem_pw_w_0_BUSER DATA 0 1 } } }
	pw_weights { ap_none {  { pw_weights in_data 0 64 } } }
	pw_bias { ap_none {  { pw_bias in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_out_0_AWVALID VALID 1 1 }  { m_axi_gmem_out_0_AWREADY READY 0 1 }  { m_axi_gmem_out_0_AWADDR ADDR 1 64 }  { m_axi_gmem_out_0_AWID ID 1 1 }  { m_axi_gmem_out_0_AWLEN SIZE 1 32 }  { m_axi_gmem_out_0_AWSIZE BURST 1 3 }  { m_axi_gmem_out_0_AWBURST LOCK 1 2 }  { m_axi_gmem_out_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_out_0_AWCACHE PROT 1 4 }  { m_axi_gmem_out_0_AWPROT QOS 1 3 }  { m_axi_gmem_out_0_AWQOS REGION 1 4 }  { m_axi_gmem_out_0_AWREGION USER 1 4 }  { m_axi_gmem_out_0_AWUSER DATA 1 1 }  { m_axi_gmem_out_0_WVALID VALID 1 1 }  { m_axi_gmem_out_0_WREADY READY 0 1 }  { m_axi_gmem_out_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_out_0_WSTRB STRB 1 1 }  { m_axi_gmem_out_0_WLAST LAST 1 1 }  { m_axi_gmem_out_0_WID ID 1 1 }  { m_axi_gmem_out_0_WUSER DATA 1 1 }  { m_axi_gmem_out_0_ARVALID VALID 1 1 }  { m_axi_gmem_out_0_ARREADY READY 0 1 }  { m_axi_gmem_out_0_ARADDR ADDR 1 64 }  { m_axi_gmem_out_0_ARID ID 1 1 }  { m_axi_gmem_out_0_ARLEN SIZE 1 32 }  { m_axi_gmem_out_0_ARSIZE BURST 1 3 }  { m_axi_gmem_out_0_ARBURST LOCK 1 2 }  { m_axi_gmem_out_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_out_0_ARCACHE PROT 1 4 }  { m_axi_gmem_out_0_ARPROT QOS 1 3 }  { m_axi_gmem_out_0_ARQOS REGION 1 4 }  { m_axi_gmem_out_0_ARREGION USER 1 4 }  { m_axi_gmem_out_0_ARUSER DATA 1 1 }  { m_axi_gmem_out_0_RVALID VALID 0 1 }  { m_axi_gmem_out_0_RREADY READY 1 1 }  { m_axi_gmem_out_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_out_0_RLAST LAST 0 1 }  { m_axi_gmem_out_0_RID ID 0 1 }  { m_axi_gmem_out_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_out_0_RUSER DATA 0 1 }  { m_axi_gmem_out_0_RRESP RESP 0 2 }  { m_axi_gmem_out_0_BVALID VALID 0 1 }  { m_axi_gmem_out_0_BREADY READY 1 1 }  { m_axi_gmem_out_0_BRESP RESP 0 2 }  { m_axi_gmem_out_0_BID ID 0 1 }  { m_axi_gmem_out_0_BUSER DATA 0 1 } } }
	output_r { ap_none {  { output_r in_data 0 64 } } }
	h_start { ap_none {  { h_start in_data 0 32 } } }
	height { ap_none {  { height in_data 0 32 } } }
	width { ap_none {  { width in_data 0 32 } } }
	c_in { ap_none {  { c_in in_data 0 32 } } }
	c_out { ap_none {  { c_out in_data 0 32 } } }
	pw_act_zp { ap_none {  { pw_act_zp in_data 0 16 } } }
	pw_wgt_zp { ap_none {  { pw_wgt_zp in_data 0 16 } } }
	pw_out_zp { ap_none {  { pw_out_zp in_data 0 32 } } }
	pw_M_mantissa { ap_none {  { pw_M_mantissa in_data 0 32 } } }
	pw_M_shift { ap_none {  { pw_M_shift in_data 0 32 } } }
	pw_use_bias { ap_none {  { pw_use_bias in_data 0 32 } } }
}
