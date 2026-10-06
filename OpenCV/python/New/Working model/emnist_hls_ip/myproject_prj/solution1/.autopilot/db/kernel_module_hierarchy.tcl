set ModuleHierarchy {[{
"Name" : "myproject", "RefName" : "myproject","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "transpose_array_ap_fixed_28u_array_ap_fixed_16_6_5_3_0_1u_config10_U0", "RefName" : "transpose_array_ap_fixed_28u_array_ap_fixed_16_6_5_3_0_1u_config10_s","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_45_1_fu_3164", "RefName" : "transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_45_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_45_1","RefName" : "VITIS_LOOP_45_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_54_3_fu_3954", "RefName" : "transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_54_3","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_54_3","RefName" : "VITIS_LOOP_54_3","ID" : "5","Type" : "pipeline"},]},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_8u_config27_U0", "RefName" : "conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_8u_config27_s","ID" : "6","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "7","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config27_s_fu_76", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config27_s","ID" : "8","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s_fu_91", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s","ID" : "9","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s_fu_119", "RefName" : "dense_resource_rf_leq_nin_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s","ID" : "10","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","RefName" : "ReuseLoop","ID" : "11","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config12_U0", "RefName" : "relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config12_s","ID" : "12","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "13","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config13_U0", "RefName" : "pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config13_s","ID" : "14","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "15","Type" : "pipeline"},]},
	{"Name" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_16u_config28_U0", "RefName" : "conv_2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_16u_config28_s","ID" : "16","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "17","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_16u_config28_s_fu_262", "RefName" : "compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_16u_config28_s","ID" : "18","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "call_ln281_shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config28_s_fu_303", "RefName" : "shift_line_buffer_array_ap_fixed_16_6_5_3_0_8u_config28_s","ID" : "19","Type" : "pipeline"},
				{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s_fu_499", "RefName" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s","ID" : "20","Type" : "pipeline",
					"SubLoops" : [
					{"Name" : "ReuseLoop","RefName" : "ReuseLoop","ID" : "21","Type" : "pipeline"},]},]},]},]},
	{"Name" : "relu_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_16u_ReLU_config15_U0", "RefName" : "relu_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_16u_ReLU_config15_s","ID" : "22","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReLUActLoop","RefName" : "ReLUActLoop","ID" : "23","Type" : "pipeline"},]},
	{"Name" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config16_U0", "RefName" : "pooling2d_cl_array_array_ap_fixed_16_6_5_3_0_16u_config16_s","ID" : "24","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "ReadInputHeight_ReadInputWidth","RefName" : "ReadInputHeight_ReadInputWidth","ID" : "25","Type" : "pipeline"},]},
	{"Name" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_32u_config25_U0", "RefName" : "dense_array_ap_fixed_16u_array_ap_fixed_16_6_5_3_0_32u_config25_s","ID" : "26","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_array_array_ap_fixed_16_6_5_3_0_32u_config25_Pipeline_DataPrepare_fu_1637", "RefName" : "dense_array_array_ap_fixed_16_6_5_3_0_32u_config25_Pipeline_DataPrepare","ID" : "27","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "DataPrepare","RefName" : "DataPrepare","ID" : "28","Type" : "pipeline"},]},
		{"Name" : "grp_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_fu_2043", "RefName" : "dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s","ID" : "29","Type" : "pipeline",
			"SubLoops" : [
			{"Name" : "ReuseLoop","RefName" : "ReuseLoop","ID" : "30","Type" : "pipeline"},]},]},
	{"Name" : "normalize_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_32u_config23_U0", "RefName" : "normalize_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_32u_config23_s","ID" : "31","Type" : "sequential"},
	{"Name" : "relu_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_32u_ReLU_config20_U0", "RefName" : "relu_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_32u_ReLU_config20_s","ID" : "32","Type" : "sequential"},
	{"Name" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_47u_config26_U0", "RefName" : "dense_array_ap_fixed_32u_array_ap_fixed_16_6_5_3_0_47u_config26_s","ID" : "33","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_dense_resource_rf_leq_nin_ap_fixed_ap_fixed_16_6_5_3_0_config26_s_fu_163", "RefName" : "dense_resource_rf_leq_nin_ap_fixed_ap_fixed_16_6_5_3_0_config26_s","ID" : "34","Type" : "pipeline",
			"SubLoops" : [
			{"Name" : "ReuseLoop","RefName" : "ReuseLoop","ID" : "35","Type" : "pipeline"},]},]},
	{"Name" : "normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24_U0", "RefName" : "normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24_s","ID" : "36","Type" : "sequential"},]
}]}