#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("sm_address0", 16, hls_out, 0, "ap_memory", "mem_address", 1),
	Port_Property("sm_ce0", 1, hls_out, 0, "ap_memory", "mem_ce", 1),
	Port_Property("sm_we0", 1, hls_out, 0, "ap_memory", "mem_we", 1),
	Port_Property("sm_d0", 8, hls_out, 0, "ap_memory", "mem_din", 1),
	Port_Property("sm_address1", 16, hls_out, 0, "ap_memory", "MemPortADDR2", 1),
	Port_Property("sm_ce1", 1, hls_out, 0, "ap_memory", "MemPortCE2", 1),
	Port_Property("sm_we1", 1, hls_out, 0, "ap_memory", "MemPortWE2", 1),
	Port_Property("sm_d1", 8, hls_out, 0, "ap_memory", "MemPortDIN2", 1),
	Port_Property("smlen_address0", 1, hls_out, 1, "ap_memory", "mem_address", 1),
	Port_Property("smlen_ce0", 1, hls_out, 1, "ap_memory", "mem_ce", 1),
	Port_Property("smlen_we0", 1, hls_out, 1, "ap_memory", "mem_we", 1),
	Port_Property("smlen_d0", 64, hls_out, 1, "ap_memory", "mem_din", 1),
	Port_Property("m_address0", 12, hls_out, 2, "ap_memory", "mem_address", 1),
	Port_Property("m_ce0", 1, hls_out, 2, "ap_memory", "mem_ce", 1),
	Port_Property("m_q0", 8, hls_in, 2, "ap_memory", "mem_dout", 1),
	Port_Property("mlen", 64, hls_in, 3, "ap_none", "in_data", 1),
	Port_Property("sk_address0", 6, hls_out, 4, "ap_memory", "mem_address", 1),
	Port_Property("sk_ce0", 1, hls_out, 4, "ap_memory", "mem_ce", 1),
	Port_Property("sk_q0", 8, hls_in, 4, "ap_memory", "mem_dout", 1),
	Port_Property("sk_address1", 6, hls_out, 4, "ap_memory", "MemPortADDR2", 1),
	Port_Property("sk_ce1", 1, hls_out, 4, "ap_memory", "MemPortCE2", 1),
	Port_Property("sk_q1", 8, hls_in, 4, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("viewOutputs_address0", 14, hls_out, 5, "ap_memory", "mem_address", 1),
	Port_Property("viewOutputs_ce0", 1, hls_out, 5, "ap_memory", "mem_ce", 1),
	Port_Property("viewOutputs_we0", 1, hls_out, 5, "ap_memory", "mem_we", 1),
	Port_Property("viewOutputs_d0", 32, hls_out, 5, "ap_memory", "mem_din", 1),
	Port_Property("viewOutputs_q0", 32, hls_in, 5, "ap_memory", "mem_dout", 1),
	Port_Property("viewOutputs_address1", 14, hls_out, 5, "ap_memory", "MemPortADDR2", 1),
	Port_Property("viewOutputs_ce1", 1, hls_out, 5, "ap_memory", "MemPortCE2", 1),
	Port_Property("viewOutputs_q1", 32, hls_in, 5, "ap_memory", "MemPortDOUT2", 1),
	Port_Property("ap_return", 32, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "crypto_sign";
