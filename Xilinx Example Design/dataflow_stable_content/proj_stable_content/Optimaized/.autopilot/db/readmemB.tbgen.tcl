set moduleName readmemB
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {readmemB}
set C_modelType { void 0 }
set C_modelArgList {
	{ req_strm_V int 32 regular {fifo 0 volatile }  }
	{ out_strm_V int 32 regular {fifo 1 volatile }  }
	{ tb int 32 regular {array 10 { 3 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "req_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tb", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ req_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ req_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ req_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ out_strm_V_din sc_out sc_lv 32 signal 1 } 
	{ out_strm_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_strm_V_write sc_out sc_logic 1 signal 1 } 
	{ tb_address1 sc_out sc_lv 4 signal 2 } 
	{ tb_ce1 sc_out sc_logic 1 signal 2 } 
	{ tb_q1 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "req_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "req_strm_V", "role": "dout" }} , 
 	{ "name": "req_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "req_strm_V", "role": "empty_n" }} , 
 	{ "name": "req_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "req_strm_V", "role": "read" }} , 
 	{ "name": "out_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_strm_V", "role": "din" }} , 
 	{ "name": "out_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "full_n" }} , 
 	{ "name": "out_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "write" }} , 
 	{ "name": "tb_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb", "role": "address1" }} , 
 	{ "name": "tb_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "ce1" }} , 
 	{ "name": "tb_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "readmemB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "10",
		"VariableLatency" : "0", "ExactLatency" : "10", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "10",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "req_strm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "req_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	readmemB {
		req_strm_V {Type I LastRead 9 FirstWrite -1}
		out_strm_V {Type O LastRead -1 FirstWrite 10}
		tb {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "10"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	req_strm_V { ap_fifo {  { req_strm_V_dout fifo_data 0 32 }  { req_strm_V_empty_n fifo_status 0 1 }  { req_strm_V_read fifo_update 1 1 } } }
	out_strm_V { ap_fifo {  { out_strm_V_din fifo_data 1 32 }  { out_strm_V_full_n fifo_status 0 1 }  { out_strm_V_write fifo_update 1 1 } } }
	tb { ap_memory {  { tb_address1 MemPortADDR2 1 4 }  { tb_ce1 MemPortCE2 1 1 }  { tb_q1 MemPortDOUT2 0 32 } } }
}
