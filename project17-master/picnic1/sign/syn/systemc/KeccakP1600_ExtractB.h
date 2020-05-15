// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakP1600_ExtractB_HH_
#define _KeccakP1600_ExtractB_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_urem_wdI.h"
#include "crypto_sign_mul_6xdS.h"

namespace ap_rtl {

struct KeccakP1600_ExtractB : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > state_address0;
    sc_out< sc_logic > state_ce0;
    sc_in< sc_lv<8> > state_q0;
    sc_out< sc_lv<6> > data_0_address0;
    sc_out< sc_logic > data_0_ce0;
    sc_out< sc_logic > data_0_we0;
    sc_out< sc_lv<8> > data_0_d0;
    sc_out< sc_lv<6> > data_1_address0;
    sc_out< sc_logic > data_1_ce0;
    sc_out< sc_logic > data_1_we0;
    sc_out< sc_lv<8> > data_1_d0;
    sc_out< sc_lv<6> > data_2_address0;
    sc_out< sc_logic > data_2_ce0;
    sc_out< sc_logic > data_2_we0;
    sc_out< sc_lv<8> > data_2_d0;
    sc_out< sc_lv<6> > data_3_address0;
    sc_out< sc_logic > data_3_ce0;
    sc_out< sc_logic > data_3_we0;
    sc_out< sc_lv<8> > data_3_d0;
    sc_in< sc_lv<64> > data_offset;
    sc_in< sc_lv<32> > offset;
    sc_in< sc_lv<32> > length_r;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    KeccakP1600_ExtractB(sc_module_name name);
    SC_HAS_PROCESS(KeccakP1600_ExtractB);

    ~KeccakP1600_ExtractB();

    sc_trace_file* mVcdFile;

