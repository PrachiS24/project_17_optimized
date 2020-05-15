set moduleName prove_25
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
set C_modelName {prove_25}
set C_modelType { void 0 }
set C_modelArgList {
	{ proof_0_seed1 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ proof_seed1_offset1 int 8 regular  }
	{ proof_0_seed2 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ proof_0_inputShare int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ proof_0_communicatedBits int 8 regular {array 16425 { 0 3 } 0 1 }  }
	{ proof_0_view3Commitment int 8 regular {array 7008 { 0 3 } 0 1 }  }
	{ challenge int 2 regular  }
	{ seeds_seed int 8 regular {array 10512 { 1 3 } 1 1 }  }
	{ views_inputShare int 32 regular {array 2628 { 1 3 } 1 1 }  }
	{ views_communicatedBits int 8 regular {array 49275 { 1 3 } 1 1 }  }
	{ commitments_hashes int 8 regular {array 21024 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "proof_0_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_seed1_offset1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "proof_0_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_0_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_0_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "proof_0_view3Commitment", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "challenge", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "seeds_seed", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "views_inputShare", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "views_communicatedBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "commitments_hashes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ proof_0_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ proof_0_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_we0 sc_out sc_logic 1 signal 0 } 
	{ proof_0_seed1_d0 sc_out sc_lv 8 signal 0 } 
	{ proof_seed1_offset1 sc_in sc_lv 8 signal 1 } 
	{ proof_0_seed2_address0 sc_out sc_lv 12 signal 2 } 
	{ proof_0_seed2_ce0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_we0 sc_out sc_logic 1 signal 2 } 
	{ proof_0_seed2_d0 sc_out sc_lv 8 signal 2 } 
	{ proof_0_inputShare_address0 sc_out sc_lv 10 signal 3 } 
	{ proof_0_inputShare_ce0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_we0 sc_out sc_logic 1 signal 3 } 
	{ proof_0_inputShare_d0 sc_out sc_lv 32 signal 3 } 
	{ proof_0_communicatedBits_address0 sc_out sc_lv 15 signal 4 } 
	{ proof_0_communicatedBits_ce0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_we0 sc_out sc_logic 1 signal 4 } 
	{ proof_0_communicatedBits_d0 sc_out sc_lv 8 signal 4 } 
	{ proof_0_view3Commitment_address0 sc_out sc_lv 13 signal 5 } 
	{ proof_0_view3Commitment_ce0 sc_out sc_logic 1 signal 5 } 
	{ proof_0_view3Commitment_we0 sc_out sc_logic 1 signal 5 } 
	{ proof_0_view3Commitment_d0 sc_out sc_lv 8 signal 5 } 
	{ challenge sc_in sc_lv 2 signal 6 } 
	{ seeds_seed_address0 sc_out sc_lv 14 signal 7 } 
	{ seeds_seed_ce0 sc_out sc_logic 1 signal 7 } 
	{ seeds_seed_q0 sc_in sc_lv 8 signal 7 } 
	{ views_inputShare_address0 sc_out sc_lv 12 signal 8 } 
	{ views_inputShare_ce0 sc_out sc_logic 1 signal 8 } 
	{ views_inputShare_q0 sc_in sc_lv 32 signal 8 } 
	{ views_communicatedBits_address0 sc_out sc_lv 16 signal 9 } 
	{ views_communicatedBits_ce0 sc_out sc_logic 1 signal 9 } 
	{ views_communicatedBits_q0 sc_in sc_lv 8 signal 9 } 
	{ commitments_hashes_address0 sc_out sc_lv 15 signal 10 } 
	{ commitments_hashes_ce0 sc_out sc_logic 1 signal 10 } 
	{ commitments_hashes_q0 sc_in sc_lv 8 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "proof_0_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "address0" }} , 
 	{ "name": "proof_0_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "ce0" }} , 
 	{ "name": "proof_0_seed1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "we0" }} , 
 	{ "name": "proof_0_seed1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed1", "role": "d0" }} , 
 	{ "name": "proof_seed1_offset1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_seed1_offset1", "role": "default" }} , 
 	{ "name": "proof_0_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "address0" }} , 
 	{ "name": "proof_0_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "ce0" }} , 
 	{ "name": "proof_0_seed2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "we0" }} , 
 	{ "name": "proof_0_seed2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_seed2", "role": "d0" }} , 
 	{ "name": "proof_0_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "address0" }} , 
 	{ "name": "proof_0_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "ce0" }} , 
 	{ "name": "proof_0_inputShare_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "we0" }} , 
 	{ "name": "proof_0_inputShare_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "proof_0_inputShare", "role": "d0" }} , 
 	{ "name": "proof_0_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "address0" }} , 
 	{ "name": "proof_0_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "ce0" }} , 
 	{ "name": "proof_0_communicatedBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "we0" }} , 
 	{ "name": "proof_0_communicatedBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_communicatedBits", "role": "d0" }} , 
 	{ "name": "proof_0_view3Commitment_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "proof_0_view3Commitment", "role": "address0" }} , 
 	{ "name": "proof_0_view3Commitment_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_view3Commitment", "role": "ce0" }} , 
 	{ "name": "proof_0_view3Commitment_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "proof_0_view3Commitment", "role": "we0" }} , 
 	{ "name": "proof_0_view3Commitment_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "proof_0_view3Commitment", "role": "d0" }} , 
 	{ "name": "challenge", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "challenge", "role": "default" }} , 
 	{ "name": "seeds_seed_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "seeds_seed", "role": "address0" }} , 
 	{ "name": "seeds_seed_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds_seed", "role": "ce0" }} , 
 	{ "name": "seeds_seed_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds_seed", "role": "q0" }} , 
 	{ "name": "views_inputShare_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "views_inputShare", "role": "address0" }} , 
 	{ "name": "views_inputShare_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "views_inputShare", "role": "ce0" }} , 
 	{ "name": "views_inputShare_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "views_inputShare", "role": "q0" }} , 
 	{ "name": "views_communicatedBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "views_communicatedBits", "role": "address0" }} , 
 	{ "name": "views_communicatedBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "views_communicatedBits", "role": "ce0" }} , 
 	{ "name": "views_communicatedBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "views_communicatedBits", "role": "q0" }} , 
 	{ "name": "commitments_hashes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "commitments_hashes", "role": "address0" }} , 
 	{ "name": "commitments_hashes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "commitments_hashes", "role": "ce0" }} , 
 	{ "name": "commitments_hashes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "commitments_hashes", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "prove_25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "284", "EstimateLatencyMax" : "292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "proof_0_seed1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_seed1_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "proof_0_seed2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_inputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_communicatedBits", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "proof_0_view3Commitment", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "challenge", "Type" : "None", "Direction" : "I"},
			{"Name" : "seeds_seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "views_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "commitments_hashes", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mul_mbdk_U174", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	prove_25 {
		proof_0_seed1 {Type O LastRead -1 FirstWrite 2}
		proof_seed1_offset1 {Type I LastRead 0 FirstWrite -1}
		proof_0_seed2 {Type O LastRead -1 FirstWrite 3}
		proof_0_inputShare {Type O LastRead -1 FirstWrite 4}
		proof_0_communicatedBits {Type O LastRead -1 FirstWrite 6}
		proof_0_view3Commitment {Type O LastRead -1 FirstWrite 7}
		challenge {Type I LastRead 0 FirstWrite -1}
		seeds_seed {Type I LastRead 3 FirstWrite -1}
		views_inputShare {Type I LastRead 3 FirstWrite -1}
		views_communicatedBits {Type I LastRead 5 FirstWrite -1}
		commitments_hashes {Type I LastRead 6 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "284", "Max" : "292"}
	, {"Name" : "Interval", "Min" : "284", "Max" : "292"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	proof_0_seed1 { ap_memory {  { proof_0_seed1_address0 mem_address 1 12 }  { proof_0_seed1_ce0 mem_ce 1 1 }  { proof_0_seed1_we0 mem_we 1 1 }  { proof_0_seed1_d0 mem_din 1 8 } } }
	proof_seed1_offset1 { ap_none {  { proof_seed1_offset1 in_data 0 8 } } }
	proof_0_seed2 { ap_memory {  { proof_0_seed2_address0 mem_address 1 12 }  { proof_0_seed2_ce0 mem_ce 1 1 }  { proof_0_seed2_we0 mem_we 1 1 }  { proof_0_seed2_d0 mem_din 1 8 } } }
	proof_0_inputShare { ap_memory {  { proof_0_inputShare_address0 mem_address 1 10 }  { proof_0_inputShare_ce0 mem_ce 1 1 }  { proof_0_inputShare_we0 mem_we 1 1 }  { proof_0_inputShare_d0 mem_din 1 32 } } }
	proof_0_communicatedBits { ap_memory {  { proof_0_communicatedBits_address0 mem_address 1 15 }  { proof_0_communicatedBits_ce0 mem_ce 1 1 }  { proof_0_communicatedBits_we0 mem_we 1 1 }  { proof_0_communicatedBits_d0 mem_din 1 8 } } }
	proof_0_view3Commitment { ap_memory {  { proof_0_view3Commitment_address0 mem_address 1 13 }  { proof_0_view3Commitment_ce0 mem_ce 1 1 }  { proof_0_view3Commitment_we0 mem_we 1 1 }  { proof_0_view3Commitment_d0 mem_din 1 8 } } }
	challenge { ap_none {  { challenge in_data 0 2 } } }
	seeds_seed { ap_memory {  { seeds_seed_address0 mem_address 1 14 }  { seeds_seed_ce0 mem_ce 1 1 }  { seeds_seed_q0 mem_dout 0 8 } } }
	views_inputShare { ap_memory {  { views_inputShare_address0 mem_address 1 12 }  { views_inputShare_ce0 mem_ce 1 1 }  { views_inputShare_q0 mem_dout 0 32 } } }
	views_communicatedBits { ap_memory {  { views_communicatedBits_address0 mem_address 1 16 }  { views_communicatedBits_ce0 mem_ce 1 1 }  { views_communicatedBits_q0 mem_dout 0 8 } } }
	commitments_hashes { ap_memory {  { commitments_hashes_address0 mem_address 1 15 }  { commitments_hashes_ce0 mem_ce 1 1 }  { commitments_hashes_q0 mem_dout 0 8 } } }
}
