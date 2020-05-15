// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _matrix_mul_1_HH_
#define _matrix_mul_1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "matrix_mul_1_tempXh4.h"
#include "matrix_mul_prod.h"
#include "matrix_mul_temp.h"

namespace ap_rtl {

struct matrix_mul_1 : public sc_module {
    // Port declarations 13
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > output_r_address0;
    sc_out< sc_logic > output_r_ce0;
    sc_out< sc_lv<4> > output_r_we0;
    sc_out< sc_lv<32> > output_r_d0;
    sc_in< sc_lv<32> > output_r_q0;
    sc_in< sc_lv<6> > state_offset;
    sc_in< sc_lv<14> > matrix_offset;


    // Module declarations
    matrix_mul_1(sc_module_name name);
    SC_HAS_PROCESS(matrix_mul_1);

    ~matrix_mul_1();

    sc_trace_file* mVcdFile;

    matrix_mul_1_tempXh4* temp_matrix2_U;
    matrix_mul_prod* prod_U;
    matrix_mul_temp* temp_U;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<14> > temp_matrix2_address0;
    sc_signal< sc_logic > temp_matrix2_ce0;
    sc_signal< sc_lv<32> > temp_matrix2_q0;
    sc_signal< sc_lv<3> > j_0_reg_229;
    sc_signal< sc_lv<5> > trunc_ln127_fu_277_p1;
    sc_signal< sc_lv<5> > trunc_ln127_reg_930;
    sc_signal< sc_lv<1> > icmp_ln124_fu_281_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > i_fu_287_p2;
    sc_signal< sc_lv<8> > i_reg_940;
    sc_signal< sc_lv<3> > trunc_ln124_fu_293_p1;
    sc_signal< sc_lv<3> > trunc_ln124_reg_945;
    sc_signal< sc_lv<9> > shl_ln_fu_301_p3;
    sc_signal< sc_lv<9> > shl_ln_reg_950;
    sc_signal< sc_lv<1> > icmp_ln125_fu_309_p2;
    sc_signal< sc_lv<1> > icmp_ln125_reg_955;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<3> > j_fu_315_p2;
    sc_signal< sc_lv<3> > j_reg_959;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<32> > prod_q0;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<1> > icmp_ln85_fu_375_p2;
    sc_signal< sc_lv<3> > i_11_fu_381_p2;
    sc_signal< sc_lv<3> > i_11_reg_987;
    sc_signal< sc_lv<2> > tmp_38_reg_992;
    sc_signal< sc_lv<6> > temp_addr_2_reg_998;
    sc_signal< sc_lv<32> > x_7_fu_412_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<5> > start_pos_fu_624_p3;
    sc_signal< sc_lv<5> > start_pos_reg_1008;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<5> > or_ln66_6_fu_632_p2;
    sc_signal< sc_lv<5> > or_ln66_6_reg_1014;
    sc_signal< sc_lv<8> > or_ln66_fu_768_p2;
    sc_signal< sc_lv<8> > or_ln66_reg_1020;
    sc_signal< sc_lv<3> > loop_fu_896_p2;
    sc_signal< sc_lv<3> > loop_reg_1028;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln133_fu_890_p2;
    sc_signal< sc_lv<5> > add_ln134_fu_911_p2;
    sc_signal< sc_lv<5> > add_ln134_reg_1038;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<6> > prod_address0;
    sc_signal< sc_logic > prod_ce0;
    sc_signal< sc_logic > prod_we0;
    sc_signal< sc_lv<32> > prod_d0;
    sc_signal< sc_lv<6> > temp_address0;
    sc_signal< sc_logic > temp_ce0;
    sc_signal< sc_lv<4> > temp_we0;
    sc_signal< sc_lv<32> > temp_d0;
    sc_signal< sc_lv<32> > temp_q0;
    sc_signal< sc_lv<8> > bitNumber_assign_reg_217;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_lv<3> > ap_phi_mux_j_0_phi_fu_233_p4;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<32> > x_0_i_reg_241;
    sc_signal< sc_lv<3> > i_0_i_reg_251;
    sc_signal< sc_lv<3> > loop_0_reg_262;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > zext_ln127_2_fu_343_p1;
    sc_signal< sc_lv<64> > zext_ln127_3_fu_353_p1;
    sc_signal< sc_lv<64> > zext_ln127_fu_358_p1;
    sc_signal< sc_lv<64> > zext_ln85_fu_370_p1;
    sc_signal< sc_lv<64> > zext_ln66_fu_407_p1;
    sc_signal< sc_lv<64> > zext_ln134_fu_902_p1;
    sc_signal< sc_lv<64> > zext_ln134_2_fu_916_p1;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<4> > shl_ln66_17_fu_883_p2;
    sc_signal< sc_lv<5> > grp_fu_273_p0;
    sc_signal< sc_lv<5> > grp_fu_273_p1;
    sc_signal< sc_lv<7> > trunc_ln126_fu_297_p1;
    sc_signal< sc_lv<9> > zext_ln125_fu_321_p1;
    sc_signal< sc_lv<9> > add_ln126_fu_325_p2;
    sc_signal< sc_lv<5> > zext_ln127_1_fu_334_p1;
    sc_signal< sc_lv<5> > add_ln127_fu_338_p2;
    sc_signal< sc_lv<14> > zext_ln126_fu_330_p1;
    sc_signal< sc_lv<14> > add_ln127_1_fu_348_p2;
    sc_signal< sc_lv<3> > adjSize_fu_397_p4;
    sc_signal< sc_lv<31> > lshr_ln_fu_418_p4;
    sc_signal< sc_lv<32> > zext_ln93_fu_428_p1;
    sc_signal< sc_lv<32> > y_fu_458_p2;
    sc_signal< sc_lv<30> > lshr_ln1_fu_464_p4;
    sc_signal< sc_lv<24> > trunc_ln93_3_fu_448_p4;
    sc_signal< sc_lv<24> > trunc_ln93_1_fu_444_p1;
    sc_signal< sc_lv<32> > zext_ln94_fu_474_p1;
    sc_signal< sc_lv<32> > y_1_fu_502_p2;
    sc_signal< sc_lv<28> > lshr_ln2_fu_508_p4;
    sc_signal< sc_lv<24> > trunc_ln94_1_fu_492_p4;
    sc_signal< sc_lv<24> > xor_ln94_fu_486_p2;
    sc_signal< sc_lv<32> > zext_ln95_fu_518_p1;
    sc_signal< sc_lv<24> > trunc_ln95_1_fu_536_p4;
    sc_signal< sc_lv<24> > xor_ln95_fu_530_p2;
    sc_signal< sc_lv<32> > y_2_fu_546_p2;
    sc_signal< sc_lv<24> > trunc_ln_fu_558_p4;
    sc_signal< sc_lv<24> > xor_ln95_2_fu_552_p2;
    sc_signal< sc_lv<24> > y_3_fu_576_p2;
    sc_signal< sc_lv<1> > trunc_ln93_fu_432_p1;
    sc_signal< sc_lv<1> > tmp_34_fu_478_p3;
    sc_signal< sc_lv<1> > xor_ln98_fu_590_p2;
    sc_signal< sc_lv<1> > tmp_fu_436_p3;
    sc_signal< sc_lv<1> > tmp_36_fu_568_p3;
    sc_signal< sc_lv<1> > tmp_37_fu_582_p3;
    sc_signal< sc_lv<1> > xor_ln98_2_fu_602_p2;
    sc_signal< sc_lv<1> > tmp_35_fu_522_p3;
    sc_signal< sc_lv<1> > xor_ln98_3_fu_608_p2;
    sc_signal< sc_lv<1> > xor_ln98_1_fu_596_p2;
    sc_signal< sc_lv<1> > xor_ln98_4_fu_614_p2;
    sc_signal< sc_lv<6> > zext_ln66_38_fu_639_p1;
    sc_signal< sc_lv<6> > zext_ln66_39_fu_643_p1;
    sc_signal< sc_lv<1> > grp_fu_273_p2;
    sc_signal< sc_lv<6> > sub_ln66_fu_657_p2;
    sc_signal< sc_lv<6> > sub_ln66_9_fu_669_p2;
    sc_signal< sc_lv<32> > tmp_39_fu_647_p4;
    sc_signal< sc_lv<6> > xor_ln66_12_fu_663_p2;
    sc_signal< sc_lv<6> > select_ln66_fu_675_p3;
    sc_signal< sc_lv<6> > select_ln66_22_fu_691_p3;
    sc_signal< sc_lv<6> > sub_ln66_10_fu_699_p2;
    sc_signal< sc_lv<32> > select_ln66_21_fu_683_p3;
    sc_signal< sc_lv<32> > zext_ln66_40_fu_705_p1;
    sc_signal< sc_lv<32> > zext_ln66_41_fu_709_p1;
    sc_signal< sc_lv<32> > lshr_ln66_fu_713_p2;
    sc_signal< sc_lv<32> > lshr_ln66_9_fu_719_p2;
    sc_signal< sc_lv<32> > and_ln66_12_fu_725_p2;
    sc_signal< sc_lv<3> > xor_ln66_fu_735_p2;
    sc_signal< sc_lv<8> > zext_ln66_1_fu_740_p1;
    sc_signal< sc_lv<8> > shl_ln66_fu_744_p2;
    sc_signal< sc_lv<8> > zext_ln98_fu_620_p1;
    sc_signal< sc_lv<8> > trunc_ln66_fu_731_p1;
    sc_signal< sc_lv<8> > xor_ln66_3_fu_750_p2;
    sc_signal< sc_lv<8> > and_ln66_fu_762_p2;
    sc_signal< sc_lv<8> > shl_ln66_7_fu_756_p2;
    sc_signal< sc_lv<6> > zext_ln66_42_fu_774_p1;
    sc_signal< sc_lv<6> > zext_ln66_43_fu_777_p1;
    sc_signal< sc_lv<6> > xor_ln66_13_fu_783_p2;
    sc_signal< sc_lv<6> > select_ln66_23_fu_789_p3;
    sc_signal< sc_lv<6> > select_ln66_25_fu_805_p3;
    sc_signal< sc_lv<6> > select_ln66_24_fu_797_p3;
    sc_signal< sc_lv<6> > xor_ln66_14_fu_813_p2;
    sc_signal< sc_lv<32> > zext_ln66_44_fu_780_p1;
    sc_signal< sc_lv<32> > zext_ln66_45_fu_819_p1;
    sc_signal< sc_lv<32> > shl_ln66_15_fu_831_p2;
    sc_signal< sc_lv<32> > tmp_40_fu_837_p4;
    sc_signal< sc_lv<32> > zext_ln66_46_fu_823_p1;
    sc_signal< sc_lv<32> > zext_ln66_47_fu_827_p1;
    sc_signal< sc_lv<32> > shl_ln66_16_fu_855_p2;
    sc_signal< sc_lv<32> > lshr_ln66_10_fu_861_p2;
    sc_signal< sc_lv<32> > select_ln66_26_fu_847_p3;
    sc_signal< sc_lv<32> > and_ln66_13_fu_867_p2;
    sc_signal< sc_lv<4> > zext_ln66_48_fu_880_p1;
    sc_signal< sc_lv<5> > zext_ln134_1_fu_907_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_pp0_stage0;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const sc_lv<11> ap_ST_fsm_state12;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<4> ap_const_lv4_F;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<3> ap_const_lv3_4;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_18;
    static const sc_lv<32> ap_const_lv32_19;
    static const sc_lv<32> ap_const_lv32_1B;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<5> ap_const_lv5_7;
    static const sc_lv<6> ap_const_lv6_1F;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<3> ap_const_lv3_7;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<4> ap_const_lv4_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln126_fu_325_p2();
    void thread_add_ln127_1_fu_348_p2();
    void thread_add_ln127_fu_338_p2();
    void thread_add_ln134_fu_911_p2();
    void thread_adjSize_fu_397_p4();
    void thread_and_ln66_12_fu_725_p2();
    void thread_and_ln66_13_fu_867_p2();
    void thread_and_ln66_fu_762_p2();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_j_0_phi_fu_233_p4();
    void thread_ap_ready();
    void thread_grp_fu_273_p0();
    void thread_grp_fu_273_p1();
    void thread_grp_fu_273_p2();
    void thread_i_11_fu_381_p2();
    void thread_i_fu_287_p2();
    void thread_icmp_ln124_fu_281_p2();
    void thread_icmp_ln125_fu_309_p2();
    void thread_icmp_ln133_fu_890_p2();
    void thread_icmp_ln85_fu_375_p2();
    void thread_j_fu_315_p2();
    void thread_loop_fu_896_p2();
    void thread_lshr_ln1_fu_464_p4();
    void thread_lshr_ln2_fu_508_p4();
    void thread_lshr_ln66_10_fu_861_p2();
    void thread_lshr_ln66_9_fu_719_p2();
    void thread_lshr_ln66_fu_713_p2();
    void thread_lshr_ln_fu_418_p4();
    void thread_or_ln66_6_fu_632_p2();
    void thread_or_ln66_fu_768_p2();
    void thread_output_r_address0();
    void thread_output_r_ce0();
    void thread_output_r_d0();
    void thread_output_r_we0();
    void thread_prod_address0();
    void thread_prod_ce0();
    void thread_prod_d0();
    void thread_prod_we0();
    void thread_select_ln66_21_fu_683_p3();
    void thread_select_ln66_22_fu_691_p3();
    void thread_select_ln66_23_fu_789_p3();
    void thread_select_ln66_24_fu_797_p3();
    void thread_select_ln66_25_fu_805_p3();
    void thread_select_ln66_26_fu_847_p3();
    void thread_select_ln66_fu_675_p3();
    void thread_shl_ln66_15_fu_831_p2();
    void thread_shl_ln66_16_fu_855_p2();
    void thread_shl_ln66_17_fu_883_p2();
    void thread_shl_ln66_7_fu_756_p2();
    void thread_shl_ln66_fu_744_p2();
    void thread_shl_ln_fu_301_p3();
    void thread_start_pos_fu_624_p3();
    void thread_sub_ln66_10_fu_699_p2();
    void thread_sub_ln66_9_fu_669_p2();
    void thread_sub_ln66_fu_657_p2();
    void thread_temp_address0();
    void thread_temp_ce0();
    void thread_temp_d0();
    void thread_temp_matrix2_address0();
    void thread_temp_matrix2_ce0();
    void thread_temp_we0();
    void thread_tmp_34_fu_478_p3();
    void thread_tmp_35_fu_522_p3();
    void thread_tmp_36_fu_568_p3();
    void thread_tmp_37_fu_582_p3();
    void thread_tmp_39_fu_647_p4();
    void thread_tmp_40_fu_837_p4();
    void thread_tmp_fu_436_p3();
    void thread_trunc_ln124_fu_293_p1();
    void thread_trunc_ln126_fu_297_p1();
    void thread_trunc_ln127_fu_277_p1();
    void thread_trunc_ln66_fu_731_p1();
    void thread_trunc_ln93_1_fu_444_p1();
    void thread_trunc_ln93_3_fu_448_p4();
    void thread_trunc_ln93_fu_432_p1();
    void thread_trunc_ln94_1_fu_492_p4();
    void thread_trunc_ln95_1_fu_536_p4();
    void thread_trunc_ln_fu_558_p4();
    void thread_x_7_fu_412_p2();
    void thread_xor_ln66_12_fu_663_p2();
    void thread_xor_ln66_13_fu_783_p2();
    void thread_xor_ln66_14_fu_813_p2();
    void thread_xor_ln66_3_fu_750_p2();
    void thread_xor_ln66_fu_735_p2();
    void thread_xor_ln94_fu_486_p2();
    void thread_xor_ln95_2_fu_552_p2();
    void thread_xor_ln95_fu_530_p2();
    void thread_xor_ln98_1_fu_596_p2();
    void thread_xor_ln98_2_fu_602_p2();
    void thread_xor_ln98_3_fu_608_p2();
    void thread_xor_ln98_4_fu_614_p2();
    void thread_xor_ln98_fu_590_p2();
    void thread_y_1_fu_502_p2();
    void thread_y_2_fu_546_p2();
    void thread_y_3_fu_576_p2();
    void thread_y_fu_458_p2();
    void thread_zext_ln125_fu_321_p1();
    void thread_zext_ln126_fu_330_p1();
    void thread_zext_ln127_1_fu_334_p1();
    void thread_zext_ln127_2_fu_343_p1();
    void thread_zext_ln127_3_fu_353_p1();
    void thread_zext_ln127_fu_358_p1();
    void thread_zext_ln134_1_fu_907_p1();
    void thread_zext_ln134_2_fu_916_p1();
    void thread_zext_ln134_fu_902_p1();
    void thread_zext_ln66_1_fu_740_p1();
    void thread_zext_ln66_38_fu_639_p1();
    void thread_zext_ln66_39_fu_643_p1();
    void thread_zext_ln66_40_fu_705_p1();
    void thread_zext_ln66_41_fu_709_p1();
    void thread_zext_ln66_42_fu_774_p1();
    void thread_zext_ln66_43_fu_777_p1();
    void thread_zext_ln66_44_fu_780_p1();
    void thread_zext_ln66_45_fu_819_p1();
    void thread_zext_ln66_46_fu_823_p1();
    void thread_zext_ln66_47_fu_827_p1();
    void thread_zext_ln66_48_fu_880_p1();
    void thread_zext_ln66_fu_407_p1();
    void thread_zext_ln85_fu_370_p1();
    void thread_zext_ln93_fu_428_p1();
    void thread_zext_ln94_fu_474_p1();
    void thread_zext_ln95_fu_518_p1();
    void thread_zext_ln98_fu_620_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif