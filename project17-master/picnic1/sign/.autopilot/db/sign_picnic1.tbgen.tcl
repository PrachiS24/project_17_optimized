set moduleName sign_picnic1
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
set C_modelName {sign_picnic1}
set C_modelType { int 1 }
set C_modelArgList {
	{ privateKey int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ pubKey int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ plaintext int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ messageByteLength int 64 regular  }
	{ sig_0_proofs_seed1 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_seed2 int 8 regular {array 3504 { 0 3 } 0 1 }  }
	{ sig_0_proofs_inputS int 32 regular {array 876 { 0 3 } 0 1 }  }
	{ sig_0_proofs_commun int 8 regular {array 16425 { 0 3 } 0 1 }  }
	{ sig_0_proofs_view3C int 8 regular {array 7008 { 0 3 } 0 1 }  }
	{ sig_0_challengeBits int 8 regular {array 55 { 2 3 } 1 1 }  }
	{ sig_0_salt int 8 regular {array 32 { 2 3 } 1 1 }  }
	{ viewOutputs int 32 regular {array 10512 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "privateKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "pubKey", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "plaintext", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "messageByteLength", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "sig_0_proofs_seed1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_seed2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_inputS", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_commun", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_proofs_view3C", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sig_0_challengeBits", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "sig_0_salt", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ privateKey_address0 sc_out sc_lv 3 signal 0 } 
	{ privateKey_ce0 sc_out sc_logic 1 signal 0 } 
	{ privateKey_q0 sc_in sc_lv 32 signal 0 } 
	{ pubKey_address0 sc_out sc_lv 3 signal 1 } 
	{ pubKey_ce0 sc_out sc_logic 1 signal 1 } 
	{ pubKey_q0 sc_in sc_lv 32 signal 1 } 
	{ plaintext_address0 sc_out sc_lv 3 signal 2 } 
	{ plaintext_ce0 sc_out sc_logic 1 signal 2 } 
	{ plaintext_q0 sc_in sc_lv 32 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ messageByteLength sc_in sc_lv 64 signal 4 } 
	{ sig_0_proofs_seed1_address0 sc_out sc_lv 12 signal 5 } 
	{ sig_0_proofs_seed1_ce0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_we0 sc_out sc_logic 1 signal 5 } 
	{ sig_0_proofs_seed1_d0 sc_out sc_lv 8 signal 5 } 
	{ sig_0_proofs_seed2_address0 sc_out sc_lv 12 signal 6 } 
	{ sig_0_proofs_seed2_ce0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_we0 sc_out sc_logic 1 signal 6 } 
	{ sig_0_proofs_seed2_d0 sc_out sc_lv 8 signal 6 } 
	{ sig_0_proofs_inputS_address0 sc_out sc_lv 10 signal 7 } 
	{ sig_0_proofs_inputS_ce0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_we0 sc_out sc_logic 1 signal 7 } 
	{ sig_0_proofs_inputS_d0 sc_out sc_lv 32 signal 7 } 
	{ sig_0_proofs_commun_address0 sc_out sc_lv 15 signal 8 } 
	{ sig_0_proofs_commun_ce0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_we0 sc_out sc_logic 1 signal 8 } 
	{ sig_0_proofs_commun_d0 sc_out sc_lv 8 signal 8 } 
	{ sig_0_proofs_view3C_address0 sc_out sc_lv 13 signal 9 } 
	{ sig_0_proofs_view3C_ce0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_we0 sc_out sc_logic 1 signal 9 } 
	{ sig_0_proofs_view3C_d0 sc_out sc_lv 8 signal 9 } 
	{ sig_0_challengeBits_address0 sc_out sc_lv 6 signal 10 } 
	{ sig_0_challengeBits_ce0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_we0 sc_out sc_logic 1 signal 10 } 
	{ sig_0_challengeBits_d0 sc_out sc_lv 8 signal 10 } 
	{ sig_0_challengeBits_q0 sc_in sc_lv 8 signal 10 } 
	{ sig_0_salt_address0 sc_out sc_lv 5 signal 11 } 
	{ sig_0_salt_ce0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_we0 sc_out sc_logic 1 signal 11 } 
	{ sig_0_salt_d0 sc_out sc_lv 8 signal 11 } 
	{ sig_0_salt_q0 sc_in sc_lv 8 signal 11 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 12 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 12 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 12 } 
	{ viewOutputs_address1 sc_out sc_lv 14 signal 12 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 12 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 12 } 
	{ ap_return sc_out sc_lv 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "privateKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "privateKey", "role": "address0" }} , 
 	{ "name": "privateKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "privateKey", "role": "ce0" }} , 
 	{ "name": "privateKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "privateKey", "role": "q0" }} , 
 	{ "name": "pubKey_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pubKey", "role": "address0" }} , 
 	{ "name": "pubKey_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pubKey", "role": "ce0" }} , 
 	{ "name": "pubKey_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pubKey", "role": "q0" }} , 
 	{ "name": "plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "plaintext", "role": "address0" }} , 
 	{ "name": "plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "plaintext", "role": "ce0" }} , 
 	{ "name": "plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "plaintext", "role": "q0" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "messageByteLength", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "messageByteLength", "role": "default" }} , 
 	{ "name": "sig_0_proofs_seed1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed1", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_seed2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_seed2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_seed2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_seed2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_seed2", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_inputS_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_inputS_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_inputS_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_inputS_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "sig_0_proofs_inputS", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_commun_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_commun_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_commun_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_commun_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_commun", "role": "d0" }} , 
 	{ "name": "sig_0_proofs_view3C_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "address0" }} , 
 	{ "name": "sig_0_proofs_view3C_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "ce0" }} , 
 	{ "name": "sig_0_proofs_view3C_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "we0" }} , 
 	{ "name": "sig_0_proofs_view3C_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_proofs_view3C", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "address0" }} , 
 	{ "name": "sig_0_challengeBits_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "ce0" }} , 
 	{ "name": "sig_0_challengeBits_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "we0" }} , 
 	{ "name": "sig_0_challengeBits_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "d0" }} , 
 	{ "name": "sig_0_challengeBits_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_challengeBits", "role": "q0" }} , 
 	{ "name": "sig_0_salt_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "address0" }} , 
 	{ "name": "sig_0_salt_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "ce0" }} , 
 	{ "name": "sig_0_salt_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "we0" }} , 
 	{ "name": "sig_0_salt_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "d0" }} , 
 	{ "name": "sig_0_salt_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sig_0_salt", "role": "q0" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "97", "159", "210", "267", "314", "345", "347", "348"],
		"CDFG" : "sign_picnic1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_computeSeeds_2_fu_635"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape_fu_657"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_H3_2_fu_680"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_createRandomTape_1_fu_701"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_717"},
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_717"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_Commit_2_fu_717"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_LowMC_2_fu_760"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_prove_25_fu_779"}],
		"Port" : [
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "plaintext"},
					{"ID" : "314", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "plaintext"},
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "message"},
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "345", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "salt_0"},
					{"ID" : "97", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "salt_0"},
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "salt_0"},
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRhoOffsets"},
					{"ID" : "97", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRhoOffsets"},
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRhoOffsets"},
					{"ID" : "267", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRhoOffsets"},
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "210", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRoundConstants"},
					{"ID" : "97", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRoundConstants"},
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRoundConstants"},
					{"ID" : "267", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRoundConstants"},
					{"ID" : "13", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "314", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "159", "SubInstance" : "grp_H3_2_fu_680", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_inputShare_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_communicatedBi_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.views_outputShare_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.as_hashes_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.seeds_seed_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tape_tape_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tmp_3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.slab_assign_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "44", "64", "80", "95", "96"],
		"CDFG" : "computeSeeds_2",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_806"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_818"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_827"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"},
			{"State" : "ap_ST_fsm_state56", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_833"}],
		"Port" : [
			{"Name" : "allSeeds_seed", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRhoOffsets"},
					{"ID" : "24", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRhoOffsets"},
					{"ID" : "80", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRhoOffsets"},
					{"ID" : "64", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRoundConstants"},
					{"ID" : "24", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRoundConstants"},
					{"ID" : "80", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRoundConstants"},
					{"ID" : "64", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_11_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.temp_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_10_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.temp_1_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_12_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.temp_2_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_9_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.stateAsWords_8_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.ctx_sponge_state_U", "Parent" : "13"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776", "Parent" : "13", "Child" : ["25", "26", "27", "42", "43"],
		"CDFG" : "KeccakWidth1600_Spon_2",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_223"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_223"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_232"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_232"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_239"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_239"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "43", "SubInstance" : "grp_fromBytesToWords_fu_239", "Port" : "state"},
					{"ID" : "42", "SubInstance" : "grp_fromWordsToBytes_fu_232", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "27", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_13_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223", "Parent" : "24", "Child" : ["28", "29", "30", "37", "40"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "40", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "37", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "28", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRhoOffsets_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRoundConstants_U", "Parent" : "27"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159", "Parent" : "27", "Child" : ["31", "32", "33", "34", "35", "36"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "31", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.tempA_U", "Parent" : "30"},
	{"ID" : "32", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "30"},
	{"ID" : "33", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "30"},
	{"ID" : "34", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "30"},
	{"ID" : "35", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "30"},
	{"ID" : "36", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "30"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165", "Parent" : "27", "Child" : ["38", "39"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "38", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.C_U", "Parent" : "37"},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.D_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171", "Parent" : "27", "Child" : ["41"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171.C_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromWordsToBytes_fu_232", "Parent" : "24",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromBytesToWords_fu_239", "Parent" : "24",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793", "Parent" : "13", "Child" : ["45", "46", "47", "62", "63"],
		"CDFG" : "KeccakWidth1600_Spon_3",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_182"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_182"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_191"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_191"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_198"},
			{"State" : "ap_ST_fsm_state12", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_198"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_fromBytesToWords_fu_198", "Port" : "state"},
					{"ID" : "62", "SubInstance" : "grp_fromWordsToBytes_fu_191", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_13_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182", "Parent" : "44", "Child" : ["48", "49", "50", "57", "60"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "60", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "57", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "48", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRhoOffsets_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRoundConstants_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159", "Parent" : "47", "Child" : ["51", "52", "53", "54", "55", "56"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.tempA_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "50"},
	{"ID" : "53", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "50"},
	{"ID" : "54", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "50"},
	{"ID" : "55", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "50"},
	{"ID" : "56", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "50"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165", "Parent" : "47", "Child" : ["58", "59"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.C_U", "Parent" : "57"},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.D_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171", "Parent" : "47", "Child" : ["61"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171.C_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromWordsToBytes_fu_191", "Parent" : "44",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromBytesToWords_fu_198", "Parent" : "44",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806", "Parent" : "13", "Child" : ["65", "66", "67", "68", "75", "78"],
		"CDFG" : "HashUpdateIntLE",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_363"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_368"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_373"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRhoOffsets_U", "Parent" : "64"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRoundConstants_U", "Parent" : "64"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.stateAsWords_U", "Parent" : "64"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363", "Parent" : "64", "Child" : ["69", "70", "71", "72", "73", "74"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.tempA_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "68"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "68"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "68"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "68"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "68"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368", "Parent" : "64", "Child" : ["76", "77"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.D_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373", "Parent" : "64", "Child" : ["79"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373.C_U", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818", "Parent" : "13", "Child" : ["81", "82", "83", "90", "93"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "83", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "93", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "90", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRhoOffsets_U", "Parent" : "80"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRoundConstants_U", "Parent" : "80"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159", "Parent" : "80", "Child" : ["84", "85", "86", "87", "88", "89"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.tempA_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "83"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "83"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "83"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "83"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "83"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165", "Parent" : "80", "Child" : ["91", "92"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.D_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171", "Parent" : "80", "Child" : ["94"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171.C_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_fromWordsToBytes_fu_827", "Parent" : "13",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_computeSeeds_2_fu_635.grp_fromBytesToWords_fu_833", "Parent" : "13",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657", "Parent" : "0", "Child" : ["98", "99", "100", "101", "102", "103", "104", "105", "124", "140", "155", "156", "157", "158"],
		"CDFG" : "createRandomTape",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487"},
			{"State" : "ap_ST_fsm_state103", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_507"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_507"},
			{"State" : "ap_ST_fsm_state91", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_507"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state75", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state84", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_519"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state86", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_528"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"},
			{"State" : "ap_ST_fsm_state73", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"},
			{"State" : "ap_ST_fsm_state82", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_534"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "playerNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_0"}]},
			{"Name" : "tape_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_1"}]},
			{"Name" : "tape_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_2"}]},
			{"Name" : "tape_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_3"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRhoOffsets"},
					{"ID" : "140", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRhoOffsets"},
					{"ID" : "124", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "105", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRoundConstants"},
					{"ID" : "140", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRoundConstants"},
					{"ID" : "124", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_4_U", "Parent" : "97"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_6_U", "Parent" : "97"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_U", "Parent" : "97"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_1_U", "Parent" : "97"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_5_U", "Parent" : "97"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.stateAsWords_7_U", "Parent" : "97"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.ctx_sponge_state_U", "Parent" : "97"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487", "Parent" : "97", "Child" : ["106", "107", "108", "109", "112", "119", "122"],
		"CDFG" : "KeccakWidth1600_Spon_5",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355"},
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_374"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_379"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_384"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "state"}]},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_0"}]},
			{"Name" : "data_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_1"}]},
			{"Name" : "data_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_2"}]},
			{"Name" : "data_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "109", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_3"}]},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRhoOffsets_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRoundConstants_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.stateAsWords_U", "Parent" : "105"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355", "Parent" : "105", "Child" : ["110", "111"],
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
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_urem_wdI_U44", "Parent" : "109"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_mul_6xdS_U45", "Parent" : "109"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374", "Parent" : "105", "Child" : ["113", "114", "115", "116", "117", "118"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.tempA_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_bkb_U6", "Parent" : "112"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U7", "Parent" : "112"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U8", "Parent" : "112"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U9", "Parent" : "112"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U10", "Parent" : "112"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379", "Parent" : "105", "Child" : ["120", "121"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.C_U", "Parent" : "119"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.D_U", "Parent" : "119"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384", "Parent" : "105", "Child" : ["123"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384.C_U", "Parent" : "122"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507", "Parent" : "97", "Child" : ["125", "126", "127", "128", "135", "138"],
		"CDFG" : "HashUpdateIntLE",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_363"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_368"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_373"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRhoOffsets_U", "Parent" : "124"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRoundConstants_U", "Parent" : "124"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.stateAsWords_U", "Parent" : "124"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363", "Parent" : "124", "Child" : ["129", "130", "131", "132", "133", "134"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.tempA_U", "Parent" : "128"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "128"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "128"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "128"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "128"},
	{"ID" : "134", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "128"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368", "Parent" : "124", "Child" : ["136", "137"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.C_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.D_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373", "Parent" : "124", "Child" : ["139"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373.C_U", "Parent" : "138"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519", "Parent" : "97", "Child" : ["141", "142", "143", "150", "153"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "143", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "153", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "150", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRhoOffsets_U", "Parent" : "140"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRoundConstants_U", "Parent" : "140"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159", "Parent" : "140", "Child" : ["144", "145", "146", "147", "148", "149"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "144", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.tempA_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "143"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "143"},
	{"ID" : "147", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "143"},
	{"ID" : "148", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "143"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "143"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165", "Parent" : "140", "Child" : ["151", "152"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "151", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.C_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.D_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171", "Parent" : "140", "Child" : ["154"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171.C_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_fromWordsToBytes_fu_528", "Parent" : "97",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.grp_fromBytesToWords_fu_534", "Parent" : "97",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.crypto_sign_urem_IfE_U62", "Parent" : "97"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_fu_657.crypto_sign_mux_4JfO_U63", "Parent" : "97"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680", "Parent" : "0", "Child" : ["160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "193", "208", "209"],
		"CDFG" : "H3_2",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state101", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218"},
			{"State" : "ap_ST_fsm_state136", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state23", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state69", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state87", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state97", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state112", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state122", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state132", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state71", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state89", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state99", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state114", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state124", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state134", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_1237"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state32", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state67", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state77", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state85", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state95", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state110", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state120", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"},
			{"State" : "ap_ST_fsm_state130", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_1243"}],
		"Port" : [
			{"Name" : "circuitOutput", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "as_hashes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "challengeBits_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRhoOffsets"},
					{"ID" : "193", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "177", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRoundConstants"},
					{"ID" : "193", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_18_U", "Parent" : "159"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_22_U", "Parent" : "159"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_15_U", "Parent" : "159"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.temp_U", "Parent" : "159"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_17_U", "Parent" : "159"},
	{"ID" : "165", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.temp_4_U", "Parent" : "159"},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_16_U", "Parent" : "159"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.temp_3_U", "Parent" : "159"},
	{"ID" : "168", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_U", "Parent" : "159"},
	{"ID" : "169", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_23_U", "Parent" : "159"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_14_U", "Parent" : "159"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_19_U", "Parent" : "159"},
	{"ID" : "172", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_21_U", "Parent" : "159"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_20_U", "Parent" : "159"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.stateAsWords_24_U", "Parent" : "159"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.hash_U", "Parent" : "159"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.ctx_sponge_state_U", "Parent" : "159"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218", "Parent" : "159", "Child" : ["178", "179", "180", "181", "188", "191"],
		"CDFG" : "KeccakWidth1600_Spon_4",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_380"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_385"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_390"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRhoOffsets_U", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRoundConstants_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.stateAsWords_U", "Parent" : "177"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380", "Parent" : "177", "Child" : ["182", "183", "184", "185", "186", "187"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.tempA_U", "Parent" : "181"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_bkb_U6", "Parent" : "181"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U7", "Parent" : "181"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U8", "Parent" : "181"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U9", "Parent" : "181"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U10", "Parent" : "181"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385", "Parent" : "177", "Child" : ["189", "190"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.C_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.D_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390", "Parent" : "177", "Child" : ["192"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390.C_U", "Parent" : "191"},
	{"ID" : "193", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228", "Parent" : "159", "Child" : ["194", "195", "196", "203", "206"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "206", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "203", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRhoOffsets_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRoundConstants_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159", "Parent" : "193", "Child" : ["197", "198", "199", "200", "201", "202"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "197", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.tempA_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "196"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "196"},
	{"ID" : "200", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "196"},
	{"ID" : "201", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "196"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "196"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165", "Parent" : "193", "Child" : ["204", "205"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "204", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.C_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.D_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171", "Parent" : "193", "Child" : ["207"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171.C_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_fromWordsToBytes_fu_1237", "Parent" : "159",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_H3_2_fu_680.grp_fromBytesToWords_fu_1243", "Parent" : "159",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701", "Parent" : "0", "Child" : ["211", "212", "213", "214", "215", "216", "217", "218", "234", "250", "265", "266"],
		"CDFG" : "createRandomTape_1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state30", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_433"},
			{"State" : "ap_ST_fsm_state52", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_433"},
			{"State" : "ap_ST_fsm_state54", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_HashUpdateIntLE_fu_433"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state26", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state38", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state62", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_446"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state28", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state40", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state49", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state64", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_455"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"},
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_461"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "roundNumber", "Type" : "None", "Direction" : "I"},
			{"Name" : "tape", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRhoOffsets"},
					{"ID" : "250", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRhoOffsets"},
					{"ID" : "234", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "218", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRoundConstants"},
					{"ID" : "250", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRoundConstants"},
					{"ID" : "234", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_2_U", "Parent" : "210"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_3_U", "Parent" : "210"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_U", "Parent" : "210"},
	{"ID" : "214", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_1_U", "Parent" : "210"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_4_U", "Parent" : "210"},
	{"ID" : "216", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.stateAsWords_5_U", "Parent" : "210"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.ctx_sponge_state_U", "Parent" : "210"},
	{"ID" : "218", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419", "Parent" : "210", "Child" : ["219", "220", "221", "222", "229", "232"],
		"CDFG" : "KeccakWidth1600_Spon_1",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_382"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_387"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_392"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRhoOffsets_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRoundConstants_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.stateAsWords_U", "Parent" : "218"},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382", "Parent" : "218", "Child" : ["223", "224", "225", "226", "227", "228"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.tempA_U", "Parent" : "222"},
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_bkb_U6", "Parent" : "222"},
	{"ID" : "225", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U7", "Parent" : "222"},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U8", "Parent" : "222"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U9", "Parent" : "222"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U10", "Parent" : "222"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387", "Parent" : "218", "Child" : ["230", "231"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.C_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.D_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392", "Parent" : "218", "Child" : ["233"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392.C_U", "Parent" : "232"},
	{"ID" : "234", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433", "Parent" : "210", "Child" : ["235", "236", "237", "238", "245", "248"],
		"CDFG" : "HashUpdateIntLE",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_363"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_368"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_373"}],
		"Port" : [
			{"Name" : "ctx_sponge_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "ctx_sponge_byteIOInd", "Type" : "None", "Direction" : "I"},
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRhoOffsets_U", "Parent" : "234"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRoundConstants_U", "Parent" : "234"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.stateAsWords_U", "Parent" : "234"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363", "Parent" : "234", "Child" : ["239", "240", "241", "242", "243", "244"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.tempA_U", "Parent" : "238"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "238"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "238"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "238"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "238"},
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "238"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368", "Parent" : "234", "Child" : ["246", "247"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.C_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.D_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373", "Parent" : "234", "Child" : ["249"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373.C_U", "Parent" : "248"},
	{"ID" : "250", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446", "Parent" : "210", "Child" : ["251", "252", "253", "260", "263"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "253", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "263", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "260", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRhoOffsets_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRoundConstants_U", "Parent" : "250"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159", "Parent" : "250", "Child" : ["254", "255", "256", "257", "258", "259"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.tempA_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "253"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "253"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "253"},
	{"ID" : "258", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "253"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "253"},
	{"ID" : "260", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165", "Parent" : "250", "Child" : ["261", "262"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "261", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.C_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.D_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171", "Parent" : "250", "Child" : ["264"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171.C_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_fromWordsToBytes_fu_455", "Parent" : "210",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_createRandomTape_1_fu_701.grp_fromBytesToWords_fu_461", "Parent" : "210",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "267", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717", "Parent" : "0", "Child" : ["268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "278", "279", "280", "296", "311", "312", "313"],
		"CDFG" : "Commit_2",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827"},
			{"State" : "ap_ST_fsm_state94", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state18", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state37", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state46", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state59", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state81", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state90", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_KeccakP1600OnWords_fu_840"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state20", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state39", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state61", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state83", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state92", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromWordsToBytes_fu_849"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state25", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state35", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state44", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state57", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state66", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state79", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"},
			{"State" : "ap_ST_fsm_state88", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_fromBytesToWords_fu_855"}],
		"Port" : [
			{"Name" : "seed", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "seed_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "seed_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_inputShare_offset3", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_communicatedBits_offset4", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "view_outputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "view_outputShare_offset5", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRhoOffsets"},
					{"ID" : "296", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "280", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRoundConstants"},
					{"ID" : "296", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_25_U", "Parent" : "267"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_31_U", "Parent" : "267"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_29_U", "Parent" : "267"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.temp_U", "Parent" : "267"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_32_U", "Parent" : "267"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.temp_5_U", "Parent" : "267"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_U", "Parent" : "267"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_27_U", "Parent" : "267"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_26_U", "Parent" : "267"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_28_U", "Parent" : "267"},
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.stateAsWords_30_U", "Parent" : "267"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.ctx_sponge_state_U", "Parent" : "267"},
	{"ID" : "280", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827", "Parent" : "267", "Child" : ["281", "282", "283", "284", "291", "294"],
		"CDFG" : "KeccakWidth1600_Spon",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state14", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_404"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_409"},
			{"State" : "ap_ST_fsm_state16", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_414"}],
		"Port" : [
			{"Name" : "instance_state", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRhoOffsets_U", "Parent" : "280"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRoundConstants_U", "Parent" : "280"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.stateAsWords_U", "Parent" : "280"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404", "Parent" : "280", "Child" : ["285", "286", "287", "288", "289", "290"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.tempA_U", "Parent" : "284"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_bkb_U6", "Parent" : "284"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U7", "Parent" : "284"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U8", "Parent" : "284"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U9", "Parent" : "284"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U10", "Parent" : "284"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409", "Parent" : "280", "Child" : ["292", "293"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.C_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.D_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414", "Parent" : "280", "Child" : ["295"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414.C_U", "Parent" : "294"},
	{"ID" : "296", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840", "Parent" : "267", "Child" : ["297", "298", "299", "306", "309"],
		"CDFG" : "KeccakP1600OnWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8545", "EstimateLatencyMax" : "8545",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_pi_fu_159"},
			{"State" : "ap_ST_fsm_state3", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_theta_fu_165"},
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_chi_fu_171"}],
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "299", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "309", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "306", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRhoOffsets_U", "Parent" : "296"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRoundConstants_U", "Parent" : "296"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159", "Parent" : "296", "Child" : ["300", "301", "302", "303", "304", "305"],
		"CDFG" : "pi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "51", "EstimateLatencyMax" : "51",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "300", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.tempA_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "299"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "299"},
	{"ID" : "303", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "299"},
	{"ID" : "304", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "299"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "299"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165", "Parent" : "296", "Child" : ["307", "308"],
		"CDFG" : "theta",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "307", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.C_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.D_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171", "Parent" : "296", "Child" : ["310"],
		"CDFG" : "chi",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "141", "EstimateLatencyMax" : "141",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Memory", "Direction" : "IO"}]},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171.C_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_fromWordsToBytes_fu_849", "Parent" : "267",
		"CDFG" : "fromWordsToBytes",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "203", "EstimateLatencyMax" : "203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "state", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "312", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.grp_fromBytesToWords_fu_855", "Parent" : "267",
		"CDFG" : "fromBytesToWords",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "476", "EstimateLatencyMax" : "476",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "stateAsWords", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "313", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Commit_2_fu_717.crypto_sign_mul_mbdk_U146", "Parent" : "267"},
	{"ID" : "314", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760", "Parent" : "0", "Child" : ["315", "316", "320", "324", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "342", "343", "344"],
		"CDFG" : "mpc_LowMC_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "289095", "EstimateLatencyMax" : "289095",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_fu_957"},
			{"State" : "ap_ST_fsm_state43", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state45", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state47", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_matrix_mul_1_fu_978"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"},
			{"State" : "ap_ST_fsm_state33", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_mpc_AND_2_fu_991"}],
		"Port" : [
			{"Name" : "tapes_tape", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "324", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "324", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "output_r"},
					{"ID" : "316", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "316", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "320", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "315", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.temp_matrix3_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957", "Parent" : "314", "Child" : ["317", "318", "319"],
		"CDFG" : "matrix_mul",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2186", "EstimateLatencyMax" : "2186",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_matrix_U", "Parent" : "316"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.prod_U", "Parent" : "316"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_U", "Parent" : "316"},
	{"ID" : "320", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978", "Parent" : "314", "Child" : ["321", "322", "323"],
		"CDFG" : "matrix_mul_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2186", "EstimateLatencyMax" : "2186",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "state_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "matrix_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "321", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_matrix2_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.prod_U", "Parent" : "320"},
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_U", "Parent" : "320"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991", "Parent" : "314", "Child" : ["325", "326", "327", "328", "329", "330", "331"],
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
	{"ID" : "325", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U94", "Parent" : "324"},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U95", "Parent" : "324"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U96", "Parent" : "324"},
	{"ID" : "328", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U97", "Parent" : "324"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U98", "Parent" : "324"},
	{"ID" : "330", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U99", "Parent" : "324"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mac_mWhU_U100", "Parent" : "324"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U120", "Parent" : "314"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U121", "Parent" : "314"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U122", "Parent" : "314"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U123", "Parent" : "314"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U124", "Parent" : "314"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U125", "Parent" : "314"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U126", "Parent" : "314"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U127", "Parent" : "314"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U128", "Parent" : "314"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U129", "Parent" : "314"},
	{"ID" : "342", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U130", "Parent" : "314"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U131", "Parent" : "314"},
	{"ID" : "344", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U132", "Parent" : "314"},
	{"ID" : "345", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_prove_25_fu_779", "Parent" : "0", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_prove_25_fu_779.crypto_sign_mul_mbdk_U174", "Parent" : "345"},
	{"ID" : "347", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_urem_bAo_U186", "Parent" : "0"},
	{"ID" : "348", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mux_4bBo_U187", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sign_picnic1 {
		privateKey {Type I LastRead 5 FirstWrite -1}
		pubKey {Type I LastRead 7 FirstWrite -1}
		plaintext {Type I LastRead 10 FirstWrite -1}
		message {Type I LastRead 15 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		sig_0_proofs_seed1 {Type O LastRead -1 FirstWrite 2}
		sig_0_proofs_seed2 {Type O LastRead -1 FirstWrite 3}
		sig_0_proofs_inputS {Type O LastRead -1 FirstWrite 4}
		sig_0_proofs_commun {Type O LastRead -1 FirstWrite 6}
		sig_0_proofs_view3C {Type O LastRead -1 FirstWrite 7}
		sig_0_challengeBits {Type IO LastRead 26 FirstWrite 0}
		sig_0_salt {Type IO LastRead 19 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 7 FirstWrite -1}}
	computeSeeds_2 {
		allSeeds_seed {Type O LastRead -1 FirstWrite 18}
		salt_0 {Type O LastRead -1 FirstWrite 18}
		privateKey {Type I LastRead 3 FirstWrite -1}
		publicKey {Type I LastRead 7 FirstWrite -1}
		plaintext {Type I LastRead 10 FirstWrite -1}
		message {Type I LastRead 8 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_2 {
		instance_state {Type IO LastRead 17 FirstWrite -1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data {Type O LastRead -1 FirstWrite 18}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	KeccakWidth1600_Spon_3 {
		instance_state {Type IO LastRead 17 FirstWrite -1}
		instance_byteIOIndex_read {Type I LastRead 0 FirstWrite -1}
		instance_squeezing_read {Type I LastRead 0 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 18}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	HashUpdateIntLE {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 3}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	createRandomTape {
		seed {Type I LastRead 5 FirstWrite -1}
		seed_offset {Type I LastRead 0 FirstWrite -1}
		seed_offset1 {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 19 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		playerNumber {Type I LastRead 0 FirstWrite -1}
		tape_0 {Type IO LastRead 55 FirstWrite 68}
		tape_1 {Type IO LastRead 55 FirstWrite 68}
		tape_2 {Type IO LastRead 55 FirstWrite 68}
		tape_3 {Type IO LastRead 55 FirstWrite 68}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_5 {
		instance_state {Type IO LastRead 3 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 68}
		data_1 {Type O LastRead -1 FirstWrite 68}
		data_2 {Type O LastRead -1 FirstWrite 68}
		data_3 {Type O LastRead -1 FirstWrite 68}
		dataByteLen {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakP1600_ExtractB {
		state {Type I LastRead 1 FirstWrite -1}
		data_0 {Type O LastRead -1 FirstWrite 68}
		data_1 {Type O LastRead -1 FirstWrite 68}
		data_2 {Type O LastRead -1 FirstWrite 68}
		data_3 {Type O LastRead -1 FirstWrite 68}
		data_offset {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		length_r {Type I LastRead 0 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	HashUpdateIntLE {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 3}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	H3_2 {
		circuitOutput {Type I LastRead 6 FirstWrite -1}
		plaintext {Type I LastRead 9 FirstWrite -1}
		as_hashes {Type I LastRead 8 FirstWrite -1}
		challengeBits_0 {Type IO LastRead 26 FirstWrite 0}
		salt_0 {Type I LastRead 13 FirstWrite -1}
		message {Type I LastRead 15 FirstWrite -1}
		messageByteLength {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type I LastRead 6 FirstWrite -1}}
	KeccakWidth1600_Spon_4 {
		instance_state {Type IO LastRead 7 FirstWrite 6}
		data {Type O LastRead -1 FirstWrite 8}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	createRandomTape_1 {
		seed {Type I LastRead 5 FirstWrite -1}
		seed_offset {Type I LastRead 0 FirstWrite -1}
		salt_0 {Type I LastRead 19 FirstWrite -1}
		roundNumber {Type I LastRead 0 FirstWrite -1}
		tape {Type IO LastRead 18 FirstWrite 8}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon_1 {
		instance_state {Type IO LastRead 7 FirstWrite 6}
		data {Type O LastRead -1 FirstWrite 8}
		dataByteLen {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	HashUpdateIntLE {
		ctx_sponge_state {Type IO LastRead 4 FirstWrite 3}
		ctx_sponge_byteIOInd {Type I LastRead 0 FirstWrite -1}
		x {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	Commit_2 {
		seed {Type I LastRead 6 FirstWrite -1}
		seed_offset {Type I LastRead 1 FirstWrite -1}
		seed_offset1 {Type I LastRead 1 FirstWrite -1}
		view_inputShare {Type I LastRead 20 FirstWrite -1}
		view_inputShare_offset {Type I LastRead 1 FirstWrite -1}
		view_inputShare_offset3 {Type I LastRead 1 FirstWrite -1}
		view_communicatedBits {Type I LastRead 24 FirstWrite -1}
		view_communicatedBits_offset {Type I LastRead 0 FirstWrite -1}
		view_communicatedBits_offset4 {Type I LastRead 1 FirstWrite -1}
		view_outputShare {Type I LastRead 24 FirstWrite -1}
		view_outputShare_offset {Type I LastRead 1 FirstWrite -1}
		view_outputShare_offset5 {Type I LastRead 1 FirstWrite -1}
		hash {Type IO LastRead 20 FirstWrite 8}
		hash_offset {Type I LastRead 1 FirstWrite -1}
		hash_offset6 {Type I LastRead 1 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	KeccakWidth1600_Spon {
		instance_state {Type IO LastRead 7 FirstWrite 6}
		data {Type O LastRead -1 FirstWrite 8}
		data_offset {Type I LastRead 0 FirstWrite -1}
		data_offset1 {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	KeccakP1600OnWords {
		state {Type IO LastRead 8 FirstWrite 4}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}}
	pi {
		A {Type IO LastRead 4 FirstWrite 11}}
	theta {
		A {Type IO LastRead 5 FirstWrite 6}}
	chi {
		A {Type IO LastRead 4 FirstWrite 4}}
	fromWordsToBytes {
		state {Type O LastRead -1 FirstWrite 3}
		stateAsWords {Type I LastRead 1 FirstWrite -1}}
	fromBytesToWords {
		stateAsWords {Type IO LastRead 2 FirstWrite 1}
		state {Type I LastRead 2 FirstWrite -1}}
	mpc_LowMC_2 {
		tapes_tape {Type I LastRead 2 FirstWrite -1}
		views_inputShare {Type I LastRead 2 FirstWrite -1}
		views_inputShare_offset {Type I LastRead 0 FirstWrite -1}
		views_communicatedBi {Type IO LastRead 4 FirstWrite 5}
		views_outputShare {Type O LastRead -1 FirstWrite 13}
		plaintext {Type I LastRead 2 FirstWrite -1}
		slab {Type IO LastRead 28 FirstWrite 1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}}
	matrix_mul {
		output_r {Type O LastRead -1 FirstWrite 3}
		output_offset {Type I LastRead 0 FirstWrite -1}
		state {Type I LastRead 2 FirstWrite -1}
		state_offset {Type I LastRead 0 FirstWrite -1}
		state_offset1 {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}}
	matrix_mul_1 {
		output_r {Type IO LastRead 2 FirstWrite 3}
		state_offset {Type I LastRead 0 FirstWrite -1}
		matrix_offset {Type I LastRead 0 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}}
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
		views_communicatedBits_offset {Type I LastRead 2 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
	{"Pipeline" : "2", "EnableSignal" : "ap_enable_pp2"}
]}

set Spec2ImplPortList { 
	privateKey { ap_memory {  { privateKey_address0 mem_address 1 3 }  { privateKey_ce0 mem_ce 1 1 }  { privateKey_q0 mem_dout 0 32 } } }
	pubKey { ap_memory {  { pubKey_address0 mem_address 1 3 }  { pubKey_ce0 mem_ce 1 1 }  { pubKey_q0 mem_dout 0 32 } } }
	plaintext { ap_memory {  { plaintext_address0 mem_address 1 3 }  { plaintext_ce0 mem_ce 1 1 }  { plaintext_q0 mem_dout 0 32 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	messageByteLength { ap_none {  { messageByteLength in_data 0 64 } } }
	sig_0_proofs_seed1 { ap_memory {  { sig_0_proofs_seed1_address0 mem_address 1 12 }  { sig_0_proofs_seed1_ce0 mem_ce 1 1 }  { sig_0_proofs_seed1_we0 mem_we 1 1 }  { sig_0_proofs_seed1_d0 mem_din 1 8 } } }
	sig_0_proofs_seed2 { ap_memory {  { sig_0_proofs_seed2_address0 mem_address 1 12 }  { sig_0_proofs_seed2_ce0 mem_ce 1 1 }  { sig_0_proofs_seed2_we0 mem_we 1 1 }  { sig_0_proofs_seed2_d0 mem_din 1 8 } } }
	sig_0_proofs_inputS { ap_memory {  { sig_0_proofs_inputS_address0 mem_address 1 10 }  { sig_0_proofs_inputS_ce0 mem_ce 1 1 }  { sig_0_proofs_inputS_we0 mem_we 1 1 }  { sig_0_proofs_inputS_d0 mem_din 1 32 } } }
	sig_0_proofs_commun { ap_memory {  { sig_0_proofs_commun_address0 mem_address 1 15 }  { sig_0_proofs_commun_ce0 mem_ce 1 1 }  { sig_0_proofs_commun_we0 mem_we 1 1 }  { sig_0_proofs_commun_d0 mem_din 1 8 } } }
	sig_0_proofs_view3C { ap_memory {  { sig_0_proofs_view3C_address0 mem_address 1 13 }  { sig_0_proofs_view3C_ce0 mem_ce 1 1 }  { sig_0_proofs_view3C_we0 mem_we 1 1 }  { sig_0_proofs_view3C_d0 mem_din 1 8 } } }
	sig_0_challengeBits { ap_memory {  { sig_0_challengeBits_address0 mem_address 1 6 }  { sig_0_challengeBits_ce0 mem_ce 1 1 }  { sig_0_challengeBits_we0 mem_we 1 1 }  { sig_0_challengeBits_d0 mem_din 1 8 }  { sig_0_challengeBits_q0 mem_dout 0 8 } } }
	sig_0_salt { ap_memory {  { sig_0_salt_address0 mem_address 1 5 }  { sig_0_salt_ce0 mem_ce 1 1 }  { sig_0_salt_we0 mem_we 1 1 }  { sig_0_salt_d0 mem_din 1 8 }  { sig_0_salt_q0 mem_dout 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 MemPortADDR2 1 14 }  { viewOutputs_ce1 MemPortCE2 1 1 }  { viewOutputs_q1 MemPortDOUT2 0 32 } } }
}
