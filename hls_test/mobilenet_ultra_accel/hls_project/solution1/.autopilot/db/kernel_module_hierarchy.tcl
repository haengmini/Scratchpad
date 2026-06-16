set ModuleHierarchy {[{
"Name" : "mobilenet_block_accel","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_dataflow_parent_loop_proc_fu_344","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "TILE_LOOP","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "dataflow_in_loop_TILE_LOOP_1_U0","ID" : "3","Type" : "dataflow",
				"SubInsts" : [
				{"Name" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_1_U0","ID" : "4","Type" : "sequential"},
				{"Name" : "dataflow_in_loop_TILE_LOOP_1_Block_newFuncRoot_proc_U0","ID" : "5","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_dw_row_stage_fu_212","ID" : "6","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "DW_LOOP_C","ID" : "7","Type" : "no",
						"SubInsts" : [
						{"Name" : "grp_dw_row_stage_Pipeline_DW_LOAD_W_VITIS_LOOP_187_1_fu_450","ID" : "8","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "DW_LOAD_W_VITIS_LOOP_187_1","ID" : "9","Type" : "pipeline"},]},
						{"Name" : "grp_dw_row_stage_Pipeline_DW_INIT_LB_fu_476","ID" : "10","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "DW_INIT_LB","ID" : "11","Type" : "pipeline"},]},
						{"Name" : "grp_dw_row_stage_Pipeline_DW_INIT_WIN_fu_493","ID" : "12","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "DW_INIT_WIN","ID" : "13","Type" : "pipeline"},]},
						{"Name" : "grp_dw_row_stage_Pipeline_DW_LOOP_W_fu_510","ID" : "14","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "DW_LOOP_W","ID" : "15","Type" : "pipeline"},]},]},]},]},
				{"Name" : "dataflow_in_loop_TILE_LOOP_1_Block_if_end_aft_proc_U0","ID" : "16","Type" : "sequential",
					"SubInsts" : [
					{"Name" : "grp_pw_row_stage_fu_228","ID" : "17","Type" : "sequential",
						"SubLoops" : [
						{"Name" : "PW_LOOP_W","ID" : "18","Type" : "no",
						"SubInsts" : [
						{"Name" : "grp_pw_row_stage_Pipeline_PW_LOAD_IN_fu_2168","ID" : "19","Type" : "sequential",
								"SubLoops" : [
								{"Name" : "PW_LOAD_IN","ID" : "20","Type" : "pipeline"},]},],
						"SubLoops" : [
						{"Name" : "PW_LOOP_CO_TILE","ID" : "21","Type" : "no",
							"SubInsts" : [
							{"Name" : "grp_pw_row_stage_Pipeline_PW_DOT_PROD_fu_2488","ID" : "22","Type" : "sequential",
									"SubLoops" : [
									{"Name" : "PW_DOT_PROD","ID" : "23","Type" : "pipeline"},]},],
							"SubLoops" : [
							{"Name" : "PW_LOAD_WGT","ID" : "24","Type" : "no",
								"SubInsts" : [
								{"Name" : "grp_pw_row_stage_Pipeline_PW_LOAD_WGT_CI_fu_2222","ID" : "25","Type" : "sequential",
										"SubLoops" : [
										{"Name" : "PW_LOAD_WGT_CI","ID" : "26","Type" : "pipeline"},]},]},]},]},]},]},]},]},]},]
}]}