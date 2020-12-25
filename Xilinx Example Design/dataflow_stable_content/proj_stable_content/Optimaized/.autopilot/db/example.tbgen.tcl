set moduleName example
set isTopModule 1
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
set C_modelName {example}
set C_modelType { void 0 }
set C_modelArgList {
	{ in1_strm_V int 32 regular {fifo 0 volatile }  }
	{ in2_strm_V int 32 regular {fifo 0 volatile }  }
	{ out_strm_V int 32 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in1_strm.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "in2_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "in2_strm.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "out_strm_V", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "out_strm.V","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_strm_V_dout sc_in sc_lv 32 signal 0 } 
	{ in1_strm_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ in1_strm_V_read sc_out sc_logic 1 signal 0 } 
	{ in2_strm_V_dout sc_in sc_lv 32 signal 1 } 
	{ in2_strm_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ in2_strm_V_read sc_out sc_logic 1 signal 1 } 
	{ out_strm_V_din sc_out sc_lv 32 signal 2 } 
	{ out_strm_V_full_n sc_in sc_logic 1 signal 2 } 
	{ out_strm_V_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in1_strm_V", "role": "dout" }} , 
 	{ "name": "in1_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_strm_V", "role": "empty_n" }} , 
 	{ "name": "in1_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in1_strm_V", "role": "read" }} , 
 	{ "name": "in2_strm_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "in2_strm_V", "role": "dout" }} , 
 	{ "name": "in2_strm_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_strm_V", "role": "empty_n" }} , 
 	{ "name": "in2_strm_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "in2_strm_V", "role": "read" }} , 
 	{ "name": "out_strm_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_strm_V", "role": "din" }} , 
 	{ "name": "out_strm_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "full_n" }} , 
 	{ "name": "out_strm_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_strm_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "example",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "35", "EstimateLatencyMax" : "35",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readmem_fu_99"}],
		"Port" : [
			{"Name" : "in1_strm_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "in1_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "in2_strm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_readmem_fu_99", "Port" : "in_strm_V"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_readmem_fu_99", "Port" : "out_strm_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tb_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readmem_fu_99", "Parent" : "0", "Child" : ["3", "4", "5", "6"],
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
			{"ID" : "3", "Name" : "readmemA_U0"}],
		"OutputProcess" : [
			{"ID" : "4", "Name" : "readmemB_U0"}],
		"Port" : [
			{"Name" : "in_strm_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "readmemA_U0", "Port" : "in_strm_V"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "readmemB_U0", "Port" : "out_strm_V"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "readmemB_U0", "Port" : "tb"},
					{"ID" : "3", "SubInstance" : "readmemA_U0", "Port" : "tb"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_readmem_fu_99.readmemA_U0", "Parent" : "2",
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
			{"Name" : "req_strm_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "4", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "req_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_readmem_fu_99.readmemB_U0", "Parent" : "2",
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
		"StartSource" : "3",
		"StartFifo" : "start_for_readmembkb_U",
		"Port" : [
			{"Name" : "req_strm_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "3", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "req_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "out_strm_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "out_strm_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "tb", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_readmem_fu_99.req_strm_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_readmem_fu_99.start_for_readmembkb_U", "Parent" : "2"}]}


set ArgLastReadFirstWriteLatency {
	example {
		in1_strm_V {Type I LastRead 2 FirstWrite -1}
		in2_strm_V {Type I LastRead 9 FirstWrite -1}
		out_strm_V {Type O LastRead -1 FirstWrite 10}}
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
	{"Name" : "Latency", "Min" : "35", "Max" : "35"}
	, {"Name" : "Interval", "Min" : "36", "Max" : "36"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	in1_strm_V { ap_fifo {  { in1_strm_V_dout fifo_data 0 32 }  { in1_strm_V_empty_n fifo_status 0 1 }  { in1_strm_V_read fifo_update 1 1 } } }
	in2_strm_V { ap_fifo {  { in2_strm_V_dout fifo_data 0 32 }  { in2_strm_V_empty_n fifo_status 0 1 }  { in2_strm_V_read fifo_update 1 1 } } }
	out_strm_V { ap_fifo {  { out_strm_V_din fifo_data 1 32 }  { out_strm_V_full_n fifo_status 0 1 }  { out_strm_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	in1_strm_V { fifo_read 10 no_conditional }
	in2_strm_V { fifo_read 1 no_conditional }
	out_strm_V { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
