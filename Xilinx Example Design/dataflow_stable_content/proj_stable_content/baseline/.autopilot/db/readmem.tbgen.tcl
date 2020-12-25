set moduleName readmem
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {readmem}
set C_modelType { void 0 }
set C_modelArgList {
	{ in_strm_V int 32 regular {fifo 0 volatile }  }
	{ out_strm_V int 32 regular {fifo 1 volatile }  }
	{ tb int 32 regular {array 10 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tb", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ in_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ out_strm_V_din sc_out sc_lv 32 signal 1 } 
	{ out_strm_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_strm_V_write sc_out sc_logic 1 signal 1 } 
	{ tb_address0 sc_out sc_lv 4 signal 2 } 
	{ tb_ce0 sc_out sc_logic 1 signal 2 } 
	{ tb_q0 sc_in sc_lv 32 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_strm_V", "role": "dout" }} , 
 	{ "name": "in_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_strm_V", "role": "empty_n" }} , 
 	{ "name": "in_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_strm_V", "role": "read" }} , 
 	{ "name": "out_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_strm_V", "role": "din" }} , 
 	{ "name": "out_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "full_n" }} , 
 	{ "name": "out_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "write" }} , 
 	{ "name": "tb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb", "role": "address0" }} , 
 	{ "name": "tb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "ce0" }} , 
 	{ "name": "tb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "readmem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "42", "EstimateLatencyMax" : "42",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_strm_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.req_strm_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	readmem {
		in_strm_V {Type I LastRead 1 FirstWrite -1}
		out_strm_V {Type O LastRead -1 FirstWrite 2}
		tb {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "42", "Max" : "42"}
	, {"Name" : "Interval", "Min" : "42", "Max" : "42"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_strm_V { ap_fifo {  { in_strm_V_dout fifo_data 0 32 }  { in_strm_V_empty_n fifo_status 0 1 }  { in_strm_V_read fifo_update 1 1 } } }
	out_strm_V { ap_fifo {  { out_strm_V_din fifo_data 1 32 }  { out_strm_V_full_n fifo_status 0 1 }  { out_strm_V_write fifo_update 1 1 } } }
	tb { ap_memory {  { tb_address0 mem_address 1 4 }  { tb_ce0 mem_ce 1 1 }  { tb_q0 mem_dout 0 32 } } }
}
