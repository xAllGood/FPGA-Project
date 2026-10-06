set SynModuleInfo {
  {SRCNAME transpose<array,array<ap_fixed,1u>,config10>_Pipeline_VITIS_LOOP_45_1 MODELNAME transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_45_1 RTLNAME myproject_transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_45_1
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe_sequential_init RTLNAME myproject_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME transpose<array,array<ap_fixed,1u>,config10>_Pipeline_VITIS_LOOP_54_3 MODELNAME transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_54_3 RTLNAME myproject_transpose_array_array_ap_fixed_1u_config10_Pipeline_VITIS_LOOP_54_3
    SUBMODULES {
      {MODELNAME myproject_sparsemux_1569_10_16_1_1 RTLNAME myproject_sparsemux_1569_10_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
    }
  }
  {SRCNAME transpose<array<ap_fixed,28u>,array<ap_fixed<16,6,5,3,0>,1u>,config10> MODELNAME transpose_array_ap_fixed_28u_array_ap_fixed_16_6_5_3_0_1u_config10_s RTLNAME myproject_transpose_array_ap_fixed_28u_array_ap_fixed_16_6_5_3_0_1u_config10_s
    SUBMODULES {
      {MODELNAME myproject_regslice_both RTLNAME myproject_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 1u>, config27>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s_void_conv_2d_bufferbkb RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config27_s_void_conv_2d_bufferbkb BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<16,6,5,3,0>,config27_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_19_4_16_1_1 RTLNAME myproject_sparsemux_19_4_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_mul_16s_12s_26_2_1 RTLNAME myproject_mul_16s_12s_26_2_1 BINDTYPE op TYPE mul IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME myproject_sparsemux_9_2_16_1_1 RTLNAME myproject_sparsemux_9_2_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s_oudEe RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s_oudEe BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s_w2eOg RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config27_mult_s_w2eOg BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,4u>,config27> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config27_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_4u_config27_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,1u>,array<ap_fixed<16,6,5,3,0>,4u>,config27> MODELNAME conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config27_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config27_s}
  {SRCNAME relu<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,ReLU_config12> MODELNAME relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_ReLU_config12_s RTLNAME myproject_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_ReLU_config12_s
    SUBMODULES {
      {MODELNAME myproject_flow_control_loop_pipe RTLNAME myproject_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME myproject_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME pooling2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config13> MODELNAME pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config13_s RTLNAME myproject_pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config13_s}
  {SRCNAME {shift_line_buffer<array<ap_fixed<16, 6, 5, 3, 0>, 4u>, config28>} MODELNAME shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config28_s RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config28_s
    SUBMODULES {
      {MODELNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config28_s_p_ZZN4nnet26conv_2dfYi RTLNAME myproject_shift_line_buffer_array_ap_fixed_16_6_5_3_0_4u_config28_s_p_ZZN4nnet26conv_2dfYi BINDTYPE storage TYPE shiftreg IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<16,6,5,3,0>,config28_mult> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_73_6_16_1_1 RTLNAME myproject_sparsemux_73_6_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_sparsemux_17_3_16_1_1 RTLNAME myproject_sparsemux_17_3_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s_ouncg RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s_ouncg BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s_w2ocq RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config28_mult_s_w2ocq BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME compute_output_buffer_2d<array,array<ap_fixed<16,6,5,3,0>,8u>,config28> MODELNAME compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config28_s RTLNAME myproject_compute_output_buffer_2d_array_array_ap_fixed_16_6_5_3_0_8u_config28_s}
  {SRCNAME conv_2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,8u>,config28> MODELNAME conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_8u_config28_s RTLNAME myproject_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_8u_config28_s}
  {SRCNAME relu<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,ReLU_config15> MODELNAME relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_s RTLNAME myproject_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_s}
  {SRCNAME pooling2d_cl<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,config16> MODELNAME pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config16_s RTLNAME myproject_pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config16_s}
  {SRCNAME dense<array,array<ap_fixed<16,6,5,3,0>,24u>,config25>_Pipeline_DataPrepare MODELNAME dense_array_array_ap_fixed_16_6_5_3_0_24u_config25_Pipeline_DataPrepare RTLNAME myproject_dense_array_array_ap_fixed_16_6_5_3_0_24u_config25_Pipeline_DataPrepare}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<16,6,5,3,0>,config25> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_401_8_16_1_1 RTLNAME myproject_sparsemux_401_8_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_sparsemux_49_5_16_1_1 RTLNAME myproject_sparsemux_49_5_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_outidx_pcA RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_outidx_pcA BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_w25_ROMqcK RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s_w25_ROMqcK BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,24u>,config25> MODELNAME dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_s RTLNAME myproject_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_s}
  {SRCNAME normalize<array<ap_fixed,24u>,array<ap_fixed<16,6,5,3,0>,24u>,config23> MODELNAME normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config23_s RTLNAME myproject_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config23_s}
  {SRCNAME relu<array<ap_fixed,24u>,array<ap_fixed<16,6,5,3,0>,24u>,ReLU_config20> MODELNAME relu_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_ReLU_config20_s RTLNAME myproject_relu_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_ReLU_config20_s}
  {SRCNAME dense_resource_rf_gt_nin_rem0<ap_fixed,ap_fixed<16,6,5,3,0>,config26> MODELNAME dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s
    SUBMODULES {
      {MODELNAME myproject_sparsemux_95_6_16_1_1 RTLNAME myproject_sparsemux_95_6_16_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_dontcare}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s_outidx_rcU RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s_outidx_rcU BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s_w26_ROMsc4 RTLNAME myproject_dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config26_s_w26_ROMsc4 BINDTYPE storage TYPE rom_np IMPL bram LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME dense<array<ap_fixed,24u>,array<ap_fixed<16,6,5,3,0>,47u>,config26> MODELNAME dense_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_47u_config26_s RTLNAME myproject_dense_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_47u_config26_s}
  {SRCNAME normalize<array<ap_fixed,47u>,array<ap_fixed<16,6,5,3,0>,47u>,config24> MODELNAME normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24_s RTLNAME myproject_normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24_s}
  {SRCNAME myproject MODELNAME myproject RTLNAME myproject IS_TOP 1
    SUBMODULES {
      {MODELNAME myproject_fifo_w16_d784_A RTLNAME myproject_fifo_w16_d784_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer10_out_U}
      {MODELNAME myproject_fifo_w64_d676_A RTLNAME myproject_fifo_w64_d676_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer27_out_U}
      {MODELNAME myproject_fifo_w64_d676_A RTLNAME myproject_fifo_w64_d676_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer12_out_U}
      {MODELNAME myproject_fifo_w64_d169_A RTLNAME myproject_fifo_w64_d169_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer13_out_U}
      {MODELNAME myproject_fifo_w128_d121_A RTLNAME myproject_fifo_w128_d121_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer28_out_U}
      {MODELNAME myproject_fifo_w128_d121_A RTLNAME myproject_fifo_w128_d121_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer15_out_U}
      {MODELNAME myproject_fifo_w128_d25_A RTLNAME myproject_fifo_w128_d25_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME layer16_out_U}
      {MODELNAME myproject_fifo_w384_d1_S RTLNAME myproject_fifo_w384_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer25_out_U}
      {MODELNAME myproject_fifo_w384_d1_S RTLNAME myproject_fifo_w384_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer23_out_U}
      {MODELNAME myproject_fifo_w384_d1_S RTLNAME myproject_fifo_w384_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer20_out_U}
      {MODELNAME myproject_fifo_w752_d1_S RTLNAME myproject_fifo_w752_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME layer26_out_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config27_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config27_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_1u_array_ap_fixed_16_6_5_3_0_4u_config27_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_ReLU_config12_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_ReLU_config12_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_ReLU_config12_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config1tde RTLNAME myproject_start_for_pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config1tde BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config1tde_U}
      {MODELNAME myproject_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_8u_config28_U0 RTLNAME myproject_start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_8u_config28_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_conv_2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_8u_config28_U0_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_U0 RTLNAME myproject_start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_U0_U}
      {MODELNAME myproject_start_for_pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config1udo RTLNAME myproject_start_for_pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config1udo BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_pooling2d_cl_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_config1udo_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config23vdy RTLNAME myproject_start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config23vdy BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_config23vdy_U}
      {MODELNAME myproject_start_for_relu_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_ReLU_config20wdI RTLNAME myproject_start_for_relu_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_ReLU_config20wdI BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_relu_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_24u_ReLU_config20wdI_U}
      {MODELNAME myproject_start_for_dense_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_47u_config26_U0 RTLNAME myproject_start_for_dense_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_47u_config26_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_dense_array_ap_fixed_24u_array_ap_fixed_16_6_5_3_0_47u_config26_U0_U}
      {MODELNAME myproject_start_for_normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24xdS RTLNAME myproject_start_for_normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24xdS BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_normalize_array_ap_fixed_47u_array_ap_fixed_16_6_5_3_0_47u_config24xdS_U}
    }
  }
}
