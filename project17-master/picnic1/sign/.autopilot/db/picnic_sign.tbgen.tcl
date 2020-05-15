set moduleName picnic_sign
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
set C_modelName {picnic_sign}
set C_modelType { int 96 }
set C_modelArgList {
	{ sk_data int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_plaintext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ sk_pk_ciphertext int 8 regular {array 32 { 1 1 } 1 1 }  }
	{ message int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ message_len int 64 regular  }
	{ signature int 8 regular {array 37336 { 0 3 } 0 1 }  }
	{ signature_offset int 64 regular  }
	{ viewOutputs int 32 regular {array 10512 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sk_data", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_plaintext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "sk_pk_ciphertext", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "message_len", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "signature", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "signature_offset", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 96} ]}
# RTL Port declarations: 
set portNum 43
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sk_data_address0 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce0 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q0 sc_in sc_lv 8 signal 0 } 
	{ sk_data_address1 sc_out sc_lv 5 signal 0 } 
	{ sk_data_ce1 sc_out sc_logic 1 signal 0 } 
	{ sk_data_q1 sc_in sc_lv 8 signal 0 } 
	{ sk_pk_plaintext_address0 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce0 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q0 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_plaintext_address1 sc_out sc_lv 5 signal 1 } 
	{ sk_pk_plaintext_ce1 sc_out sc_logic 1 signal 1 } 
	{ sk_pk_plaintext_q1 sc_in sc_lv 8 signal 1 } 
	{ sk_pk_ciphertext_address0 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce0 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q0 sc_in sc_lv 8 signal 2 } 
	{ sk_pk_ciphertext_address1 sc_out sc_lv 5 signal 2 } 
	{ sk_pk_ciphertext_ce1 sc_out sc_logic 1 signal 2 } 
	{ sk_pk_ciphertext_q1 sc_in sc_lv 8 signal 2 } 
	{ message_address0 sc_out sc_lv 12 signal 3 } 
	{ message_ce0 sc_out sc_logic 1 signal 3 } 
	{ message_q0 sc_in sc_lv 8 signal 3 } 
	{ message_len sc_in sc_lv 64 signal 4 } 
	{ signature_address0 sc_out sc_lv 16 signal 5 } 
	{ signature_ce0 sc_out sc_logic 1 signal 5 } 
	{ signature_we0 sc_out sc_logic 1 signal 5 } 
	{ signature_d0 sc_out sc_lv 8 signal 5 } 
	{ signature_offset sc_in sc_lv 64 signal 6 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 7 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 7 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 7 } 
	{ viewOutputs_address1 sc_out sc_lv 14 signal 7 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 7 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 7 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 64 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sk_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address0" }} , 
 	{ "name": "sk_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce0" }} , 
 	{ "name": "sk_data_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q0" }} , 
 	{ "name": "sk_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_data", "role": "address1" }} , 
 	{ "name": "sk_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_data", "role": "ce1" }} , 
 	{ "name": "sk_data_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_data", "role": "q1" }} , 
 	{ "name": "sk_pk_plaintext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address0" }} , 
 	{ "name": "sk_pk_plaintext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce0" }} , 
 	{ "name": "sk_pk_plaintext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q0" }} , 
 	{ "name": "sk_pk_plaintext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "address1" }} , 
 	{ "name": "sk_pk_plaintext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "ce1" }} , 
 	{ "name": "sk_pk_plaintext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_plaintext", "role": "q1" }} , 
 	{ "name": "sk_pk_ciphertext_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address0" }} , 
 	{ "name": "sk_pk_ciphertext_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce0" }} , 
 	{ "name": "sk_pk_ciphertext_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q0" }} , 
 	{ "name": "sk_pk_ciphertext_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "address1" }} , 
 	{ "name": "sk_pk_ciphertext_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "ce1" }} , 
 	{ "name": "sk_pk_ciphertext_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk_pk_ciphertext", "role": "q1" }} , 
 	{ "name": "message_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "message", "role": "address0" }} , 
 	{ "name": "message_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "message", "role": "ce0" }} , 
 	{ "name": "message_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "message", "role": "q0" }} , 
 	{ "name": "message_len", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "message_len", "role": "default" }} , 
 	{ "name": "signature_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "signature", "role": "address0" }} , 
 	{ "name": "signature_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "ce0" }} , 
 	{ "name": "signature_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "signature", "role": "we0" }} , 
 	{ "name": "signature_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "signature", "role": "d0" }} , 
 	{ "name": "signature_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "signature_offset", "role": "default" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "360"],
		"CDFG" : "picnic_sign",
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
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_sign_picnic1_fu_390"},
			{"State" : "ap_ST_fsm_state10", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_serializeSignature_fu_419"}],
		"Port" : [
			{"Name" : "sk_data", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sk_pk_ciphertext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_serializeSignature_fu_419", "Port" : "sigBytes"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_seed2_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_inputS_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_commun_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_proofs_view3C_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_challengeBits_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sig_0_salt_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp3_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390", "Parent" : "0", "Child" : ["12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "108", "170", "221", "278", "325", "356", "358", "359"],
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
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "plaintext"},
					{"ID" : "325", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "plaintext"},
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "message"},
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "356", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "salt_0"},
					{"ID" : "108", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "salt_0"},
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "salt_0"},
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRhoOffsets"},
					{"ID" : "108", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRhoOffsets"},
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRhoOffsets"},
					{"ID" : "278", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRhoOffsets"},
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRoundConstants"},
					{"ID" : "108", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRoundConstants"},
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRoundConstants"},
					{"ID" : "278", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRoundConstants"},
					{"ID" : "24", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "325", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "325", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "325", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "170", "SubInstance" : "grp_H3_2_fu_680", "Port" : "viewOutputs"}]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.views_inputShare_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.views_communicatedBi_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.views_outputShare_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.as_hashes_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.seeds_seed_U", "Parent" : "11"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.tape_tape_U", "Parent" : "11"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.tmp_0_U", "Parent" : "11"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.tmp_1_U", "Parent" : "11"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.tmp_2_U", "Parent" : "11"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.tmp_3_U", "Parent" : "11"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.slab_assign_U", "Parent" : "11"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.output_U", "Parent" : "11"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635", "Parent" : "11", "Child" : ["25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "55", "75", "91", "106", "107"],
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
					{"ID" : "35", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRhoOffsets"},
					{"ID" : "35", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRhoOffsets"},
					{"ID" : "91", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRhoOffsets"},
					{"ID" : "75", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "55", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRoundConstants"},
					{"ID" : "35", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRoundConstants"},
					{"ID" : "91", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRoundConstants"},
					{"ID" : "75", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_11_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_U", "Parent" : "24"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_U", "Parent" : "24"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_10_U", "Parent" : "24"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_1_U", "Parent" : "24"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_12_U", "Parent" : "24"},
	{"ID" : "31", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_2_U", "Parent" : "24"},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_9_U", "Parent" : "24"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_8_U", "Parent" : "24"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.ctx_sponge_state_U", "Parent" : "24"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776", "Parent" : "24", "Child" : ["36", "37", "38", "53", "54"],
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
					{"ID" : "54", "SubInstance" : "grp_fromBytesToWords_fu_239", "Port" : "state"},
					{"ID" : "53", "SubInstance" : "grp_fromWordsToBytes_fu_232", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "38", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_13_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223", "Parent" : "35", "Child" : ["39", "40", "41", "48", "51"],
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
					{"ID" : "41", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "51", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "48", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "39", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRhoOffsets_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRoundConstants_U", "Parent" : "38"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159", "Parent" : "38", "Child" : ["42", "43", "44", "45", "46", "47"],
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
	{"ID" : "42", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.tempA_U", "Parent" : "41"},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "41"},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "41"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "41"},
	{"ID" : "46", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "41"},
	{"ID" : "47", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "41"},
	{"ID" : "48", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165", "Parent" : "38", "Child" : ["49", "50"],
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
	{"ID" : "49", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.C_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.D_U", "Parent" : "48"},
	{"ID" : "51", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171", "Parent" : "38", "Child" : ["52"],
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
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171.C_U", "Parent" : "51"},
	{"ID" : "53", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromWordsToBytes_fu_232", "Parent" : "35",
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
	{"ID" : "54", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromBytesToWords_fu_239", "Parent" : "35",
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
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793", "Parent" : "24", "Child" : ["56", "57", "58", "73", "74"],
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
					{"ID" : "74", "SubInstance" : "grp_fromBytesToWords_fu_198", "Port" : "state"},
					{"ID" : "73", "SubInstance" : "grp_fromWordsToBytes_fu_191", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "58", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "56", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_13_U", "Parent" : "55"},
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182", "Parent" : "55", "Child" : ["59", "60", "61", "68", "71"],
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
					{"ID" : "61", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "71", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "68", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "59", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRhoOffsets_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRoundConstants_U", "Parent" : "58"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159", "Parent" : "58", "Child" : ["62", "63", "64", "65", "66", "67"],
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
	{"ID" : "62", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.tempA_U", "Parent" : "61"},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "61"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "61"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "61"},
	{"ID" : "66", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "61"},
	{"ID" : "67", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "61"},
	{"ID" : "68", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165", "Parent" : "58", "Child" : ["69", "70"],
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
	{"ID" : "69", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.C_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.D_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171", "Parent" : "58", "Child" : ["72"],
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
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171.C_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromWordsToBytes_fu_191", "Parent" : "55",
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
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromBytesToWords_fu_198", "Parent" : "55",
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
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806", "Parent" : "24", "Child" : ["76", "77", "78", "79", "86", "89"],
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
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRhoOffsets_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRoundConstants_U", "Parent" : "75"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.stateAsWords_U", "Parent" : "75"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363", "Parent" : "75", "Child" : ["80", "81", "82", "83", "84", "85"],
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
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.tempA_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "79"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "79"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "79"},
	{"ID" : "84", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "79"},
	{"ID" : "85", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "79"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368", "Parent" : "75", "Child" : ["87", "88"],
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
	{"ID" : "87", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.C_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.D_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373", "Parent" : "75", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373.C_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818", "Parent" : "24", "Child" : ["92", "93", "94", "101", "104"],
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
					{"ID" : "94", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "104", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "101", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRhoOffsets_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRoundConstants_U", "Parent" : "91"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159", "Parent" : "91", "Child" : ["95", "96", "97", "98", "99", "100"],
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
	{"ID" : "95", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.tempA_U", "Parent" : "94"},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "94"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "94"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "94"},
	{"ID" : "99", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "94"},
	{"ID" : "100", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "94"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165", "Parent" : "91", "Child" : ["102", "103"],
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
	{"ID" : "102", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.C_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.D_U", "Parent" : "101"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171", "Parent" : "91", "Child" : ["105"],
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
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171.C_U", "Parent" : "104"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_fromWordsToBytes_fu_827", "Parent" : "24",
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
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_fromBytesToWords_fu_833", "Parent" : "24",
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
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657", "Parent" : "11", "Child" : ["109", "110", "111", "112", "113", "114", "115", "116", "135", "151", "166", "167", "168", "169"],
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
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_0"}]},
			{"Name" : "tape_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_1"}]},
			{"Name" : "tape_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_2"}]},
			{"Name" : "tape_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_3"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRhoOffsets"},
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRhoOffsets"},
					{"ID" : "135", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "116", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRoundConstants"},
					{"ID" : "151", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRoundConstants"},
					{"ID" : "135", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_4_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_6_U", "Parent" : "108"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_U", "Parent" : "108"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_1_U", "Parent" : "108"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_5_U", "Parent" : "108"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_7_U", "Parent" : "108"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.ctx_sponge_state_U", "Parent" : "108"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487", "Parent" : "108", "Child" : ["117", "118", "119", "120", "123", "130", "133"],
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
					{"ID" : "120", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "state"}]},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_0"}]},
			{"Name" : "data_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_1"}]},
			{"Name" : "data_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_2"}]},
			{"Name" : "data_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_3"}]},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRhoOffsets_U", "Parent" : "116"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRoundConstants_U", "Parent" : "116"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.stateAsWords_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355", "Parent" : "116", "Child" : ["121", "122"],
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
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_urem_wdI_U44", "Parent" : "120"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_mul_6xdS_U45", "Parent" : "120"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374", "Parent" : "116", "Child" : ["124", "125", "126", "127", "128", "129"],
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
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.tempA_U", "Parent" : "123"},
	{"ID" : "125", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_bkb_U6", "Parent" : "123"},
	{"ID" : "126", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U7", "Parent" : "123"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U8", "Parent" : "123"},
	{"ID" : "128", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U9", "Parent" : "123"},
	{"ID" : "129", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U10", "Parent" : "123"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379", "Parent" : "116", "Child" : ["131", "132"],
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
	{"ID" : "131", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.C_U", "Parent" : "130"},
	{"ID" : "132", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.D_U", "Parent" : "130"},
	{"ID" : "133", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384", "Parent" : "116", "Child" : ["134"],
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
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384.C_U", "Parent" : "133"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507", "Parent" : "108", "Child" : ["136", "137", "138", "139", "146", "149"],
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
	{"ID" : "136", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRhoOffsets_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRoundConstants_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.stateAsWords_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363", "Parent" : "135", "Child" : ["140", "141", "142", "143", "144", "145"],
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
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.tempA_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "139"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "139"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "139"},
	{"ID" : "144", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "139"},
	{"ID" : "145", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "139"},
	{"ID" : "146", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368", "Parent" : "135", "Child" : ["147", "148"],
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
	{"ID" : "147", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.C_U", "Parent" : "146"},
	{"ID" : "148", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.D_U", "Parent" : "146"},
	{"ID" : "149", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373", "Parent" : "135", "Child" : ["150"],
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
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373.C_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519", "Parent" : "108", "Child" : ["152", "153", "154", "161", "164"],
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
					{"ID" : "154", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "164", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "161", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "152", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRhoOffsets_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRoundConstants_U", "Parent" : "151"},
	{"ID" : "154", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159", "Parent" : "151", "Child" : ["155", "156", "157", "158", "159", "160"],
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
	{"ID" : "155", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.tempA_U", "Parent" : "154"},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "154"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "154"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "154"},
	{"ID" : "159", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "154"},
	{"ID" : "160", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "154"},
	{"ID" : "161", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165", "Parent" : "151", "Child" : ["162", "163"],
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
	{"ID" : "162", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.C_U", "Parent" : "161"},
	{"ID" : "163", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.D_U", "Parent" : "161"},
	{"ID" : "164", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171", "Parent" : "151", "Child" : ["165"],
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
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171.C_U", "Parent" : "164"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_fromWordsToBytes_fu_528", "Parent" : "108",
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
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_fromBytesToWords_fu_534", "Parent" : "108",
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
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.crypto_sign_urem_IfE_U62", "Parent" : "108"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.crypto_sign_mux_4JfO_U63", "Parent" : "108"},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680", "Parent" : "11", "Child" : ["171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "204", "219", "220"],
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
					{"ID" : "188", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRhoOffsets"},
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRoundConstants"},
					{"ID" : "204", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_18_U", "Parent" : "170"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_22_U", "Parent" : "170"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_15_U", "Parent" : "170"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_U", "Parent" : "170"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_17_U", "Parent" : "170"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_4_U", "Parent" : "170"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_16_U", "Parent" : "170"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_3_U", "Parent" : "170"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_U", "Parent" : "170"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_23_U", "Parent" : "170"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_14_U", "Parent" : "170"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_19_U", "Parent" : "170"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_21_U", "Parent" : "170"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_20_U", "Parent" : "170"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_24_U", "Parent" : "170"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.hash_U", "Parent" : "170"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.ctx_sponge_state_U", "Parent" : "170"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218", "Parent" : "170", "Child" : ["189", "190", "191", "192", "199", "202"],
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
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRhoOffsets_U", "Parent" : "188"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRoundConstants_U", "Parent" : "188"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.stateAsWords_U", "Parent" : "188"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380", "Parent" : "188", "Child" : ["193", "194", "195", "196", "197", "198"],
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
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.tempA_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_bkb_U6", "Parent" : "192"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U7", "Parent" : "192"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U8", "Parent" : "192"},
	{"ID" : "197", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U9", "Parent" : "192"},
	{"ID" : "198", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U10", "Parent" : "192"},
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385", "Parent" : "188", "Child" : ["200", "201"],
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
	{"ID" : "200", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.C_U", "Parent" : "199"},
	{"ID" : "201", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.D_U", "Parent" : "199"},
	{"ID" : "202", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390", "Parent" : "188", "Child" : ["203"],
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
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390.C_U", "Parent" : "202"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228", "Parent" : "170", "Child" : ["205", "206", "207", "214", "217"],
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
					{"ID" : "207", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "217", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "214", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "205", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRhoOffsets_U", "Parent" : "204"},
	{"ID" : "206", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRoundConstants_U", "Parent" : "204"},
	{"ID" : "207", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159", "Parent" : "204", "Child" : ["208", "209", "210", "211", "212", "213"],
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
	{"ID" : "208", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.tempA_U", "Parent" : "207"},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "207"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "207"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "207"},
	{"ID" : "212", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "207"},
	{"ID" : "213", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "207"},
	{"ID" : "214", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165", "Parent" : "204", "Child" : ["215", "216"],
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
	{"ID" : "215", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.C_U", "Parent" : "214"},
	{"ID" : "216", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.D_U", "Parent" : "214"},
	{"ID" : "217", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171", "Parent" : "204", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171.C_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_fromWordsToBytes_fu_1237", "Parent" : "170",
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
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_fromBytesToWords_fu_1243", "Parent" : "170",
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
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701", "Parent" : "11", "Child" : ["222", "223", "224", "225", "226", "227", "228", "229", "245", "261", "276", "277"],
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
					{"ID" : "229", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRhoOffsets"},
					{"ID" : "261", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRhoOffsets"},
					{"ID" : "245", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "229", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRoundConstants"},
					{"ID" : "261", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRoundConstants"},
					{"ID" : "245", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_2_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_3_U", "Parent" : "221"},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_U", "Parent" : "221"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_1_U", "Parent" : "221"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_4_U", "Parent" : "221"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_5_U", "Parent" : "221"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.ctx_sponge_state_U", "Parent" : "221"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419", "Parent" : "221", "Child" : ["230", "231", "232", "233", "240", "243"],
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
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRhoOffsets_U", "Parent" : "229"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRoundConstants_U", "Parent" : "229"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.stateAsWords_U", "Parent" : "229"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382", "Parent" : "229", "Child" : ["234", "235", "236", "237", "238", "239"],
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
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.tempA_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_bkb_U6", "Parent" : "233"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U7", "Parent" : "233"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U8", "Parent" : "233"},
	{"ID" : "238", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U9", "Parent" : "233"},
	{"ID" : "239", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U10", "Parent" : "233"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387", "Parent" : "229", "Child" : ["241", "242"],
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
	{"ID" : "241", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.C_U", "Parent" : "240"},
	{"ID" : "242", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.D_U", "Parent" : "240"},
	{"ID" : "243", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392", "Parent" : "229", "Child" : ["244"],
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
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392.C_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433", "Parent" : "221", "Child" : ["246", "247", "248", "249", "256", "259"],
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
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRhoOffsets_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRoundConstants_U", "Parent" : "245"},
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.stateAsWords_U", "Parent" : "245"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363", "Parent" : "245", "Child" : ["250", "251", "252", "253", "254", "255"],
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
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.tempA_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "249"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "249"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "249"},
	{"ID" : "254", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "249"},
	{"ID" : "255", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "249"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368", "Parent" : "245", "Child" : ["257", "258"],
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
	{"ID" : "257", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.C_U", "Parent" : "256"},
	{"ID" : "258", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.D_U", "Parent" : "256"},
	{"ID" : "259", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373", "Parent" : "245", "Child" : ["260"],
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
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373.C_U", "Parent" : "259"},
	{"ID" : "261", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446", "Parent" : "221", "Child" : ["262", "263", "264", "271", "274"],
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
					{"ID" : "264", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "274", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "271", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "262", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRhoOffsets_U", "Parent" : "261"},
	{"ID" : "263", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRoundConstants_U", "Parent" : "261"},
	{"ID" : "264", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159", "Parent" : "261", "Child" : ["265", "266", "267", "268", "269", "270"],
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
	{"ID" : "265", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.tempA_U", "Parent" : "264"},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "264"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "264"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "264"},
	{"ID" : "269", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "264"},
	{"ID" : "270", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "264"},
	{"ID" : "271", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165", "Parent" : "261", "Child" : ["272", "273"],
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
	{"ID" : "272", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.C_U", "Parent" : "271"},
	{"ID" : "273", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.D_U", "Parent" : "271"},
	{"ID" : "274", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171", "Parent" : "261", "Child" : ["275"],
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
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171.C_U", "Parent" : "274"},
	{"ID" : "276", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_fromWordsToBytes_fu_455", "Parent" : "221",
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
	{"ID" : "277", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_fromBytesToWords_fu_461", "Parent" : "221",
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
	{"ID" : "278", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717", "Parent" : "11", "Child" : ["279", "280", "281", "282", "283", "284", "285", "286", "287", "288", "289", "290", "291", "307", "322", "323", "324"],
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
					{"ID" : "291", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRhoOffsets"},
					{"ID" : "307", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "291", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRoundConstants"},
					{"ID" : "307", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "279", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_25_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_31_U", "Parent" : "278"},
	{"ID" : "281", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_29_U", "Parent" : "278"},
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.temp_U", "Parent" : "278"},
	{"ID" : "283", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_32_U", "Parent" : "278"},
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.temp_5_U", "Parent" : "278"},
	{"ID" : "285", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_U", "Parent" : "278"},
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_27_U", "Parent" : "278"},
	{"ID" : "287", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_26_U", "Parent" : "278"},
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_28_U", "Parent" : "278"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_30_U", "Parent" : "278"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.ctx_sponge_state_U", "Parent" : "278"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827", "Parent" : "278", "Child" : ["292", "293", "294", "295", "302", "305"],
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
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRhoOffsets_U", "Parent" : "291"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRoundConstants_U", "Parent" : "291"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.stateAsWords_U", "Parent" : "291"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404", "Parent" : "291", "Child" : ["296", "297", "298", "299", "300", "301"],
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
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.tempA_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_bkb_U6", "Parent" : "295"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U7", "Parent" : "295"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U8", "Parent" : "295"},
	{"ID" : "300", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U9", "Parent" : "295"},
	{"ID" : "301", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U10", "Parent" : "295"},
	{"ID" : "302", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409", "Parent" : "291", "Child" : ["303", "304"],
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
	{"ID" : "303", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.C_U", "Parent" : "302"},
	{"ID" : "304", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.D_U", "Parent" : "302"},
	{"ID" : "305", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414", "Parent" : "291", "Child" : ["306"],
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
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414.C_U", "Parent" : "305"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840", "Parent" : "278", "Child" : ["308", "309", "310", "317", "320"],
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
					{"ID" : "310", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "320", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "317", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "308", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRhoOffsets_U", "Parent" : "307"},
	{"ID" : "309", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRoundConstants_U", "Parent" : "307"},
	{"ID" : "310", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159", "Parent" : "307", "Child" : ["311", "312", "313", "314", "315", "316"],
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
	{"ID" : "311", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.tempA_U", "Parent" : "310"},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "310"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "310"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "310"},
	{"ID" : "315", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "310"},
	{"ID" : "316", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "310"},
	{"ID" : "317", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165", "Parent" : "307", "Child" : ["318", "319"],
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
	{"ID" : "318", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.C_U", "Parent" : "317"},
	{"ID" : "319", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.D_U", "Parent" : "317"},
	{"ID" : "320", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171", "Parent" : "307", "Child" : ["321"],
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
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171.C_U", "Parent" : "320"},
	{"ID" : "322", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_fromWordsToBytes_fu_849", "Parent" : "278",
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
	{"ID" : "323", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_fromBytesToWords_fu_855", "Parent" : "278",
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
	{"ID" : "324", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.crypto_sign_mul_mbdk_U146", "Parent" : "278"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760", "Parent" : "11", "Child" : ["326", "327", "331", "335", "343", "344", "345", "346", "347", "348", "349", "350", "351", "352", "353", "354", "355"],
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
					{"ID" : "335", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "output_r"},
					{"ID" : "327", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "327", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "326", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.temp_matrix3_U", "Parent" : "325"},
	{"ID" : "327", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957", "Parent" : "325", "Child" : ["328", "329", "330"],
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
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_matrix_U", "Parent" : "327"},
	{"ID" : "329", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.prod_U", "Parent" : "327"},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_U", "Parent" : "327"},
	{"ID" : "331", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978", "Parent" : "325", "Child" : ["332", "333", "334"],
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
	{"ID" : "332", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_matrix2_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.prod_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991", "Parent" : "325", "Child" : ["336", "337", "338", "339", "340", "341", "342"],
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
	{"ID" : "336", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U94", "Parent" : "335"},
	{"ID" : "337", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U95", "Parent" : "335"},
	{"ID" : "338", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U96", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U97", "Parent" : "335"},
	{"ID" : "340", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U98", "Parent" : "335"},
	{"ID" : "341", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U99", "Parent" : "335"},
	{"ID" : "342", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mac_mWhU_U100", "Parent" : "335"},
	{"ID" : "343", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U120", "Parent" : "325"},
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U121", "Parent" : "325"},
	{"ID" : "345", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U122", "Parent" : "325"},
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U123", "Parent" : "325"},
	{"ID" : "347", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U124", "Parent" : "325"},
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U125", "Parent" : "325"},
	{"ID" : "349", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U126", "Parent" : "325"},
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U127", "Parent" : "325"},
	{"ID" : "351", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U128", "Parent" : "325"},
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U129", "Parent" : "325"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U130", "Parent" : "325"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U131", "Parent" : "325"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U132", "Parent" : "325"},
	{"ID" : "356", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_prove_25_fu_779", "Parent" : "11", "Child" : ["357"],
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
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.grp_prove_25_fu_779.crypto_sign_mul_mbdk_U174", "Parent" : "356"},
	{"ID" : "358", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.crypto_sign_urem_bAo_U186", "Parent" : "11"},
	{"ID" : "359", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_sign_picnic1_fu_390.crypto_sign_mux_4bBo_U187", "Parent" : "11"},
	{"ID" : "360", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_serializeSignature_fu_419", "Parent" : "0",
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
	picnic_sign {
		sk_data {Type I LastRead 6 FirstWrite -1}
		sk_pk_plaintext {Type I LastRead 6 FirstWrite -1}
		sk_pk_ciphertext {Type I LastRead 6 FirstWrite -1}
		message {Type I LastRead 15 FirstWrite -1}
		message_len {Type I LastRead 0 FirstWrite -1}
		signature {Type O LastRead -1 FirstWrite 2}
		signature_offset {Type I LastRead 0 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 7 FirstWrite -1}}
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
		commitments_hashes {Type I LastRead 6 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sk_data { ap_memory {  { sk_data_address0 mem_address 1 5 }  { sk_data_ce0 mem_ce 1 1 }  { sk_data_q0 mem_dout 0 8 }  { sk_data_address1 MemPortADDR2 1 5 }  { sk_data_ce1 MemPortCE2 1 1 }  { sk_data_q1 MemPortDOUT2 0 8 } } }
	sk_pk_plaintext { ap_memory {  { sk_pk_plaintext_address0 mem_address 1 5 }  { sk_pk_plaintext_ce0 mem_ce 1 1 }  { sk_pk_plaintext_q0 mem_dout 0 8 }  { sk_pk_plaintext_address1 MemPortADDR2 1 5 }  { sk_pk_plaintext_ce1 MemPortCE2 1 1 }  { sk_pk_plaintext_q1 MemPortDOUT2 0 8 } } }
	sk_pk_ciphertext { ap_memory {  { sk_pk_ciphertext_address0 mem_address 1 5 }  { sk_pk_ciphertext_ce0 mem_ce 1 1 }  { sk_pk_ciphertext_q0 mem_dout 0 8 }  { sk_pk_ciphertext_address1 MemPortADDR2 1 5 }  { sk_pk_ciphertext_ce1 MemPortCE2 1 1 }  { sk_pk_ciphertext_q1 MemPortDOUT2 0 8 } } }
	message { ap_memory {  { message_address0 mem_address 1 12 }  { message_ce0 mem_ce 1 1 }  { message_q0 mem_dout 0 8 } } }
	message_len { ap_none {  { message_len in_data 0 64 } } }
	signature { ap_memory {  { signature_address0 mem_address 1 16 }  { signature_ce0 mem_ce 1 1 }  { signature_we0 mem_we 1 1 }  { signature_d0 mem_din 1 8 } } }
	signature_offset { ap_none {  { signature_offset in_data 0 64 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 MemPortADDR2 1 14 }  { viewOutputs_ce1 MemPortCE2 1 1 }  { viewOutputs_q1 MemPortDOUT2 0 32 } } }
}
