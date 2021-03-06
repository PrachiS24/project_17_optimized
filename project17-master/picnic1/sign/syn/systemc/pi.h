// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _pi_HH_
#define _pi_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "crypto_sign_urem_bkb.h"
#include "crypto_sign_urem_cud.h"
#include "crypto_sign_urem_dEe.h"
#include "pi_tempA.h"

namespace ap_rtl {

struct pi : public sc_module {
    // Port declarations 16
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<5> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<64> > A_d0;
    sc_in< sc_lv<64> > A_q0;
    sc_out< sc_lv<5> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<64> > A_d1;
    sc_in< sc_lv<64> > A_q1;
    sc_signal< sc_logic > ap_var_for_const1;
    sc_signal< sc_lv<4> > ap_var_for_const0;


    // Module declarations
    pi(sc_module_name name);
    SC_HAS_PROCESS(pi);

    ~pi();

    sc_trace_file* mVcdFile;

    pi_tempA* tempA_U;
    crypto_sign_urem_bkb<1,8,4,4,4>* crypto_sign_urem_bkb_U6;
    crypto_sign_urem_cud<1,8,4,4,3>* crypto_sign_urem_cud_U7;
    crypto_sign_urem_cud<1,8,4,4,3>* crypto_sign_urem_cud_U8;
    crypto_sign_urem_dEe<1,9,5,4,5>* crypto_sign_urem_dEe_U9;
    crypto_sign_urem_dEe<1,9,5,4,5>* crypto_sign_urem_dEe_U10;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > x_0_reg_246;
    sc_signal< sc_lv<3> > x_1_reg_258;
    sc_signal< sc_lv<1> > icmp_ln361_fu_270_p2;
    sc_signal< sc_lv<1> > icmp_ln361_reg_618;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state2_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > x_fu_276_p2;
    sc_signal< sc_lv<3> > x_reg_622;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<64> > zext_ln362_1_fu_292_p1;
    sc_signal< sc_lv<64> > zext_ln362_1_reg_627;
    sc_signal< sc_lv<64> > zext_ln362_2_fu_303_p1;
    sc_signal< sc_lv<64> > zext_ln362_2_reg_637;
    sc_signal< sc_lv<5> > zext_ln362_5_fu_308_p1;
    sc_signal< sc_lv<5> > zext_ln362_5_reg_647;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage1;
    sc_signal< bool > ap_block_state3_pp0_stage1_iter0;
    sc_signal< bool > ap_block_pp0_stage1_11001;
    sc_signal< sc_lv<64> > zext_ln362_fu_312_p1;
    sc_signal< sc_lv<64> > zext_ln362_reg_652;
    sc_signal< sc_lv<64> > zext_ln362_3_fu_323_p1;
    sc_signal< sc_lv<64> > zext_ln362_3_reg_662;
    sc_signal< sc_lv<64> > zext_ln362_4_fu_333_p1;
    sc_signal< sc_lv<64> > zext_ln362_4_reg_672;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage2;
    sc_signal< bool > ap_block_state4_pp0_stage2_iter0;
    sc_signal< bool > ap_block_pp0_stage2_11001;
    sc_signal< sc_lv<1> > icmp_ln363_fu_338_p2;
    sc_signal< sc_lv<1> > icmp_ln363_reg_682;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state7_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter1;
    sc_signal< bool > ap_block_state17_pp1_stage0_iter2;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln363_reg_682_pp1_iter1_reg;
    sc_signal< sc_lv<1> > icmp_ln363_reg_682_pp1_iter2_reg;
    sc_signal< sc_lv<3> > x_6_fu_344_p2;
    sc_signal< sc_lv<3> > x_6_reg_686;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<4> > shl_ln_fu_350_p3;
    sc_signal< sc_lv<4> > shl_ln_reg_691;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage1;
    sc_signal< bool > ap_block_state8_pp1_stage1_iter0;
    sc_signal< bool > ap_block_state13_pp1_stage1_iter1;
    sc_signal< bool > ap_block_state18_pp1_stage1_iter2;
    sc_signal< bool > ap_block_pp1_stage1_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage2;
    sc_signal< bool > ap_block_state9_pp1_stage2_iter0;
    sc_signal< bool > ap_block_state14_pp1_stage2_iter1;
    sc_signal< bool > ap_block_state19_pp1_stage2_iter2;
    sc_signal< bool > ap_block_pp1_stage2_11001;
    sc_signal< sc_lv<5> > zext_ln364_12_fu_386_p1;
    sc_signal< sc_lv<5> > zext_ln364_12_reg_709;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage3;
    sc_signal< bool > ap_block_state10_pp1_stage3_iter0;
    sc_signal< bool > ap_block_state15_pp1_stage3_iter1;
    sc_signal< bool > ap_block_pp1_stage3_11001;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage4;
    sc_signal< bool > ap_block_state11_pp1_stage4_iter0;
    sc_signal< bool > ap_block_state16_pp1_stage4_iter1;
    sc_signal< bool > ap_block_pp1_stage4_11001;
    sc_signal< sc_lv<5> > zext_ln364_10_fu_412_p1;
    sc_signal< sc_lv<5> > zext_ln364_10_reg_724;
    sc_signal< sc_lv<4> > zext_ln364_11_fu_416_p1;
    sc_signal< sc_lv<4> > zext_ln364_11_reg_730;
    sc_signal< sc_lv<64> > tempA_q1;
    sc_signal< sc_lv<64> > tempA_load_reg_745;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< sc_lv<64> > tempA_q0;
    sc_signal< sc_lv<64> > tempA_load_1_reg_750;
    sc_signal< sc_lv<5> > add_ln364_fu_472_p2;
    sc_signal< sc_lv<5> > add_ln364_reg_765;
    sc_signal< sc_lv<64> > tempA_load_2_reg_770;
    sc_signal< sc_lv<64> > tempA_load_3_reg_775;
    sc_signal< sc_lv<3> > grp_fu_369_p2;
    sc_signal< sc_lv<3> > urem_ln364_1_reg_785;
    sc_signal< sc_lv<64> > tempA_load_4_reg_790;
    sc_signal< sc_lv<3> > grp_fu_380_p2;
    sc_signal< sc_lv<3> > urem_ln364_2_reg_795;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< bool > ap_block_pp0_stage2_subdone;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state7;
    sc_signal< bool > ap_block_pp1_stage4_subdone;
    sc_signal< bool > ap_block_pp1_stage2_subdone;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter2;
    sc_signal< sc_lv<5> > tempA_address0;
    sc_signal< sc_logic > tempA_ce0;
    sc_signal< sc_logic > tempA_we0;
    sc_signal< sc_lv<64> > tempA_d0;
    sc_signal< sc_lv<5> > tempA_address1;
    sc_signal< sc_logic > tempA_ce1;
    sc_signal< sc_logic > tempA_we1;
    sc_signal< sc_lv<64> > tempA_d1;
    sc_signal< sc_lv<3> > ap_phi_mux_x_0_phi_fu_250_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_x_1_phi_fu_262_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< bool > ap_block_pp0_stage1;
    sc_signal< bool > ap_block_pp0_stage2;
    sc_signal< sc_lv<64> > zext_ln364_fu_420_p1;
    sc_signal< sc_lv<64> > zext_ln364_5_fu_431_p1;
    sc_signal< sc_lv<64> > zext_ln364_2_fu_441_p1;
    sc_signal< bool > ap_block_pp1_stage1;
    sc_signal< sc_lv<64> > zext_ln364_3_fu_451_p1;
    sc_signal< sc_lv<64> > zext_ln364_4_fu_483_p1;
    sc_signal< bool > ap_block_pp1_stage2;
    sc_signal< sc_lv<64> > zext_ln364_1_fu_488_p1;
    sc_signal< bool > ap_block_pp1_stage3;
    sc_signal< sc_lv<64> > zext_ln364_6_fu_519_p1;
    sc_signal< bool > ap_block_pp1_stage4;
    sc_signal< sc_lv<64> > zext_ln364_7_fu_551_p1;
    sc_signal< sc_lv<64> > zext_ln364_8_fu_582_p1;
    sc_signal< sc_lv<64> > zext_ln364_9_fu_613_p1;
    sc_signal< sc_lv<4> > zext_ln362_6_fu_282_p1;
    sc_signal< sc_lv<4> > add_ln362_fu_286_p2;
    sc_signal< sc_lv<4> > add_ln362_1_fu_297_p2;
    sc_signal< sc_lv<5> > add_ln362_2_fu_317_p2;
    sc_signal< sc_lv<5> > add_ln362_3_fu_328_p2;
    sc_signal< sc_lv<4> > grp_fu_358_p0;
    sc_signal< sc_lv<4> > grp_fu_369_p0;
    sc_signal< sc_lv<4> > grp_fu_380_p0;
    sc_signal< sc_lv<5> > grp_fu_395_p0;
    sc_signal< sc_lv<4> > grp_fu_395_p1;
    sc_signal< sc_lv<5> > grp_fu_406_p0;
    sc_signal< sc_lv<4> > grp_fu_406_p1;
    sc_signal< sc_lv<4> > add_ln364_1_fu_425_p2;
    sc_signal< sc_lv<4> > add_ln364_7_fu_436_p2;
    sc_signal< sc_lv<5> > add_ln364_3_fu_446_p2;
    sc_signal< sc_lv<4> > grp_fu_358_p2;
    sc_signal< sc_lv<3> > trunc_ln364_fu_460_p1;
    sc_signal< sc_lv<5> > shl_ln364_1_fu_464_p3;
    sc_signal< sc_lv<5> > zext_ln364_13_fu_456_p1;
    sc_signal< sc_lv<5> > add_ln364_4_fu_478_p2;
    sc_signal< sc_lv<3> > trunc_ln364_1_fu_492_p1;
    sc_signal< sc_lv<3> > add_ln364_5_fu_503_p2;
    sc_signal< sc_lv<5> > zext_ln364_14_fu_509_p1;
    sc_signal< sc_lv<5> > shl_ln364_2_fu_495_p3;
    sc_signal< sc_lv<5> > add_ln364_6_fu_513_p2;
    sc_signal< sc_lv<3> > trunc_ln364_2_fu_524_p1;
    sc_signal< sc_lv<3> > add_ln364_9_fu_535_p2;
    sc_signal< sc_lv<5> > zext_ln364_15_fu_541_p1;
    sc_signal< sc_lv<5> > shl_ln364_3_fu_527_p3;
    sc_signal< sc_lv<5> > add_ln364_10_fu_545_p2;
    sc_signal< sc_lv<5> > grp_fu_395_p2;
    sc_signal< sc_lv<3> > trunc_ln364_3_fu_556_p1;
    sc_signal< sc_lv<3> > add_ln364_12_fu_566_p2;
    sc_signal< sc_lv<5> > zext_ln364_16_fu_572_p1;
    sc_signal< sc_lv<5> > shl_ln364_fu_560_p2;
    sc_signal< sc_lv<5> > add_ln364_13_fu_576_p2;
    sc_signal< sc_lv<5> > grp_fu_406_p2;
    sc_signal< sc_lv<4> > trunc_ln364_4_fu_587_p1;
    sc_signal< sc_lv<4> > add_ln364_15_fu_597_p2;
    sc_signal< sc_lv<5> > zext_ln364_17_fu_603_p1;
    sc_signal< sc_lv<5> > shl_ln364_4_fu_591_p2;
    sc_signal< sc_lv<5> > add_ln364_16_fu_607_p2;
    sc_signal< sc_logic > ap_CS_fsm_state20;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp0_stage1_subdone;
    sc_signal< bool > ap_block_pp1_stage1_subdone;
    sc_signal< bool > ap_block_pp1_stage3_subdone;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_pp0_stage1;
    static const sc_lv<11> ap_ST_fsm_pp0_stage2;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_pp1_stage0;
    static const sc_lv<11> ap_ST_fsm_pp1_stage1;
    static const sc_lv<11> ap_ST_fsm_pp1_stage2;
    static const sc_lv<11> ap_ST_fsm_pp1_stage3;
    static const sc_lv<11> ap_ST_fsm_pp1_stage4;
    static const sc_lv<11> ap_ST_fsm_state20;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<4> ap_const_lv4_5;
    static const sc_lv<4> ap_const_lv4_A;
    static const sc_lv<5> ap_const_lv5_F;
    static const sc_lv<5> ap_const_lv5_14;
    static const sc_lv<4> ap_const_lv4_3;
    static const sc_lv<4> ap_const_lv4_6;
    static const sc_lv<5> ap_const_lv5_9;
    static const sc_lv<5> ap_const_lv5_5;
    static const sc_lv<5> ap_const_lv5_C;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_2;
    static const sc_lv<5> ap_const_lv5_2;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<4> ap_const_lv4_4;
    static const sc_lv<32> ap_const_lv32_A;
    // Thread declarations
    void thread_ap_var_for_const1();
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d0();
    void thread_A_d1();
    void thread_A_we0();
    void thread_A_we1();
    void thread_add_ln362_1_fu_297_p2();
    void thread_add_ln362_2_fu_317_p2();
    void thread_add_ln362_3_fu_328_p2();
    void thread_add_ln362_fu_286_p2();
    void thread_add_ln364_10_fu_545_p2();
    void thread_add_ln364_12_fu_566_p2();
    void thread_add_ln364_13_fu_576_p2();
    void thread_add_ln364_15_fu_597_p2();
    void thread_add_ln364_16_fu_607_p2();
    void thread_add_ln364_1_fu_425_p2();
    void thread_add_ln364_3_fu_446_p2();
    void thread_add_ln364_4_fu_478_p2();
    void thread_add_ln364_5_fu_503_p2();
    void thread_add_ln364_6_fu_513_p2();
    void thread_add_ln364_7_fu_436_p2();
    void thread_add_ln364_9_fu_535_p2();
    void thread_add_ln364_fu_472_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_pp0_stage1();
    void thread_ap_CS_fsm_pp0_stage2();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp1_stage1();
    void thread_ap_CS_fsm_pp1_stage2();
    void thread_ap_CS_fsm_pp1_stage3();
    void thread_ap_CS_fsm_pp1_stage4();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state20();
    void thread_ap_CS_fsm_state6();
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
    void thread_ap_block_pp1_stage2();
    void thread_ap_block_pp1_stage2_11001();
    void thread_ap_block_pp1_stage2_subdone();
    void thread_ap_block_pp1_stage3();
    void thread_ap_block_pp1_stage3_11001();
    void thread_ap_block_pp1_stage3_subdone();
    void thread_ap_block_pp1_stage4();
    void thread_ap_block_pp1_stage4_11001();
    void thread_ap_block_pp1_stage4_subdone();
    void thread_ap_block_state10_pp1_stage3_iter0();
    void thread_ap_block_state11_pp1_stage4_iter0();
    void thread_ap_block_state12_pp1_stage0_iter1();
    void thread_ap_block_state13_pp1_stage1_iter1();
    void thread_ap_block_state14_pp1_stage2_iter1();
    void thread_ap_block_state15_pp1_stage3_iter1();
    void thread_ap_block_state16_pp1_stage4_iter1();
    void thread_ap_block_state17_pp1_stage0_iter2();
    void thread_ap_block_state18_pp1_stage1_iter2();
    void thread_ap_block_state19_pp1_stage2_iter2();
    void thread_ap_block_state2_pp0_stage0_iter0();
    void thread_ap_block_state3_pp0_stage1_iter0();
    void thread_ap_block_state4_pp0_stage2_iter0();
    void thread_ap_block_state5_pp0_stage0_iter1();
    void thread_ap_block_state7_pp1_stage0_iter0();
    void thread_ap_block_state8_pp1_stage1_iter0();
    void thread_ap_block_state9_pp1_stage2_iter0();
    void thread_ap_condition_pp0_exit_iter0_state2();
    void thread_ap_condition_pp1_exit_iter0_state7();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_enable_pp1();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_idle_pp1();
    void thread_ap_phi_mux_x_0_phi_fu_250_p4();
    void thread_ap_phi_mux_x_1_phi_fu_262_p4();
    void thread_ap_ready();
    void thread_grp_fu_358_p0();
    void thread_grp_fu_369_p0();
    void thread_grp_fu_380_p0();
    void thread_grp_fu_395_p0();
    void thread_grp_fu_395_p1();
    void thread_grp_fu_406_p0();
    void thread_grp_fu_406_p1();
    void thread_icmp_ln361_fu_270_p2();
    void thread_icmp_ln363_fu_338_p2();
    void thread_shl_ln364_1_fu_464_p3();
    void thread_shl_ln364_2_fu_495_p3();
    void thread_shl_ln364_3_fu_527_p3();
    void thread_shl_ln364_4_fu_591_p2();
    void thread_shl_ln364_fu_560_p2();
    void thread_shl_ln_fu_350_p3();
    void thread_tempA_address0();
    void thread_tempA_address1();
    void thread_tempA_ce0();
    void thread_tempA_ce1();
    void thread_tempA_d0();
    void thread_tempA_d1();
    void thread_tempA_we0();
    void thread_tempA_we1();
    void thread_trunc_ln364_1_fu_492_p1();
    void thread_trunc_ln364_2_fu_524_p1();
    void thread_trunc_ln364_3_fu_556_p1();
    void thread_trunc_ln364_4_fu_587_p1();
    void thread_trunc_ln364_fu_460_p1();
    void thread_x_6_fu_344_p2();
    void thread_x_fu_276_p2();
    void thread_zext_ln362_1_fu_292_p1();
    void thread_zext_ln362_2_fu_303_p1();
    void thread_zext_ln362_3_fu_323_p1();
    void thread_zext_ln362_4_fu_333_p1();
    void thread_zext_ln362_5_fu_308_p1();
    void thread_zext_ln362_6_fu_282_p1();
    void thread_zext_ln362_fu_312_p1();
    void thread_zext_ln364_10_fu_412_p1();
    void thread_zext_ln364_11_fu_416_p1();
    void thread_zext_ln364_12_fu_386_p1();
    void thread_zext_ln364_13_fu_456_p1();
    void thread_zext_ln364_14_fu_509_p1();
    void thread_zext_ln364_15_fu_541_p1();
    void thread_zext_ln364_16_fu_572_p1();
    void thread_zext_ln364_17_fu_603_p1();
    void thread_zext_ln364_1_fu_488_p1();
    void thread_zext_ln364_2_fu_441_p1();
    void thread_zext_ln364_3_fu_451_p1();
    void thread_zext_ln364_4_fu_483_p1();
    void thread_zext_ln364_5_fu_431_p1();
    void thread_zext_ln364_6_fu_519_p1();
    void thread_zext_ln364_7_fu_551_p1();
    void thread_zext_ln364_8_fu_582_p1();
    void thread_zext_ln364_9_fu_613_p1();
    void thread_zext_ln364_fu_420_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
