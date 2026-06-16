# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_fifo_w1_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {sub2_loc_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_fifo_w32_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {sub3_loc_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_fifo_w1_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cmp5_loc_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler mobilenet_block_accel_fifo_w1_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {cmp6_loc_channel_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 936 \
    name tile_0 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tile_0 \
    op interface \
    ports { tile_0 { I 31 vector } tile_0_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 937 \
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
    id 938 \
    name input_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_input_r \
    op interface \
    ports { input_r { I 64 vector } input_r_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 939 \
    name gmem_dw_w \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem_dw_w \
    op interface \
    ports { m_axi_gmem_dw_w_0_AWVALID { O 1 bit } m_axi_gmem_dw_w_0_AWREADY { I 1 bit } m_axi_gmem_dw_w_0_AWADDR { O 64 vector } m_axi_gmem_dw_w_0_AWID { O 1 vector } m_axi_gmem_dw_w_0_AWLEN { O 32 vector } m_axi_gmem_dw_w_0_AWSIZE { O 3 vector } m_axi_gmem_dw_w_0_AWBURST { O 2 vector } m_axi_gmem_dw_w_0_AWLOCK { O 2 vector } m_axi_gmem_dw_w_0_AWCACHE { O 4 vector } m_axi_gmem_dw_w_0_AWPROT { O 3 vector } m_axi_gmem_dw_w_0_AWQOS { O 4 vector } m_axi_gmem_dw_w_0_AWREGION { O 4 vector } m_axi_gmem_dw_w_0_AWUSER { O 1 vector } m_axi_gmem_dw_w_0_WVALID { O 1 bit } m_axi_gmem_dw_w_0_WREADY { I 1 bit } m_axi_gmem_dw_w_0_WDATA { O 32 vector } m_axi_gmem_dw_w_0_WSTRB { O 4 vector } m_axi_gmem_dw_w_0_WLAST { O 1 bit } m_axi_gmem_dw_w_0_WID { O 1 vector } m_axi_gmem_dw_w_0_WUSER { O 1 vector } m_axi_gmem_dw_w_0_ARVALID { O 1 bit } m_axi_gmem_dw_w_0_ARREADY { I 1 bit } m_axi_gmem_dw_w_0_ARADDR { O 64 vector } m_axi_gmem_dw_w_0_ARID { O 1 vector } m_axi_gmem_dw_w_0_ARLEN { O 32 vector } m_axi_gmem_dw_w_0_ARSIZE { O 3 vector } m_axi_gmem_dw_w_0_ARBURST { O 2 vector } m_axi_gmem_dw_w_0_ARLOCK { O 2 vector } m_axi_gmem_dw_w_0_ARCACHE { O 4 vector } m_axi_gmem_dw_w_0_ARPROT { O 3 vector } m_axi_gmem_dw_w_0_ARQOS { O 4 vector } m_axi_gmem_dw_w_0_ARREGION { O 4 vector } m_axi_gmem_dw_w_0_ARUSER { O 1 vector } m_axi_gmem_dw_w_0_RVALID { I 1 bit } m_axi_gmem_dw_w_0_RREADY { O 1 bit } m_axi_gmem_dw_w_0_RDATA { I 32 vector } m_axi_gmem_dw_w_0_RLAST { I 1 bit } m_axi_gmem_dw_w_0_RID { I 1 vector } m_axi_gmem_dw_w_0_RFIFONUM { I 9 vector } m_axi_gmem_dw_w_0_RUSER { I 1 vector } m_axi_gmem_dw_w_0_RRESP { I 2 vector } m_axi_gmem_dw_w_0_BVALID { I 1 bit } m_axi_gmem_dw_w_0_BREADY { O 1 bit } m_axi_gmem_dw_w_0_BRESP { I 2 vector } m_axi_gmem_dw_w_0_BID { I 1 vector } m_axi_gmem_dw_w_0_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 940 \
    name dw_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_weights \
    op interface \
    ports { dw_weights { I 64 vector } dw_weights_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 941 \
    name dw_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_bias \
    op interface \
    ports { dw_bias { I 64 vector } dw_bias_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 942 \
    name height \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_height \
    op interface \
    ports { height { I 32 vector } height_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 943 \
    name width \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_width \
    op interface \
    ports { width { I 32 vector } width_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 944 \
    name c_in \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_in \
    op interface \
    ports { c_in { I 32 vector } c_in_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 945 \
    name dw_in_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_in_zp \
    op interface \
    ports { dw_in_zp { I 32 vector } dw_in_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 946 \
    name dw_w_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_w_zp \
    op interface \
    ports { dw_w_zp { I 32 vector } dw_w_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 947 \
    name dw_out_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_out_zp \
    op interface \
    ports { dw_out_zp { I 32 vector } dw_out_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 948 \
    name dw_multiplier \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_multiplier \
    op interface \
    ports { dw_multiplier { I 32 vector } dw_multiplier_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 949 \
    name dw_shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_shift \
    op interface \
    ports { dw_shift { I 32 vector } dw_shift_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 950 \
    name dw_apply_relu6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dw_apply_relu6 \
    op interface \
    ports { dw_apply_relu6 { I 32 vector } dw_apply_relu6_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 951 \
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
    id 952 \
    name pw_weights \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_weights \
    op interface \
    ports { pw_weights { I 64 vector } pw_weights_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 953 \
    name pw_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_bias \
    op interface \
    ports { pw_bias { I 64 vector } pw_bias_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 954 \
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
    id 955 \
    name output_r \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_output_r \
    op interface \
    ports { output_r { I 64 vector } output_r_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 956 \
    name c_out \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_c_out \
    op interface \
    ports { c_out { I 32 vector } c_out_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 957 \
    name pw_act_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_act_zp \
    op interface \
    ports { pw_act_zp { I 16 vector } pw_act_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 958 \
    name pw_wgt_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_wgt_zp \
    op interface \
    ports { pw_wgt_zp { I 16 vector } pw_wgt_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 959 \
    name pw_out_zp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_out_zp \
    op interface \
    ports { pw_out_zp { I 32 vector } pw_out_zp_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 960 \
    name pw_M_mantissa \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_M_mantissa \
    op interface \
    ports { pw_M_mantissa { I 32 vector } pw_M_mantissa_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 961 \
    name pw_M_shift \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_M_shift \
    op interface \
    ports { pw_M_shift { I 32 vector } pw_M_shift_ap_vld { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 962 \
    name pw_use_bias \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pw_use_bias \
    op interface \
    ports { pw_use_bias { I 32 vector } pw_use_bias_ap_vld { I 1 bit } } \
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
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
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


