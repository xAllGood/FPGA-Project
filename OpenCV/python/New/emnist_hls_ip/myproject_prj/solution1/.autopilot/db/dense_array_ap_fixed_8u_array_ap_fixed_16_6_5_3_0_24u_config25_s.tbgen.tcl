set moduleName dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 26
set C_modelName {dense<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,24u>,config25>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer16_out int 128 regular {fifo 0 volatile }  }
	{ layer25_out int 384 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer16_out", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "layer25_out", "interface" : "fifo", "bitwidth" : 384, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ layer16_out_dout sc_in sc_lv 128 signal 0 } 
	{ layer16_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer16_out_read sc_out sc_logic 1 signal 0 } 
	{ layer16_out_num_data_valid sc_in sc_lv 6 signal 0 } 
	{ layer16_out_fifo_cap sc_in sc_lv 6 signal 0 } 
	{ layer25_out_din sc_out sc_lv 384 signal 1 } 
	{ layer25_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer25_out_write sc_out sc_logic 1 signal 1 } 
	{ layer25_out_num_data_valid sc_in sc_lv 2 signal 1 } 
	{ layer25_out_fifo_cap sc_in sc_lv 2 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "layer16_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer16_out", "role": "dout" }} , 
 	{ "name": "layer16_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "empty_n" }} , 
 	{ "name": "layer16_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer16_out", "role": "read" }} , 
 	{ "name": "layer16_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer16_out", "role": "num_data_valid" }} , 
 	{ "name": "layer16_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "layer16_out", "role": "fifo_cap" }} , 
 	{ "name": "layer25_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":384, "type": "signal", "bundle":{"name": "layer25_out", "role": "din" }} , 
 	{ "name": "layer25_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer25_out", "role": "full_n" }} , 
 	{ "name": "layer25_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer25_out", "role": "write" }} , 
 	{ "name": "layer25_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer25_out", "role": "num_data_valid" }} , 
 	{ "name": "layer25_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer25_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	dense_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_24u_config25_s {
		layer16_out {Type I LastRead 1 FirstWrite -1}
		layer25_out {Type O LastRead -1 FirstWrite 4}
		outidx_57 {Type I LastRead -1 FirstWrite -1}
		w25 {Type I LastRead -1 FirstWrite -1}}
	dense_array_array_ap_fixed_16_6_5_3_0_24u_config25_Pipeline_DataPrepare {
		layer16_out {Type I LastRead 1 FirstWrite -1}
		data_199_out {Type O LastRead -1 FirstWrite 1}
		data_198_out {Type O LastRead -1 FirstWrite 1}
		data_197_out {Type O LastRead -1 FirstWrite 1}
		data_196_out {Type O LastRead -1 FirstWrite 1}
		data_195_out {Type O LastRead -1 FirstWrite 1}
		data_194_out {Type O LastRead -1 FirstWrite 1}
		data_193_out {Type O LastRead -1 FirstWrite 1}
		data_192_out {Type O LastRead -1 FirstWrite 1}
		data_191_out {Type O LastRead -1 FirstWrite 1}
		data_190_out {Type O LastRead -1 FirstWrite 1}
		data_189_out {Type O LastRead -1 FirstWrite 1}
		data_188_out {Type O LastRead -1 FirstWrite 1}
		data_187_out {Type O LastRead -1 FirstWrite 1}
		data_186_out {Type O LastRead -1 FirstWrite 1}
		data_185_out {Type O LastRead -1 FirstWrite 1}
		data_184_out {Type O LastRead -1 FirstWrite 1}
		data_183_out {Type O LastRead -1 FirstWrite 1}
		data_182_out {Type O LastRead -1 FirstWrite 1}
		data_181_out {Type O LastRead -1 FirstWrite 1}
		data_180_out {Type O LastRead -1 FirstWrite 1}
		data_179_out {Type O LastRead -1 FirstWrite 1}
		data_178_out {Type O LastRead -1 FirstWrite 1}
		data_177_out {Type O LastRead -1 FirstWrite 1}
		data_176_out {Type O LastRead -1 FirstWrite 1}
		data_175_out {Type O LastRead -1 FirstWrite 1}
		data_174_out {Type O LastRead -1 FirstWrite 1}
		data_173_out {Type O LastRead -1 FirstWrite 1}
		data_172_out {Type O LastRead -1 FirstWrite 1}
		data_171_out {Type O LastRead -1 FirstWrite 1}
		data_170_out {Type O LastRead -1 FirstWrite 1}
		data_169_out {Type O LastRead -1 FirstWrite 1}
		data_168_out {Type O LastRead -1 FirstWrite 1}
		data_167_out {Type O LastRead -1 FirstWrite 1}
		data_166_out {Type O LastRead -1 FirstWrite 1}
		data_165_out {Type O LastRead -1 FirstWrite 1}
		data_164_out {Type O LastRead -1 FirstWrite 1}
		data_163_out {Type O LastRead -1 FirstWrite 1}
		data_162_out {Type O LastRead -1 FirstWrite 1}
		data_161_out {Type O LastRead -1 FirstWrite 1}
		data_160_out {Type O LastRead -1 FirstWrite 1}
		data_159_out {Type O LastRead -1 FirstWrite 1}
		data_158_out {Type O LastRead -1 FirstWrite 1}
		data_157_out {Type O LastRead -1 FirstWrite 1}
		data_156_out {Type O LastRead -1 FirstWrite 1}
		data_155_out {Type O LastRead -1 FirstWrite 1}
		data_154_out {Type O LastRead -1 FirstWrite 1}
		data_153_out {Type O LastRead -1 FirstWrite 1}
		data_152_out {Type O LastRead -1 FirstWrite 1}
		data_151_out {Type O LastRead -1 FirstWrite 1}
		data_150_out {Type O LastRead -1 FirstWrite 1}
		data_149_out {Type O LastRead -1 FirstWrite 1}
		data_148_out {Type O LastRead -1 FirstWrite 1}
		data_147_out {Type O LastRead -1 FirstWrite 1}
		data_146_out {Type O LastRead -1 FirstWrite 1}
		data_145_out {Type O LastRead -1 FirstWrite 1}
		data_144_out {Type O LastRead -1 FirstWrite 1}
		data_143_out {Type O LastRead -1 FirstWrite 1}
		data_142_out {Type O LastRead -1 FirstWrite 1}
		data_141_out {Type O LastRead -1 FirstWrite 1}
		data_140_out {Type O LastRead -1 FirstWrite 1}
		data_139_out {Type O LastRead -1 FirstWrite 1}
		data_138_out {Type O LastRead -1 FirstWrite 1}
		data_137_out {Type O LastRead -1 FirstWrite 1}
		data_136_out {Type O LastRead -1 FirstWrite 1}
		data_135_out {Type O LastRead -1 FirstWrite 1}
		data_134_out {Type O LastRead -1 FirstWrite 1}
		data_133_out {Type O LastRead -1 FirstWrite 1}
		data_132_out {Type O LastRead -1 FirstWrite 1}
		data_131_out {Type O LastRead -1 FirstWrite 1}
		data_130_out {Type O LastRead -1 FirstWrite 1}
		data_129_out {Type O LastRead -1 FirstWrite 1}
		data_128_out {Type O LastRead -1 FirstWrite 1}
		data_127_out {Type O LastRead -1 FirstWrite 1}
		data_126_out {Type O LastRead -1 FirstWrite 1}
		data_125_out {Type O LastRead -1 FirstWrite 1}
		data_124_out {Type O LastRead -1 FirstWrite 1}
		data_123_out {Type O LastRead -1 FirstWrite 1}
		data_122_out {Type O LastRead -1 FirstWrite 1}
		data_121_out {Type O LastRead -1 FirstWrite 1}
		data_120_out {Type O LastRead -1 FirstWrite 1}
		data_119_out {Type O LastRead -1 FirstWrite 1}
		data_118_out {Type O LastRead -1 FirstWrite 1}
		data_117_out {Type O LastRead -1 FirstWrite 1}
		data_116_out {Type O LastRead -1 FirstWrite 1}
		data_115_out {Type O LastRead -1 FirstWrite 1}
		data_114_out {Type O LastRead -1 FirstWrite 1}
		data_113_out {Type O LastRead -1 FirstWrite 1}
		data_112_out {Type O LastRead -1 FirstWrite 1}
		data_111_out {Type O LastRead -1 FirstWrite 1}
		data_110_out {Type O LastRead -1 FirstWrite 1}
		data_109_out {Type O LastRead -1 FirstWrite 1}
		data_108_out {Type O LastRead -1 FirstWrite 1}
		data_107_out {Type O LastRead -1 FirstWrite 1}
		data_106_out {Type O LastRead -1 FirstWrite 1}
		data_105_out {Type O LastRead -1 FirstWrite 1}
		data_104_out {Type O LastRead -1 FirstWrite 1}
		data_103_out {Type O LastRead -1 FirstWrite 1}
		data_102_out {Type O LastRead -1 FirstWrite 1}
		data_101_out {Type O LastRead -1 FirstWrite 1}
		data_100_out {Type O LastRead -1 FirstWrite 1}
		data_99_out {Type O LastRead -1 FirstWrite 1}
		data_98_out {Type O LastRead -1 FirstWrite 1}
		data_97_out {Type O LastRead -1 FirstWrite 1}
		data_96_out {Type O LastRead -1 FirstWrite 1}
		data_95_out {Type O LastRead -1 FirstWrite 1}
		data_94_out {Type O LastRead -1 FirstWrite 1}
		data_93_out {Type O LastRead -1 FirstWrite 1}
		data_92_out {Type O LastRead -1 FirstWrite 1}
		data_91_out {Type O LastRead -1 FirstWrite 1}
		data_90_out {Type O LastRead -1 FirstWrite 1}
		data_89_out {Type O LastRead -1 FirstWrite 1}
		data_88_out {Type O LastRead -1 FirstWrite 1}
		data_87_out {Type O LastRead -1 FirstWrite 1}
		data_86_out {Type O LastRead -1 FirstWrite 1}
		data_85_out {Type O LastRead -1 FirstWrite 1}
		data_84_out {Type O LastRead -1 FirstWrite 1}
		data_83_out {Type O LastRead -1 FirstWrite 1}
		data_82_out {Type O LastRead -1 FirstWrite 1}
		data_81_out {Type O LastRead -1 FirstWrite 1}
		data_80_out {Type O LastRead -1 FirstWrite 1}
		data_79_out {Type O LastRead -1 FirstWrite 1}
		data_78_out {Type O LastRead -1 FirstWrite 1}
		data_77_out {Type O LastRead -1 FirstWrite 1}
		data_76_out {Type O LastRead -1 FirstWrite 1}
		data_75_out {Type O LastRead -1 FirstWrite 1}
		data_74_out {Type O LastRead -1 FirstWrite 1}
		data_73_out {Type O LastRead -1 FirstWrite 1}
		data_72_out {Type O LastRead -1 FirstWrite 1}
		data_71_out {Type O LastRead -1 FirstWrite 1}
		data_70_out {Type O LastRead -1 FirstWrite 1}
		data_69_out {Type O LastRead -1 FirstWrite 1}
		data_68_out {Type O LastRead -1 FirstWrite 1}
		data_67_out {Type O LastRead -1 FirstWrite 1}
		data_66_out {Type O LastRead -1 FirstWrite 1}
		data_65_out {Type O LastRead -1 FirstWrite 1}
		data_64_out {Type O LastRead -1 FirstWrite 1}
		data_63_out {Type O LastRead -1 FirstWrite 1}
		data_62_out {Type O LastRead -1 FirstWrite 1}
		data_61_out {Type O LastRead -1 FirstWrite 1}
		data_60_out {Type O LastRead -1 FirstWrite 1}
		data_59_out {Type O LastRead -1 FirstWrite 1}
		data_58_out {Type O LastRead -1 FirstWrite 1}
		data_57_out {Type O LastRead -1 FirstWrite 1}
		data_56_out {Type O LastRead -1 FirstWrite 1}
		data_55_out {Type O LastRead -1 FirstWrite 1}
		data_54_out {Type O LastRead -1 FirstWrite 1}
		data_53_out {Type O LastRead -1 FirstWrite 1}
		data_52_out {Type O LastRead -1 FirstWrite 1}
		data_51_out {Type O LastRead -1 FirstWrite 1}
		data_50_out {Type O LastRead -1 FirstWrite 1}
		data_49_out {Type O LastRead -1 FirstWrite 1}
		data_48_out {Type O LastRead -1 FirstWrite 1}
		data_47_out {Type O LastRead -1 FirstWrite 1}
		data_46_out {Type O LastRead -1 FirstWrite 1}
		data_45_out {Type O LastRead -1 FirstWrite 1}
		data_44_out {Type O LastRead -1 FirstWrite 1}
		data_43_out {Type O LastRead -1 FirstWrite 1}
		data_42_out {Type O LastRead -1 FirstWrite 1}
		data_41_out {Type O LastRead -1 FirstWrite 1}
		data_40_out {Type O LastRead -1 FirstWrite 1}
		data_39_out {Type O LastRead -1 FirstWrite 1}
		data_38_out {Type O LastRead -1 FirstWrite 1}
		data_37_out {Type O LastRead -1 FirstWrite 1}
		data_36_out {Type O LastRead -1 FirstWrite 1}
		data_35_out {Type O LastRead -1 FirstWrite 1}
		data_34_out {Type O LastRead -1 FirstWrite 1}
		data_33_out {Type O LastRead -1 FirstWrite 1}
		data_32_out {Type O LastRead -1 FirstWrite 1}
		data_31_out {Type O LastRead -1 FirstWrite 1}
		data_30_out {Type O LastRead -1 FirstWrite 1}
		data_29_out {Type O LastRead -1 FirstWrite 1}
		data_28_out {Type O LastRead -1 FirstWrite 1}
		data_27_out {Type O LastRead -1 FirstWrite 1}
		data_26_out {Type O LastRead -1 FirstWrite 1}
		data_25_out {Type O LastRead -1 FirstWrite 1}
		data_24_out {Type O LastRead -1 FirstWrite 1}
		data_23_out {Type O LastRead -1 FirstWrite 1}
		data_22_out {Type O LastRead -1 FirstWrite 1}
		data_21_out {Type O LastRead -1 FirstWrite 1}
		data_20_out {Type O LastRead -1 FirstWrite 1}
		data_19_out {Type O LastRead -1 FirstWrite 1}
		data_18_out {Type O LastRead -1 FirstWrite 1}
		data_17_out {Type O LastRead -1 FirstWrite 1}
		data_16_out {Type O LastRead -1 FirstWrite 1}
		data_15_out {Type O LastRead -1 FirstWrite 1}
		data_14_out {Type O LastRead -1 FirstWrite 1}
		data_13_out {Type O LastRead -1 FirstWrite 1}
		data_12_out {Type O LastRead -1 FirstWrite 1}
		data_11_out {Type O LastRead -1 FirstWrite 1}
		data_10_out {Type O LastRead -1 FirstWrite 1}
		data_9_out {Type O LastRead -1 FirstWrite 1}
		data_8_out {Type O LastRead -1 FirstWrite 1}
		data_7_out {Type O LastRead -1 FirstWrite 1}
		data_6_out {Type O LastRead -1 FirstWrite 1}
		data_5_out {Type O LastRead -1 FirstWrite 1}
		data_4_out {Type O LastRead -1 FirstWrite 1}
		data_3_out {Type O LastRead -1 FirstWrite 1}
		data_2_out {Type O LastRead -1 FirstWrite 1}
		data_1_out {Type O LastRead -1 FirstWrite 1}
		data_out {Type O LastRead -1 FirstWrite 1}}
	dense_resource_rf_gt_nin_rem0_ap_fixed_ap_fixed_16_6_5_3_0_config25_s {
		data_0_val {Type I LastRead 2 FirstWrite -1}
		data_1_val {Type I LastRead 2 FirstWrite -1}
		data_2_val {Type I LastRead 2 FirstWrite -1}
		data_3_val {Type I LastRead 2 FirstWrite -1}
		data_4_val {Type I LastRead 2 FirstWrite -1}
		data_5_val {Type I LastRead 2 FirstWrite -1}
		data_6_val {Type I LastRead 2 FirstWrite -1}
		data_7_val {Type I LastRead 2 FirstWrite -1}
		data_8_val {Type I LastRead 2 FirstWrite -1}
		data_9_val {Type I LastRead 2 FirstWrite -1}
		data_10_val {Type I LastRead 2 FirstWrite -1}
		data_11_val {Type I LastRead 2 FirstWrite -1}
		data_12_val {Type I LastRead 2 FirstWrite -1}
		data_13_val {Type I LastRead 2 FirstWrite -1}
		data_14_val {Type I LastRead 2 FirstWrite -1}
		data_15_val {Type I LastRead 2 FirstWrite -1}
		data_16_val {Type I LastRead 2 FirstWrite -1}
		data_17_val {Type I LastRead 2 FirstWrite -1}
		data_18_val {Type I LastRead 2 FirstWrite -1}
		data_19_val {Type I LastRead 2 FirstWrite -1}
		data_20_val {Type I LastRead 2 FirstWrite -1}
		data_21_val {Type I LastRead 2 FirstWrite -1}
		data_22_val {Type I LastRead 2 FirstWrite -1}
		data_23_val {Type I LastRead 2 FirstWrite -1}
		data_24_val {Type I LastRead 2 FirstWrite -1}
		data_25_val {Type I LastRead 2 FirstWrite -1}
		data_26_val {Type I LastRead 2 FirstWrite -1}
		data_27_val {Type I LastRead 2 FirstWrite -1}
		data_28_val {Type I LastRead 2 FirstWrite -1}
		data_29_val {Type I LastRead 2 FirstWrite -1}
		data_30_val {Type I LastRead 2 FirstWrite -1}
		data_31_val {Type I LastRead 2 FirstWrite -1}
		data_32_val {Type I LastRead 2 FirstWrite -1}
		data_33_val {Type I LastRead 2 FirstWrite -1}
		data_34_val {Type I LastRead 2 FirstWrite -1}
		data_35_val {Type I LastRead 2 FirstWrite -1}
		data_36_val {Type I LastRead 2 FirstWrite -1}
		data_37_val {Type I LastRead 2 FirstWrite -1}
		data_38_val {Type I LastRead 2 FirstWrite -1}
		data_39_val {Type I LastRead 2 FirstWrite -1}
		data_40_val {Type I LastRead 2 FirstWrite -1}
		data_41_val {Type I LastRead 2 FirstWrite -1}
		data_42_val {Type I LastRead 2 FirstWrite -1}
		data_43_val {Type I LastRead 2 FirstWrite -1}
		data_44_val {Type I LastRead 2 FirstWrite -1}
		data_45_val {Type I LastRead 2 FirstWrite -1}
		data_46_val {Type I LastRead 2 FirstWrite -1}
		data_47_val {Type I LastRead 2 FirstWrite -1}
		data_48_val {Type I LastRead 2 FirstWrite -1}
		data_49_val {Type I LastRead 2 FirstWrite -1}
		data_50_val {Type I LastRead 2 FirstWrite -1}
		data_51_val {Type I LastRead 2 FirstWrite -1}
		data_52_val {Type I LastRead 2 FirstWrite -1}
		data_53_val {Type I LastRead 2 FirstWrite -1}
		data_54_val {Type I LastRead 2 FirstWrite -1}
		data_55_val {Type I LastRead 2 FirstWrite -1}
		data_56_val {Type I LastRead 2 FirstWrite -1}
		data_57_val {Type I LastRead 2 FirstWrite -1}
		data_58_val {Type I LastRead 2 FirstWrite -1}
		data_59_val {Type I LastRead 2 FirstWrite -1}
		data_60_val {Type I LastRead 2 FirstWrite -1}
		data_61_val {Type I LastRead 2 FirstWrite -1}
		data_62_val {Type I LastRead 2 FirstWrite -1}
		data_63_val {Type I LastRead 2 FirstWrite -1}
		data_64_val {Type I LastRead 2 FirstWrite -1}
		data_65_val {Type I LastRead 2 FirstWrite -1}
		data_66_val {Type I LastRead 2 FirstWrite -1}
		data_67_val {Type I LastRead 2 FirstWrite -1}
		data_68_val {Type I LastRead 2 FirstWrite -1}
		data_69_val {Type I LastRead 2 FirstWrite -1}
		data_70_val {Type I LastRead 2 FirstWrite -1}
		data_71_val {Type I LastRead 2 FirstWrite -1}
		data_72_val {Type I LastRead 2 FirstWrite -1}
		data_73_val {Type I LastRead 2 FirstWrite -1}
		data_74_val {Type I LastRead 2 FirstWrite -1}
		data_75_val {Type I LastRead 2 FirstWrite -1}
		data_76_val {Type I LastRead 2 FirstWrite -1}
		data_77_val {Type I LastRead 2 FirstWrite -1}
		data_78_val {Type I LastRead 2 FirstWrite -1}
		data_79_val {Type I LastRead 2 FirstWrite -1}
		data_80_val {Type I LastRead 2 FirstWrite -1}
		data_81_val {Type I LastRead 2 FirstWrite -1}
		data_82_val {Type I LastRead 2 FirstWrite -1}
		data_83_val {Type I LastRead 2 FirstWrite -1}
		data_84_val {Type I LastRead 2 FirstWrite -1}
		data_85_val {Type I LastRead 2 FirstWrite -1}
		data_86_val {Type I LastRead 2 FirstWrite -1}
		data_87_val {Type I LastRead 2 FirstWrite -1}
		data_88_val {Type I LastRead 2 FirstWrite -1}
		data_89_val {Type I LastRead 2 FirstWrite -1}
		data_90_val {Type I LastRead 2 FirstWrite -1}
		data_91_val {Type I LastRead 2 FirstWrite -1}
		data_92_val {Type I LastRead 2 FirstWrite -1}
		data_93_val {Type I LastRead 2 FirstWrite -1}
		data_94_val {Type I LastRead 2 FirstWrite -1}
		data_95_val {Type I LastRead 2 FirstWrite -1}
		data_96_val {Type I LastRead 2 FirstWrite -1}
		data_97_val {Type I LastRead 2 FirstWrite -1}
		data_98_val {Type I LastRead 2 FirstWrite -1}
		data_99_val {Type I LastRead 2 FirstWrite -1}
		data_100_val {Type I LastRead 2 FirstWrite -1}
		data_101_val {Type I LastRead 2 FirstWrite -1}
		data_102_val {Type I LastRead 2 FirstWrite -1}
		data_103_val {Type I LastRead 2 FirstWrite -1}
		data_104_val {Type I LastRead 2 FirstWrite -1}
		data_105_val {Type I LastRead 2 FirstWrite -1}
		data_106_val {Type I LastRead 2 FirstWrite -1}
		data_107_val {Type I LastRead 2 FirstWrite -1}
		data_108_val {Type I LastRead 2 FirstWrite -1}
		data_109_val {Type I LastRead 2 FirstWrite -1}
		data_110_val {Type I LastRead 2 FirstWrite -1}
		data_111_val {Type I LastRead 2 FirstWrite -1}
		data_112_val {Type I LastRead 2 FirstWrite -1}
		data_113_val {Type I LastRead 2 FirstWrite -1}
		data_114_val {Type I LastRead 2 FirstWrite -1}
		data_115_val {Type I LastRead 2 FirstWrite -1}
		data_116_val {Type I LastRead 2 FirstWrite -1}
		data_117_val {Type I LastRead 2 FirstWrite -1}
		data_118_val {Type I LastRead 2 FirstWrite -1}
		data_119_val {Type I LastRead 2 FirstWrite -1}
		data_120_val {Type I LastRead 2 FirstWrite -1}
		data_121_val {Type I LastRead 2 FirstWrite -1}
		data_122_val {Type I LastRead 2 FirstWrite -1}
		data_123_val {Type I LastRead 2 FirstWrite -1}
		data_124_val {Type I LastRead 2 FirstWrite -1}
		data_125_val {Type I LastRead 2 FirstWrite -1}
		data_126_val {Type I LastRead 2 FirstWrite -1}
		data_127_val {Type I LastRead 2 FirstWrite -1}
		data_128_val {Type I LastRead 2 FirstWrite -1}
		data_129_val {Type I LastRead 2 FirstWrite -1}
		data_130_val {Type I LastRead 2 FirstWrite -1}
		data_131_val {Type I LastRead 2 FirstWrite -1}
		data_132_val {Type I LastRead 2 FirstWrite -1}
		data_133_val {Type I LastRead 2 FirstWrite -1}
		data_134_val {Type I LastRead 2 FirstWrite -1}
		data_135_val {Type I LastRead 2 FirstWrite -1}
		data_136_val {Type I LastRead 2 FirstWrite -1}
		data_137_val {Type I LastRead 2 FirstWrite -1}
		data_138_val {Type I LastRead 2 FirstWrite -1}
		data_139_val {Type I LastRead 2 FirstWrite -1}
		data_140_val {Type I LastRead 2 FirstWrite -1}
		data_141_val {Type I LastRead 2 FirstWrite -1}
		data_142_val {Type I LastRead 2 FirstWrite -1}
		data_143_val {Type I LastRead 2 FirstWrite -1}
		data_144_val {Type I LastRead 2 FirstWrite -1}
		data_145_val {Type I LastRead 2 FirstWrite -1}
		data_146_val {Type I LastRead 2 FirstWrite -1}
		data_147_val {Type I LastRead 2 FirstWrite -1}
		data_148_val {Type I LastRead 2 FirstWrite -1}
		data_149_val {Type I LastRead 2 FirstWrite -1}
		data_150_val {Type I LastRead 2 FirstWrite -1}
		data_151_val {Type I LastRead 2 FirstWrite -1}
		data_152_val {Type I LastRead 2 FirstWrite -1}
		data_153_val {Type I LastRead 2 FirstWrite -1}
		data_154_val {Type I LastRead 2 FirstWrite -1}
		data_155_val {Type I LastRead 2 FirstWrite -1}
		data_156_val {Type I LastRead 2 FirstWrite -1}
		data_157_val {Type I LastRead 2 FirstWrite -1}
		data_158_val {Type I LastRead 2 FirstWrite -1}
		data_159_val {Type I LastRead 2 FirstWrite -1}
		data_160_val {Type I LastRead 2 FirstWrite -1}
		data_161_val {Type I LastRead 2 FirstWrite -1}
		data_162_val {Type I LastRead 2 FirstWrite -1}
		data_163_val {Type I LastRead 2 FirstWrite -1}
		data_164_val {Type I LastRead 2 FirstWrite -1}
		data_165_val {Type I LastRead 2 FirstWrite -1}
		data_166_val {Type I LastRead 2 FirstWrite -1}
		data_167_val {Type I LastRead 2 FirstWrite -1}
		data_168_val {Type I LastRead 2 FirstWrite -1}
		data_169_val {Type I LastRead 2 FirstWrite -1}
		data_170_val {Type I LastRead 2 FirstWrite -1}
		data_171_val {Type I LastRead 2 FirstWrite -1}
		data_172_val {Type I LastRead 2 FirstWrite -1}
		data_173_val {Type I LastRead 2 FirstWrite -1}
		data_174_val {Type I LastRead 2 FirstWrite -1}
		data_175_val {Type I LastRead 2 FirstWrite -1}
		data_176_val {Type I LastRead 2 FirstWrite -1}
		data_177_val {Type I LastRead 2 FirstWrite -1}
		data_178_val {Type I LastRead 2 FirstWrite -1}
		data_179_val {Type I LastRead 2 FirstWrite -1}
		data_180_val {Type I LastRead 2 FirstWrite -1}
		data_181_val {Type I LastRead 2 FirstWrite -1}
		data_182_val {Type I LastRead 2 FirstWrite -1}
		data_183_val {Type I LastRead 2 FirstWrite -1}
		data_184_val {Type I LastRead 2 FirstWrite -1}
		data_185_val {Type I LastRead 2 FirstWrite -1}
		data_186_val {Type I LastRead 2 FirstWrite -1}
		data_187_val {Type I LastRead 2 FirstWrite -1}
		data_188_val {Type I LastRead 2 FirstWrite -1}
		data_189_val {Type I LastRead 2 FirstWrite -1}
		data_190_val {Type I LastRead 2 FirstWrite -1}
		data_191_val {Type I LastRead 2 FirstWrite -1}
		data_192_val {Type I LastRead 2 FirstWrite -1}
		data_193_val {Type I LastRead 2 FirstWrite -1}
		data_194_val {Type I LastRead 2 FirstWrite -1}
		data_195_val {Type I LastRead 2 FirstWrite -1}
		data_196_val {Type I LastRead 2 FirstWrite -1}
		data_197_val {Type I LastRead 2 FirstWrite -1}
		data_198_val {Type I LastRead 2 FirstWrite -1}
		data_199_val {Type I LastRead 2 FirstWrite -1}
		outidx_57 {Type I LastRead -1 FirstWrite -1}
		w25 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4833", "Max" : "4834"}
	, {"Name" : "Interval", "Min" : "4833", "Max" : "4834"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	layer16_out { ap_fifo {  { layer16_out_dout fifo_data_out 0 128 }  { layer16_out_empty_n fifo_status_empty 0 1 }  { layer16_out_read fifo_data_in 1 1 }  { layer16_out_num_data_valid fifo_update 0 6 }  { layer16_out_fifo_cap fifo_data 0 6 } } }
	layer25_out { ap_fifo {  { layer25_out_din fifo_data_out 1 384 }  { layer25_out_full_n fifo_status_empty 0 1 }  { layer25_out_write fifo_data_in 1 1 }  { layer25_out_num_data_valid fifo_update 0 2 }  { layer25_out_fifo_cap fifo_data 0 2 } } }
}
