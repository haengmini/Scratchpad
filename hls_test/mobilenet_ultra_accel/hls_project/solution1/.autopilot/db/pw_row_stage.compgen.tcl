# This script segment is generated automatically by AutoPilot

set name mobilenet_block_accel_mul_32ns_31ns_63_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mobilenet_block_accel_mul_32s_32s_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mobilenet_block_accel_mul_33s_32s_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set name mobilenet_block_accel_mul_17s_17s_17_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_pw_row_stage_input_buf_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 849 \
    name inter_buf_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_0 \
    op interface \
    ports { inter_buf_0_address0 { O 13 vector } inter_buf_0_ce0 { O 1 bit } inter_buf_0_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 850 \
    name inter_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_1 \
    op interface \
    ports { inter_buf_1_address0 { O 13 vector } inter_buf_1_ce0 { O 1 bit } inter_buf_1_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 851 \
    name inter_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_2 \
    op interface \
    ports { inter_buf_2_address0 { O 13 vector } inter_buf_2_ce0 { O 1 bit } inter_buf_2_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 852 \
    name inter_buf_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_3 \
    op interface \
    ports { inter_buf_3_address0 { O 13 vector } inter_buf_3_ce0 { O 1 bit } inter_buf_3_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 853 \
    name inter_buf_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_4 \
    op interface \
    ports { inter_buf_4_address0 { O 13 vector } inter_buf_4_ce0 { O 1 bit } inter_buf_4_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 854 \
    name inter_buf_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_5 \
    op interface \
    ports { inter_buf_5_address0 { O 13 vector } inter_buf_5_ce0 { O 1 bit } inter_buf_5_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 855 \
    name inter_buf_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_6 \
    op interface \
    ports { inter_buf_6_address0 { O 13 vector } inter_buf_6_ce0 { O 1 bit } inter_buf_6_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 856 \
    name inter_buf_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_7 \
    op interface \
    ports { inter_buf_7_address0 { O 13 vector } inter_buf_7_ce0 { O 1 bit } inter_buf_7_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 857 \
    name inter_buf_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_8 \
    op interface \
    ports { inter_buf_8_address0 { O 13 vector } inter_buf_8_ce0 { O 1 bit } inter_buf_8_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 858 \
    name inter_buf_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_9 \
    op interface \
    ports { inter_buf_9_address0 { O 13 vector } inter_buf_9_ce0 { O 1 bit } inter_buf_9_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 859 \
    name inter_buf_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_10 \
    op interface \
    ports { inter_buf_10_address0 { O 13 vector } inter_buf_10_ce0 { O 1 bit } inter_buf_10_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 860 \
    name inter_buf_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_11 \
    op interface \
    ports { inter_buf_11_address0 { O 13 vector } inter_buf_11_ce0 { O 1 bit } inter_buf_11_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 861 \
    name inter_buf_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_12 \
    op interface \
    ports { inter_buf_12_address0 { O 13 vector } inter_buf_12_ce0 { O 1 bit } inter_buf_12_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 862 \
    name inter_buf_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_13 \
    op interface \
    ports { inter_buf_13_address0 { O 13 vector } inter_buf_13_ce0 { O 1 bit } inter_buf_13_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 863 \
    name inter_buf_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_14 \
    op interface \
    ports { inter_buf_14_address0 { O 13 vector } inter_buf_14_ce0 { O 1 bit } inter_buf_14_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 864 \
    name inter_buf_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename inter_buf_15 \
    op interface \
    ports { inter_buf_15_address0 { O 13 vector } inter_buf_15_ce0 { O 1 bit } inter_buf_15_q0 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'inter_buf_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 865 \
    name gmem_pw_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_pw_w \
    op interface \
    ports { m_axi_gmem_pw_w_0_AWVALID { O 1 bit } m_axi_gmem_pw_w_0_AWREADY { I 1 bit } m_axi_gmem_pw_w_0_AWADDR { O 64 vector } m_axi_gmem_pw_w_0_AWID { O 1 vector } m_axi_gmem_pw_w_0_AWLEN { O 32 vector } m_axi_gmem_pw_w_0_AWSIZE { O 3 vector } m_axi_gmem_pw_w_0_AWBURST { O 2 vector } m_axi_gmem_pw_w_0_AWLOCK { O 2 vector } m_axi_gmem_pw_w_0_AWCACHE { O 4 vector } m_axi_gmem_pw_w_0_AWPROT { O 3 vector } m_axi_gmem_pw_w_0_AWQOS { O 4 vector } m_axi_gmem_pw_w_0_AWREGION { O 4 vector } m_axi_gmem_pw_w_0_AWUSER { O 1 vector } m_axi_gmem_pw_w_0_WVALID { O 1 bit } m_axi_gmem_pw_w_0_WREADY { I 1 bit } m_axi_gmem_pw_w_0_WDATA { O 32 vector } m_axi_gmem_pw_w_0_WSTRB { O 4 vector } m_axi_gmem_pw_w_0_WLAST { O 1 bit } m_axi_gmem_pw_w_0_WID { O 1 vector } m_axi_gmem_pw_w_0_WUSER { O 1 vector } m_axi_gmem_pw_w_0_ARVALID { O 1 bit } m_axi_gmem_pw_w_0_ARREADY { I 1 bit } m_axi_gmem_pw_w_0_ARADDR { O 64 vector } m_axi_gmem_pw_w_0_ARID { O 1 vector } m_axi_gmem_pw_w_0_ARLEN { O 32 vector } m_axi_gmem_pw_w_0_ARSIZE { O 3 vector } m_axi_gmem_pw_w_0_ARBURST { O 2 vector } m_axi_gmem_pw_w_0_ARLOCK { O 2 vector } m_axi_gmem_pw_w_0_ARCACHE { O 4 vector } m_axi_gmem_pw_w_0_ARPROT { O 3 vector } m_axi_gmem_pw_w_0_ARQOS { O 4 vector } m_axi_gmem_pw_w_0_ARREGION { O 4 vector } m_axi_gmem_pw_w_0_ARUSER { O 1 vector } m_axi_gmem_pw_w_0_RVALID { I 1 bit } m_axi_gmem_pw_w_0_RREADY { O 1 bit } m_axi_gmem_pw_w_0_RDATA { I 32 vector } m_axi_gmem_pw_w_0_RLAST { I 1 bit } m_axi_gmem_pw_w_0_RID { I 1 vector } m_axi_gmem_pw_w_0_RFIFONUM { I 9 vector } m_axi_gmem_pw_w_0_RUSER { I 1 vector } m_axi_gmem_pw_w_0_RRESP { I 2 vector } m_axi_gmem_pw_w_0_BVALID { I 1 bit } m_axi_gmem_pw_w_0_BREADY { O 1 bit } m_axi_gmem_pw_w_0_BRESP { I 2 vector } m_axi_gmem_pw_w_0_BID { I 1 vector } m_axi_gmem_pw_w_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 866 \
    name pw_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_weights \
    op interface \
    ports { pw_weights { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 867 \
    name pw_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_bias \
    op interface \
    ports { pw_bias { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 868 \
    name gmem_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_out \
    op interface \
    ports { m_axi_gmem_out_0_AWVALID { O 1 bit } m_axi_gmem_out_0_AWREADY { I 1 bit } m_axi_gmem_out_0_AWADDR { O 64 vector } m_axi_gmem_out_0_AWID { O 1 vector } m_axi_gmem_out_0_AWLEN { O 32 vector } m_axi_gmem_out_0_AWSIZE { O 3 vector } m_axi_gmem_out_0_AWBURST { O 2 vector } m_axi_gmem_out_0_AWLOCK { O 2 vector } m_axi_gmem_out_0_AWCACHE { O 4 vector } m_axi_gmem_out_0_AWPROT { O 3 vector } m_axi_gmem_out_0_AWQOS { O 4 vector } m_axi_gmem_out_0_AWREGION { O 4 vector } m_axi_gmem_out_0_AWUSER { O 1 vector } m_axi_gmem_out_0_WVALID { O 1 bit } m_axi_gmem_out_0_WREADY { I 1 bit } m_axi_gmem_out_0_WDATA { O 8 vector } m_axi_gmem_out_0_WSTRB { O 1 vector } m_axi_gmem_out_0_WLAST { O 1 bit } m_axi_gmem_out_0_WID { O 1 vector } m_axi_gmem_out_0_WUSER { O 1 vector } m_axi_gmem_out_0_ARVALID { O 1 bit } m_axi_gmem_out_0_ARREADY { I 1 bit } m_axi_gmem_out_0_ARADDR { O 64 vector } m_axi_gmem_out_0_ARID { O 1 vector } m_axi_gmem_out_0_ARLEN { O 32 vector } m_axi_gmem_out_0_ARSIZE { O 3 vector } m_axi_gmem_out_0_ARBURST { O 2 vector } m_axi_gmem_out_0_ARLOCK { O 2 vector } m_axi_gmem_out_0_ARCACHE { O 4 vector } m_axi_gmem_out_0_ARPROT { O 3 vector } m_axi_gmem_out_0_ARQOS { O 4 vector } m_axi_gmem_out_0_ARREGION { O 4 vector } m_axi_gmem_out_0_ARUSER { O 1 vector } m_axi_gmem_out_0_RVALID { I 1 bit } m_axi_gmem_out_0_RREADY { O 1 bit } m_axi_gmem_out_0_RDATA { I 8 vector } m_axi_gmem_out_0_RLAST { I 1 bit } m_axi_gmem_out_0_RID { I 1 vector } m_axi_gmem_out_0_RFIFONUM { I 11 vector } m_axi_gmem_out_0_RUSER { I 1 vector } m_axi_gmem_out_0_RRESP { I 2 vector } m_axi_gmem_out_0_BVALID { I 1 bit } m_axi_gmem_out_0_BREADY { O 1 bit } m_axi_gmem_out_0_BRESP { I 2 vector } m_axi_gmem_out_0_BID { I 1 vector } m_axi_gmem_out_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 869 \
    name output_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_r \
    op interface \
    ports { output_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 870 \
    name h_start \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h_start \
    op interface \
    ports { h_start { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 871 \
    name height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height \
    op interface \
    ports { height { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 872 \
    name width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width \
    op interface \
    ports { width { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 873 \
    name c_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_in \
    op interface \
    ports { c_in { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 874 \
    name c_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_out \
    op interface \
    ports { c_out { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 875 \
    name pw_act_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_act_zp \
    op interface \
    ports { pw_act_zp { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 876 \
    name pw_wgt_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_wgt_zp \
    op interface \
    ports { pw_wgt_zp { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 877 \
    name pw_out_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_out_zp \
    op interface \
    ports { pw_out_zp { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name pw_M_mantissa \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_M_mantissa \
    op interface \
    ports { pw_M_mantissa { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name pw_M_shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_M_shift \
    op interface \
    ports { pw_M_shift { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
    name pw_use_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_use_bias \
    op interface \
    ports { pw_use_bias { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
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
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
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


