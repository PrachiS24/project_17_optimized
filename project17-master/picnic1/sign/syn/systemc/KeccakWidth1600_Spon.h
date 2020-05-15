// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_HH_
#define _KeccakWidth1600_Spon_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "pi.h"
#include "theta.h"
#include "chi.h"
#include "KeccakP1600OnWordeOg.h"
#include "KeccakP1600OnWordfYi.h"
#include "pi_tempA.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon : public sc_module {
    // Port declarations 17
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > instance_state_address0;
    sc_out< sc_logic > instance_state_ce0;
    sc_out< sc_logic > instance_state_we0;
    sc_out< sc_lv<8> > instance_state_d0;
    sc_in< sc_lv<8> > instance_state_q0;
    sc_out< sc_lv<15> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;
    sc_in< sc_lv<8> > data_offset;
    sc_in< sc_lv<2> > data_offset1;


    // Module declarations
    KeccakWidth1600_Spon(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon);

    ~KeccakWidth1600_Spon();

    sc_trace_file* mVcdFile;

    KeccakP1600OnWordeOg* KeccakRhoOffsets_U;
    KeccakP1600OnWordfYi* KeccakRoundConstants_U;
    pi_tempA* stateAsWords_U;
    pi* grp_pi_fu_404;
    theta* grp_theta_fu_409;
    chi* grp_chi_fu_414;
    sc_signal< sc_lv<22> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<5> > KeccakRhoOffsets_address0;
    sc_signal< sc_logic > KeccakRhoOffsets_ce0;
    sc_signal< sc_lv<6> > KeccakRhoOffsets_q0;
    sc_signal< sc_lv<5> > KeccakRoundConstants_address0;
    sc_signal< sc_logic > KeccakRoundConstants_ce0;
    sc_signal< sc_lv<64> > KeccakRoundConstants_q0;
    sc_signal< sc_lv<5> > indvar_flatten_reg_313;
    sc_signal< sc_lv<3> > x_0_i_reg_324;
    sc_signal< sc_lv<3> > y_0_i_reg_336;
    sc_signal< sc_lv<8> > indvar_flatten7_reg_347;
    sc_signal< sc_lv<5> > i_0_i2_reg_358;
    sc_signal< sc_lv<4> > j_0_i5_reg_369;
    sc_signal< sc_lv<16> > tmp_54_cast_fu_451_p3;
    sc_signal< sc_lv<16> > tmp_54_cast_reg_964;
    sc_signal< sc_lv<7> > trunc_ln304_fu_475_p1;
    sc_signal< sc_lv<7> > trunc_ln304_reg_978;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln304_fu_469_p2;
    sc_signal< sc_lv<1> > icmp_ln305_fu_479_p2;
    sc_signal< sc_lv<1> > icmp_ln305_reg_983;
    sc_signal< sc_lv<1> > icmp_ln269_fu_485_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > i_30_fu_491_p2;
    sc_signal< sc_lv<5> > i_30_reg_991;
    sc_signal< sc_lv<5> > stateAsWords_addr_10_reg_996;
    sc_signal< sc_lv<8> > shl_ln_fu_502_p3;
    sc_signal< sc_lv<8> > shl_ln_reg_1001;
    sc_signal< sc_lv<4> > j_fu_516_p2;
    sc_signal< sc_lv<4> > j_reg_1009;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<1> > icmp_ln271_fu_510_p2;
    sc_signal< sc_lv<1> > icmp_ln293_fu_569_p2;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<5> > i_32_fu_575_p2;
    sc_signal< sc_lv<5> > i_32_reg_1023;
    sc_signal< sc_lv<1> > icmp_ln352_fu_581_p2;
    sc_signal< sc_lv<1> > icmp_ln352_reg_1028;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage0;
    sc_signal< bool > ap_block_state9_pp1_stage0_iter0;
    sc_signal< bool > ap_block_state12_pp1_stage0_iter1;
    sc_signal< bool > ap_block_pp1_stage0_11001;
    sc_signal< sc_lv<5> > add_ln352_fu_587_p2;
    sc_signal< sc_lv<5> > add_ln352_reg_1032;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter0;
    sc_signal< sc_lv<3> > x_fu_593_p2;
    sc_signal< sc_lv<3> > x_reg_1037;
    sc_signal< sc_lv<1> > icmp_ln352_3_fu_599_p2;
    sc_signal< sc_lv<1> > icmp_ln352_3_reg_1042;
    sc_signal< sc_lv<3> > select_ln353_13_fu_605_p3;
    sc_signal< sc_lv<3> > select_ln353_13_reg_1047;
    sc_signal< sc_lv<3> > select_ln353_14_fu_613_p3;
    sc_signal< sc_lv<3> > select_ln353_14_reg_1055;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage1;
    sc_signal< bool > ap_block_state10_pp1_stage1_iter0;
    sc_signal< bool > ap_block_pp1_stage1_11001;
    sc_signal< sc_lv<1> > icmp_ln353_fu_694_p2;
    sc_signal< sc_lv<1> > icmp_ln353_reg_1065;
    sc_signal< sc_lv<5> > stateAsWords_addr_12_reg_1070;
    sc_signal< sc_lv<64> > select_ln353_fu_736_p3;
    sc_signal< sc_lv<64> > select_ln353_reg_1076;
    sc_signal< sc_logic > ap_CS_fsm_pp1_stage2;
    sc_signal< bool > ap_block_state11_pp1_stage2_iter0;
    sc_signal< bool > ap_block_pp1_stage2_11001;
    sc_signal< sc_lv<3> > y_fu_743_p2;
    sc_signal< sc_lv<3> > y_reg_1081;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<1> > icmp_ln280_fu_760_p2;
    sc_signal< sc_lv<1> > icmp_ln280_reg_1091;
    sc_signal< sc_logic > ap_CS_fsm_pp2_stage0;
    sc_signal< bool > ap_block_state19_pp2_stage0_iter0;
    sc_signal< bool > ap_block_state20_pp2_stage0_iter1;
    sc_signal< bool > ap_block_state21_pp2_stage0_iter2;
    sc_signal< bool > ap_block_pp2_stage0_11001;
    sc_signal< sc_lv<1> > icmp_ln280_reg_1091_pp2_iter1_reg;
    sc_signal< sc_lv<8> > add_ln280_fu_766_p2;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter0;
    sc_signal< sc_lv<4> > select_ln280_fu_784_p3;
    sc_signal< sc_lv<4> > select_ln280_reg_1100;
    sc_signal< sc_lv<4> > select_ln280_reg_1100_pp2_iter1_reg;
    sc_signal< sc_lv<5> > select_ln280_5_fu_792_p3;
    sc_signal< sc_lv<5> > select_ln280_5_reg_1105;
    sc_signal< sc_lv<5> > select_ln280_5_reg_1105_pp2_iter1_reg;
    sc_signal< sc_lv<3> > trunc_ln282_fu_805_p1;
    sc_signal< sc_lv<3> > trunc_ln282_reg_1116;
    sc_signal< sc_lv<4> > j_12_fu_809_p2;
    sc_signal< sc_lv<8> > trunc_ln282_5_fu_832_p1;
    sc_signal< sc_lv<8> > trunc_ln282_5_reg_1126;
    sc_signal< sc_lv<6> > partialBlock_fu_861_p2;
    sc_signal< sc_lv<6> > partialBlock_reg_1131;
    sc_signal< sc_logic > ap_CS_fsm_state22;
    sc_signal< sc_lv<32> > partialBlock_31_fu_888_p3;
    sc_signal< sc_lv<32> > partialBlock_31_reg_1136;
    sc_signal< sc_logic > ap_CS_fsm_state23;
    sc_signal< sc_lv<64> > zext_ln325_fu_896_p1;
    sc_signal< sc_lv<64> > zext_ln325_reg_1142;
    sc_signal< sc_lv<33> > i_fu_904_p2;
    sc_signal< sc_lv<33> > i_reg_1147;
    sc_signal< sc_lv<32> > loop_fu_915_p2;
    sc_signal< sc_lv<32> > loop_reg_1155;
    sc_signal< sc_logic > ap_CS_fsm_state24;
    sc_signal< sc_lv<1> > icmp_ln393_fu_910_p2;
    sc_signal< sc_lv<16> > add_ln394_8_fu_945_p2;
    sc_signal< sc_lv<16> > add_ln394_8_reg_1165;
    sc_signal< sc_lv<32> > add_ln332_fu_950_p2;
    sc_signal< sc_lv<64> > add_ln331_fu_955_p2;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > grp_theta_fu_409_ap_ready;
    sc_signal< sc_logic > grp_theta_fu_409_ap_done;
    sc_signal< bool > ap_block_pp1_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp1_exit_iter0_state9;
    sc_signal< sc_logic > ap_enable_reg_pp1_iter1;
    sc_signal< bool > ap_block_pp1_stage2_subdone;
    sc_signal< bool > ap_block_pp2_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp2_exit_iter0_state19;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter1;
    sc_signal< sc_logic > ap_enable_reg_pp2_iter2;
    sc_signal< sc_lv<5> > stateAsWords_address0;
    sc_signal< sc_logic > stateAsWords_ce0;
    sc_signal< sc_logic > stateAsWords_we0;
    sc_signal< sc_lv<64> > stateAsWords_d0;
    sc_signal< sc_lv<64> > stateAsWords_q0;
    sc_signal< sc_lv<5> > stateAsWords_address1;
    sc_signal< sc_logic > stateAsWords_ce1;
    sc_signal< sc_logic > stateAsWords_we1;
    sc_signal< sc_lv<64> > stateAsWords_d1;
    sc_signal< sc_lv<64> > stateAsWords_q1;
    sc_signal< sc_logic > grp_pi_fu_404_ap_start;
    sc_signal< sc_logic > grp_pi_fu_404_ap_done;
    sc_signal< sc_logic > grp_pi_fu_404_ap_idle;
    sc_signal< sc_logic > grp_pi_fu_404_ap_ready;
    sc_signal< sc_lv<5> > grp_pi_fu_404_A_address0;
    sc_signal< sc_logic > grp_pi_fu_404_A_ce0;
    sc_signal< sc_logic > grp_pi_fu_404_A_we0;
    sc_signal< sc_lv<64> > grp_pi_fu_404_A_d0;
    sc_signal< sc_lv<5> > grp_pi_fu_404_A_address1;
    sc_signal< sc_logic > grp_pi_fu_404_A_ce1;
    sc_signal< sc_logic > grp_pi_fu_404_A_we1;
    sc_signal< sc_lv<64> > grp_pi_fu_404_A_d1;
    sc_signal< sc_logic > grp_theta_fu_409_ap_start;
    sc_signal< sc_logic > grp_theta_fu_409_ap_idle;
    sc_signal< sc_lv<5> > grp_theta_fu_409_A_address0;
    sc_signal< sc_logic > grp_theta_fu_409_A_ce0;
    sc_signal< sc_lv<5> > grp_theta_fu_409_A_address1;
    sc_signal< sc_logic > grp_theta_fu_409_A_ce1;
    sc_signal< sc_logic > grp_theta_fu_409_A_we1;
    sc_signal< sc_lv<64> > grp_theta_fu_409_A_d1;
    sc_signal< sc_logic > grp_chi_fu_414_ap_start;
    sc_signal< sc_logic > grp_chi_fu_414_ap_done;
    sc_signal< sc_logic > grp_chi_fu_414_ap_idle;
    sc_signal< sc_logic > grp_chi_fu_414_ap_ready;
    sc_signal< sc_lv<5> > grp_chi_fu_414_A_address0;
    sc_signal< sc_logic > grp_chi_fu_414_A_ce0;
    sc_signal< sc_lv<5> > grp_chi_fu_414_A_address1;
    sc_signal< sc_logic > grp_chi_fu_414_A_ce1;
    sc_signal< sc_logic > grp_chi_fu_414_A_we1;
    sc_signal< sc_lv<64> > grp_chi_fu_414_A_d1;
    sc_signal< sc_lv<32> > instance_byteIOIndex_1_reg_242;
    sc_signal< sc_lv<33> > i_0_reg_254;
    sc_signal< sc_lv<64> > curData_0_idx_reg_266;
    sc_signal< sc_lv<5> > i_0_i_reg_278;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<4> > j_0_i_reg_289;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<5> > indexRound_assign_reg_301;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<5> > ap_phi_mux_indvar_flatten_phi_fu_317_p4;
    sc_signal< bool > ap_block_pp1_stage0;
    sc_signal< sc_lv<3> > ap_phi_mux_x_0_i_phi_fu_328_p4;
    sc_signal< sc_lv<3> > ap_phi_mux_y_0_i_phi_fu_340_p4;
    sc_signal< sc_lv<5> > ap_phi_mux_i_0_i2_phi_fu_362_p4;
    sc_signal< bool > ap_block_pp2_stage0;
    sc_signal< sc_lv<32> > offset_assign_reg_380;
    sc_signal< sc_lv<32> > loop_0_i11_reg_393;
    sc_signal< sc_logic > ap_CS_fsm_state25;
    sc_signal< sc_logic > grp_pi_fu_404_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_theta_fu_409_ap_start_reg;
    sc_signal< sc_logic > grp_chi_fu_414_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_lv<64> > zext_ln270_fu_497_p1;
    sc_signal< sc_lv<64> > zext_ln272_fu_531_p1;
    sc_signal< sc_lv<64> > zext_ln353_4_fu_688_p1;
    sc_signal< bool > ap_block_pp1_stage1;
    sc_signal< sc_lv<64> > zext_ln382_fu_748_p1;
    sc_signal< sc_lv<64> > zext_ln280_fu_800_p1;
    sc_signal< sc_lv<64> > zext_ln282_4_fu_852_p1;
    sc_signal< sc_lv<64> > zext_ln394_fu_927_p1;
    sc_signal< sc_lv<64> > zext_ln394_13_fu_960_p1;
    sc_signal< sc_lv<64> > or_ln272_fu_562_p2;
    sc_signal< sc_lv<64> > xor_ln382_fu_753_p2;
    sc_signal< sc_lv<10> > tmp_fu_427_p3;
    sc_signal< sc_lv<11> > zext_ln394_11_fu_435_p1;
    sc_signal< sc_lv<11> > zext_ln394_10_fu_423_p1;
    sc_signal< sc_lv<11> > sub_ln394_fu_439_p2;
    sc_signal< sc_lv<11> > zext_ln394_9_fu_419_p1;
    sc_signal< sc_lv<11> > add_ln394_7_fu_445_p2;
    sc_signal< sc_lv<28> > tmp_62_fu_459_p4;
    sc_signal< sc_lv<8> > zext_ln271_fu_522_p1;
    sc_signal< sc_lv<8> > add_ln272_fu_526_p2;
    sc_signal< sc_lv<3> > trunc_ln272_fu_540_p1;
    sc_signal< sc_lv<6> > shl_ln272_3_fu_544_p3;
    sc_signal< sc_lv<64> > zext_ln272_3_fu_536_p1;
    sc_signal< sc_lv<64> > zext_ln272_4_fu_552_p1;
    sc_signal< sc_lv<64> > shl_ln272_fu_556_p2;
    sc_signal< sc_lv<1> > icmp_ln353_7_fu_619_p2;
    sc_signal< sc_lv<3> > add_ln353_8_fu_625_p2;
    sc_signal< sc_lv<3> > select_ln353_15_fu_631_p3;
    sc_signal< sc_lv<1> > icmp_ln353_8_fu_643_p2;
    sc_signal< sc_lv<3> > add_ln353_9_fu_648_p2;
    sc_signal< sc_lv<3> > select_ln353_16_fu_653_p3;
    sc_signal< sc_lv<4> > zext_ln353_fu_639_p1;
    sc_signal< sc_lv<4> > zext_ln353_1_fu_660_p1;
    sc_signal< sc_lv<4> > add_ln353_fu_672_p2;
    sc_signal< sc_lv<5> > shl_ln5_fu_664_p3;
    sc_signal< sc_lv<5> > zext_ln353_3_fu_678_p1;
    sc_signal< sc_lv<5> > add_ln353_1_fu_682_p2;
    sc_signal< bool > ap_block_pp1_stage2;
    sc_signal< sc_lv<64> > zext_ln353_6_fu_704_p1;
    sc_signal< sc_lv<7> > zext_ln353_5_fu_700_p1;
    sc_signal< sc_lv<7> > sub_ln353_fu_714_p2;
    sc_signal< sc_lv<64> > zext_ln353_7_fu_720_p1;
    sc_signal< sc_lv<64> > lshr_ln353_fu_724_p2;
    sc_signal< sc_lv<64> > shl_ln353_fu_708_p2;
    sc_signal< sc_lv<64> > xor_ln353_fu_730_p2;
    sc_signal< sc_lv<1> > icmp_ln281_fu_778_p2;
    sc_signal< sc_lv<5> > i_31_fu_772_p2;
    sc_signal< sc_lv<6> > shl_ln282_2_fu_815_p3;
    sc_signal< sc_lv<64> > zext_ln282_3_fu_822_p1;
    sc_signal< sc_lv<64> > lshr_ln282_fu_826_p2;
    sc_signal< sc_lv<8> > zext_ln281_fu_843_p1;
    sc_signal< sc_lv<8> > shl_ln282_mid2_fu_836_p3;
    sc_signal< sc_lv<8> > add_ln282_fu_846_p2;
    sc_signal< sc_lv<6> > trunc_ln322_fu_857_p1;
    sc_signal< sc_lv<32> > zext_ln322_fu_867_p1;
    sc_signal< sc_lv<32> > add_ln323_fu_870_p2;
    sc_signal< sc_lv<1> > icmp_ln323_fu_876_p2;
    sc_signal< sc_lv<32> > partialBlock_30_fu_882_p2;
    sc_signal< sc_lv<33> > zext_ln325_1_fu_900_p1;
    sc_signal< sc_lv<32> > add_ln394_fu_921_p2;
    sc_signal< sc_lv<7> > trunc_ln394_fu_932_p1;
    sc_signal< sc_lv<7> > add_ln394_1_fu_936_p2;
    sc_signal< sc_lv<16> > zext_ln394_12_fu_941_p1;
    sc_signal< sc_lv<22> > ap_NS_fsm;
    sc_signal< bool > ap_block_pp1_stage1_subdone;
    sc_signal< sc_logic > ap_idle_pp1;
    sc_signal< sc_logic > ap_enable_pp1;
    sc_signal< sc_logic > ap_idle_pp2;
    sc_signal< sc_logic > ap_enable_pp2;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<22> ap_ST_fsm_state1;
    static const sc_lv<22> ap_ST_fsm_state2;
    static const sc_lv<22> ap_ST_fsm_state3;
    static const sc_lv<22> ap_ST_fsm_state4;
    static const sc_lv<22> ap_ST_fsm_state5;
    static const sc_lv<22> ap_ST_fsm_state6;
    static const sc_lv<22> ap_ST_fsm_state7;
    static const sc_lv<22> ap_ST_fsm_state8;
    static const sc_lv<22> ap_ST_fsm_pp1_stage0;
    static const sc_lv<22> ap_ST_fsm_pp1_stage1;
    static const sc_lv<22> ap_ST_fsm_pp1_stage2;
    static const sc_lv<22> ap_ST_fsm_state13;
    static const sc_lv<22> ap_ST_fsm_state14;
    static const sc_lv<22> ap_ST_fsm_state15;
    static const sc_lv<22> ap_ST_fsm_state16;
    static const sc_lv<22> ap_ST_fsm_state17;
    static const sc_lv<22> ap_ST_fsm_state18;
    static const sc_lv<22> ap_ST_fsm_pp2_stage0;
    static const sc_lv<22> ap_ST_fsm_state22;
    static const sc_lv<22> ap_ST_fsm_state23;
    static const sc_lv<22> ap_ST_fsm_state24;
    static const sc_lv<22> ap_ST_fsm_state25;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<32> ap_const_lv32_14;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<33> ap_const_lv33_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<5> ap_const_lv5_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_15;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<28> ap_const_lv28_0;
    static const sc_lv<32> ap_const_lv32_A8;
    static const sc_lv<5> ap_const_lv5_19;
    static const sc_lv<5> ap_const_lv5_1;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<5> ap_const_lv5_18;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<3> ap_const_lv3_5;
    static const sc_lv<3> ap_const_lv3_3;
    static const sc_lv<7> ap_const_lv7_40;
    static const sc_lv<8> ap_const_lv8_C8;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<6> ap_const_lv6_20;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_KeccakRhoOffsets_address0();
    void thread_KeccakRhoOffsets_ce0();
    void thread_KeccakRoundConstants_address0();
    void thread_KeccakRoundConstants_ce0();
    void thread_add_ln272_fu_526_p2();
    void thread_add_ln280_fu_766_p2();
    void thread_add_ln282_fu_846_p2();
    void thread_add_ln323_fu_870_p2();
    void thread_add_ln331_fu_955_p2();
    void thread_add_ln332_fu_950_p2();
    void thread_add_ln352_fu_587_p2();
    void thread_add_ln353_1_fu_682_p2();
    void thread_add_ln353_8_fu_625_p2();
    void thread_add_ln353_9_fu_648_p2();
    void thread_add_ln353_fu_672_p2();
    void thread_add_ln394_1_fu_936_p2();
    void thread_add_ln394_7_fu_445_p2();
    void thread_add_ln394_8_fu_945_p2();
    void thread_add_ln394_fu_921_p2();
    void thread_ap_CS_fsm_pp1_stage0();
    void thread_ap_CS_fsm_pp1_stage1();
    void thread_ap_CS_fsm_pp1_stage2();
    void thread_ap_CS_fsm_pp2_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state22();
    void thread_ap_CS_fsm_state23();
    void thread_ap_CS_fsm_state24();
    void thread_ap_CS_fsm_state25();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_block_pp1_stage0();
    void thread_ap_block_pp1_stage0_11001();
    void thread_ap_block_pp1_stage0_subdone();
    void thread_ap_block_pp1_stage1();
    void thread_ap_block_pp1_stage1_11001();
    void thread_ap_block_pp1_stage1_subdone();
    void thread_ap_block_pp1_stage2();
    void thread_ap_block_pp1_stage2_11001();
    void thread_ap_block_pp1_stage2_subdone();
    void thread_ap_block_pp2_stage0();
    void thread_ap_block_pp2_stage0_11001();
    void thread_ap_block_pp2_stage0_subdone();
    void thread_ap_block_state10_pp1_stage1_iter0();
    void thread_ap_block_state11_pp1_stage2_iter0();
    void thread_ap_block_state12_pp1_stage0_iter1();
    void thread_ap_block_state19_pp2_stage0_iter0();
    void thread_ap_block_state20_pp2_stage0_iter1();
    void thread_ap_block_state21_pp2_stage0_iter2();
    void thread_ap_block_state9_pp1_stage0_iter0();
    void thread_ap_condition_pp1_exit_iter0_state9();
    void thread_ap_condition_pp2_exit_iter0_state19();
    void thread_ap_done();
    void thread_ap_enable_pp1();
    void thread_ap_enable_pp2();
    void thread_ap_idle();
    void thread_ap_idle_pp1();
    void thread_ap_idle_pp2();
    void thread_ap_phi_mux_i_0_i2_phi_fu_362_p4();
    void thread_ap_phi_mux_indvar_flatten_phi_fu_317_p4();
    void thread_ap_phi_mux_x_0_i_phi_fu_328_p4();
    void thread_ap_phi_mux_y_0_i_phi_fu_340_p4();
    void thread_ap_ready();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_grp_chi_fu_414_ap_start();
    void thread_grp_pi_fu_404_ap_start();
    void thread_grp_theta_fu_409_ap_start();
    void thread_i_30_fu_491_p2();
    void thread_i_31_fu_772_p2();
    void thread_i_32_fu_575_p2();
    void thread_i_fu_904_p2();
    void thread_icmp_ln269_fu_485_p2();
    void thread_icmp_ln271_fu_510_p2();
    void thread_icmp_ln280_fu_760_p2();
    void thread_icmp_ln281_fu_778_p2();
    void thread_icmp_ln293_fu_569_p2();
    void thread_icmp_ln304_fu_469_p2();
    void thread_icmp_ln305_fu_479_p2();
    void thread_icmp_ln323_fu_876_p2();
    void thread_icmp_ln352_3_fu_599_p2();
    void thread_icmp_ln352_fu_581_p2();
    void thread_icmp_ln353_7_fu_619_p2();
    void thread_icmp_ln353_8_fu_643_p2();
    void thread_icmp_ln353_fu_694_p2();
    void thread_icmp_ln393_fu_910_p2();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_j_12_fu_809_p2();
    void thread_j_fu_516_p2();
    void thread_loop_fu_915_p2();
    void thread_lshr_ln282_fu_826_p2();
    void thread_lshr_ln353_fu_724_p2();
    void thread_or_ln272_fu_562_p2();
    void thread_partialBlock_30_fu_882_p2();
    void thread_partialBlock_31_fu_888_p3();
    void thread_partialBlock_fu_861_p2();
    void thread_select_ln280_5_fu_792_p3();
    void thread_select_ln280_fu_784_p3();
    void thread_select_ln353_13_fu_605_p3();
    void thread_select_ln353_14_fu_613_p3();
    void thread_select_ln353_15_fu_631_p3();
    void thread_select_ln353_16_fu_653_p3();
    void thread_select_ln353_fu_736_p3();
    void thread_shl_ln272_3_fu_544_p3();
    void thread_shl_ln272_fu_556_p2();
    void thread_shl_ln282_2_fu_815_p3();
    void thread_shl_ln282_mid2_fu_836_p3();
    void thread_shl_ln353_fu_708_p2();
    void thread_shl_ln5_fu_664_p3();
    void thread_shl_ln_fu_502_p3();
    void thread_stateAsWords_address0();
    void thread_stateAsWords_address1();
    void thread_stateAsWords_ce0();
    void thread_stateAsWords_ce1();
    void thread_stateAsWords_d0();
    void thread_stateAsWords_d1();
    void thread_stateAsWords_we0();
    void thread_stateAsWords_we1();
    void thread_sub_ln353_fu_714_p2();
    void thread_sub_ln394_fu_439_p2();
    void thread_tmp_54_cast_fu_451_p3();
    void thread_tmp_62_fu_459_p4();
    void thread_tmp_fu_427_p3();
    void thread_trunc_ln272_fu_540_p1();
    void thread_trunc_ln282_5_fu_832_p1();
    void thread_trunc_ln282_fu_805_p1();
    void thread_trunc_ln304_fu_475_p1();
    void thread_trunc_ln322_fu_857_p1();
    void thread_trunc_ln394_fu_932_p1();
    void thread_x_fu_593_p2();
    void thread_xor_ln353_fu_730_p2();
    void thread_xor_ln382_fu_753_p2();
    void thread_y_fu_743_p2();
    void thread_zext_ln270_fu_497_p1();
    void thread_zext_ln271_fu_522_p1();
    void thread_zext_ln272_3_fu_536_p1();
    void thread_zext_ln272_4_fu_552_p1();
    void thread_zext_ln272_fu_531_p1();
    void thread_zext_ln280_fu_800_p1();
    void thread_zext_ln281_fu_843_p1();
    void thread_zext_ln282_3_fu_822_p1();
    void thread_zext_ln282_4_fu_852_p1();
    void thread_zext_ln322_fu_867_p1();
    void thread_zext_ln325_1_fu_900_p1();
    void thread_zext_ln325_fu_896_p1();
    void thread_zext_ln353_1_fu_660_p1();
    void thread_zext_ln353_3_fu_678_p1();
    void thread_zext_ln353_4_fu_688_p1();
    void thread_zext_ln353_5_fu_700_p1();
    void thread_zext_ln353_6_fu_704_p1();
    void thread_zext_ln353_7_fu_720_p1();
    void thread_zext_ln353_fu_639_p1();
    void thread_zext_ln382_fu_748_p1();
    void thread_zext_ln394_10_fu_423_p1();
    void thread_zext_ln394_11_fu_435_p1();
    void thread_zext_ln394_12_fu_941_p1();
    void thread_zext_ln394_13_fu_960_p1();
    void thread_zext_ln394_9_fu_419_p1();
    void thread_zext_ln394_fu_927_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
