set moduleName relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_s
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {relu<array<ap_fixed,8u>,array<ap_fixed<16,6,5,3,0>,8u>,ReLU_config15>}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ layer28_out int 128 regular {fifo 0 volatile }  }
	{ layer15_out int 128 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "layer28_out", "interface" : "fifo", "bitwidth" : 128, "direction" : "READONLY"} , 
 	{ "Name" : "layer15_out", "interface" : "fifo", "bitwidth" : 128, "direction" : "WRITEONLY"} ]}
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
	{ layer28_out_dout sc_in sc_lv 128 signal 0 } 
	{ layer28_out_empty_n sc_in sc_logic 1 signal 0 } 
	{ layer28_out_read sc_out sc_logic 1 signal 0 } 
	{ layer28_out_num_data_valid sc_in sc_lv 8 signal 0 } 
	{ layer28_out_fifo_cap sc_in sc_lv 8 signal 0 } 
	{ layer15_out_din sc_out sc_lv 128 signal 1 } 
	{ layer15_out_full_n sc_in sc_logic 1 signal 1 } 
	{ layer15_out_write sc_out sc_logic 1 signal 1 } 
	{ layer15_out_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ layer15_out_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "layer28_out_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer28_out", "role": "dout" }} , 
 	{ "name": "layer28_out_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_out", "role": "empty_n" }} , 
 	{ "name": "layer28_out_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer28_out", "role": "read" }} , 
 	{ "name": "layer28_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer28_out", "role": "num_data_valid" }} , 
 	{ "name": "layer28_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "layer28_out", "role": "fifo_cap" }} , 
 	{ "name": "layer15_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "layer15_out", "role": "din" }} , 
 	{ "name": "layer15_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "full_n" }} , 
 	{ "name": "layer15_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "layer15_out", "role": "write" }} , 
 	{ "name": "layer15_out_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer15_out", "role": "num_data_valid" }} , 
 	{ "name": "layer15_out_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "layer15_out", "role": "fifo_cap" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	relu_array_ap_fixed_8u_array_ap_fixed_16_6_5_3_0_8u_ReLU_config15_s {
		layer28_out {Type I LastRead 1 FirstWrite -1}
		layer15_out {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "125", "Max" : "125"}
	, {"Name" : "Interval", "Min" : "121", "Max" : "121"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	layer28_out { ap_fifo {  { layer28_out_dout fifo_data_out 0 128 }  { layer28_out_empty_n fifo_status_empty 0 1 }  { layer28_out_read fifo_data_in 1 1 }  { layer28_out_num_data_valid fifo_update 0 8 }  { layer28_out_fifo_cap fifo_data 0 8 } } }
	layer15_out { ap_fifo {  { layer15_out_din fifo_data_out 1 128 }  { layer15_out_full_n fifo_status_empty 0 1 }  { layer15_out_write fifo_data_in 1 1 }  { layer15_out_num_data_valid fifo_update 0 32 }  { layer15_out_fifo_cap fifo_data 0 32 } } }
}
