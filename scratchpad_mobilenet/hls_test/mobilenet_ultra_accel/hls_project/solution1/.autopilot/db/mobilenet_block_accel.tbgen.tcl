set moduleName mobilenet_block_accel
set isTopModule 1
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
set C_modelName {mobilenet_block_accel}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ gmem_in int 8 regular {axi_master 0}  }
	{ gmem_dw_w int 32 regular {axi_master 0}  }
	{ gmem_pw_w int 32 regular {axi_master 0}  }
	{ gmem_out int 8 regular {axi_master 1}  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ dw_weights int 64 regular {axi_slave 0}  }
	{ dw_bias int 64 regular {axi_slave 0}  }
	{ pw_weights int 64 regular {axi_slave 0}  }
	{ pw_bias int 64 regular {axi_slave 0}  }
	{ output_r int 64 regular {axi_slave 0}  }
	{ height int 32 regular {axi_slave 0}  }
	{ width int 32 regular {axi_slave 0}  }
	{ c_in int 32 regular {axi_slave 0}  }
	{ c_out int 32 regular {axi_slave 0}  }
	{ dw_in_zp int 32 regular {axi_slave 0}  }
	{ dw_w_zp int 32 regular {axi_slave 0}  }
	{ dw_out_zp int 32 regular {axi_slave 0}  }
	{ dw_multiplier int 32 regular {axi_slave 0}  }
	{ dw_shift int 32 regular {axi_slave 0}  }
	{ dw_apply_relu6 int 32 regular {axi_slave 0}  }
	{ pw_act_zp int 32 regular {axi_slave 0}  }
	{ pw_wgt_zp int 32 regular {axi_slave 0}  }
	{ pw_out_zp int 32 regular {axi_slave 0}  }
	{ pw_M_mantissa int 32 regular {axi_slave 0}  }
	{ pw_M_shift int 32 regular {axi_slave 0}  }
	{ pw_use_bias int 32 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "gmem_in", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_dw_w", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "dw_weights","offset": { "type": "dynamic","port_name": "dw_weights","bundle": "control"},"direction": "READONLY"},{"cName": "dw_bias","offset": { "type": "dynamic","port_name": "dw_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_pw_w", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "pw_weights","offset": { "type": "dynamic","port_name": "pw_weights","bundle": "control"},"direction": "READONLY"},{"cName": "pw_bias","offset": { "type": "dynamic","port_name": "pw_bias","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_out", "interface" : "axi_master", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "output_r","offset": { "type": "dynamic","port_name": "output_r","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "dw_weights", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "dw_bias", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "pw_weights", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "pw_bias", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "output_r", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "height", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":95}} , 
 	{ "Name" : "width", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":96}, "offset_end" : {"in":103}} , 
 	{ "Name" : "c_in", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":104}, "offset_end" : {"in":111}} , 
 	{ "Name" : "c_out", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":119}} , 
 	{ "Name" : "dw_in_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":120}, "offset_end" : {"in":127}} , 
 	{ "Name" : "dw_w_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":128}, "offset_end" : {"in":135}} , 
 	{ "Name" : "dw_out_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":143}} , 
 	{ "Name" : "dw_multiplier", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":144}, "offset_end" : {"in":151}} , 
 	{ "Name" : "dw_shift", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":152}, "offset_end" : {"in":159}} , 
 	{ "Name" : "dw_apply_relu6", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":167}} , 
 	{ "Name" : "pw_act_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":168}, "offset_end" : {"in":175}} , 
 	{ "Name" : "pw_wgt_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":176}, "offset_end" : {"in":183}} , 
 	{ "Name" : "pw_out_zp", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":191}} , 
 	{ "Name" : "pw_M_mantissa", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":192}, "offset_end" : {"in":199}} , 
 	{ "Name" : "pw_M_shift", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":200}, "offset_end" : {"in":207}} , 
 	{ "Name" : "pw_use_bias", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":215}} ]}
# RTL Port declarations: 
set portNum 200
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_in_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_in_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_in_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_in_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_in_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_in_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_in_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_in_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_in_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_dw_w_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_dw_w_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_dw_w_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_dw_w_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_dw_w_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_dw_w_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_dw_w_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_dw_w_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_dw_w_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_dw_w_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_dw_w_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_dw_w_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_dw_w_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_dw_w_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_dw_w_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_pw_w_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_pw_w_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_pw_w_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_pw_w_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_pw_w_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_pw_w_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_pw_w_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_pw_w_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_pw_w_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_pw_w_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_pw_w_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_pw_w_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_pw_w_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_pw_w_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_pw_w_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_out_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_out_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_out_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_out_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_out_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_out_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_out_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_out_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_out_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_out_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_out_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_out_BUSER sc_in sc_lv 1 signal 3 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 8 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"mobilenet_block_accel","role":"start","value":"0","valid_bit":"0"},{"name":"mobilenet_block_accel","role":"continue","value":"0","valid_bit":"4"},{"name":"mobilenet_block_accel","role":"auto_start","value":"0","valid_bit":"7"},{"name":"input_r","role":"data","value":"16"},{"name":"dw_weights","role":"data","value":"28"},{"name":"dw_bias","role":"data","value":"40"},{"name":"pw_weights","role":"data","value":"52"},{"name":"pw_bias","role":"data","value":"64"},{"name":"output_r","role":"data","value":"76"},{"name":"height","role":"data","value":"88"},{"name":"width","role":"data","value":"96"},{"name":"c_in","role":"data","value":"104"},{"name":"c_out","role":"data","value":"112"},{"name":"dw_in_zp","role":"data","value":"120"},{"name":"dw_w_zp","role":"data","value":"128"},{"name":"dw_out_zp","role":"data","value":"136"},{"name":"dw_multiplier","role":"data","value":"144"},{"name":"dw_shift","role":"data","value":"152"},{"name":"dw_apply_relu6","role":"data","value":"160"},{"name":"pw_act_zp","role":"data","value":"168"},{"name":"pw_wgt_zp","role":"data","value":"176"},{"name":"pw_out_zp","role":"data","value":"184"},{"name":"pw_M_mantissa","role":"data","value":"192"},{"name":"pw_M_shift","role":"data","value":"200"},{"name":"pw_use_bias","role":"data","value":"208"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"mobilenet_block_accel","role":"start","value":"0","valid_bit":"0"},{"name":"mobilenet_block_accel","role":"done","value":"0","valid_bit":"1"},{"name":"mobilenet_block_accel","role":"idle","value":"0","valid_bit":"2"},{"name":"mobilenet_block_accel","role":"ready","value":"0","valid_bit":"3"},{"name":"mobilenet_block_accel","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_in_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_in_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_in_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_in_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_in_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_in_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_in_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_in_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_in_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_in_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_in_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_in_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_in_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_in_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_in_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_in_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_in_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_in_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_in_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_in_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_in_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_in_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_in_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_in_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_in_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_in_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_in_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_in_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_in_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_in_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_in_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_in_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_in_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_in_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_in_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_in_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_in", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_in_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_in_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_in_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_in_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_in_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_in_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_in_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_in", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_in_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_in_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_in", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_dw_w_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_dw_w_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_dw_w_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_dw_w_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_dw_w_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_dw_w_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_dw_w_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_dw_w_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_dw_w_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_dw_w_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_dw_w_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_dw_w_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_dw_w_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_dw_w_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_dw_w_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_dw_w", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_pw_w_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_pw_w_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_pw_w_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_pw_w_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_pw_w_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_pw_w_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_pw_w_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_pw_w_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_pw_w_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_pw_w_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_pw_w_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_pw_w_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_pw_w_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_pw_w_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_pw_w_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_pw_w", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_out_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_out_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_out_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_out_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_out_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_out_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_out_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_out_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_out_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_out_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_out_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_out_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_out_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_out_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_out_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_out_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_out_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_out_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_out_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_out_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_out_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_out_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_out_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_out_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_out_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_out_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_out_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_out_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_out_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_out_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_out_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_out_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_out_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_out_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_out_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_out_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_out", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_out_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_out_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_out_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_out_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_out_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_out_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_out_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_out", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_out_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_out_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_out", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "386", "387", "388", "389", "390"],
		"CDFG" : "mobilenet_block_accel",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "gmem_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "gmem_dw_w", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "gmem_pw_w", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "gmem_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_w_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_mantissa", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_use_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_dataflow_parent_loop_proc_fu_344", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "dataflow_parent_loop_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_TILE_LOOP_1_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "dataflow_in_loop_TILE_LOOP_1_U0"}],
		"Port" : [
			{"Name" : "add1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "gmem_in"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "gmem_dw_w"}]},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_w_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "gmem_pw_w"}]},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "gmem_out"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_mantissa", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_use_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15"}]}],
		"Loop" : [
			{"Name" : "TILE_LOOP", "PipelineType" : "dataflow",
				"LoopDec" : {"InfiniteLoop" : "0", "BodyInst" : "dataflow_in_loop_TILE_LOOP_1_U0", "has_continue" : "1"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0", "Parent" : "1", "Child" : ["3", "4", "31", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384", "385"],
		"CDFG" : "dataflow_in_loop_TILE_LOOP_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"InputProcess" : [
			{"ID" : "3", "Name" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1_U0"},
			{"ID" : "4", "Name" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0"},
			{"ID" : "31", "Name" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0"}],
		"OutputProcess" : [
			{"ID" : "31", "Name" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0"}],
		"Port" : [
			{"Name" : "tile_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "gmem_in"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "gmem_dw_w"}]},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_w_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "gmem_pw_w"}]},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "gmem_out"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_mantissa", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_use_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15"},
					{"ID" : "31", "SubInstance" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Port" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15"}]}]},
	{"ID" : "3", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1_U0", "Parent" : "2",
		"CDFG" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tile_0", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0", "Parent" : "2", "Child" : ["5"],
		"CDFG" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "384", "DependentChanDepth" : "2", "DependentChanType" : "1"},
			{"Name" : "gmem_in", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "gmem_in", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "gmem_dw_w", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "tile_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_in_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_w_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_multiplier", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_apply_relu6", "Type" : "None", "Direction" : "I"},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "350",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "351",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "352",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "353",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "354",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "355",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "356",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "357",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "358",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "359",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "360",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "361",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "362",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "363",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "364",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "365",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "366",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "367",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "368",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "369",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "370",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "373",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "374",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "375",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "376",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "377",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "378",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "379",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "380",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Type" : "Memory", "Direction" : "O", "DependentProc" : ["31"], "DependentChan" : "381",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_dw_row_stage_fu_212", "Port" : "inter_buf_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "5", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212", "Parent" : "4", "Child" : ["6", "7", "8", "9", "11", "14", "16", "29", "30"],
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
					{"ID" : "11", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476", "Port" : "gmem_in", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "gmem_in", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_dw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_dw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_dw_w_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450", "Port" : "gmem_dw_w", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "dw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "dw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "inter_buf_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_0", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_1", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_2", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_3", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_4", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_5", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_6", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_7", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_8", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_9", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_10", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_11", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_12", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_13", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_14", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Port" : "inter_buf_15", "Inst_start_state" : "13", "Inst_end_state" : "14"}]},
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
	{"ID" : "6", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.line_buf_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.line_buf_1_U", "Parent" : "5"},
	{"ID" : "8", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.line_buf_2_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450", "Parent" : "5", "Child" : ["10"],
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
	{"ID" : "10", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476", "Parent" : "5", "Child" : ["12", "13"],
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
	{"ID" : "12", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476.mul_33s_31ns_64_1_1_U23", "Parent" : "11"},
	{"ID" : "13", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_INIT_WIN_fu_493", "Parent" : "5", "Child" : ["15"],
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
	{"ID" : "15", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_INIT_WIN_fu_493.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "16", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510", "Parent" : "5", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28"],
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
	{"ID" : "17", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U50", "Parent" : "16"},
	{"ID" : "18", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U51", "Parent" : "16"},
	{"ID" : "19", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U52", "Parent" : "16"},
	{"ID" : "20", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U53", "Parent" : "16"},
	{"ID" : "21", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U54", "Parent" : "16"},
	{"ID" : "22", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U55", "Parent" : "16"},
	{"ID" : "23", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U56", "Parent" : "16"},
	{"ID" : "24", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U57", "Parent" : "16"},
	{"ID" : "25", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U58", "Parent" : "16"},
	{"ID" : "26", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_32s_32s_32_1_1_U59", "Parent" : "16"},
	{"ID" : "27", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.mul_33s_31ns_64_1_1_U60", "Parent" : "16"},
	{"ID" : "28", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "29", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.mul_31ns_32s_32_1_1_U117", "Parent" : "5"},
	{"ID" : "30", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0.grp_dw_row_stage_fu_212.mul_32s_32s_32_1_1_U118", "Parent" : "5"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0", "Parent" : "2", "Child" : ["32"],
		"CDFG" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_read", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "385", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "382", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "gmem_pw_w", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "pw_weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem_out", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "gmem_out", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "output_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I", "DependentProc" : ["3"], "DependentChan" : "383", "DependentChanDepth" : "3", "DependentChanType" : "1"},
			{"Name" : "height", "Type" : "None", "Direction" : "I"},
			{"Name" : "width", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_in", "Type" : "None", "Direction" : "I"},
			{"Name" : "c_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_act_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_wgt_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_out_zp", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_mantissa", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_M_shift", "Type" : "None", "Direction" : "I"},
			{"Name" : "pw_use_bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "350",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "351",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "352",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "353",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "354",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "355",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "356",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "357",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "358",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "359",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "360",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "361",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "362",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "363",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "364",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "365",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "366",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "367",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "368",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "369",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "370",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "371",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "372",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "373",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "374",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "375",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "376",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "377",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "378",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "379",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "380",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15", "Type" : "Memory", "Direction" : "I", "DependentProc" : ["4"], "DependentChan" : "381",
				"SubConnect" : [
					{"ID" : "32", "SubInstance" : "grp_pw_row_stage_fu_228", "Port" : "inter_buf_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228", "Parent" : "31", "Child" : ["33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256", "257", "258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "308", "310", "345", "346", "347", "348", "349"],
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
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_4", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_5", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_6", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_7", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_8", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_9", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_10", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_11", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_12", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_13", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_14", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "inter_buf_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "305", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Port" : "inter_buf_15", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "gmem_pw_w", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_pw_w_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_pw_w_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "308", "SubInstance" : "grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222", "Port" : "gmem_pw_w", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
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
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_U", "Parent" : "32"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_1_U", "Parent" : "32"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_2_U", "Parent" : "32"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_3_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_4_U", "Parent" : "32"},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_5_U", "Parent" : "32"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_6_U", "Parent" : "32"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_7_U", "Parent" : "32"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_8_U", "Parent" : "32"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_9_U", "Parent" : "32"},
	{"ID" : "43", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_10_U", "Parent" : "32"},
	{"ID" : "44", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_11_U", "Parent" : "32"},
	{"ID" : "45", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_12_U", "Parent" : "32"},
	{"ID" : "46", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_13_U", "Parent" : "32"},
	{"ID" : "47", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_14_U", "Parent" : "32"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.input_buf_15_U", "Parent" : "32"},
	{"ID" : "49", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_U", "Parent" : "32"},
	{"ID" : "50", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_1_U", "Parent" : "32"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_2_U", "Parent" : "32"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_3_U", "Parent" : "32"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_4_U", "Parent" : "32"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_5_U", "Parent" : "32"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_6_U", "Parent" : "32"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_7_U", "Parent" : "32"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_8_U", "Parent" : "32"},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_9_U", "Parent" : "32"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_10_U", "Parent" : "32"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_11_U", "Parent" : "32"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_12_U", "Parent" : "32"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_13_U", "Parent" : "32"},
	{"ID" : "63", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_14_U", "Parent" : "32"},
	{"ID" : "64", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_15_U", "Parent" : "32"},
	{"ID" : "65", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_16_U", "Parent" : "32"},
	{"ID" : "66", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_17_U", "Parent" : "32"},
	{"ID" : "67", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_18_U", "Parent" : "32"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_19_U", "Parent" : "32"},
	{"ID" : "69", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_20_U", "Parent" : "32"},
	{"ID" : "70", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_21_U", "Parent" : "32"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_22_U", "Parent" : "32"},
	{"ID" : "72", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_23_U", "Parent" : "32"},
	{"ID" : "73", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_24_U", "Parent" : "32"},
	{"ID" : "74", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_25_U", "Parent" : "32"},
	{"ID" : "75", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_26_U", "Parent" : "32"},
	{"ID" : "76", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_27_U", "Parent" : "32"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_28_U", "Parent" : "32"},
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_29_U", "Parent" : "32"},
	{"ID" : "79", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_30_U", "Parent" : "32"},
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_31_U", "Parent" : "32"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_32_U", "Parent" : "32"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_33_U", "Parent" : "32"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_34_U", "Parent" : "32"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_35_U", "Parent" : "32"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_36_U", "Parent" : "32"},
	{"ID" : "86", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_37_U", "Parent" : "32"},
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_38_U", "Parent" : "32"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_39_U", "Parent" : "32"},
	{"ID" : "89", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_40_U", "Parent" : "32"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_41_U", "Parent" : "32"},
	{"ID" : "91", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_42_U", "Parent" : "32"},
	{"ID" : "92", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_43_U", "Parent" : "32"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_44_U", "Parent" : "32"},
	{"ID" : "94", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_45_U", "Parent" : "32"},
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_46_U", "Parent" : "32"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_47_U", "Parent" : "32"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_48_U", "Parent" : "32"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_49_U", "Parent" : "32"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_50_U", "Parent" : "32"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_51_U", "Parent" : "32"},
	{"ID" : "101", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_52_U", "Parent" : "32"},
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_53_U", "Parent" : "32"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_54_U", "Parent" : "32"},
	{"ID" : "104", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_55_U", "Parent" : "32"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_56_U", "Parent" : "32"},
	{"ID" : "106", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_57_U", "Parent" : "32"},
	{"ID" : "107", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_58_U", "Parent" : "32"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_59_U", "Parent" : "32"},
	{"ID" : "109", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_60_U", "Parent" : "32"},
	{"ID" : "110", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_61_U", "Parent" : "32"},
	{"ID" : "111", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_62_U", "Parent" : "32"},
	{"ID" : "112", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_63_U", "Parent" : "32"},
	{"ID" : "113", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_64_U", "Parent" : "32"},
	{"ID" : "114", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_65_U", "Parent" : "32"},
	{"ID" : "115", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_66_U", "Parent" : "32"},
	{"ID" : "116", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_67_U", "Parent" : "32"},
	{"ID" : "117", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_68_U", "Parent" : "32"},
	{"ID" : "118", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_69_U", "Parent" : "32"},
	{"ID" : "119", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_70_U", "Parent" : "32"},
	{"ID" : "120", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_71_U", "Parent" : "32"},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_72_U", "Parent" : "32"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_73_U", "Parent" : "32"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_74_U", "Parent" : "32"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_75_U", "Parent" : "32"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_76_U", "Parent" : "32"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_77_U", "Parent" : "32"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_78_U", "Parent" : "32"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_79_U", "Parent" : "32"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_80_U", "Parent" : "32"},
	{"ID" : "130", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_81_U", "Parent" : "32"},
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_82_U", "Parent" : "32"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_83_U", "Parent" : "32"},
	{"ID" : "133", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_84_U", "Parent" : "32"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_85_U", "Parent" : "32"},
	{"ID" : "135", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_86_U", "Parent" : "32"},
	{"ID" : "136", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_87_U", "Parent" : "32"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_88_U", "Parent" : "32"},
	{"ID" : "138", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_89_U", "Parent" : "32"},
	{"ID" : "139", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_90_U", "Parent" : "32"},
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_91_U", "Parent" : "32"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_92_U", "Parent" : "32"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_93_U", "Parent" : "32"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_94_U", "Parent" : "32"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_95_U", "Parent" : "32"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_96_U", "Parent" : "32"},
	{"ID" : "146", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_97_U", "Parent" : "32"},
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_98_U", "Parent" : "32"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_99_U", "Parent" : "32"},
	{"ID" : "149", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_100_U", "Parent" : "32"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_101_U", "Parent" : "32"},
	{"ID" : "151", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_102_U", "Parent" : "32"},
	{"ID" : "152", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_103_U", "Parent" : "32"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_104_U", "Parent" : "32"},
	{"ID" : "154", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_105_U", "Parent" : "32"},
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_106_U", "Parent" : "32"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_107_U", "Parent" : "32"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_108_U", "Parent" : "32"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_109_U", "Parent" : "32"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_110_U", "Parent" : "32"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_111_U", "Parent" : "32"},
	{"ID" : "161", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_112_U", "Parent" : "32"},
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_113_U", "Parent" : "32"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_114_U", "Parent" : "32"},
	{"ID" : "164", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_115_U", "Parent" : "32"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_116_U", "Parent" : "32"},
	{"ID" : "166", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_117_U", "Parent" : "32"},
	{"ID" : "167", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_118_U", "Parent" : "32"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_119_U", "Parent" : "32"},
	{"ID" : "169", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_120_U", "Parent" : "32"},
	{"ID" : "170", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_121_U", "Parent" : "32"},
	{"ID" : "171", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_122_U", "Parent" : "32"},
	{"ID" : "172", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_123_U", "Parent" : "32"},
	{"ID" : "173", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_124_U", "Parent" : "32"},
	{"ID" : "174", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_125_U", "Parent" : "32"},
	{"ID" : "175", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_126_U", "Parent" : "32"},
	{"ID" : "176", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_127_U", "Parent" : "32"},
	{"ID" : "177", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_128_U", "Parent" : "32"},
	{"ID" : "178", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_129_U", "Parent" : "32"},
	{"ID" : "179", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_130_U", "Parent" : "32"},
	{"ID" : "180", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_131_U", "Parent" : "32"},
	{"ID" : "181", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_132_U", "Parent" : "32"},
	{"ID" : "182", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_133_U", "Parent" : "32"},
	{"ID" : "183", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_134_U", "Parent" : "32"},
	{"ID" : "184", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_135_U", "Parent" : "32"},
	{"ID" : "185", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_136_U", "Parent" : "32"},
	{"ID" : "186", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_137_U", "Parent" : "32"},
	{"ID" : "187", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_138_U", "Parent" : "32"},
	{"ID" : "188", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_139_U", "Parent" : "32"},
	{"ID" : "189", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_140_U", "Parent" : "32"},
	{"ID" : "190", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_141_U", "Parent" : "32"},
	{"ID" : "191", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_142_U", "Parent" : "32"},
	{"ID" : "192", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_143_U", "Parent" : "32"},
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_144_U", "Parent" : "32"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_145_U", "Parent" : "32"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_146_U", "Parent" : "32"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_147_U", "Parent" : "32"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_148_U", "Parent" : "32"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_149_U", "Parent" : "32"},
	{"ID" : "199", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_150_U", "Parent" : "32"},
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_151_U", "Parent" : "32"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_152_U", "Parent" : "32"},
	{"ID" : "202", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_153_U", "Parent" : "32"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_154_U", "Parent" : "32"},
	{"ID" : "204", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_155_U", "Parent" : "32"},
	{"ID" : "205", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_156_U", "Parent" : "32"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_157_U", "Parent" : "32"},
	{"ID" : "207", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_158_U", "Parent" : "32"},
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_159_U", "Parent" : "32"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_160_U", "Parent" : "32"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_161_U", "Parent" : "32"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_162_U", "Parent" : "32"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_163_U", "Parent" : "32"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_164_U", "Parent" : "32"},
	{"ID" : "214", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_165_U", "Parent" : "32"},
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_166_U", "Parent" : "32"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_167_U", "Parent" : "32"},
	{"ID" : "217", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_168_U", "Parent" : "32"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_169_U", "Parent" : "32"},
	{"ID" : "219", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_170_U", "Parent" : "32"},
	{"ID" : "220", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_171_U", "Parent" : "32"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_172_U", "Parent" : "32"},
	{"ID" : "222", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_173_U", "Parent" : "32"},
	{"ID" : "223", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_174_U", "Parent" : "32"},
	{"ID" : "224", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_175_U", "Parent" : "32"},
	{"ID" : "225", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_176_U", "Parent" : "32"},
	{"ID" : "226", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_177_U", "Parent" : "32"},
	{"ID" : "227", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_178_U", "Parent" : "32"},
	{"ID" : "228", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_179_U", "Parent" : "32"},
	{"ID" : "229", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_180_U", "Parent" : "32"},
	{"ID" : "230", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_181_U", "Parent" : "32"},
	{"ID" : "231", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_182_U", "Parent" : "32"},
	{"ID" : "232", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_183_U", "Parent" : "32"},
	{"ID" : "233", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_184_U", "Parent" : "32"},
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_185_U", "Parent" : "32"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_186_U", "Parent" : "32"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_187_U", "Parent" : "32"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_188_U", "Parent" : "32"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_189_U", "Parent" : "32"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_190_U", "Parent" : "32"},
	{"ID" : "240", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_191_U", "Parent" : "32"},
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_192_U", "Parent" : "32"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_193_U", "Parent" : "32"},
	{"ID" : "243", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_194_U", "Parent" : "32"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_195_U", "Parent" : "32"},
	{"ID" : "245", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_196_U", "Parent" : "32"},
	{"ID" : "246", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_197_U", "Parent" : "32"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_198_U", "Parent" : "32"},
	{"ID" : "248", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_199_U", "Parent" : "32"},
	{"ID" : "249", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_200_U", "Parent" : "32"},
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_201_U", "Parent" : "32"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_202_U", "Parent" : "32"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_203_U", "Parent" : "32"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_204_U", "Parent" : "32"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_205_U", "Parent" : "32"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_206_U", "Parent" : "32"},
	{"ID" : "256", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_207_U", "Parent" : "32"},
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_208_U", "Parent" : "32"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_209_U", "Parent" : "32"},
	{"ID" : "259", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_210_U", "Parent" : "32"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_211_U", "Parent" : "32"},
	{"ID" : "261", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_212_U", "Parent" : "32"},
	{"ID" : "262", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_213_U", "Parent" : "32"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_214_U", "Parent" : "32"},
	{"ID" : "264", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_215_U", "Parent" : "32"},
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_216_U", "Parent" : "32"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_217_U", "Parent" : "32"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_218_U", "Parent" : "32"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_219_U", "Parent" : "32"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_220_U", "Parent" : "32"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_221_U", "Parent" : "32"},
	{"ID" : "271", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_222_U", "Parent" : "32"},
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_223_U", "Parent" : "32"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_224_U", "Parent" : "32"},
	{"ID" : "274", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_225_U", "Parent" : "32"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_226_U", "Parent" : "32"},
	{"ID" : "276", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_227_U", "Parent" : "32"},
	{"ID" : "277", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_228_U", "Parent" : "32"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_229_U", "Parent" : "32"},
	{"ID" : "279", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_230_U", "Parent" : "32"},
	{"ID" : "280", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_231_U", "Parent" : "32"},
	{"ID" : "281", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_232_U", "Parent" : "32"},
	{"ID" : "282", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_233_U", "Parent" : "32"},
	{"ID" : "283", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_234_U", "Parent" : "32"},
	{"ID" : "284", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_235_U", "Parent" : "32"},
	{"ID" : "285", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_236_U", "Parent" : "32"},
	{"ID" : "286", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_237_U", "Parent" : "32"},
	{"ID" : "287", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_238_U", "Parent" : "32"},
	{"ID" : "288", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_239_U", "Parent" : "32"},
	{"ID" : "289", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_240_U", "Parent" : "32"},
	{"ID" : "290", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_241_U", "Parent" : "32"},
	{"ID" : "291", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_242_U", "Parent" : "32"},
	{"ID" : "292", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_243_U", "Parent" : "32"},
	{"ID" : "293", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_244_U", "Parent" : "32"},
	{"ID" : "294", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_245_U", "Parent" : "32"},
	{"ID" : "295", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_246_U", "Parent" : "32"},
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_247_U", "Parent" : "32"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_248_U", "Parent" : "32"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_249_U", "Parent" : "32"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_250_U", "Parent" : "32"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_251_U", "Parent" : "32"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_252_U", "Parent" : "32"},
	{"ID" : "302", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_253_U", "Parent" : "32"},
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_254_U", "Parent" : "32"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.wgt_tile_255_U", "Parent" : "32"},
	{"ID" : "305", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168", "Parent" : "32", "Child" : ["306", "307"],
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
	{"ID" : "306", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168.sparsemux_33_4_8_1_1_U201", "Parent" : "305"},
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168.flow_control_loop_pipe_sequential_init_U", "Parent" : "305"},
	{"ID" : "308", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222", "Parent" : "32", "Child" : ["309"],
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
	{"ID" : "309", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222.flow_control_loop_pipe_sequential_init_U", "Parent" : "308"},
	{"ID" : "310", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488", "Parent" : "32", "Child" : ["311", "312", "313", "314", "315", "316", "317", "318", "319", "320", "321", "322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344"],
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
	{"ID" : "311", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U498", "Parent" : "310"},
	{"ID" : "312", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U499", "Parent" : "310"},
	{"ID" : "313", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U500", "Parent" : "310"},
	{"ID" : "314", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U501", "Parent" : "310"},
	{"ID" : "315", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U502", "Parent" : "310"},
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U503", "Parent" : "310"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U504", "Parent" : "310"},
	{"ID" : "318", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U505", "Parent" : "310"},
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U506", "Parent" : "310"},
	{"ID" : "320", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U507", "Parent" : "310"},
	{"ID" : "321", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U508", "Parent" : "310"},
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U509", "Parent" : "310"},
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U510", "Parent" : "310"},
	{"ID" : "324", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U511", "Parent" : "310"},
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U512", "Parent" : "310"},
	{"ID" : "326", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U513", "Parent" : "310"},
	{"ID" : "327", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.sparsemux_33_4_8_1_1_U514", "Parent" : "310"},
	{"ID" : "328", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U515", "Parent" : "310"},
	{"ID" : "329", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U516", "Parent" : "310"},
	{"ID" : "330", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U517", "Parent" : "310"},
	{"ID" : "331", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U518", "Parent" : "310"},
	{"ID" : "332", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U519", "Parent" : "310"},
	{"ID" : "333", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U520", "Parent" : "310"},
	{"ID" : "334", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U521", "Parent" : "310"},
	{"ID" : "335", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U522", "Parent" : "310"},
	{"ID" : "336", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U523", "Parent" : "310"},
	{"ID" : "337", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U524", "Parent" : "310"},
	{"ID" : "338", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U525", "Parent" : "310"},
	{"ID" : "339", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U526", "Parent" : "310"},
	{"ID" : "340", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U527", "Parent" : "310"},
	{"ID" : "341", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U528", "Parent" : "310"},
	{"ID" : "342", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U529", "Parent" : "310"},
	{"ID" : "343", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.mac_muladd_16s_16s_32ns_32_4_1_U530", "Parent" : "310"},
	{"ID" : "344", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488.flow_control_loop_pipe_sequential_init_U", "Parent" : "310"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.mul_32ns_31ns_63_1_1_U839", "Parent" : "32"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.mul_32s_32s_32_1_1_U840", "Parent" : "32"},
	{"ID" : "347", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.mul_32s_32s_64_1_1_U841", "Parent" : "32"},
	{"ID" : "348", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.mul_33s_32s_64_1_1_U842", "Parent" : "32"},
	{"ID" : "349", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0.grp_pw_row_stage_fu_228.mul_17s_17s_17_1_1_U843", "Parent" : "32"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9_U", "Parent" : "2"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8_U", "Parent" : "2"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7_U", "Parent" : "2"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6_U", "Parent" : "2"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5_U", "Parent" : "2"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4_U", "Parent" : "2"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3_U", "Parent" : "2"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2_U", "Parent" : "2"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1_U", "Parent" : "2"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_U", "Parent" : "2"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10_U", "Parent" : "2"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11_U", "Parent" : "2"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12_U", "Parent" : "2"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13_U", "Parent" : "2"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14_U", "Parent" : "2"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15_U", "Parent" : "2"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19_U", "Parent" : "2"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18_U", "Parent" : "2"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17_U", "Parent" : "2"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16_U", "Parent" : "2"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15_U", "Parent" : "2"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14_U", "Parent" : "2"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13_U", "Parent" : "2"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12_U", "Parent" : "2"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11_U", "Parent" : "2"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10_U", "Parent" : "2"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10_U", "Parent" : "2"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11_U", "Parent" : "2"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12_U", "Parent" : "2"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13_U", "Parent" : "2"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14_U", "Parent" : "2"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15_U", "Parent" : "2"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.sub2_loc_channel_U", "Parent" : "2"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.sub3_loc_channel_U", "Parent" : "2"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.cmp5_loc_channel_U", "Parent" : "2"},
	{"ID" : "385", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_dataflow_parent_loop_proc_fu_344.dataflow_in_loop_TILE_LOOP_1_U0.cmp6_loc_channel_U", "Parent" : "2"},
	{"ID" : "386", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "387", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_dw_w_m_axi_U", "Parent" : "0"},
	{"ID" : "388", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_in_m_axi_U", "Parent" : "0"},
	{"ID" : "389", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_out_m_axi_U", "Parent" : "0"},
	{"ID" : "390", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_pw_w_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mobilenet_block_accel {
		gmem_in {Type I LastRead 10 FirstWrite -1}
		gmem_dw_w {Type I LastRead 11 FirstWrite -1}
		gmem_pw_w {Type I LastRead 163 FirstWrite -1}
		gmem_out {Type O LastRead 274 FirstWrite 168}
		input_r {Type I LastRead 0 FirstWrite -1}
		dw_weights {Type I LastRead 0 FirstWrite -1}
		dw_bias {Type I LastRead 0 FirstWrite -1}
		pw_weights {Type I LastRead 0 FirstWrite -1}
		pw_bias {Type I LastRead 0 FirstWrite -1}
		output_r {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		c_out {Type I LastRead 0 FirstWrite -1}
		dw_in_zp {Type I LastRead 0 FirstWrite -1}
		dw_w_zp {Type I LastRead 0 FirstWrite -1}
		dw_out_zp {Type I LastRead 0 FirstWrite -1}
		dw_multiplier {Type I LastRead 0 FirstWrite -1}
		dw_shift {Type I LastRead 0 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 0 FirstWrite -1}
		pw_act_zp {Type I LastRead 0 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 0 FirstWrite -1}
		pw_out_zp {Type I LastRead 0 FirstWrite -1}
		pw_M_mantissa {Type I LastRead 0 FirstWrite -1}
		pw_M_shift {Type I LastRead 0 FirstWrite -1}
		pw_use_bias {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_parent_loop_proc {
		add1 {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 10 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		gmem_dw_w {Type I LastRead 11 FirstWrite -1}
		dw_weights {Type I LastRead 0 FirstWrite -1}
		dw_bias {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		dw_in_zp {Type I LastRead 0 FirstWrite -1}
		dw_w_zp {Type I LastRead 0 FirstWrite -1}
		dw_out_zp {Type I LastRead 0 FirstWrite -1}
		dw_multiplier {Type I LastRead 0 FirstWrite -1}
		dw_shift {Type I LastRead 0 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 0 FirstWrite -1}
		gmem_pw_w {Type I LastRead 163 FirstWrite -1}
		pw_weights {Type I LastRead 0 FirstWrite -1}
		pw_bias {Type I LastRead 0 FirstWrite -1}
		gmem_out {Type O LastRead 274 FirstWrite 168}
		output_r {Type I LastRead 0 FirstWrite -1}
		c_out {Type I LastRead 0 FirstWrite -1}
		pw_act_zp {Type I LastRead 0 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 0 FirstWrite -1}
		pw_out_zp {Type I LastRead 0 FirstWrite -1}
		pw_M_mantissa {Type I LastRead 0 FirstWrite -1}
		pw_M_shift {Type I LastRead 0 FirstWrite -1}
		pw_use_bias {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_TILE_LOOP_1 {
		tile_0 {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 10 FirstWrite -1}
		input_r {Type I LastRead 1 FirstWrite -1}
		gmem_dw_w {Type I LastRead 11 FirstWrite -1}
		dw_weights {Type I LastRead 1 FirstWrite -1}
		dw_bias {Type I LastRead 1 FirstWrite -1}
		height {Type I LastRead 1 FirstWrite -1}
		width {Type I LastRead 1 FirstWrite -1}
		c_in {Type I LastRead 1 FirstWrite -1}
		dw_in_zp {Type I LastRead 1 FirstWrite -1}
		dw_w_zp {Type I LastRead 1 FirstWrite -1}
		dw_out_zp {Type I LastRead 1 FirstWrite -1}
		dw_multiplier {Type I LastRead 1 FirstWrite -1}
		dw_shift {Type I LastRead 1 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 1 FirstWrite -1}
		gmem_pw_w {Type I LastRead 163 FirstWrite -1}
		pw_weights {Type I LastRead 3 FirstWrite -1}
		pw_bias {Type I LastRead 3 FirstWrite -1}
		gmem_out {Type O LastRead 274 FirstWrite 168}
		output_r {Type I LastRead 3 FirstWrite -1}
		c_out {Type I LastRead 3 FirstWrite -1}
		pw_act_zp {Type I LastRead 3 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 3 FirstWrite -1}
		pw_out_zp {Type I LastRead 3 FirstWrite -1}
		pw_M_mantissa {Type I LastRead 3 FirstWrite -1}
		pw_M_shift {Type I LastRead 3 FirstWrite -1}
		pw_use_bias {Type I LastRead 3 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11 {Type IO LastRead -1 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14 {Type IO LastRead -1 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15 {Type IO LastRead -1 FirstWrite -1}}
	dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1 {
		tile_0 {Type I LastRead 0 FirstWrite -1}}
	dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		gmem_in {Type I LastRead 10 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		gmem_dw_w {Type I LastRead 11 FirstWrite -1}
		dw_weights {Type I LastRead 0 FirstWrite -1}
		dw_bias {Type I LastRead 0 FirstWrite -1}
		tile_0 {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		dw_in_zp {Type I LastRead 0 FirstWrite -1}
		dw_w_zp {Type I LastRead 0 FirstWrite -1}
		dw_out_zp {Type I LastRead 0 FirstWrite -1}
		dw_multiplier {Type I LastRead 0 FirstWrite -1}
		dw_shift {Type I LastRead 0 FirstWrite -1}
		dw_apply_relu6 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11 {Type O LastRead -1 FirstWrite 12}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14 {Type O LastRead -1 FirstWrite 12}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15 {Type O LastRead -1 FirstWrite 12}}
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
		p_out5 {Type O LastRead -1 FirstWrite 11}}
	dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		gmem_pw_w {Type I LastRead 163 FirstWrite -1}
		pw_weights {Type I LastRead 0 FirstWrite -1}
		pw_bias {Type I LastRead 0 FirstWrite -1}
		gmem_out {Type O LastRead 274 FirstWrite 168}
		output_r {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		height {Type I LastRead 0 FirstWrite -1}
		width {Type I LastRead 0 FirstWrite -1}
		c_in {Type I LastRead 0 FirstWrite -1}
		c_out {Type I LastRead 0 FirstWrite -1}
		pw_act_zp {Type I LastRead 0 FirstWrite -1}
		pw_wgt_zp {Type I LastRead 0 FirstWrite -1}
		pw_out_zp {Type I LastRead 0 FirstWrite -1}
		pw_M_mantissa {Type I LastRead 0 FirstWrite -1}
		pw_M_shift {Type I LastRead 0 FirstWrite -1}
		pw_use_bias {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_9 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_8 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_7 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_6 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_5 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_4 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_3 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_2 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_1 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_pong_15 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_19 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_18 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_17 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_16 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_15 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_14 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_13 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_12 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_11 {Type I LastRead 0 FirstWrite -1}
		mobilenet_block_accel_unsigned_char_const_unsigned_char_const_int_const_un_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_10 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_11 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_12 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_13 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_14 {Type I LastRead 0 FirstWrite -1}
		p_ZZ21mobilenet_block_accelPKhS0_PKiS0_S2_PhiiiiiiiiiiiiiiiiE10inter_ping_15 {Type I LastRead 0 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_in { m_axi {  { m_axi_gmem_in_AWVALID VALID 1 1 }  { m_axi_gmem_in_AWREADY READY 0 1 }  { m_axi_gmem_in_AWADDR ADDR 1 64 }  { m_axi_gmem_in_AWID ID 1 1 }  { m_axi_gmem_in_AWLEN SIZE 1 8 }  { m_axi_gmem_in_AWSIZE BURST 1 3 }  { m_axi_gmem_in_AWBURST LOCK 1 2 }  { m_axi_gmem_in_AWLOCK CACHE 1 2 }  { m_axi_gmem_in_AWCACHE PROT 1 4 }  { m_axi_gmem_in_AWPROT QOS 1 3 }  { m_axi_gmem_in_AWQOS REGION 1 4 }  { m_axi_gmem_in_AWREGION USER 1 4 }  { m_axi_gmem_in_AWUSER DATA 1 1 }  { m_axi_gmem_in_WVALID VALID 1 1 }  { m_axi_gmem_in_WREADY READY 0 1 }  { m_axi_gmem_in_WDATA FIFONUM 1 32 }  { m_axi_gmem_in_WSTRB STRB 1 4 }  { m_axi_gmem_in_WLAST LAST 1 1 }  { m_axi_gmem_in_WID ID 1 1 }  { m_axi_gmem_in_WUSER DATA 1 1 }  { m_axi_gmem_in_ARVALID VALID 1 1 }  { m_axi_gmem_in_ARREADY READY 0 1 }  { m_axi_gmem_in_ARADDR ADDR 1 64 }  { m_axi_gmem_in_ARID ID 1 1 }  { m_axi_gmem_in_ARLEN SIZE 1 8 }  { m_axi_gmem_in_ARSIZE BURST 1 3 }  { m_axi_gmem_in_ARBURST LOCK 1 2 }  { m_axi_gmem_in_ARLOCK CACHE 1 2 }  { m_axi_gmem_in_ARCACHE PROT 1 4 }  { m_axi_gmem_in_ARPROT QOS 1 3 }  { m_axi_gmem_in_ARQOS REGION 1 4 }  { m_axi_gmem_in_ARREGION USER 1 4 }  { m_axi_gmem_in_ARUSER DATA 1 1 }  { m_axi_gmem_in_RVALID VALID 0 1 }  { m_axi_gmem_in_RREADY READY 1 1 }  { m_axi_gmem_in_RDATA FIFONUM 0 32 }  { m_axi_gmem_in_RLAST LAST 0 1 }  { m_axi_gmem_in_RID ID 0 1 }  { m_axi_gmem_in_RUSER DATA 0 1 }  { m_axi_gmem_in_RRESP RESP 0 2 }  { m_axi_gmem_in_BVALID VALID 0 1 }  { m_axi_gmem_in_BREADY READY 1 1 }  { m_axi_gmem_in_BRESP RESP 0 2 }  { m_axi_gmem_in_BID ID 0 1 }  { m_axi_gmem_in_BUSER DATA 0 1 } } }
	gmem_dw_w { m_axi {  { m_axi_gmem_dw_w_AWVALID VALID 1 1 }  { m_axi_gmem_dw_w_AWREADY READY 0 1 }  { m_axi_gmem_dw_w_AWADDR ADDR 1 64 }  { m_axi_gmem_dw_w_AWID ID 1 1 }  { m_axi_gmem_dw_w_AWLEN SIZE 1 8 }  { m_axi_gmem_dw_w_AWSIZE BURST 1 3 }  { m_axi_gmem_dw_w_AWBURST LOCK 1 2 }  { m_axi_gmem_dw_w_AWLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_AWCACHE PROT 1 4 }  { m_axi_gmem_dw_w_AWPROT QOS 1 3 }  { m_axi_gmem_dw_w_AWQOS REGION 1 4 }  { m_axi_gmem_dw_w_AWREGION USER 1 4 }  { m_axi_gmem_dw_w_AWUSER DATA 1 1 }  { m_axi_gmem_dw_w_WVALID VALID 1 1 }  { m_axi_gmem_dw_w_WREADY READY 0 1 }  { m_axi_gmem_dw_w_WDATA FIFONUM 1 32 }  { m_axi_gmem_dw_w_WSTRB STRB 1 4 }  { m_axi_gmem_dw_w_WLAST LAST 1 1 }  { m_axi_gmem_dw_w_WID ID 1 1 }  { m_axi_gmem_dw_w_WUSER DATA 1 1 }  { m_axi_gmem_dw_w_ARVALID VALID 1 1 }  { m_axi_gmem_dw_w_ARREADY READY 0 1 }  { m_axi_gmem_dw_w_ARADDR ADDR 1 64 }  { m_axi_gmem_dw_w_ARID ID 1 1 }  { m_axi_gmem_dw_w_ARLEN SIZE 1 8 }  { m_axi_gmem_dw_w_ARSIZE BURST 1 3 }  { m_axi_gmem_dw_w_ARBURST LOCK 1 2 }  { m_axi_gmem_dw_w_ARLOCK CACHE 1 2 }  { m_axi_gmem_dw_w_ARCACHE PROT 1 4 }  { m_axi_gmem_dw_w_ARPROT QOS 1 3 }  { m_axi_gmem_dw_w_ARQOS REGION 1 4 }  { m_axi_gmem_dw_w_ARREGION USER 1 4 }  { m_axi_gmem_dw_w_ARUSER DATA 1 1 }  { m_axi_gmem_dw_w_RVALID VALID 0 1 }  { m_axi_gmem_dw_w_RREADY READY 1 1 }  { m_axi_gmem_dw_w_RDATA FIFONUM 0 32 }  { m_axi_gmem_dw_w_RLAST LAST 0 1 }  { m_axi_gmem_dw_w_RID ID 0 1 }  { m_axi_gmem_dw_w_RUSER DATA 0 1 }  { m_axi_gmem_dw_w_RRESP RESP 0 2 }  { m_axi_gmem_dw_w_BVALID VALID 0 1 }  { m_axi_gmem_dw_w_BREADY READY 1 1 }  { m_axi_gmem_dw_w_BRESP RESP 0 2 }  { m_axi_gmem_dw_w_BID ID 0 1 }  { m_axi_gmem_dw_w_BUSER DATA 0 1 } } }
	gmem_pw_w { m_axi {  { m_axi_gmem_pw_w_AWVALID VALID 1 1 }  { m_axi_gmem_pw_w_AWREADY READY 0 1 }  { m_axi_gmem_pw_w_AWADDR ADDR 1 64 }  { m_axi_gmem_pw_w_AWID ID 1 1 }  { m_axi_gmem_pw_w_AWLEN SIZE 1 8 }  { m_axi_gmem_pw_w_AWSIZE BURST 1 3 }  { m_axi_gmem_pw_w_AWBURST LOCK 1 2 }  { m_axi_gmem_pw_w_AWLOCK CACHE 1 2 }  { m_axi_gmem_pw_w_AWCACHE PROT 1 4 }  { m_axi_gmem_pw_w_AWPROT QOS 1 3 }  { m_axi_gmem_pw_w_AWQOS REGION 1 4 }  { m_axi_gmem_pw_w_AWREGION USER 1 4 }  { m_axi_gmem_pw_w_AWUSER DATA 1 1 }  { m_axi_gmem_pw_w_WVALID VALID 1 1 }  { m_axi_gmem_pw_w_WREADY READY 0 1 }  { m_axi_gmem_pw_w_WDATA FIFONUM 1 32 }  { m_axi_gmem_pw_w_WSTRB STRB 1 4 }  { m_axi_gmem_pw_w_WLAST LAST 1 1 }  { m_axi_gmem_pw_w_WID ID 1 1 }  { m_axi_gmem_pw_w_WUSER DATA 1 1 }  { m_axi_gmem_pw_w_ARVALID VALID 1 1 }  { m_axi_gmem_pw_w_ARREADY READY 0 1 }  { m_axi_gmem_pw_w_ARADDR ADDR 1 64 }  { m_axi_gmem_pw_w_ARID ID 1 1 }  { m_axi_gmem_pw_w_ARLEN SIZE 1 8 }  { m_axi_gmem_pw_w_ARSIZE BURST 1 3 }  { m_axi_gmem_pw_w_ARBURST LOCK 1 2 }  { m_axi_gmem_pw_w_ARLOCK CACHE 1 2 }  { m_axi_gmem_pw_w_ARCACHE PROT 1 4 }  { m_axi_gmem_pw_w_ARPROT QOS 1 3 }  { m_axi_gmem_pw_w_ARQOS REGION 1 4 }  { m_axi_gmem_pw_w_ARREGION USER 1 4 }  { m_axi_gmem_pw_w_ARUSER DATA 1 1 }  { m_axi_gmem_pw_w_RVALID VALID 0 1 }  { m_axi_gmem_pw_w_RREADY READY 1 1 }  { m_axi_gmem_pw_w_RDATA FIFONUM 0 32 }  { m_axi_gmem_pw_w_RLAST LAST 0 1 }  { m_axi_gmem_pw_w_RID ID 0 1 }  { m_axi_gmem_pw_w_RUSER DATA 0 1 }  { m_axi_gmem_pw_w_RRESP RESP 0 2 }  { m_axi_gmem_pw_w_BVALID VALID 0 1 }  { m_axi_gmem_pw_w_BREADY READY 1 1 }  { m_axi_gmem_pw_w_BRESP RESP 0 2 }  { m_axi_gmem_pw_w_BID ID 0 1 }  { m_axi_gmem_pw_w_BUSER DATA 0 1 } } }
	gmem_out { m_axi {  { m_axi_gmem_out_AWVALID VALID 1 1 }  { m_axi_gmem_out_AWREADY READY 0 1 }  { m_axi_gmem_out_AWADDR ADDR 1 64 }  { m_axi_gmem_out_AWID ID 1 1 }  { m_axi_gmem_out_AWLEN SIZE 1 8 }  { m_axi_gmem_out_AWSIZE BURST 1 3 }  { m_axi_gmem_out_AWBURST LOCK 1 2 }  { m_axi_gmem_out_AWLOCK CACHE 1 2 }  { m_axi_gmem_out_AWCACHE PROT 1 4 }  { m_axi_gmem_out_AWPROT QOS 1 3 }  { m_axi_gmem_out_AWQOS REGION 1 4 }  { m_axi_gmem_out_AWREGION USER 1 4 }  { m_axi_gmem_out_AWUSER DATA 1 1 }  { m_axi_gmem_out_WVALID VALID 1 1 }  { m_axi_gmem_out_WREADY READY 0 1 }  { m_axi_gmem_out_WDATA FIFONUM 1 32 }  { m_axi_gmem_out_WSTRB STRB 1 4 }  { m_axi_gmem_out_WLAST LAST 1 1 }  { m_axi_gmem_out_WID ID 1 1 }  { m_axi_gmem_out_WUSER DATA 1 1 }  { m_axi_gmem_out_ARVALID VALID 1 1 }  { m_axi_gmem_out_ARREADY READY 0 1 }  { m_axi_gmem_out_ARADDR ADDR 1 64 }  { m_axi_gmem_out_ARID ID 1 1 }  { m_axi_gmem_out_ARLEN SIZE 1 8 }  { m_axi_gmem_out_ARSIZE BURST 1 3 }  { m_axi_gmem_out_ARBURST LOCK 1 2 }  { m_axi_gmem_out_ARLOCK CACHE 1 2 }  { m_axi_gmem_out_ARCACHE PROT 1 4 }  { m_axi_gmem_out_ARPROT QOS 1 3 }  { m_axi_gmem_out_ARQOS REGION 1 4 }  { m_axi_gmem_out_ARREGION USER 1 4 }  { m_axi_gmem_out_ARUSER DATA 1 1 }  { m_axi_gmem_out_RVALID VALID 0 1 }  { m_axi_gmem_out_RREADY READY 1 1 }  { m_axi_gmem_out_RDATA FIFONUM 0 32 }  { m_axi_gmem_out_RLAST LAST 0 1 }  { m_axi_gmem_out_RID ID 0 1 }  { m_axi_gmem_out_RUSER DATA 0 1 }  { m_axi_gmem_out_RRESP RESP 0 2 }  { m_axi_gmem_out_BVALID VALID 0 1 }  { m_axi_gmem_out_BREADY READY 1 1 }  { m_axi_gmem_out_BRESP RESP 0 2 }  { m_axi_gmem_out_BID ID 0 1 }  { m_axi_gmem_out_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_dw_w { CHANNEL_NUM 0 BUNDLE gmem_dw_w NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_in { CHANNEL_NUM 0 BUNDLE gmem_in NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_out { CHANNEL_NUM 0 BUNDLE gmem_out NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE WRITE_ONLY}
dict set maxi_interface_dict gmem_pw_w { CHANNEL_NUM 0 BUNDLE gmem_pw_w NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_in 1 }
	{ gmem_dw_w 1 }
	{ gmem_pw_w 1 }
	{ gmem_out 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_in 1 }
	{ gmem_dw_w 1 }
	{ gmem_pw_w 1 }
	{ gmem_out 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
