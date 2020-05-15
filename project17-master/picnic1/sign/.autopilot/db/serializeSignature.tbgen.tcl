set moduleName serializeSignature
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
set C_modelName {serializeSignature}
set C_modelType { int 16 }
set C_modelArgList {
	{ sig_0_proofs_seed1 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ sig_0_proofs_seed2 int 8 regular {array 3504 { 1 3 } 1 1 }  }
	{ sig_0_proofs_inputS int 32 regular {array 876 { 1 3 } 1 1 }  }
	{ sig_0_proofs_commun int 8 regular {array 16425 { 1 3 } 1 1 }  }
	{ sig_0_proofs_view3C int 8 regular {array 7008 { 1 3 } 1 1 }  }
	{ sig_0_challengeBits int 8 regular {array 55 { 1 3 } 1 1 }  }
	{ sig_0_salt int 8 regular {array 32 { 1 3 } 1 1 }  }
	{ sigBytes int 8 regular {array 37336 { 0 3 } 0 1 }  }
	{ sigBytes_offset int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sig_0_proofs_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_inputS", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_commun", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_view3C", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_salt", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sigBytes", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sigBytes_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sig_0_proofs_seed1_address0 sc_out sc_lv 12 signal 0 } 
	{ sig_0_proofs_seed1_ce0 sc_out sc_logic 1 signal 0 } 
	{ sig_0_proofs_seed1_q0 sc_in sc_lv 8 signal 0 } 
	{ sig_0_proofs_seed2_address0 sc_out sc_lv 12 signal 1 } 
	{ sig_0_proofs_seed2_ce0 sc_out sc_logic 1 signal 1 } 
	{ sig_0_proofs_seed2_q0 sc_in sc_lv 8 signal 1 } 
	{ sig_0_proofs_inputS_address0 sc_out sc_lv 10 signal 2 } 
	{ sig_0_proofs_inputS_ce0 sc_out sc_logic 1 signal 2 } 
	{ sig_0_proofs_inputS_q0 sc_in sc_lv 32 signal 2 } 
	{ sig_0_proofs_commun_address0 sc_out sc_lv 15 signal 3 } 
	{ sig_0_proofs_commun_ce0 sc_out sc_logic 1 signal 3 } 
	{ sig_0_proofs_commun_q0 sc_in sc_lv 8 signal 3 } 
	{ sig_0_proofs_view3C_address0 sc_out sc_lv 13 signal 4 } 
	{ sig_0_proofs_view3C_ce0 sc_out sc_logic 1 signal 4 } 
	{ sig_0_proofs_view3C_q0 sc_in sc_lv 8 signal 4 } 
	{ sig_0_challengeBits_address0 sc_out sc_lv 6 signal 5 } 
	{ sig_0_challengeBits_ce0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_challengeBits_q0 sc_in sc_lv 8 signal 5 } 
	{ sig_0_salt_address0 sc_out sc_lv 5 signal 6 } 
	{ sig_0_salt_ce0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_salt_q0 sc_in sc_lv 8 signal 6 } 
	{ sigBytes_address0 sc_out sc_lv 16 signal 7 } 
	{ sigBytes_ce0 sc_out sc_logic 1 signal 7 } 
	{ sigBytes_we0 sc_out sc_logic 1 signal 7 } 
	{ sigBytes_d0 sc_out sc_lv 8 signal 7 } 
	{ sigBytes_offset sc_in sc_lv 64 signal 8 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sig_0_proofs_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "q0" }} , 
 	{ "name": "sig_0_proofs_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "q0" }} , 
 	{ "name": "sig_0_proofs_inputS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_inputS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_inputS_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "q0" }} , 
 	{ "name": "sig_0_proofs_commun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_commun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_commun_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "q0" }} , 
 	{ "name": "sig_0_proofs_view3C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_view3C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_view3C_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "q0" }} , 
 	{ "name": "sig_0_challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "address0" }} , 
 	{ "name": "sig_0_challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "ce0" }} , 
 	{ "name": "sig_0_challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "q0" }} , 
 	{ "name": "sig_0_salt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "address0" }} , 
 	{ "name": "sig_0_salt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "ce0" }} , 
 	{ "name": "sig_0_salt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "q0" }} , 
 	{ "name": "sigBytes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sigBytes", "role": "address0" }} , 
 	{ "name": "sigBytes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigBytes", "role": "ce0" }} , 
 	{ "name": "sigBytes_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sigBytes", "role": "we0" }} , 
 	{ "name": "sigBytes_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sigBytes", "role": "d0" }} , 
 	{ "name": "sigBytes_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "sigBytes_offset", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "serializeSignature",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "62592", "EstimateLatencyMax" : "67191",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sigBytes", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sigBytes_offset", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	serializeSignature {
		sig_0_proofs_seed1 {Type I LastRead 7 FirstWrite -1}
		sig_0_proofs_seed2 {Type I LastRead 8 FirstWrite -1}
		sig_0_proofs_inputS {Type I LastRead 9 FirstWrite -1}
		sig_0_proofs_commun {Type I LastRead 6 FirstWrite -1}
		sig_0_proofs_view3C {Type I LastRead 5 FirstWrite -1}
		sig_0_challengeBits {Type I LastRead 3 FirstWrite -1}
		sig_0_salt {Type I LastRead 2 FirstWrite -1}
		sigBytes {Type O LastRead -1 FirstWrite 2}
		sigBytes_offset {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "62592", "Max" : "67191"}
	, {"Name" : "Interval", "Min" : "62592", "Max" : "67191"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sig_0_proofs_seed1 { ap_memory {  { sig_0_proofs_seed1_address0 mem_address 1 12 }  { sig_0_proofs_seed1_ce0 mem_ce 1 1 }  { sig_0_proofs_seed1_q0 mem_dout 0 8 } } }
	sig_0_proofs_seed2 { ap_memory {  { sig_0_proofs_seed2_address0 mem_address 1 12 }  { sig_0_proofs_seed2_ce0 mem_ce 1 1 }  { sig_0_proofs_seed2_q0 mem_dout 0 8 } } }
	sig_0_proofs_inputS { ap_memory {  { sig_0_proofs_inputS_address0 mem_address 1 10 }  { sig_0_proofs_inputS_ce0 mem_ce 1 1 }  { sig_0_proofs_inputS_q0 mem_dout 0 32 } } }
	sig_0_proofs_commun { ap_memory {  { sig_0_proofs_commun_address0 mem_address 1 15 }  { sig_0_proofs_commun_ce0 mem_ce 1 1 }  { sig_0_proofs_commun_q0 mem_dout 0 8 } } }
	sig_0_proofs_view3C { ap_memory {  { sig_0_proofs_view3C_address0 mem_address 1 13 }  { sig_0_proofs_view3C_ce0 mem_ce 1 1 }  { sig_0_proofs_view3C_q0 mem_dout 0 8 } } }
	sig_0_challengeBits { ap_memory {  { sig_0_challengeBits_address0 mem_address 1 6 }  { sig_0_challengeBits_ce0 mem_ce 1 1 }  { sig_0_challengeBits_q0 mem_dout 0 8 } } }
	sig_0_salt { ap_memory {  { sig_0_salt_address0 mem_address 1 5 }  { sig_0_salt_ce0 mem_ce 1 1 }  { sig_0_salt_q0 mem_dout 0 8 } } }
	sigBytes { ap_memory {  { sigBytes_address0 mem_address 1 16 }  { sigBytes_ce0 mem_ce 1 1 }  { sigBytes_we0 mem_we 1 1 }  { sigBytes_d0 mem_din 1 8 } } }
	sigBytes_offset { ap_none {  { sigBytes_offset in_data 0 64 } } }
}
