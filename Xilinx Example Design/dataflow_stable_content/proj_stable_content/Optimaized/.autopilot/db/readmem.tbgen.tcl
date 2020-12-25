set moduleName readmem
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 1
set pipeline_type dataflow
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
	{ tb int 32 regular {array 10 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "tb", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ in_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ in_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ out_strm_V_din sc_out sc_lv 32 signal 1 } 
	{ out_strm_V_full_n sc_in sc_logic 1 signal 1 } 
	{ out_strm_V_write sc_out sc_logic 1 signal 1 } 
	{ tb_address0 sc_out sc_lv 4 signal 2 } 
	{ tb_ce0 sc_out sc_logic 1 signal 2 } 
	{ tb_d0 sc_out sc_lv 32 signal 2 } 
	{ tb_q0 sc_in sc_lv 32 signal 2 } 
	{ tb_we0 sc_out sc_logic 1 signal 2 } 
	{ tb_address1 sc_out sc_lv 4 signal 2 } 
	{ tb_ce1 sc_out sc_logic 1 signal 2 } 
	{ tb_d1 sc_out sc_lv 32 signal 2 } 
	{ tb_q1 sc_in sc_lv 32 signal 2 } 
	{ tb_we1 sc_out sc_logic 1 signal 2 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "in_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in_strm_V", "role": "dout" }} , 
 	{ "name": "in_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_strm_V", "role": "empty_n" }} , 
 	{ "name": "in_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in_strm_V", "role": "read" }} , 
 	{ "name": "out_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_strm_V", "role": "din" }} , 
 	{ "name": "out_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "full_n" }} , 
 	{ "name": "out_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "write" }} , 
 	{ "name": "tb_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb", "role": "address0" }} , 
 	{ "name": "tb_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "ce0" }} , 
 	{ "name": "tb_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "d0" }} , 
 	{ "name": "tb_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "q0" }} , 
 	{ "name": "tb_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "we0" }} , 
 	{ "name": "tb_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "tb", "role": "address1" }} , 
 	{ "name": "tb_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "ce1" }} , 
 	{ "name": "tb_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "d1" }} , 
 	{ "name": "tb_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "tb", "role": "q1" }} , 
 	{ "name": "tb_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tb", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "readmem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "22", "EstimateLatencyMax" : "22",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "1", "Name" : "readmemA_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "readmemB_U0"}],
		"Port" : [
			{"Name" : "in_strm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "readmemA_U0", "Port" : "in_strm_V"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "readmemB_U0", "Port" : "out_strm_V"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "readmemB_U0", "Port" : "tb"},
					{"ID" : "1", "SubInstance" : "readmemA_U0", "Port" : "tb"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.readmemA_U0", "Parent" : "0",
		"CDFG" : "readmemA",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "10",
		"VariableLatency" : "0", "ExactLatency" : "11", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_strm_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "req_strm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "req_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.readmemB_U0", "Parent" : "0",
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
		"StartSource" : "1",
		"StartFifo" : "start_for_readmembkb_U",
		"Port" : [
			{"Name" : "req_strm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "3",
				"BlockSignal" : [
					{"Name" : "req_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.req_strm_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.start_for_readmembkb_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	readmem {
		in_strm_V {Type I LastRead 9 FirstWrite -1}
		out_strm_V {Type O LastRead -1 FirstWrite 10}
		tb {Type I LastRead 9 FirstWrite -1}}
	readmemA {
		in_strm_V {Type I LastRead 9 FirstWrite -1}
		req_strm_V {Type O LastRead -1 FirstWrite 2}
		tb {Type I LastRead 9 FirstWrite -1}}
	readmemB {
		req_strm_V {Type I LastRead 9 FirstWrite -1}
		out_strm_V {Type O LastRead -1 FirstWrite 10}
		tb {Type I LastRead 9 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "22", "Max" : "22"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "10"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in_strm_V { ap_fifo {  { in_strm_V_dout fifo_data 0 32 }  { in_strm_V_empty_n fifo_status 0 1 }  { in_strm_V_read fifo_update 1 1 } } }
	out_strm_V { ap_fifo {  { out_strm_V_din fifo_data 1 32 }  { out_strm_V_full_n fifo_status 0 1 }  { out_strm_V_write fifo_update 1 1 } } }
	tb { ap_memory {  { tb_address0 mem_address 1 4 }  { tb_ce0 mem_ce 1 1 }  { tb_d0 mem_din 1 32 }  { tb_q0 mem_dout 0 32 }  { tb_we0 mem_we 1 1 }  { tb_address1 MemPortADDR2 1 4 }  { tb_ce1 MemPortCE2 1 1 }  { tb_d1 mem_din 1 32 }  { tb_q1 MemPortDOUT2 0 32 }  { tb_we1 mem_we 1 1 } } }
}
