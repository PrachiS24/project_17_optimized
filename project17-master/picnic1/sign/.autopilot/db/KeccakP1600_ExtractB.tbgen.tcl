set moduleName KeccakP1600_ExtractB
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
set C_modelName {KeccakP1600_ExtractB}
set C_modelType { void 0 }
set C_modelArgList {
	{ state int 8 regular {array 200 { 1 3 } 1 1 }  }
	{ data_0 int 8 regular {array 36 { 0 3 } 0 1 }  }
	{ data_1 int 8 regular {array 36 { 0 3 } 0 1 }  }
	{ data_2 int 8 regular {array 36 { 0 3 } 0 1 }  }
	{ data_3 int 8 regular {array 36 { 0 3 } 0 1 }  }
	{ data_offset int 64 regular  }
	{ offset int 32 regular  }
	{ length_r int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "state", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "data_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "data_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "offset", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "length_r", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ state_address0 sc_out sc_lv 8 signal 0 } 
	{ state_ce0 sc_out sc_logic 1 signal 0 } 
	{ state_q0 sc_in sc_lv 8 signal 0 } 
	{ data_0_address0 sc_out sc_lv 6 signal 1 } 
	{ data_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ data_0_we0 sc_out sc_logic 1 signal 1 } 
	{ data_0_d0 sc_out sc_lv 8 signal 1 } 
	{ data_1_address0 sc_out sc_lv 6 signal 2 } 
	{ data_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ data_1_we0 sc_out sc_logic 1 signal 2 } 
	{ data_1_d0 sc_out sc_lv 8 signal 2 } 
	{ data_2_address0 sc_out sc_lv 6 signal 3 } 
	{ data_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ data_2_we0 sc_out sc_logic 1 signal 3 } 
	{ data_2_d0 sc_out sc_lv 8 signal 3 } 
	{ data_3_address0 sc_out sc_lv 6 signal 4 } 
	{ data_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ data_3_we0 sc_out sc_logic 1 signal 4 } 
	{ data_3_d0 sc_out sc_lv 8 signal 4 } 
	{ data_offset sc_in sc_lv 64 signal 5 } 
	{ offset sc_in sc_lv 32 signal 6 } 
	{ length_r sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "state_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "address0" }} , 
 	{ "name": "state_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "state", "role": "ce0" }} , 
 	{ "name": "state_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "state", "role": "q0" }} , 
 	{ "name": "data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_0", "role": "address0" }} , 
 	{ "name": "data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "ce0" }} , 
 	{ "name": "data_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_0", "role": "we0" }} , 
 	{ "name": "data_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_0", "role": "d0" }} , 
 	{ "name": "data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_1", "role": "address0" }} , 
 	{ "name": "data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_1", "role": "ce0" }} , 
 	{ "name": "data_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_1", "role": "we0" }} , 
 	{ "name": "data_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_1", "role": "d0" }} , 
 	{ "name": "data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_2", "role": "address0" }} , 
 	{ "name": "data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_2", "role": "ce0" }} , 
 	{ "name": "data_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_2", "role": "we0" }} , 
 	{ "name": "data_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_2", "role": "d0" }} , 
 	{ "name": "data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "data_3", "role": "address0" }} , 
 	{ "name": "data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_3", "role": "ce0" }} , 
 	{ "name": "data_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_3", "role": "we0" }} , 
 	{ "name": "data_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data_3", "role": "d0" }} , 
 	{ "name": "data_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_offset", "role": "default" }} , 
 	{ "name": "offset", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "offset", "role": "default" }} , 
 	{ "name": "length_r", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "length_r", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "KeccakP1600_ExtractB",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "length_r", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_wdI_U44", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mul_6xdS_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	KeccakP1600_ExtractB {
		state {Type I LastRead 1 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 68}
		data_1 {Type O LastRead -1 FirstWrite 68}
		data_2 {Type O LastRead -1 FirstWrite 68}
		data_3 {Type O LastRead -1 FirstWrite 68}
		data_offset {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	state { ap_memory {  { state_address0 mem_address 1 8 }  { state_ce0 mem_ce 1 1 }  { state_q0 mem_dout 0 8 } } }
	data_0 { ap_memory {  { data_0_address0 mem_address 1 6 }  { data_0_ce0 mem_ce 1 1 }  { data_0_we0 mem_we 1 1 }  { data_0_d0 mem_din 1 8 } } }
	data_1 { ap_memory {  { data_1_address0 mem_address 1 6 }  { data_1_ce0 mem_ce 1 1 }  { data_1_we0 mem_we 1 1 }  { data_1_d0 mem_din 1 8 } } }
	data_2 { ap_memory {  { data_2_address0 mem_address 1 6 }  { data_2_ce0 mem_ce 1 1 }  { data_2_we0 mem_we 1 1 }  { data_2_d0 mem_din 1 8 } } }
	data_3 { ap_memory {  { data_3_address0 mem_address 1 6 }  { data_3_ce0 mem_ce 1 1 }  { data_3_we0 mem_we 1 1 }  { data_3_d0 mem_din 1 8 } } }
	data_offset { ap_none {  { data_offset in_data 0 64 } } }
	offset { ap_none {  { offset in_data 0 32 } } }
	length_r { ap_none {  { length_r in_data 0 32 } } }
}
