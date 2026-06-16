set SynModuleInfo {
  {SRCNAME dataflow_in_loop_TILE_LOOP.1_Block_newFuncRoot_proc.1 MODELNAME dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1 RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1}
  {SRCNAME dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1 MODELNAME dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1 RTLNAME mobilenet_block_accel_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_flow_control_loop_pipe_sequential_init RTLNAME mobilenet_block_accel_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME mobilenet_block_accel_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dw_row_stage_Pipeline_DW_INIT_LB MODELNAME dw_row_stage_Pipeline_DW_INIT_LB RTLNAME mobilenet_block_accel_dw_row_stage_Pipeline_DW_INIT_LB
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_mul_33s_31ns_64_1_1 RTLNAME mobilenet_block_accel_mul_33s_31ns_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dw_row_stage_Pipeline_DW_INIT_WIN MODELNAME dw_row_stage_Pipeline_DW_INIT_WIN RTLNAME mobilenet_block_accel_dw_row_stage_Pipeline_DW_INIT_WIN}
  {SRCNAME dw_row_stage_Pipeline_DW_LOOP_W MODELNAME dw_row_stage_Pipeline_DW_LOOP_W RTLNAME mobilenet_block_accel_dw_row_stage_Pipeline_DW_LOOP_W
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_mul_32s_32s_32_1_1 RTLNAME mobilenet_block_accel_mul_32s_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dw_row_stage MODELNAME dw_row_stage RTLNAME mobilenet_block_accel_dw_row_stage
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_mul_31ns_32s_32_1_1 RTLNAME mobilenet_block_accel_mul_31ns_32s_32_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_dw_row_stage_line_buf_RAM_AUTO_1R1W RTLNAME mobilenet_block_accel_dw_row_stage_line_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_dw_row_stage_line_buf_1_RAM_AUTO_1R1W RTLNAME mobilenet_block_accel_dw_row_stage_line_buf_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_TILE_LOOP.1_Block_newFuncRoot_proc MODELNAME dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc}
  {SRCNAME pw_row_stage_Pipeline_PW_LOAD_IN MODELNAME pw_row_stage_Pipeline_PW_LOAD_IN RTLNAME mobilenet_block_accel_pw_row_stage_Pipeline_PW_LOAD_IN
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_sparsemux_33_4_8_1_1 RTLNAME mobilenet_block_accel_sparsemux_33_4_8_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME pw_row_stage_Pipeline_PW_LOAD_WGT_CI MODELNAME pw_row_stage_Pipeline_PW_LOAD_WGT_CI RTLNAME mobilenet_block_accel_pw_row_stage_Pipeline_PW_LOAD_WGT_CI}
  {SRCNAME pw_row_stage_Pipeline_PW_DOT_PROD MODELNAME pw_row_stage_Pipeline_PW_DOT_PROD RTLNAME mobilenet_block_accel_pw_row_stage_Pipeline_PW_DOT_PROD
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_mac_muladd_16s_16s_32ns_32_4_1 RTLNAME mobilenet_block_accel_mac_muladd_16s_16s_32ns_32_4_1 BINDTYPE op TYPE all IMPL dsp_slice LATENCY 3}
    }
  }
  {SRCNAME pw_row_stage MODELNAME pw_row_stage RTLNAME mobilenet_block_accel_pw_row_stage
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_mul_32ns_31ns_63_1_1 RTLNAME mobilenet_block_accel_mul_32ns_31ns_63_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_mul_32s_32s_64_1_1 RTLNAME mobilenet_block_accel_mul_32s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_mul_33s_32s_64_1_1 RTLNAME mobilenet_block_accel_mul_33s_32s_64_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_mul_17s_17s_17_1_1 RTLNAME mobilenet_block_accel_mul_17s_17s_17_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_pw_row_stage_input_buf_RAM_AUTO_1R1W RTLNAME mobilenet_block_accel_pw_row_stage_input_buf_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dataflow_in_loop_TILE_LOOP.1_Block_if.end.aft_proc MODELNAME dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc}
  {SRCNAME dataflow_in_loop_TILE_LOOP.1 MODELNAME dataflow_in_loop_TILE_LOOP_1 RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb_memcore RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb RTLNAME mobilenet_block_accel_dataflow_in_loop_TILE_LOOP_1_mobilenet_block_accel_unsigned_char_const_unsignbkb BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME mobilenet_block_accel_fifo_w1_d3_S RTLNAME mobilenet_block_accel_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sub2_loc_channel_U}
      {MODELNAME mobilenet_block_accel_fifo_w32_d3_S RTLNAME mobilenet_block_accel_fifo_w32_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME sub3_loc_channel_U}
      {MODELNAME mobilenet_block_accel_fifo_w1_d2_S RTLNAME mobilenet_block_accel_fifo_w1_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmp5_loc_channel_U}
      {MODELNAME mobilenet_block_accel_fifo_w1_d3_S RTLNAME mobilenet_block_accel_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME cmp6_loc_channel_U}
    }
  }
  {SRCNAME dataflow_parent_loop_proc MODELNAME dataflow_parent_loop_proc RTLNAME mobilenet_block_accel_dataflow_parent_loop_proc}
  {SRCNAME mobilenet_block_accel MODELNAME mobilenet_block_accel RTLNAME mobilenet_block_accel IS_TOP 1
    SUBMODULES {
      {MODELNAME mobilenet_block_accel_gmem_in_m_axi RTLNAME mobilenet_block_accel_gmem_in_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mobilenet_block_accel_gmem_dw_w_m_axi RTLNAME mobilenet_block_accel_gmem_dw_w_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mobilenet_block_accel_gmem_pw_w_m_axi RTLNAME mobilenet_block_accel_gmem_pw_w_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mobilenet_block_accel_gmem_out_m_axi RTLNAME mobilenet_block_accel_gmem_out_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME mobilenet_block_accel_control_s_axi RTLNAME mobilenet_block_accel_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
