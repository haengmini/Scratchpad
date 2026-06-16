# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_gmem_in_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_gmem_dw_w_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_gmem_pw_w_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_gmem_out_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

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


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 990 \
			corename mobilenet_block_accel_control_axilite \
			name mobilenet_block_accel_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


