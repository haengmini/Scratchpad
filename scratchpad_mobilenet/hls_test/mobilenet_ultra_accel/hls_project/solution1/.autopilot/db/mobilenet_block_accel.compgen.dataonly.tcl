# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
input_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
dw_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
dw_bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
pw_weights { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
pw_bias { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
output_r { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
height { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
width { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
c_in { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
c_out { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
dw_in_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
dw_w_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
dw_out_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
dw_multiplier { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
dw_shift { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
dw_apply_relu6 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
pw_act_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
pw_wgt_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
pw_out_zp { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
pw_M_mantissa { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 192
	offset_end 199
}
pw_M_shift { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 200
	offset_end 207
}
pw_use_bias { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 208
	offset_end 215
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


