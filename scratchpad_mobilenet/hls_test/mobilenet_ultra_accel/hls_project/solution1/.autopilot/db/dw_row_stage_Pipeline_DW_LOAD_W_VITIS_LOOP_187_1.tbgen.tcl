set moduleName dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1
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
set C_modelName {dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ w_cache_8 int 8 regular  }
	{ w_cache_7 int 8 regular  }
	{ w_cache_6 int 8 regular  }
	{ w_cache_5 int 8 regular  }
	{ w_cache_4 int 8 regular  }
	{ w_cache_3 int 8 regular  }
	{ w_cache_2 int 8 regular  }
	{ w_cache_1 int 8 regular  }
	{ w_cache int 8 regular  }
	{ zext_ln181_3 int 35 regular  }
	{ dw_weights int 64 regular  }
	{ gmem_dw_w int 32 regular {axi_master 0}  }
	{ w_cache_17_out int 8 regular {pointer 1}  }
	{ w_cache_16_out int 8 regular {pointer 1}  }
	{ w_cache_15_out int 8 regular {pointer 1}  }
	{ w_cache_14_out int 8 regular {pointer 1}  }
	{ w_cache_13_out int 8 regular {pointer 1}  }
	{ w_cache_12_out int 8 regular {pointer 1}  }
	{ w_cache_11_out int 8 regular {pointer 1}  }
	{ w_cache_10_out int 8 regular {pointer 1}  }
	{ w_cache_9_out int 8 regular {pointer 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "w_cache_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_7", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_5", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "w_cache", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln181_3", "interface" : "wire", "bitwidth" : 35, "direction" : "READONLY"} , 
 	{ "Name" : "dw_weights", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem_dw_w", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dw_weights","offset": { "type": "dynamic","port_name": "dw_weights","bundle": "control"},"direction": "READONLY"},{"cName": "dw_bias","offset": { "type": "dynamic","port_name": "dw_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "w_cache_17_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_16_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_15_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_14_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_13_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_12_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_10_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "w_cache_9_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 81
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_dw_w_0_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem_dw_w_0_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARLEN sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_dw_w_0_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_gmem_dw_w_0_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RFIFONUM sc_in sc_lv 9 signal 11 } 
	{ m_axi_gmem_dw_w_0_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem_dw_w_0_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_dw_w_0_BUSER sc_in sc_lv 1 signal 11 } 
	{ w_cache_8 sc_in sc_lv 8 signal 0 } 
	{ w_cache_7 sc_in sc_lv 8 signal 1 } 
	{ w_cache_6 sc_in sc_lv 8 signal 2 } 
	{ w_cache_5 sc_in sc_lv 8 signal 3 } 
	{ w_cache_4 sc_in sc_lv 8 signal 4 } 
	{ w_cache_3 sc_in sc_lv 8 signal 5 } 
	{ w_cache_2 sc_in sc_lv 8 signal 6 } 
	{ w_cache_1 sc_in sc_lv 8 signal 7 } 
	{ w_cache sc_in sc_lv 8 signal 8 } 
	{ zext_ln181_3 sc_in sc_lv 35 signal 9 } 
	{ dw_weights sc_in sc_lv 64 signal 10 } 
	{ w_cache_17_out sc_out sc_lv 8 signal 12 } 
	{ w_cache_17_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ w_cache_16_out sc_out sc_lv 8 signal 13 } 
	{ w_cache_16_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ w_cache_15_out sc_out sc_lv 8 signal 14 } 
	{ w_cache_15_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ w_cache_14_out sc_out sc_lv 8 signal 15 } 
	{ w_cache_14_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ w_cache_13_out sc_out sc_lv 8 signal 16 } 
	{ w_cache_13_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ w_cache_12_out sc_out sc_lv 8 signal 17 } 
	{ w_cache_12_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ w_cache_11_out sc_out sc_lv 8 signal 18 } 
	{ w_cache_11_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ w_cache_10_out sc_out sc_lv 8 signal 19 } 
	{ w_cache_10_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ w_cache_9_out sc_out sc_lv 8 signal 20 } 
	{ w_cache_9_out_ap_vld sc_out sc_logic 1 outvld 20 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "w_cache_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_8", "role": "default" }} , 
 	{ "name": "w_cache_7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_7", "role": "default" }} , 
 	{ "name": "w_cache_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_6", "role": "default" }} , 
 	{ "name": "w_cache_5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_5", "role": "default" }} , 
 	{ "name": "w_cache_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_4", "role": "default" }} , 
 	{ "name": "w_cache_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_3", "role": "default" }} , 
 	{ "name": "w_cache_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_2", "role": "default" }} , 
 	{ "name": "w_cache_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_1", "role": "default" }} , 
 	{ "name": "w_cache", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache", "role": "default" }} , 
 	{ "name": "zext_ln181_3", "direction": "in", "datatype": "sc_lv", "bitwidth":35, "type": "signal", "bundle":{"name": "zext_ln181_3", "role": "default" }} , 
 	{ "name": "dw_weights", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dw_weights", "role": "default" }} , 
 	{ "name": "w_cache_17_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_17_out", "role": "default" }} , 
 	{ "name": "w_cache_17_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_17_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_16_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_16_out", "role": "default" }} , 
 	{ "name": "w_cache_16_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_16_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_15_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_15_out", "role": "default" }} , 
 	{ "name": "w_cache_15_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_15_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_14_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_14_out", "role": "default" }} , 
 	{ "name": "w_cache_14_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_14_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_13_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_13_out", "role": "default" }} , 
 	{ "name": "w_cache_13_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_13_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_12_out", "role": "default" }} , 
 	{ "name": "w_cache_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_12_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_11_out", "role": "default" }} , 
 	{ "name": "w_cache_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_11_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_10_out", "role": "default" }} , 
 	{ "name": "w_cache_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_10_out", "role": "ap_vld" }} , 
 	{ "name": "w_cache_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "w_cache_9_out", "role": "default" }} , 
 	{ "name": "w_cache_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "w_cache_9_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		w_cache_9_out {Type O LastRead -1 FirstWrite 9}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20", "Max" : "20"}
	, {"Name" : "Interval", "Min" : "20", "Max" : "20"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	w_cache_8 { ap_none {  { w_cache_8 in_data 0 8 } } }
	w_cache_7 { ap_none {  { w_cache_7 in_data 0 8 } } }
	w_cache_6 { ap_none {  { w_cache_6 in_data 0 8 } } }
	w_cache_5 { ap_none {  { w_cache_5 in_data 0 8 } } }
	w_cache_4 { ap_none {  { w_cache_4 in_data 0 8 } } }
	w_cache_3 { ap_none {  { w_cache_3 in_data 0 8 } } }
	w_cache_2 { ap_none {  { w_cache_2 in_data 0 8 } } }
	w_cache_1 { ap_none {  { w_cache_1 in_data 0 8 } } }
	w_cache { ap_none {  { w_cache in_data 0 8 } } }
	zext_ln181_3 { ap_none {  { zext_ln181_3 in_data 0 35 } } }
	dw_weights { ap_none {  { dw_weights in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_dw_w_0_AWVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_AWREADY READY 0 1 }  { m_axi_gmem_dw_w_0_AWADDR ADDR 1 64 }  { m_axi_gmem_dw_w_0_AWID ID 1 1 }  { m_axi_gmem_dw_w_0_AWLEN SIZE 1 32 }  { m_axi_gmem_dw_w_0_AWSIZE BURST 1 3 }  { m_axi_gmem_dw_w_0_AWBURST LOCK 1 2 }  { m_axi_gmem_dw_w_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_0_AWCACHE PROT 1 4 }  { m_axi_gmem_dw_w_0_AWPROT QOS 1 3 }  { m_axi_gmem_dw_w_0_AWQOS REGION 1 4 }  { m_axi_gmem_dw_w_0_AWREGION USER 1 4 }  { m_axi_gmem_dw_w_0_AWUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_WVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_WREADY READY 0 1 }  { m_axi_gmem_dw_w_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_dw_w_0_WSTRB STRB 1 4 }  { m_axi_gmem_dw_w_0_WLAST LAST 1 1 }  { m_axi_gmem_dw_w_0_WID ID 1 1 }  { m_axi_gmem_dw_w_0_WUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_ARVALID VALID 1 1 }  { m_axi_gmem_dw_w_0_ARREADY READY 0 1 }  { m_axi_gmem_dw_w_0_ARADDR ADDR 1 64 }  { m_axi_gmem_dw_w_0_ARID ID 1 1 }  { m_axi_gmem_dw_w_0_ARLEN SIZE 1 32 }  { m_axi_gmem_dw_w_0_ARSIZE BURST 1 3 }  { m_axi_gmem_dw_w_0_ARBURST LOCK 1 2 }  { m_axi_gmem_dw_w_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_0_ARCACHE PROT 1 4 }  { m_axi_gmem_dw_w_0_ARPROT QOS 1 3 }  { m_axi_gmem_dw_w_0_ARQOS REGION 1 4 }  { m_axi_gmem_dw_w_0_ARREGION USER 1 4 }  { m_axi_gmem_dw_w_0_ARUSER DATA 1 1 }  { m_axi_gmem_dw_w_0_RVALID VALID 0 1 }  { m_axi_gmem_dw_w_0_RREADY READY 1 1 }  { m_axi_gmem_dw_w_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_dw_w_0_RLAST LAST 0 1 }  { m_axi_gmem_dw_w_0_RID ID 0 1 }  { m_axi_gmem_dw_w_0_RFIFONUM LEN 0 9 }  { m_axi_gmem_dw_w_0_RUSER DATA 0 1 }  { m_axi_gmem_dw_w_0_RRESP RESP 0 2 }  { m_axi_gmem_dw_w_0_BVALID VALID 0 1 }  { m_axi_gmem_dw_w_0_BREADY READY 1 1 }  { m_axi_gmem_dw_w_0_BRESP RESP 0 2 }  { m_axi_gmem_dw_w_0_BID ID 0 1 }  { m_axi_gmem_dw_w_0_BUSER DATA 0 1 } } }
	w_cache_17_out { ap_vld {  { w_cache_17_out out_data 1 8 }  { w_cache_17_out_ap_vld out_vld 1 1 } } }
	w_cache_16_out { ap_vld {  { w_cache_16_out out_data 1 8 }  { w_cache_16_out_ap_vld out_vld 1 1 } } }
	w_cache_15_out { ap_vld {  { w_cache_15_out out_data 1 8 }  { w_cache_15_out_ap_vld out_vld 1 1 } } }
	w_cache_14_out { ap_vld {  { w_cache_14_out out_data 1 8 }  { w_cache_14_out_ap_vld out_vld 1 1 } } }
	w_cache_13_out { ap_vld {  { w_cache_13_out out_data 1 8 }  { w_cache_13_out_ap_vld out_vld 1 1 } } }
	w_cache_12_out { ap_vld {  { w_cache_12_out out_data 1 8 }  { w_cache_12_out_ap_vld out_vld 1 1 } } }
	w_cache_11_out { ap_vld {  { w_cache_11_out out_data 1 8 }  { w_cache_11_out_ap_vld out_vld 1 1 } } }
	w_cache_10_out { ap_vld {  { w_cache_10_out out_data 1 8 }  { w_cache_10_out_ap_vld out_vld 1 1 } } }
	w_cache_9_out { ap_vld {  { w_cache_9_out out_data 1 8 }  { w_cache_9_out_ap_vld out_vld 1 1 } } }
}
