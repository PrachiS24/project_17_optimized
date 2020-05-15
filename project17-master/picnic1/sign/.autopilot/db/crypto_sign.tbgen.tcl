set moduleName crypto_sign
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
set C_modelName {crypto_sign}
set C_modelType { int 32 }
set C_modelArgList {
	{ sm int 8 regular {array 37336 { 0 0 } 0 1 }  }
	{ smlen int 64 regular {array 1 { 0 3 } 0 1 }  }
	{ m int 8 regular {array 3300 { 1 3 } 1 1 }  }
	{ mlen int 64 regular  }
	{ sk int 8 regular {array 49 { 1 1 } 1 1 }  }
	{ viewOutputs int 32 regular {array 10512 { 2 1 } 1 1 } {global 2}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "sm", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sm","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 37335,"step" : 1}]}]}]} , 
 	{ "Name" : "smlen", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "smlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "m", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "m","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 3299,"step" : 1}]}]}]} , 
 	{ "Name" : "mlen", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "mlen","cData": "long long unsigned int","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "sk","cData": "unsigned char","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 48,"step" : 1}]}]}]} , 
 	{ "Name" : "viewOutputs", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "viewOutputs","cData": "unsigned int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 656,"step" : 1},{"low" : 0,"up" : 15,"step" : 1}]}]}], "extern" : 0} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32,"bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "return","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 1,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ sm_address0 sc_out sc_lv 16 signal 0 } 
	{ sm_ce0 sc_out sc_logic 1 signal 0 } 
	{ sm_we0 sc_out sc_logic 1 signal 0 } 
	{ sm_d0 sc_out sc_lv 8 signal 0 } 
	{ sm_address1 sc_out sc_lv 16 signal 0 } 
	{ sm_ce1 sc_out sc_logic 1 signal 0 } 
	{ sm_we1 sc_out sc_logic 1 signal 0 } 
	{ sm_d1 sc_out sc_lv 8 signal 0 } 
	{ smlen_address0 sc_out sc_lv 1 signal 1 } 
	{ smlen_ce0 sc_out sc_logic 1 signal 1 } 
	{ smlen_we0 sc_out sc_logic 1 signal 1 } 
	{ smlen_d0 sc_out sc_lv 64 signal 1 } 
	{ m_address0 sc_out sc_lv 12 signal 2 } 
	{ m_ce0 sc_out sc_logic 1 signal 2 } 
	{ m_q0 sc_in sc_lv 8 signal 2 } 
	{ mlen sc_in sc_lv 64 signal 3 } 
	{ sk_address0 sc_out sc_lv 6 signal 4 } 
	{ sk_ce0 sc_out sc_logic 1 signal 4 } 
	{ sk_q0 sc_in sc_lv 8 signal 4 } 
	{ sk_address1 sc_out sc_lv 6 signal 4 } 
	{ sk_ce1 sc_out sc_logic 1 signal 4 } 
	{ sk_q1 sc_in sc_lv 8 signal 4 } 
	{ viewOutputs_address0 sc_out sc_lv 14 signal 5 } 
	{ viewOutputs_ce0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_we0 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_d0 sc_out sc_lv 32 signal 5 } 
	{ viewOutputs_q0 sc_in sc_lv 32 signal 5 } 
	{ viewOutputs_address1 sc_out sc_lv 14 signal 5 } 
	{ viewOutputs_ce1 sc_out sc_logic 1 signal 5 } 
	{ viewOutputs_q1 sc_in sc_lv 32 signal 5 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "sm_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address0" }} , 
 	{ "name": "sm_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce0" }} , 
 	{ "name": "sm_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we0" }} , 
 	{ "name": "sm_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d0" }} , 
 	{ "name": "sm_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sm", "role": "address1" }} , 
 	{ "name": "sm_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "ce1" }} , 
 	{ "name": "sm_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sm", "role": "we1" }} , 
 	{ "name": "sm_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sm", "role": "d1" }} , 
 	{ "name": "smlen_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "address0" }} , 
 	{ "name": "smlen_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "ce0" }} , 
 	{ "name": "smlen_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "smlen", "role": "we0" }} , 
 	{ "name": "smlen_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "smlen", "role": "d0" }} , 
 	{ "name": "m_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "m", "role": "address0" }} , 
 	{ "name": "m_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "m", "role": "ce0" }} , 
 	{ "name": "m_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "m", "role": "q0" }} , 
 	{ "name": "mlen", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "mlen", "role": "default" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }} , 
 	{ "name": "sk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sk", "role": "address1" }} , 
 	{ "name": "sk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce1" }} , 
 	{ "name": "sk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q1" }} , 
 	{ "name": "viewOutputs_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address0" }} , 
 	{ "name": "viewOutputs_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce0" }} , 
 	{ "name": "viewOutputs_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "we0" }} , 
 	{ "name": "viewOutputs_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "d0" }} , 
 	{ "name": "viewOutputs_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q0" }} , 
 	{ "name": "viewOutputs_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "viewOutputs", "role": "address1" }} , 
 	{ "name": "viewOutputs_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "viewOutputs", "role": "ce1" }} , 
 	{ "name": "viewOutputs_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "viewOutputs", "role": "q1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "crypto_sign",
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
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_picnic_sign_fu_324"}],
		"Port" : [
			{"Name" : "sm", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "signature"}]},
			{"Name" : "smlen", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "m", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "message"}]},
			{"Name" : "mlen", "Type" : "None", "Direction" : "I"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_picnic_sign_fu_324", "Port" : "viewOutputs"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_data_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_plaintext_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.secret_pk_ciphertext_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "364"],
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
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "message"}]},
			{"Name" : "message_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "signature", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "364", "SubInstance" : "grp_serializeSignature_fu_419", "Port" : "sigBytes"}]},
			{"Name" : "signature_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_sign_picnic1_fu_390", "Port" : "viewOutputs"}]}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_seed1_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_seed2_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_inputS_U", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_commun_U", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_proofs_view3C_U", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_challengeBits_U", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.sig_0_salt_U", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp_U", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp2_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.temp3_U", "Parent" : "4"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390", "Parent" : "4", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "112", "174", "225", "282", "329", "360", "362", "363"],
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
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "privateKey"}]},
			{"Name" : "pubKey", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "publicKey"}]},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "plaintext"},
					{"ID" : "329", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "plaintext"},
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "plaintext"}]},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "message"},
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "message"}]},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "sig_0_proofs_seed1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed1"}]},
			{"Name" : "sig_0_proofs_seed2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_seed2"}]},
			{"Name" : "sig_0_proofs_inputS", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_inputShare"}]},
			{"Name" : "sig_0_proofs_commun", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_communicatedBits"}]},
			{"Name" : "sig_0_proofs_view3C", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "360", "SubInstance" : "grp_prove_25_fu_779", "Port" : "proof_0_view3Commitment"}]},
			{"Name" : "sig_0_challengeBits", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "challengeBits_0"}]},
			{"Name" : "sig_0_salt", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "salt_0"},
					{"ID" : "112", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "salt_0"},
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "salt_0"},
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "salt_0"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRhoOffsets"},
					{"ID" : "112", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRhoOffsets"},
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRhoOffsets"},
					{"ID" : "282", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRhoOffsets"},
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "225", "SubInstance" : "grp_createRandomTape_1_fu_701", "Port" : "KeccakRoundConstants"},
					{"ID" : "112", "SubInstance" : "grp_createRandomTape_fu_657", "Port" : "KeccakRoundConstants"},
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "KeccakRoundConstants"},
					{"ID" : "282", "SubInstance" : "grp_Commit_2_fu_717", "Port" : "KeccakRoundConstants"},
					{"ID" : "28", "SubInstance" : "grp_computeSeeds_2_fu_635", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "329", "SubInstance" : "grp_mpc_LowMC_2_fu_760", "Port" : "temp_matrix3"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "174", "SubInstance" : "grp_H3_2_fu_680", "Port" : "viewOutputs"}]}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.views_inputShare_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.views_communicatedBi_U", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.views_outputShare_U", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.as_hashes_U", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.seeds_seed_U", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.tape_tape_U", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.tmp_0_U", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.tmp_1_U", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.tmp_2_U", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.tmp_3_U", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.slab_assign_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.output_U", "Parent" : "15"},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635", "Parent" : "15", "Child" : ["29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "59", "79", "95", "110", "111"],
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
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "data"}]},
			{"Name" : "salt_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "data_0"}]},
			{"Name" : "privateKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "publicKey", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "message", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "messageByteLength", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRhoOffsets"},
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRhoOffsets"},
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRhoOffsets"},
					{"ID" : "79", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "59", "SubInstance" : "grp_KeccakWidth1600_Spon_3_fu_793", "Port" : "KeccakRoundConstants"},
					{"ID" : "39", "SubInstance" : "grp_KeccakWidth1600_Spon_2_fu_776", "Port" : "KeccakRoundConstants"},
					{"ID" : "95", "SubInstance" : "grp_KeccakP1600OnWords_fu_818", "Port" : "KeccakRoundConstants"},
					{"ID" : "79", "SubInstance" : "grp_HashUpdateIntLE_fu_806", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "29", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_11_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_U", "Parent" : "28"},
	{"ID" : "31", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_10_U", "Parent" : "28"},
	{"ID" : "33", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_1_U", "Parent" : "28"},
	{"ID" : "34", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_12_U", "Parent" : "28"},
	{"ID" : "35", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.temp_2_U", "Parent" : "28"},
	{"ID" : "36", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_9_U", "Parent" : "28"},
	{"ID" : "37", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.stateAsWords_8_U", "Parent" : "28"},
	{"ID" : "38", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.ctx_sponge_state_U", "Parent" : "28"},
	{"ID" : "39", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776", "Parent" : "28", "Child" : ["40", "41", "42", "57", "58"],
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
					{"ID" : "58", "SubInstance" : "grp_fromBytesToWords_fu_239", "Port" : "state"},
					{"ID" : "57", "SubInstance" : "grp_fromWordsToBytes_fu_232", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "data_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_offset1", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_KeccakP1600OnWords_fu_223", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "40", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_U", "Parent" : "39"},
	{"ID" : "41", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.stateAsWords_13_U", "Parent" : "39"},
	{"ID" : "42", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223", "Parent" : "39", "Child" : ["43", "44", "45", "52", "55"],
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
					{"ID" : "45", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "55", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "52", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRhoOffsets_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.KeccakRoundConstants_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159", "Parent" : "42", "Child" : ["46", "47", "48", "49", "50", "51"],
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
	{"ID" : "46", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.tempA_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "45"},
	{"ID" : "48", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "45"},
	{"ID" : "49", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "45"},
	{"ID" : "50", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "45"},
	{"ID" : "51", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "45"},
	{"ID" : "52", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165", "Parent" : "42", "Child" : ["53", "54"],
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
	{"ID" : "53", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.C_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_theta_fu_165.D_U", "Parent" : "52"},
	{"ID" : "55", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171", "Parent" : "42", "Child" : ["56"],
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
	{"ID" : "56", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_KeccakP1600OnWords_fu_223.grp_chi_fu_171.C_U", "Parent" : "55"},
	{"ID" : "57", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromWordsToBytes_fu_232", "Parent" : "39",
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
	{"ID" : "58", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_2_fu_776.grp_fromBytesToWords_fu_239", "Parent" : "39",
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793", "Parent" : "28", "Child" : ["60", "61", "62", "77", "78"],
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
					{"ID" : "78", "SubInstance" : "grp_fromBytesToWords_fu_198", "Port" : "state"},
					{"ID" : "77", "SubInstance" : "grp_fromWordsToBytes_fu_191", "Port" : "state"}]},
			{"Name" : "instance_byteIOIndex_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "instance_squeezing_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_KeccakP1600OnWords_fu_182", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "60", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.stateAsWords_13_U", "Parent" : "59"},
	{"ID" : "62", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182", "Parent" : "59", "Child" : ["63", "64", "65", "72", "75"],
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
					{"ID" : "65", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "75", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "72", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRhoOffsets_U", "Parent" : "62"},
	{"ID" : "64", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.KeccakRoundConstants_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159", "Parent" : "62", "Child" : ["66", "67", "68", "69", "70", "71"],
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
	{"ID" : "66", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.tempA_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "65"},
	{"ID" : "68", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "65"},
	{"ID" : "69", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "65"},
	{"ID" : "70", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "65"},
	{"ID" : "71", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "65"},
	{"ID" : "72", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165", "Parent" : "62", "Child" : ["73", "74"],
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
	{"ID" : "73", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.C_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_theta_fu_165.D_U", "Parent" : "72"},
	{"ID" : "75", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171", "Parent" : "62", "Child" : ["76"],
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
	{"ID" : "76", "Level" : "7", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_KeccakP1600OnWords_fu_182.grp_chi_fu_171.C_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromWordsToBytes_fu_191", "Parent" : "59",
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
	{"ID" : "78", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakWidth1600_Spon_3_fu_793.grp_fromBytesToWords_fu_198", "Parent" : "59",
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
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806", "Parent" : "28", "Child" : ["80", "81", "82", "83", "90", "93"],
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
	{"ID" : "80", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRhoOffsets_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.KeccakRoundConstants_U", "Parent" : "79"},
	{"ID" : "82", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.stateAsWords_U", "Parent" : "79"},
	{"ID" : "83", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363", "Parent" : "79", "Child" : ["84", "85", "86", "87", "88", "89"],
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
	{"ID" : "84", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.tempA_U", "Parent" : "83"},
	{"ID" : "85", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "83"},
	{"ID" : "86", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "83"},
	{"ID" : "87", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "83"},
	{"ID" : "88", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "83"},
	{"ID" : "89", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "83"},
	{"ID" : "90", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368", "Parent" : "79", "Child" : ["91", "92"],
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
	{"ID" : "91", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.C_U", "Parent" : "90"},
	{"ID" : "92", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_theta_fu_368.D_U", "Parent" : "90"},
	{"ID" : "93", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373", "Parent" : "79", "Child" : ["94"],
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
	{"ID" : "94", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_HashUpdateIntLE_fu_806.grp_chi_fu_373.C_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818", "Parent" : "28", "Child" : ["96", "97", "98", "105", "108"],
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
					{"ID" : "98", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "108", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "105", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "96", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRhoOffsets_U", "Parent" : "95"},
	{"ID" : "97", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.KeccakRoundConstants_U", "Parent" : "95"},
	{"ID" : "98", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159", "Parent" : "95", "Child" : ["99", "100", "101", "102", "103", "104"],
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
	{"ID" : "99", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.tempA_U", "Parent" : "98"},
	{"ID" : "100", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "98"},
	{"ID" : "101", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "98"},
	{"ID" : "102", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "98"},
	{"ID" : "103", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "98"},
	{"ID" : "104", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "98"},
	{"ID" : "105", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165", "Parent" : "95", "Child" : ["106", "107"],
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
	{"ID" : "106", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.C_U", "Parent" : "105"},
	{"ID" : "107", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_theta_fu_165.D_U", "Parent" : "105"},
	{"ID" : "108", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171", "Parent" : "95", "Child" : ["109"],
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
	{"ID" : "109", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_KeccakP1600OnWords_fu_818.grp_chi_fu_171.C_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_fromWordsToBytes_fu_827", "Parent" : "28",
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
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_computeSeeds_2_fu_635.grp_fromBytesToWords_fu_833", "Parent" : "28",
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
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657", "Parent" : "15", "Child" : ["113", "114", "115", "116", "117", "118", "119", "120", "139", "155", "170", "171", "172", "173"],
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
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_0"}]},
			{"Name" : "tape_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_1"}]},
			{"Name" : "tape_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_2"}]},
			{"Name" : "tape_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "data_3"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRhoOffsets"},
					{"ID" : "155", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRhoOffsets"},
					{"ID" : "139", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "120", "SubInstance" : "grp_KeccakWidth1600_Spon_5_fu_487", "Port" : "KeccakRoundConstants"},
					{"ID" : "155", "SubInstance" : "grp_KeccakP1600OnWords_fu_519", "Port" : "KeccakRoundConstants"},
					{"ID" : "139", "SubInstance" : "grp_HashUpdateIntLE_fu_507", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_4_U", "Parent" : "112"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_6_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_U", "Parent" : "112"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_1_U", "Parent" : "112"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_5_U", "Parent" : "112"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.stateAsWords_7_U", "Parent" : "112"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.ctx_sponge_state_U", "Parent" : "112"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487", "Parent" : "112", "Child" : ["121", "122", "123", "124", "127", "134", "137"],
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
					{"ID" : "124", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "state"}]},
			{"Name" : "data_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_0"}]},
			{"Name" : "data_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_1"}]},
			{"Name" : "data_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_2"}]},
			{"Name" : "data_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "124", "SubInstance" : "grp_KeccakP1600_ExtractB_fu_355", "Port" : "data_3"}]},
			{"Name" : "dataByteLen", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "121", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRhoOffsets_U", "Parent" : "120"},
	{"ID" : "122", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.KeccakRoundConstants_U", "Parent" : "120"},
	{"ID" : "123", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.stateAsWords_U", "Parent" : "120"},
	{"ID" : "124", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355", "Parent" : "120", "Child" : ["125", "126"],
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
	{"ID" : "125", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_urem_wdI_U44", "Parent" : "124"},
	{"ID" : "126", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_KeccakP1600_ExtractB_fu_355.crypto_sign_mul_6xdS_U45", "Parent" : "124"},
	{"ID" : "127", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374", "Parent" : "120", "Child" : ["128", "129", "130", "131", "132", "133"],
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
	{"ID" : "128", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.tempA_U", "Parent" : "127"},
	{"ID" : "129", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_bkb_U6", "Parent" : "127"},
	{"ID" : "130", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U7", "Parent" : "127"},
	{"ID" : "131", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_cud_U8", "Parent" : "127"},
	{"ID" : "132", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U9", "Parent" : "127"},
	{"ID" : "133", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_pi_fu_374.crypto_sign_urem_dEe_U10", "Parent" : "127"},
	{"ID" : "134", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379", "Parent" : "120", "Child" : ["135", "136"],
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
	{"ID" : "135", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.C_U", "Parent" : "134"},
	{"ID" : "136", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_theta_fu_379.D_U", "Parent" : "134"},
	{"ID" : "137", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384", "Parent" : "120", "Child" : ["138"],
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
	{"ID" : "138", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakWidth1600_Spon_5_fu_487.grp_chi_fu_384.C_U", "Parent" : "137"},
	{"ID" : "139", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507", "Parent" : "112", "Child" : ["140", "141", "142", "143", "150", "153"],
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
	{"ID" : "140", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRhoOffsets_U", "Parent" : "139"},
	{"ID" : "141", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.KeccakRoundConstants_U", "Parent" : "139"},
	{"ID" : "142", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.stateAsWords_U", "Parent" : "139"},
	{"ID" : "143", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363", "Parent" : "139", "Child" : ["144", "145", "146", "147", "148", "149"],
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
	{"ID" : "144", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.tempA_U", "Parent" : "143"},
	{"ID" : "145", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "143"},
	{"ID" : "146", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "143"},
	{"ID" : "147", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "143"},
	{"ID" : "148", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "143"},
	{"ID" : "149", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "143"},
	{"ID" : "150", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368", "Parent" : "139", "Child" : ["151", "152"],
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
	{"ID" : "151", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.C_U", "Parent" : "150"},
	{"ID" : "152", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_theta_fu_368.D_U", "Parent" : "150"},
	{"ID" : "153", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373", "Parent" : "139", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_HashUpdateIntLE_fu_507.grp_chi_fu_373.C_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519", "Parent" : "112", "Child" : ["156", "157", "158", "165", "168"],
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
					{"ID" : "158", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "168", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "165", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "156", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRhoOffsets_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.KeccakRoundConstants_U", "Parent" : "155"},
	{"ID" : "158", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159", "Parent" : "155", "Child" : ["159", "160", "161", "162", "163", "164"],
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
	{"ID" : "159", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.tempA_U", "Parent" : "158"},
	{"ID" : "160", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "158"},
	{"ID" : "161", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "158"},
	{"ID" : "162", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "158"},
	{"ID" : "163", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "158"},
	{"ID" : "164", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "158"},
	{"ID" : "165", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165", "Parent" : "155", "Child" : ["166", "167"],
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
	{"ID" : "166", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.C_U", "Parent" : "165"},
	{"ID" : "167", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_theta_fu_165.D_U", "Parent" : "165"},
	{"ID" : "168", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171", "Parent" : "155", "Child" : ["169"],
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
	{"ID" : "169", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_KeccakP1600OnWords_fu_519.grp_chi_fu_171.C_U", "Parent" : "168"},
	{"ID" : "170", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_fromWordsToBytes_fu_528", "Parent" : "112",
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
	{"ID" : "171", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.grp_fromBytesToWords_fu_534", "Parent" : "112",
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
	{"ID" : "172", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.crypto_sign_urem_IfE_U62", "Parent" : "112"},
	{"ID" : "173", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_fu_657.crypto_sign_mux_4JfO_U63", "Parent" : "112"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680", "Parent" : "15", "Child" : ["175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "208", "223", "224"],
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
					{"ID" : "192", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRhoOffsets"},
					{"ID" : "208", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "192", "SubInstance" : "grp_KeccakWidth1600_Spon_4_fu_1218", "Port" : "KeccakRoundConstants"},
					{"ID" : "208", "SubInstance" : "grp_KeccakP1600OnWords_fu_1228", "Port" : "KeccakRoundConstants"}]},
			{"Name" : "viewOutputs", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "175", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_18_U", "Parent" : "174"},
	{"ID" : "176", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_22_U", "Parent" : "174"},
	{"ID" : "177", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_15_U", "Parent" : "174"},
	{"ID" : "178", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_U", "Parent" : "174"},
	{"ID" : "179", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_17_U", "Parent" : "174"},
	{"ID" : "180", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_4_U", "Parent" : "174"},
	{"ID" : "181", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_16_U", "Parent" : "174"},
	{"ID" : "182", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.temp_3_U", "Parent" : "174"},
	{"ID" : "183", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_U", "Parent" : "174"},
	{"ID" : "184", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_23_U", "Parent" : "174"},
	{"ID" : "185", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_14_U", "Parent" : "174"},
	{"ID" : "186", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_19_U", "Parent" : "174"},
	{"ID" : "187", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_21_U", "Parent" : "174"},
	{"ID" : "188", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_20_U", "Parent" : "174"},
	{"ID" : "189", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.stateAsWords_24_U", "Parent" : "174"},
	{"ID" : "190", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.hash_U", "Parent" : "174"},
	{"ID" : "191", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.ctx_sponge_state_U", "Parent" : "174"},
	{"ID" : "192", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218", "Parent" : "174", "Child" : ["193", "194", "195", "196", "203", "206"],
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
	{"ID" : "193", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRhoOffsets_U", "Parent" : "192"},
	{"ID" : "194", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.KeccakRoundConstants_U", "Parent" : "192"},
	{"ID" : "195", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.stateAsWords_U", "Parent" : "192"},
	{"ID" : "196", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380", "Parent" : "192", "Child" : ["197", "198", "199", "200", "201", "202"],
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
	{"ID" : "197", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.tempA_U", "Parent" : "196"},
	{"ID" : "198", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_bkb_U6", "Parent" : "196"},
	{"ID" : "199", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U7", "Parent" : "196"},
	{"ID" : "200", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_cud_U8", "Parent" : "196"},
	{"ID" : "201", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U9", "Parent" : "196"},
	{"ID" : "202", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_pi_fu_380.crypto_sign_urem_dEe_U10", "Parent" : "196"},
	{"ID" : "203", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385", "Parent" : "192", "Child" : ["204", "205"],
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
	{"ID" : "204", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.C_U", "Parent" : "203"},
	{"ID" : "205", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_theta_fu_385.D_U", "Parent" : "203"},
	{"ID" : "206", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390", "Parent" : "192", "Child" : ["207"],
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
	{"ID" : "207", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakWidth1600_Spon_4_fu_1218.grp_chi_fu_390.C_U", "Parent" : "206"},
	{"ID" : "208", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228", "Parent" : "174", "Child" : ["209", "210", "211", "218", "221"],
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
					{"ID" : "211", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "221", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "218", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "209", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRhoOffsets_U", "Parent" : "208"},
	{"ID" : "210", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.KeccakRoundConstants_U", "Parent" : "208"},
	{"ID" : "211", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159", "Parent" : "208", "Child" : ["212", "213", "214", "215", "216", "217"],
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
	{"ID" : "212", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.tempA_U", "Parent" : "211"},
	{"ID" : "213", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "211"},
	{"ID" : "214", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "211"},
	{"ID" : "215", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "211"},
	{"ID" : "216", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "211"},
	{"ID" : "217", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "211"},
	{"ID" : "218", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165", "Parent" : "208", "Child" : ["219", "220"],
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
	{"ID" : "219", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.C_U", "Parent" : "218"},
	{"ID" : "220", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_theta_fu_165.D_U", "Parent" : "218"},
	{"ID" : "221", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171", "Parent" : "208", "Child" : ["222"],
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
	{"ID" : "222", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_KeccakP1600OnWords_fu_1228.grp_chi_fu_171.C_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_fromWordsToBytes_fu_1237", "Parent" : "174",
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
	{"ID" : "224", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_H3_2_fu_680.grp_fromBytesToWords_fu_1243", "Parent" : "174",
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
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701", "Parent" : "15", "Child" : ["226", "227", "228", "229", "230", "231", "232", "233", "249", "265", "280", "281"],
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
					{"ID" : "233", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "data"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRhoOffsets"},
					{"ID" : "265", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRhoOffsets"},
					{"ID" : "249", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "233", "SubInstance" : "grp_KeccakWidth1600_Spon_1_fu_419", "Port" : "KeccakRoundConstants"},
					{"ID" : "265", "SubInstance" : "grp_KeccakP1600OnWords_fu_446", "Port" : "KeccakRoundConstants"},
					{"ID" : "249", "SubInstance" : "grp_HashUpdateIntLE_fu_433", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_2_U", "Parent" : "225"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_3_U", "Parent" : "225"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_U", "Parent" : "225"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_1_U", "Parent" : "225"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_4_U", "Parent" : "225"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.stateAsWords_5_U", "Parent" : "225"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.ctx_sponge_state_U", "Parent" : "225"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419", "Parent" : "225", "Child" : ["234", "235", "236", "237", "244", "247"],
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
	{"ID" : "234", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRhoOffsets_U", "Parent" : "233"},
	{"ID" : "235", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.KeccakRoundConstants_U", "Parent" : "233"},
	{"ID" : "236", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.stateAsWords_U", "Parent" : "233"},
	{"ID" : "237", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382", "Parent" : "233", "Child" : ["238", "239", "240", "241", "242", "243"],
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
	{"ID" : "238", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.tempA_U", "Parent" : "237"},
	{"ID" : "239", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_bkb_U6", "Parent" : "237"},
	{"ID" : "240", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U7", "Parent" : "237"},
	{"ID" : "241", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_cud_U8", "Parent" : "237"},
	{"ID" : "242", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U9", "Parent" : "237"},
	{"ID" : "243", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_pi_fu_382.crypto_sign_urem_dEe_U10", "Parent" : "237"},
	{"ID" : "244", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387", "Parent" : "233", "Child" : ["245", "246"],
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
	{"ID" : "245", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.C_U", "Parent" : "244"},
	{"ID" : "246", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_theta_fu_387.D_U", "Parent" : "244"},
	{"ID" : "247", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392", "Parent" : "233", "Child" : ["248"],
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
	{"ID" : "248", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakWidth1600_Spon_1_fu_419.grp_chi_fu_392.C_U", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433", "Parent" : "225", "Child" : ["250", "251", "252", "253", "260", "263"],
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
	{"ID" : "250", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRhoOffsets_U", "Parent" : "249"},
	{"ID" : "251", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.KeccakRoundConstants_U", "Parent" : "249"},
	{"ID" : "252", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.stateAsWords_U", "Parent" : "249"},
	{"ID" : "253", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363", "Parent" : "249", "Child" : ["254", "255", "256", "257", "258", "259"],
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
	{"ID" : "254", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.tempA_U", "Parent" : "253"},
	{"ID" : "255", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_bkb_U6", "Parent" : "253"},
	{"ID" : "256", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U7", "Parent" : "253"},
	{"ID" : "257", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_cud_U8", "Parent" : "253"},
	{"ID" : "258", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U9", "Parent" : "253"},
	{"ID" : "259", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_pi_fu_363.crypto_sign_urem_dEe_U10", "Parent" : "253"},
	{"ID" : "260", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368", "Parent" : "249", "Child" : ["261", "262"],
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
	{"ID" : "261", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.C_U", "Parent" : "260"},
	{"ID" : "262", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_theta_fu_368.D_U", "Parent" : "260"},
	{"ID" : "263", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373", "Parent" : "249", "Child" : ["264"],
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
	{"ID" : "264", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_HashUpdateIntLE_fu_433.grp_chi_fu_373.C_U", "Parent" : "263"},
	{"ID" : "265", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446", "Parent" : "225", "Child" : ["266", "267", "268", "275", "278"],
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
					{"ID" : "268", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "278", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "275", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "266", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRhoOffsets_U", "Parent" : "265"},
	{"ID" : "267", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.KeccakRoundConstants_U", "Parent" : "265"},
	{"ID" : "268", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159", "Parent" : "265", "Child" : ["269", "270", "271", "272", "273", "274"],
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
	{"ID" : "269", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.tempA_U", "Parent" : "268"},
	{"ID" : "270", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "268"},
	{"ID" : "271", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "268"},
	{"ID" : "272", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "268"},
	{"ID" : "273", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "268"},
	{"ID" : "274", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "268"},
	{"ID" : "275", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165", "Parent" : "265", "Child" : ["276", "277"],
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
	{"ID" : "276", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.C_U", "Parent" : "275"},
	{"ID" : "277", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_theta_fu_165.D_U", "Parent" : "275"},
	{"ID" : "278", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171", "Parent" : "265", "Child" : ["279"],
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
	{"ID" : "279", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_KeccakP1600OnWords_fu_446.grp_chi_fu_171.C_U", "Parent" : "278"},
	{"ID" : "280", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_fromWordsToBytes_fu_455", "Parent" : "225",
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
	{"ID" : "281", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_createRandomTape_1_fu_701.grp_fromBytesToWords_fu_461", "Parent" : "225",
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
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717", "Parent" : "15", "Child" : ["283", "284", "285", "286", "287", "288", "289", "290", "291", "292", "293", "294", "295", "311", "326", "327", "328"],
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
					{"ID" : "295", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "data"}]},
			{"Name" : "hash_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "hash_offset6", "Type" : "None", "Direction" : "I"},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRhoOffsets"},
					{"ID" : "311", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRhoOffsets"}]},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "295", "SubInstance" : "grp_KeccakWidth1600_Spon_fu_827", "Port" : "KeccakRoundConstants"},
					{"ID" : "311", "SubInstance" : "grp_KeccakP1600OnWords_fu_840", "Port" : "KeccakRoundConstants"}]}]},
	{"ID" : "283", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_25_U", "Parent" : "282"},
	{"ID" : "284", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_31_U", "Parent" : "282"},
	{"ID" : "285", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_29_U", "Parent" : "282"},
	{"ID" : "286", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.temp_U", "Parent" : "282"},
	{"ID" : "287", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_32_U", "Parent" : "282"},
	{"ID" : "288", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.temp_5_U", "Parent" : "282"},
	{"ID" : "289", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_U", "Parent" : "282"},
	{"ID" : "290", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_27_U", "Parent" : "282"},
	{"ID" : "291", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_26_U", "Parent" : "282"},
	{"ID" : "292", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_28_U", "Parent" : "282"},
	{"ID" : "293", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.stateAsWords_30_U", "Parent" : "282"},
	{"ID" : "294", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.ctx_sponge_state_U", "Parent" : "282"},
	{"ID" : "295", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827", "Parent" : "282", "Child" : ["296", "297", "298", "299", "306", "309"],
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
	{"ID" : "296", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRhoOffsets_U", "Parent" : "295"},
	{"ID" : "297", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.KeccakRoundConstants_U", "Parent" : "295"},
	{"ID" : "298", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.stateAsWords_U", "Parent" : "295"},
	{"ID" : "299", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404", "Parent" : "295", "Child" : ["300", "301", "302", "303", "304", "305"],
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
	{"ID" : "300", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.tempA_U", "Parent" : "299"},
	{"ID" : "301", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_bkb_U6", "Parent" : "299"},
	{"ID" : "302", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U7", "Parent" : "299"},
	{"ID" : "303", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_cud_U8", "Parent" : "299"},
	{"ID" : "304", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U9", "Parent" : "299"},
	{"ID" : "305", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_pi_fu_404.crypto_sign_urem_dEe_U10", "Parent" : "299"},
	{"ID" : "306", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409", "Parent" : "295", "Child" : ["307", "308"],
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
	{"ID" : "307", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.C_U", "Parent" : "306"},
	{"ID" : "308", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_theta_fu_409.D_U", "Parent" : "306"},
	{"ID" : "309", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414", "Parent" : "295", "Child" : ["310"],
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
	{"ID" : "310", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakWidth1600_Spon_fu_827.grp_chi_fu_414.C_U", "Parent" : "309"},
	{"ID" : "311", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840", "Parent" : "282", "Child" : ["312", "313", "314", "321", "324"],
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
					{"ID" : "314", "SubInstance" : "grp_pi_fu_159", "Port" : "A"},
					{"ID" : "324", "SubInstance" : "grp_chi_fu_171", "Port" : "A"},
					{"ID" : "321", "SubInstance" : "grp_theta_fu_165", "Port" : "A"}]},
			{"Name" : "KeccakRhoOffsets", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "KeccakRoundConstants", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "312", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRhoOffsets_U", "Parent" : "311"},
	{"ID" : "313", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.KeccakRoundConstants_U", "Parent" : "311"},
	{"ID" : "314", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159", "Parent" : "311", "Child" : ["315", "316", "317", "318", "319", "320"],
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
	{"ID" : "315", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.tempA_U", "Parent" : "314"},
	{"ID" : "316", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_bkb_U6", "Parent" : "314"},
	{"ID" : "317", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U7", "Parent" : "314"},
	{"ID" : "318", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_cud_U8", "Parent" : "314"},
	{"ID" : "319", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U9", "Parent" : "314"},
	{"ID" : "320", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_pi_fu_159.crypto_sign_urem_dEe_U10", "Parent" : "314"},
	{"ID" : "321", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165", "Parent" : "311", "Child" : ["322", "323"],
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
	{"ID" : "322", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.C_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_theta_fu_165.D_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171", "Parent" : "311", "Child" : ["325"],
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
	{"ID" : "325", "Level" : "6", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_KeccakP1600OnWords_fu_840.grp_chi_fu_171.C_U", "Parent" : "324"},
	{"ID" : "326", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_fromWordsToBytes_fu_849", "Parent" : "282",
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
	{"ID" : "327", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.grp_fromBytesToWords_fu_855", "Parent" : "282",
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
	{"ID" : "328", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_Commit_2_fu_717.crypto_sign_mul_mbdk_U146", "Parent" : "282"},
	{"ID" : "329", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760", "Parent" : "15", "Child" : ["330", "331", "335", "339", "347", "348", "349", "350", "351", "352", "353", "354", "355", "356", "357", "358", "359"],
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
					{"ID" : "339", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "rand_tape"}]},
			{"Name" : "views_inputShare", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "state"}]},
			{"Name" : "views_inputShare_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "views_communicatedBi", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "339", "SubInstance" : "grp_mpc_AND_2_fu_991", "Port" : "views_communicatedBi"}]},
			{"Name" : "views_outputShare", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "plaintext", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "slab", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "output_r"},
					{"ID" : "331", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "output_r"}]},
			{"Name" : "temp_matrix", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "331", "SubInstance" : "grp_matrix_mul_fu_957", "Port" : "temp_matrix"}]},
			{"Name" : "temp_matrix2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "335", "SubInstance" : "grp_matrix_mul_1_fu_978", "Port" : "temp_matrix2"}]},
			{"Name" : "temp_matrix3", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "330", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.temp_matrix3_U", "Parent" : "329"},
	{"ID" : "331", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957", "Parent" : "329", "Child" : ["332", "333", "334"],
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
	{"ID" : "332", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_matrix_U", "Parent" : "331"},
	{"ID" : "333", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.prod_U", "Parent" : "331"},
	{"ID" : "334", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_fu_957.temp_U", "Parent" : "331"},
	{"ID" : "335", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978", "Parent" : "329", "Child" : ["336", "337", "338"],
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
	{"ID" : "336", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_matrix2_U", "Parent" : "335"},
	{"ID" : "337", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.prod_U", "Parent" : "335"},
	{"ID" : "338", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_matrix_mul_1_fu_978.temp_U", "Parent" : "335"},
	{"ID" : "339", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991", "Parent" : "329", "Child" : ["340", "341", "342", "343", "344", "345", "346"],
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
	{"ID" : "340", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U94", "Parent" : "339"},
	{"ID" : "341", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U95", "Parent" : "339"},
	{"ID" : "342", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U96", "Parent" : "339"},
	{"ID" : "343", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U97", "Parent" : "339"},
	{"ID" : "344", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U98", "Parent" : "339"},
	{"ID" : "345", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mux_3VhK_U99", "Parent" : "339"},
	{"ID" : "346", "Level" : "5", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.grp_mpc_AND_2_fu_991.crypto_sign_mac_mWhU_U100", "Parent" : "339"},
	{"ID" : "347", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U120", "Parent" : "329"},
	{"ID" : "348", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U121", "Parent" : "329"},
	{"ID" : "349", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U122", "Parent" : "329"},
	{"ID" : "350", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U123", "Parent" : "329"},
	{"ID" : "351", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U124", "Parent" : "329"},
	{"ID" : "352", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U125", "Parent" : "329"},
	{"ID" : "353", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U126", "Parent" : "329"},
	{"ID" : "354", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U127", "Parent" : "329"},
	{"ID" : "355", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U128", "Parent" : "329"},
	{"ID" : "356", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_3VhK_U129", "Parent" : "329"},
	{"ID" : "357", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U130", "Parent" : "329"},
	{"ID" : "358", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U131", "Parent" : "329"},
	{"ID" : "359", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_mpc_LowMC_2_fu_760.crypto_sign_mux_4Zio_U132", "Parent" : "329"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_prove_25_fu_779", "Parent" : "15", "Child" : ["361"],
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
	{"ID" : "361", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.grp_prove_25_fu_779.crypto_sign_mul_mbdk_U174", "Parent" : "360"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.crypto_sign_urem_bAo_U186", "Parent" : "15"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_sign_picnic1_fu_390.crypto_sign_mux_4bBo_U187", "Parent" : "15"},
	{"ID" : "364", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_picnic_sign_fu_324.grp_serializeSignature_fu_419", "Parent" : "4",
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
	crypto_sign {
		sm {Type O LastRead -1 FirstWrite 2}
		smlen {Type O LastRead -1 FirstWrite 4}
		m {Type I LastRead 15 FirstWrite -1}
		mlen {Type I LastRead 1 FirstWrite -1}
		sk {Type I LastRead 4 FirstWrite -1}
		KeccakRhoOffsets {Type I LastRead -1 FirstWrite -1}
		KeccakRoundConstants {Type I LastRead -1 FirstWrite -1}
		temp_matrix {Type I LastRead -1 FirstWrite -1}
		temp_matrix2 {Type I LastRead -1 FirstWrite -1}
		temp_matrix3 {Type I LastRead -1 FirstWrite -1}
		viewOutputs {Type IO LastRead 7 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	sm { ap_memory {  { sm_address0 mem_address 1 16 }  { sm_ce0 mem_ce 1 1 }  { sm_we0 mem_we 1 1 }  { sm_d0 mem_din 1 8 }  { sm_address1 MemPortADDR2 1 16 }  { sm_ce1 MemPortCE2 1 1 }  { sm_we1 MemPortWE2 1 1 }  { sm_d1 MemPortDIN2 1 8 } } }
	smlen { ap_memory {  { smlen_address0 mem_address 1 1 }  { smlen_ce0 mem_ce 1 1 }  { smlen_we0 mem_we 1 1 }  { smlen_d0 mem_din 1 64 } } }
	m { ap_memory {  { m_address0 mem_address 1 12 }  { m_ce0 mem_ce 1 1 }  { m_q0 mem_dout 0 8 } } }
	mlen { ap_none {  { mlen in_data 0 64 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 6 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 }  { sk_address1 MemPortADDR2 1 6 }  { sk_ce1 MemPortCE2 1 1 }  { sk_q1 MemPortDOUT2 0 8 } } }
	viewOutputs { ap_memory {  { viewOutputs_address0 mem_address 1 14 }  { viewOutputs_ce0 mem_ce 1 1 }  { viewOutputs_we0 mem_we 1 1 }  { viewOutputs_d0 mem_din 1 32 }  { viewOutputs_q0 mem_dout 0 32 }  { viewOutputs_address1 MemPortADDR2 1 14 }  { viewOutputs_ce1 MemPortCE2 1 1 }  { viewOutputs_q1 MemPortDOUT2 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
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
