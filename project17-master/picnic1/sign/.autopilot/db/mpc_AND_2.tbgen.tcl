set moduleName mpc_AND_2
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
set C_modelName {mpc_AND_2}
set C_modelType { int 56 }
set C_modelArgList {
	{ in1_0_read int 8 regular  }
	{ in1_1_read int 8 regular  }
	{ in1_2_read int 8 regular  }
	{ in2_0_read int 8 regular  }
	{ in2_1_read int 8 regular  }
	{ in2_2_read int 8 regular  }
	{ out_0_read int 8 regular  }
	{ out_1_read int 8 regular  }
	{ out_2_read int 8 regular  }
	{ rand_tape int 8 regular {array 498 { 1 1 } 1 1 }  }
	{ rand_pos_read int 32 regular  }
	{ views_communicatedBi int 8 regular {array 49275 { 2 3 } 1 1 }  }
	{ views_communicatedBits_offset int 8 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in1_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in1_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in1_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "in2_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_0_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_1_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_2_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rand_tape", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "rand_pos_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "views_communicatedBi", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "views_communicatedBits_offset", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 56} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ in1_0_read sc_in sc_lv 8 signal 0 } 
	{ in1_1_read sc_in sc_lv 8 signal 1 } 
	{ in1_2_read sc_in sc_lv 8 signal 2 } 
	{ in2_0_read sc_in sc_lv 8 signal 3 } 
	{ in2_1_read sc_in sc_lv 8 signal 4 } 
	{ in2_2_read sc_in sc_lv 8 signal 5 } 
	{ out_0_read sc_in sc_lv 8 signal 6 } 
	{ out_1_read sc_in sc_lv 8 signal 7 } 
	{ out_2_read sc_in sc_lv 8 signal 8 } 
	{ rand_tape_address0 sc_out sc_lv 9 signal 9 } 
	{ rand_tape_ce0 sc_out sc_logic 1 signal 9 } 
	{ rand_tape_q0 sc_in sc_lv 8 signal 9 } 
	{ rand_tape_address1 sc_out sc_lv 9 signal 9 } 
	{ rand_tape_ce1 sc_out sc_logic 1 signal 9 } 
	{ rand_tape_q1 sc_in sc_lv 8 signal 9 } 
	{ rand_pos_read sc_in sc_lv 32 signal 10 } 
	{ views_communicatedBi_address0 sc_out sc_lv 16 signal 11 } 
	{ views_communicatedBi_ce0 sc_out sc_logic 1 signal 11 } 
	{ views_communicatedBi_we0 sc_out sc_logic 1 signal 11 } 
	{ views_communicatedBi_d0 sc_out sc_lv 8 signal 11 } 
	{ views_communicatedBi_q0 sc_in sc_lv 8 signal 11 } 
	{ views_communicatedBits_offset sc_in sc_lv 8 signal 12 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 8 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
	{ ap_return_3 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "in1_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1_0_read", "role": "default" }} , 
 	{ "name": "in1_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1_1_read", "role": "default" }} , 
 	{ "name": "in1_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in1_2_read", "role": "default" }} , 
 	{ "name": "in2_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2_0_read", "role": "default" }} , 
 	{ "name": "in2_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2_1_read", "role": "default" }} , 
 	{ "name": "in2_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "in2_2_read", "role": "default" }} , 
 	{ "name": "out_0_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_0_read", "role": "default" }} , 
 	{ "name": "out_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_1_read", "role": "default" }} , 
 	{ "name": "out_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "out_2_read", "role": "default" }} , 
 	{ "name": "rand_tape_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rand_tape", "role": "address0" }} , 
 	{ "name": "rand_tape_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rand_tape", "role": "ce0" }} , 
 	{ "name": "rand_tape_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rand_tape", "role": "q0" }} , 
 	{ "name": "rand_tape_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "rand_tape", "role": "address1" }} , 
 	{ "name": "rand_tape_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rand_tape", "role": "ce1" }} , 
 	{ "name": "rand_tape_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "rand_tape", "role": "q1" }} , 
 	{ "name": "rand_pos_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "rand_pos_read", "role": "default" }} , 
 	{ "name": "views_communicatedBi_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "views_communicatedBi", "role": "address0" }} , 
 	{ "name": "views_communicatedBi_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "views_communicatedBi", "role": "ce0" }} , 
 	{ "name": "views_communicatedBi_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "views_communicatedBi", "role": "we0" }} , 
 	{ "name": "views_communicatedBi_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "views_communicatedBi", "role": "d0" }} , 
 	{ "name": "views_communicatedBi_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "views_communicatedBi", "role": "q0" }} , 
 	{ "name": "views_communicatedBits_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "views_communicatedBits_offset", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7"],
		"CDFG" : "mpc_AND_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in1_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in1_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "in2_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_0_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "rand_tape", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "rand_pos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "views_communicatedBits_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U94", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U95", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U96", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U97", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U98", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_3VhK_U99", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mWhU_U100", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	mpc_AND_2 {
		in1_0_read {Type I LastRead 2 FirstWrite -1}
		in1_1_read {Type I LastRead 2 FirstWrite -1}
		in1_2_read {Type I LastRead 2 FirstWrite -1}
		in2_0_read {Type I LastRead 2 FirstWrite -1}
		in2_1_read {Type I LastRead 2 FirstWrite -1}
		in2_2_read {Type I LastRead 2 FirstWrite -1}
		out_0_read {Type I LastRead 2 FirstWrite -1}
		out_1_read {Type I LastRead 2 FirstWrite -1}
		out_2_read {Type I LastRead 2 FirstWrite -1}
		rand_tape {Type I LastRead 2 FirstWrite -1}
		rand_pos_read {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 4 FirstWrite 5}
		views_communicatedBits_offset {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "12"}
	, {"Name" : "Interval", "Min" : "12", "Max" : "12"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	in1_0_read { ap_none {  { in1_0_read in_data 0 8 } } }
	in1_1_read { ap_none {  { in1_1_read in_data 0 8 } } }
	in1_2_read { ap_none {  { in1_2_read in_data 0 8 } } }
	in2_0_read { ap_none {  { in2_0_read in_data 0 8 } } }
	in2_1_read { ap_none {  { in2_1_read in_data 0 8 } } }
	in2_2_read { ap_none {  { in2_2_read in_data 0 8 } } }
	out_0_read { ap_none {  { out_0_read in_data 0 8 } } }
	out_1_read { ap_none {  { out_1_read in_data 0 8 } } }
	out_2_read { ap_none {  { out_2_read in_data 0 8 } } }
	rand_tape { ap_memory {  { rand_tape_address0 mem_address 1 9 }  { rand_tape_ce0 mem_ce 1 1 }  { rand_tape_q0 mem_dout 0 8 }  { rand_tape_address1 MemPortADDR2 1 9 }  { rand_tape_ce1 MemPortCE2 1 1 }  { rand_tape_q1 MemPortDOUT2 0 8 } } }
	rand_pos_read { ap_none {  { rand_pos_read in_data 0 32 } } }
	views_communicatedBi { ap_memory {  { views_communicatedBi_address0 mem_address 1 16 }  { views_communicatedBi_ce0 mem_ce 1 1 }  { views_communicatedBi_we0 mem_we 1 1 }  { views_communicatedBi_d0 mem_din 1 8 }  { views_communicatedBi_q0 mem_dout 0 8 } } }
	views_communicatedBits_offset { ap_none {  { views_communicatedBits_offset in_data 0 8 } } }
}
