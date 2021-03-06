// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _theta_HH_
#define _theta_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "theta_C.h"
#include "theta_D.h"

namespace ap_rtl {

struct theta : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_in< sc_lv<64> > A_q0;
    sc_out< sc_lv<5> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<64> > A_d1;
    sc_in< sc_lv<64> > A_q1;


    // Module declarations
    theta(sc_module_name name);
    SC_HAS_PROCESS(theta);

    ~theta();

    sc_trace_file* mVcdFile;

    theta_C* C_U;
    theta_D* D_U;
    sc_signal< sc_lv<10> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > x_0_reg_186;
    sc_signal< sc_lv<5> > indvar_flatten_reg_209;
    sc_signal< sc_lv<3> > x_2_reg_220;
    sc_signal< sc_lv<3> > y_1_reg_231;
    sc_signal< sc_lv<1> > icmp_ln336_fu_242_p2;
    sc_signal< sc_lv<1> > icmp_ln336_reg_564;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > x_3_fu_248_p2;
    sc_signal< sc_lv<3> > x_3_reg_568;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln337_fu_254_p1;
    sc_signal< sc_lv<64> > zext_ln337_reg_573;
    sc_signal< sc_lv<5> > zext_ln339_fu_259_p1;
    sc_signal< sc_lv<5> > zext_ln339_reg_578;
    sc_signal< sc_lv<4> > zext_ln339_5_fu_263_p1;
    sc_signal< sc_lv<4> > zext_ln339_5_reg_584;
    sc_signal< sc_lv<64> > A_load_reg_599;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<64> > A_load_5_reg_604;
    sc_signal< sc_lv<64> > A_load_2_reg_619;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<64> > A_load_3_reg_624;
    sc_signal< sc_lv<1> > icmp_ln341_fu_333_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<3> > x_fu_339_p2;
    sc_signal< sc_lv<3> > x_reg_638;
    sc_signal< sc_lv<1> > icmp_ln343_fu_437_p2;
    sc_signal< sc_lv<1> > icmp_ln343_reg_653;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state11_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<5> > add_ln343_fu_443_p2;
    sc_signal< sc_lv<5> > add_ln343_reg_657;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<3> > select_ln345_fu_461_p3;
    sc_signal< sc_lv<3> > select_ln345_reg_662;
    sc_signal< sc_lv<3> > select_ln345_1_fu_469_p3;
    sc_signal< sc_lv<3> > select_ln345_1_reg_670;
    sc_signal< sc_lv<64> > D_q0;
    sc_signal< sc_lv<64> > D_load_reg_683;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage1;
    sc_signal< bool > ap_block_state10_pp1_stage1_iter0;
    sc_signal< bool > ap_block_pp1_stage1_11001;
    sc_signal< sc_lv<5> > A_addr_5_reg_688;
    sc_signal< sc_lv<3> > y_fu_553_p2;
    sc_signal< sc_lv<3> > y_reg_694;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage1_subdone;
    sc_signal< sc_lv<3> > C_address0;
    sc_signal< sc_logic > C_ce0;
    sc_signal< sc_logic > C_we0;
    sc_signal< sc_lv<64> > C_d0;
    sc_signal< sc_lv<64> > C_q0;
    sc_signal< sc_lv<3> > C_address1;
    sc_signal< sc_logic > C_ce1;
    sc_signal< sc_lv<64> > C_q1;
    sc_signal< sc_lv<3> > D_address0;
    sc_signal< sc_logic > D_ce0;
    sc_signal< sc_logic > D_we0;
    sc_signal< sc_lv<64> > D_d0;
    sc_signal< sc_lv<3> > ap_phi_mux_x_0_phi_fu_190_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<3> > x_1_reg_197;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<5> > ap_phi_mux_indvar_flatten_phi_fu_213_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_x_2_phi_fu_224_p4;
    sc_signal< sc_lv<3> > ap_phi_mux_y_1_phi_fu_235_p4;
    sc_signal< sc_lv<64> > zext_ln339_1_fu_273_p1;
    sc_signal< sc_lv<64> > zext_ln339_2_fu_283_p1;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< sc_lv<64> > zext_ln339_3_fu_293_p1;
    sc_signal< sc_lv<64> > zext_ln339_4_fu_303_p1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > zext_ln342_fu_365_p1;
    sc_signal< sc_lv<64> > zext_ln342_1_fu_400_p1;
    sc_signal< sc_lv<64> > zext_ln342_2_fu_432_p1;
    sc_signal< sc_lv<64> > zext_ln345_fu_477_p1;
    sc_signal< sc_lv<64> > zext_ln345_1_fu_548_p1;
    sc_signal< bool > ap_block_pp1_stage1;
    sc_signal< sc_lv<4> > add_ln339_fu_267_p2;
    sc_signal< sc_lv<4> > add_ln339_1_fu_278_p2;
    sc_signal< sc_lv<5> > add_ln339_2_fu_288_p2;
    sc_signal< sc_lv<5> > add_ln339_3_fu_298_p2;
    sc_signal< sc_lv<64> > xor_ln339_1_fu_312_p2;
    sc_signal< sc_lv<64> > xor_ln339_2_fu_317_p2;
    sc_signal< sc_lv<64> > xor_ln339_fu_308_p2;
    sc_signal< sc_lv<1> > icmp_ln342_fu_345_p2;
    sc_signal< sc_lv<3> > xor_ln342_1_fu_351_p2;
    sc_signal< sc_lv<3> > select_ln342_fu_357_p3;
    sc_signal< sc_lv<4> > zext_ln341_fu_329_p1;
    sc_signal< sc_lv<4> > add_ln342_1_fu_370_p2;
    sc_signal< sc_lv<3> > add_ln342_2_fu_382_p2;
    sc_signal< sc_lv<1> > icmp_ln342_1_fu_376_p2;
    sc_signal< sc_lv<4> > sext_ln342_fu_388_p1;
    sc_signal< sc_lv<4> > select_ln342_1_fu_392_p3;
    sc_signal< sc_lv<63> > trunc_ln342_fu_405_p1;
    sc_signal< sc_lv<1> > tmp_2_fu_409_p3;
    sc_signal< sc_lv<64> > or_ln_fu_417_p3;
    sc_signal< sc_lv<1> > icmp_ln344_fu_455_p2;
    sc_signal< sc_lv<3> > x_5_fu_449_p2;
    sc_signal< sc_lv<1> > icmp_ln345_fu_482_p2;
    sc_signal< sc_lv<3> > add_ln345_2_fu_487_p2;
    sc_signal< sc_lv<3> > select_ln345_2_fu_492_p3;
    sc_signal< sc_lv<1> > icmp_ln345_1_fu_503_p2;
    sc_signal< sc_lv<3> > add_ln345_3_fu_508_p2;
    sc_signal< sc_lv<3> > select_ln345_3_fu_513_p3;
    sc_signal< sc_lv<4> > zext_ln345_2_fu_499_p1;
    sc_signal< sc_lv<4> > zext_ln345_3_fu_520_p1;
    sc_signal< sc_lv<4> > add_ln345_1_fu_532_p2;
    sc_signal< sc_lv<5> > shl_ln_fu_524_p3;
    sc_signal< sc_lv<5> > zext_ln345_4_fu_538_p1;
    sc_signal< sc_lv<5> > add_ln345_fu_542_p2;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<10> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<10> ap_ST_fsm_state1;
    static const sc_lv<10> ap_ST_fsm_pp0_stage0;
    static const sc_lv<10> ap_ST_fsm_pp0_stage1;
    static const sc_lv<10> ap_ST_fsm_pp0_stage2;
    static const sc_lv<10> ap_ST_fsm_state6;
    static const sc_lv<10> ap_ST_fsm_state7;
    static const sc_lv<10> ap_ST_fsm_state8;
    static const sc_lv<10> ap_ST_fsm_pp1_stage0;
    static const sc_lv<10> ap_ST_fsm_pp1_stage1;
    static const sc_lv<10> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<32> ap_const_lv32_3F;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_9;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d1();
    void thread_A_we1();
    void thread_C_address0();
    void thread_C_address1();
    void thread_C_ce0();
    void thread_C_ce1();
    void thread_C_d0();
    void thread_C_we0();
    void thread_D_address0();
    void thread_D_ce0();
    void thread_D_d0();
    void thread_D_we0();
    void thread_add_ln339_1_fu_278_p2();
    void thread_add_ln339_2_fu_288_p2();
    void thread_add_ln339_3_fu_298_p2();
    void thread_add_ln339_fu_267_p2();
    void thread_add_ln342_1_fu_370_p2();
    void thread_add_ln342_2_fu_382_p2();
    void thread_add_ln343_fu_443_p2();
    void thread_add_ln345_1_fu_532_p2();
    void thread_add_ln345_2_fu_487_p2();
    void thread_add_ln345_3_fu_508_p2();
    void thread_add_ln345_fu_542_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp1_stage1();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_pp0_stage1();
    void thread_ap_block_pp0_stage1_11001();
    void thread_ap_block_pp0_stage1_subdone();
    void thread_ap_block_pp0_stage2();
    void thread_ap_block_pp0_stage2_11001();
    void thread_ap_block_pp0_stage2_subdone();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp1_stage1();
    void thread_ap_block_pp1_stage1_11001();
    void thread_ap_block_pp1_stage1_subdone();
    void thread_ap_block_state10_pp1_stage1_iter0();
    void thread_ap_block_state11_pp1_stage0_iter1();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state9_pp1_stage0_iter0();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state9();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_213_p4();
    void thread_ap_phi_mux_x_0_phi_fu_190_p4();
    void thread_ap_phi_mux_x_2_phi_fu_224_p4();
    void thread_ap_phi_mux_y_1_phi_fu_235_p4();
    void thread_ap_ready();
    void thread_icmp_ln336_fu_242_p2();
    void thread_icmp_ln341_fu_333_p2();
    void thread_icmp_ln342_1_fu_376_p2();
    void thread_icmp_ln342_fu_345_p2();
    void thread_icmp_ln343_fu_437_p2();
    void thread_icmp_ln344_fu_455_p2();
    void thread_icmp_ln345_1_fu_503_p2();
    void thread_icmp_ln345_fu_482_p2();
    void thread_or_ln_fu_417_p3();
    void thread_select_ln342_1_fu_392_p3();
    void thread_select_ln342_fu_357_p3();
    void thread_select_ln345_1_fu_469_p3();
    void thread_select_ln345_2_fu_492_p3();
    void thread_select_ln345_3_fu_513_p3();
    void thread_select_ln345_fu_461_p3();
    void thread_sext_ln342_fu_388_p1();
    void thread_shl_ln_fu_524_p3();
    void thread_tmp_2_fu_409_p3();
    void thread_trunc_ln342_fu_405_p1();
    void thread_x_3_fu_248_p2();
    void thread_x_5_fu_449_p2();
    void thread_x_fu_339_p2();
    void thread_xor_ln339_1_fu_312_p2();
    void thread_xor_ln339_2_fu_317_p2();
    void thread_xor_ln339_fu_308_p2();
    void thread_xor_ln342_1_fu_351_p2();
    void thread_y_fu_553_p2();
    void thread_zext_ln337_fu_254_p1();
    void thread_zext_ln339_1_fu_273_p1();
    void thread_zext_ln339_2_fu_283_p1();
    void thread_zext_ln339_3_fu_293_p1();
    void thread_zext_ln339_4_fu_303_p1();
    void thread_zext_ln339_5_fu_263_p1();
    void thread_zext_ln339_fu_259_p1();
    void thread_zext_ln341_fu_329_p1();
    void thread_zext_ln342_1_fu_400_p1();
    void thread_zext_ln342_2_fu_432_p1();
    void thread_zext_ln342_fu_365_p1();
    void thread_zext_ln345_1_fu_548_p1();
    void thread_zext_ln345_2_fu_499_p1();
    void thread_zext_ln345_3_fu_520_p1();
    void thread_zext_ln345_4_fu_538_p1();
    void thread_zext_ln345_fu_477_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
