# This script segment is generated automatically by AutoPilot

set name mobilenet_block_accel_mul_33s_31ns_64_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
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
    id 25 \
    name line_buf \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename line_buf \
    op interface \
    ports { line_buf_address0 { O 7 vector } line_buf_ce0 { O 1 bit } line_buf_we0 { O 1 bit } line_buf_d0 { O 8 vector } line_buf_address1 { O 7 vector } line_buf_ce1 { O 1 bit } line_buf_we1 { O 1 bit } line_buf_d1 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'line_buf'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name line_buf_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename line_buf_1 \
    op interface \
    ports { line_buf_1_address0 { O 7 vector } line_buf_1_ce0 { O 1 bit } line_buf_1_we0 { O 1 bit } line_buf_1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'line_buf_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 27 \
    name line_buf_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename line_buf_2 \
    op interface \
    ports { line_buf_2_address0 { O 7 vector } line_buf_2_ce0 { O 1 bit } line_buf_2_we0 { O 1 bit } line_buf_2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'line_buf_2'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name empty_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_59 \
    op interface \
    ports { empty_59 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name sext_ln181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln181 \
    op interface \
    ports { sext_ln181 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name sext_ln181_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln181_1 \
    op interface \
    ports { sext_ln181_1 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name zext_ln181 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln181 \
    op interface \
    ports { zext_ln181 { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name input_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_r \
    op interface \
    ports { input_r { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name gmem_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_in \
    op interface \
    ports { m_axi_gmem_in_0_AWVALID { O 1 bit } m_axi_gmem_in_0_AWREADY { I 1 bit } m_axi_gmem_in_0_AWADDR { O 64 vector } m_axi_gmem_in_0_AWID { O 1 vector } m_axi_gmem_in_0_AWLEN { O 32 vector } m_axi_gmem_in_0_AWSIZE { O 3 vector } m_axi_gmem_in_0_AWBURST { O 2 vector } m_axi_gmem_in_0_AWLOCK { O 2 vector } m_axi_gmem_in_0_AWCACHE { O 4 vector } m_axi_gmem_in_0_AWPROT { O 3 vector } m_axi_gmem_in_0_AWQOS { O 4 vector } m_axi_gmem_in_0_AWREGION { O 4 vector } m_axi_gmem_in_0_AWUSER { O 1 vector } m_axi_gmem_in_0_WVALID { O 1 bit } m_axi_gmem_in_0_WREADY { I 1 bit } m_axi_gmem_in_0_WDATA { O 8 vector } m_axi_gmem_in_0_WSTRB { O 1 vector } m_axi_gmem_in_0_WLAST { O 1 bit } m_axi_gmem_in_0_WID { O 1 vector } m_axi_gmem_in_0_WUSER { O 1 vector } m_axi_gmem_in_0_ARVALID { O 1 bit } m_axi_gmem_in_0_ARREADY { I 1 bit } m_axi_gmem_in_0_ARADDR { O 64 vector } m_axi_gmem_in_0_ARID { O 1 vector } m_axi_gmem_in_0_ARLEN { O 32 vector } m_axi_gmem_in_0_ARSIZE { O 3 vector } m_axi_gmem_in_0_ARBURST { O 2 vector } m_axi_gmem_in_0_ARLOCK { O 2 vector } m_axi_gmem_in_0_ARCACHE { O 4 vector } m_axi_gmem_in_0_ARPROT { O 3 vector } m_axi_gmem_in_0_ARQOS { O 4 vector } m_axi_gmem_in_0_ARREGION { O 4 vector } m_axi_gmem_in_0_ARUSER { O 1 vector } m_axi_gmem_in_0_RVALID { I 1 bit } m_axi_gmem_in_0_RREADY { O 1 bit } m_axi_gmem_in_0_RDATA { I 8 vector } m_axi_gmem_in_0_RLAST { I 1 bit } m_axi_gmem_in_0_RID { I 1 vector } m_axi_gmem_in_0_RFIFONUM { I 11 vector } m_axi_gmem_in_0_RUSER { I 1 vector } m_axi_gmem_in_0_RRESP { I 2 vector } m_axi_gmem_in_0_BVALID { I 1 bit } m_axi_gmem_in_0_BREADY { O 1 bit } m_axi_gmem_in_0_BRESP { I 2 vector } m_axi_gmem_in_0_BID { I 1 vector } m_axi_gmem_in_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name sext_ln181_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sext_ln181_2 \
    op interface \
    ports { sext_ln181_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name h_start \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_h_start \
    op interface \
    ports { h_start { I 31 vector } } \
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


# flow_control definition:
set InstName mobilenet_block_accel_flow_control_loop_pipe_sequential_init_U
set CompName mobilenet_block_accel_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix mobilenet_block_accel_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


