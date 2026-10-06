set moduleName pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config13_s
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
set C_modelName {pooling2d_cl<array<ap_fixed,4u>,array<ap_fixed<16,6,5,3,0>,4u>,config13>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer12_out int 64 regular {fifo 0 volatile }  }
	{ layer13_out int 64 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer12_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "layer13_out", "interface" : "fifo", "bitwidth" : 64, "direction" : "WRITEONLY"} ]}
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
	{ layer12_out_dout sc_in sc_lv 64 signal 0 } 
	{ layer12_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer12_out_read sc_out sc_logic 1 signal 0 } 
	{ layer12_out_num_data_valid sc_in sc_lv 11 signal 0 } 
	{ layer12_out_fifo_cap sc_in sc_lv 11 signal 0 } 
	{ layer13_out_din sc_out sc_lv 64 signal 1 } 
	{ layer13_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer13_out_write sc_out sc_logic 1 signal 1 } 
	{ layer13_out_num_data_valid sc_in sc_lv 9 signal 1 } 
	{ layer13_out_fifo_cap sc_in sc_lv 9 signal 1 } 
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
 	{ "name": "layer12_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer12_out", "role": "dout" }} , 
 	{ "name": "layer12_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "empty_n" }} , 
 	{ "name": "layer12_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer12_out", "role": "read" }} , 
 	{ "name": "layer12_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer12_out", "role": "num_data_valid" }} , 
 	{ "name": "layer12_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "layer12_out", "role": "fifo_cap" }} , 
 	{ "name": "layer13_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "layer13_out", "role": "din" }} , 
 	{ "name": "layer13_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer13_out", "role": "full_n" }} , 
 	{ "name": "layer13_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer13_out", "role": "write" }} , 
 	{ "name": "layer13_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer13_out", "role": "num_data_valid" }} , 
 	{ "name": "layer13_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "layer13_out", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	pooling2d_cl_array_ap_fixed_4u_array_ap_fixed_16_6_5_3_0_4u_config13_s {
		layer12_out {Type I LastRead 2 FirstWrite -1}
		layer13_out {Type O LastRead -1 FirstWrite 5}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3EL_11 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3EL_10 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3EL_9 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet12pooling2d_clINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_o_mode3EL_8 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_5 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_4 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_3 {Type IO LastRead -1 FirstWrite -1}
		void_compute_pool_buffer_2d_array_const_ap_shift_reg_n_filt_stream_kernel_2 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_17 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_16 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_15 {Type IO LastRead -1 FirstWrite -1}
		p_ZZN4nnet22compute_pool_buffer_2dINS_5arrayI8ap_fixedILi16ELi6EL9ap_q_mode5EL9ap_14 {Type IO LastRead -1 FirstWrite -1}
		sY_1 {Type IO LastRead -1 FirstWrite -1}
		pY_1 {Type IO LastRead -1 FirstWrite -1}
		pX_1 {Type IO LastRead -1 FirstWrite -1}
		sX_1 {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2031", "Max" : "2031"}
	, {"Name" : "Interval", "Min" : "2031", "Max" : "2031"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer12_out { ap_fifo {  { layer12_out_dout fifo_data_out 0 64 }  { layer12_out_empty_n fifo_status_empty 0 1 }  { layer12_out_read fifo_data_in 1 1 }  { layer12_out_num_data_valid fifo_update 0 11 }  { layer12_out_fifo_cap fifo_data 0 11 } } }
	layer13_out { ap_fifo {  { layer13_out_din fifo_data_out 1 64 }  { layer13_out_full_n fifo_status_empty 0 1 }  { layer13_out_write fifo_data_in 1 1 }  { layer13_out_num_data_valid fifo_update 0 9 }  { layer13_out_fifo_cap fifo_data 0 9 } } }
}