    crypto_sign_urem_wdI<1,68,64,7,64>* crypto_sign_urem_wdI_U44;
    crypto_sign_mul_6xdS<1,2,64,66,129>* crypto_sign_mul_6xdS_U45;
    sc_signal< sc_lv<69> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<32> > loop_fu_141_p2;
    sc_signal< sc_lv<32> > loop_reg_213;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln393_fu_136_p2;
    sc_signal< sc_lv<64> > add_ln394_2_fu_161_p2;
    sc_signal< sc_lv<64> > add_ln394_2_reg_223;
    sc_signal< sc_lv<8> > state_load_reg_229;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<59> > tmp_reg_242;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > loop_0_reg_125;
    sc_signal< sc_logic > ap_CS_fsm_state69;
    sc_signal< sc_lv<64> > zext_ln394_fu_152_p1;
    sc_signal< sc_lv<64> > grp_fu_166_p2;
    sc_signal< sc_lv<32> > add_ln394_fu_147_p2;
    sc_signal< sc_lv<64> > sext_ln394_fu_157_p1;
    sc_signal< sc_lv<64> > grp_fu_166_p0;
    sc_signal< sc_lv<7> > grp_fu_166_p1;
    sc_signal< sc_lv<64> > grp_fu_179_p0;
    sc_signal< sc_lv<66> > grp_fu_179_p1;
    sc_signal< sc_lv<129> > grp_fu_179_p2;
    sc_signal< sc_logic > grp_fu_166_ap_start;
    sc_signal< sc_logic > grp_fu_166_ap_done;
    sc_signal< sc_lv<69> > ap_NS_fsm;
    sc_signal< sc_lv<129> > grp_fu_179_p00;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<69> ap_ST_fsm_state1;
    static const sc_lv<69> ap_ST_fsm_state2;
    static const sc_lv<69> ap_ST_fsm_state3;
    static const sc_lv<69> ap_ST_fsm_state4;
    static const sc_lv<69> ap_ST_fsm_state5;
    static const sc_lv<69> ap_ST_fsm_state6;
    static const sc_lv<69> ap_ST_fsm_state7;
    static const sc_lv<69> ap_ST_fsm_state8;
    static const sc_lv<69> ap_ST_fsm_state9;
    static const sc_lv<69> ap_ST_fsm_state10;
    static const sc_lv<69> ap_ST_fsm_state11;
    static const sc_lv<69> ap_ST_fsm_state12;
    static const sc_lv<69> ap_ST_fsm_state13;
    static const sc_lv<69> ap_ST_fsm_state14;
    static const sc_lv<69> ap_ST_fsm_state15;
    static const sc_lv<69> ap_ST_fsm_state16;
    static const sc_lv<69> ap_ST_fsm_state17;
    static const sc_lv<69> ap_ST_fsm_state18;
    static const sc_lv<69> ap_ST_fsm_state19;
    static const sc_lv<69> ap_ST_fsm_state20;
    static const sc_lv<69> ap_ST_fsm_state21;
    static const sc_lv<69> ap_ST_fsm_state22;
    static const sc_lv<69> ap_ST_fsm_state23;
    static const sc_lv<69> ap_ST_fsm_state24;
    static const sc_lv<69> ap_ST_fsm_state25;
    static const sc_lv<69> ap_ST_fsm_state26;
    static const sc_lv<69> ap_ST_fsm_state27;
    static const sc_lv<69> ap_ST_fsm_state28;
    static const sc_lv<69> ap_ST_fsm_state29;
    static const sc_lv<69> ap_ST_fsm_state30;
    static const sc_lv<69> ap_ST_fsm_state31;
    static const sc_lv<69> ap_ST_fsm_state32;
    static const sc_lv<69> ap_ST_fsm_state33;
    static const sc_lv<69> ap_ST_fsm_state34;
    static const sc_lv<69> ap_ST_fsm_state35;
    static const sc_lv<69> ap_ST_fsm_state36;
    static const sc_lv<69> ap_ST_fsm_state37;
    static const sc_lv<69> ap_ST_fsm_state38;
    static const sc_lv<69> ap_ST_fsm_state39;
    static const sc_lv<69> ap_ST_fsm_state40;
    static const sc_lv<69> ap_ST_fsm_state41;
    static const sc_lv<69> ap_ST_fsm_state42;
    static const sc_lv<69> ap_ST_fsm_state43;
    static const sc_lv<69> ap_ST_fsm_state44;
    static const sc_lv<69> ap_ST_fsm_state45;
    static const sc_lv<69> ap_ST_fsm_state46;
    static const sc_lv<69> ap_ST_fsm_state47;
    static const sc_lv<69> ap_ST_fsm_state48;
    static const sc_lv<69> ap_ST_fsm_state49;
    static const sc_lv<69> ap_ST_fsm_state50;
    static const sc_lv<69> ap_ST_fsm_state51;
    static const sc_lv<69> ap_ST_fsm_state52;
    static const sc_lv<69> ap_ST_fsm_state53;
    static const sc_lv<69> ap_ST_fsm_state54;
    static const sc_lv<69> ap_ST_fsm_state55;
    static const sc_lv<69> ap_ST_fsm_state56;
    static const sc_lv<69> ap_ST_fsm_state57;
    static const sc_lv<69> ap_ST_fsm_state58;
    static const sc_lv<69> ap_ST_fsm_state59;
    static const sc_lv<69> ap_ST_fsm_state60;
    static const sc_lv<69> ap_ST_fsm_state61;
    static const sc_lv<69> ap_ST_fsm_state62;
    static const sc_lv<69> ap_ST_fsm_state63;
    static const sc_lv<69> ap_ST_fsm_state64;
    static const sc_lv<69> ap_ST_fsm_state65;
    static const sc_lv<69> ap_ST_fsm_state66;
    static const sc_lv<69> ap_ST_fsm_state67;
    static const sc_lv<69> ap_ST_fsm_state68;
    static const sc_lv<69> ap_ST_fsm_state69;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_44;
    static const sc_lv<59> ap_const_lv59_2;
    static const sc_lv<59> ap_const_lv59_1;
    static const sc_lv<59> ap_const_lv59_0;
    static const sc_lv<64> ap_const_lv64_24;
    static const sc_lv<129> ap_const_lv129_lc_1;
    static const sc_lv<32> ap_const_lv32_46;
    static const sc_lv<32> ap_const_lv32_80;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln394_2_fu_161_p2();
    void thread_add_ln394_fu_147_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state69();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_data_0_address0();
    void thread_data_0_ce0();
    void thread_data_0_d0();
    void thread_data_0_we0();
    void thread_data_1_address0();
    void thread_data_1_ce0();
    void thread_data_1_d0();
    void thread_data_1_we0();
    void thread_data_2_address0();
    void thread_data_2_ce0();
    void thread_data_2_d0();
    void thread_data_2_we0();
    void thread_data_3_address0();
    void thread_data_3_ce0();
    void thread_data_3_d0();
    void thread_data_3_we0();
    void thread_grp_fu_166_ap_start();
    void thread_grp_fu_166_p0();
    void thread_grp_fu_166_p1();
    void thread_grp_fu_179_p0();
    void thread_grp_fu_179_p00();
    void thread_grp_fu_179_p1();
    void thread_icmp_ln393_fu_136_p2();
    void thread_loop_fu_141_p2();
    void thread_sext_ln394_fu_157_p1();
    void thread_state_address0();
    void thread_state_ce0();
    void thread_zext_ln394_fu_152_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif