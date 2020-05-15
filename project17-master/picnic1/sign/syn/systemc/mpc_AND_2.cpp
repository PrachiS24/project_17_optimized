// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "mpc_AND_2.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic mpc_AND_2::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic mpc_AND_2::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state1 = "1";
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state2 = "10";
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state3 = "100";
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state4 = "1000";
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state5 = "10000";
const sc_lv<6> mpc_AND_2::ap_ST_fsm_state6 = "100000";
const sc_lv<32> mpc_AND_2::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<32> mpc_AND_2::ap_const_lv32_1 = "1";
const sc_lv<32> mpc_AND_2::ap_const_lv32_2 = "10";
const sc_lv<32> mpc_AND_2::ap_const_lv32_3 = "11";
const sc_lv<1> mpc_AND_2::ap_const_lv1_0 = "0";
const sc_lv<2> mpc_AND_2::ap_const_lv2_0 = "00";
const sc_lv<32> mpc_AND_2::ap_const_lv32_5 = "101";
const sc_lv<2> mpc_AND_2::ap_const_lv2_1 = "1";
const sc_lv<1> mpc_AND_2::ap_const_lv1_1 = "1";
const sc_lv<32> mpc_AND_2::ap_const_lv32_4 = "100";
const sc_lv<32> mpc_AND_2::ap_const_lv32_1F = "11111";
const sc_lv<32> mpc_AND_2::ap_const_lv32_13 = "10011";
const sc_lv<32> mpc_AND_2::ap_const_lv32_C = "1100";
const sc_lv<10> mpc_AND_2::ap_const_lv10_A6 = "10100110";
const sc_lv<10> mpc_AND_2::ap_const_lv10_14C = "101001100";
const sc_lv<3> mpc_AND_2::ap_const_lv3_7 = "111";
const sc_lv<8> mpc_AND_2::ap_const_lv8_1 = "1";
const sc_lv<8> mpc_AND_2::ap_const_lv8_FF = "11111111";
const sc_lv<2> mpc_AND_2::ap_const_lv2_3 = "11";
const sc_lv<2> mpc_AND_2::ap_const_lv2_2 = "10";
const sc_lv<17> mpc_AND_2::ap_const_lv17_4B = "1001011";
const bool mpc_AND_2::ap_const_boolean_1 = true;

mpc_AND_2::mpc_AND_2(sc_module_name name) : sc_module(name), mVcdFile(0) {
    crypto_sign_mux_3VhK_U94 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U94");
    crypto_sign_mux_3VhK_U94->din0(in1_0_read);
    crypto_sign_mux_3VhK_U94->din1(in1_1_read);
    crypto_sign_mux_3VhK_U94->din2(in1_2_read);
    crypto_sign_mux_3VhK_U94->din3(i_0_reg_217);
    crypto_sign_mux_3VhK_U94->dout(tmp_fu_411_p5);
    crypto_sign_mux_3VhK_U95 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U95");
    crypto_sign_mux_3VhK_U95->din0(in2_0_read);
    crypto_sign_mux_3VhK_U95->din1(in2_1_read);
    crypto_sign_mux_3VhK_U95->din2(in2_2_read);
    crypto_sign_mux_3VhK_U95->din3(select_ln1343_fu_432_p3);
    crypto_sign_mux_3VhK_U95->dout(tmp_s_fu_440_p5);
    crypto_sign_mux_3VhK_U96 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U96");
    crypto_sign_mux_3VhK_U96->din0(in1_0_read);
    crypto_sign_mux_3VhK_U96->din1(in1_1_read);
    crypto_sign_mux_3VhK_U96->din2(in1_2_read);
    crypto_sign_mux_3VhK_U96->din3(select_ln1343_fu_432_p3);
    crypto_sign_mux_3VhK_U96->dout(tmp_1_fu_455_p5);
    crypto_sign_mux_3VhK_U97 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U97");
    crypto_sign_mux_3VhK_U97->din0(in2_0_read);
    crypto_sign_mux_3VhK_U97->din1(in2_1_read);
    crypto_sign_mux_3VhK_U97->din2(in2_2_read);
    crypto_sign_mux_3VhK_U97->din3(i_0_reg_217);
    crypto_sign_mux_3VhK_U97->dout(tmp_2_fu_464_p5);
    crypto_sign_mux_3VhK_U98 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U98");
    crypto_sign_mux_3VhK_U98->din0(zext_ln54_12_reg_793);
    crypto_sign_mux_3VhK_U98->din1(zext_ln54_13_reg_799);
    crypto_sign_mux_3VhK_U98->din2(zext_ln54_14_reg_805);
    crypto_sign_mux_3VhK_U98->din3(i_0_reg_217);
    crypto_sign_mux_3VhK_U98->dout(tmp_3_fu_485_p5);
    crypto_sign_mux_3VhK_U99 = new crypto_sign_mux_3VhK<1,1,8,8,8,2,8>("crypto_sign_mux_3VhK_U99");
    crypto_sign_mux_3VhK_U99->din0(zext_ln54_12_reg_793);
    crypto_sign_mux_3VhK_U99->din1(zext_ln54_13_reg_799);
    crypto_sign_mux_3VhK_U99->din2(zext_ln54_14_reg_805);
    crypto_sign_mux_3VhK_U99->din3(select_ln1343_fu_432_p3);
    crypto_sign_mux_3VhK_U99->dout(tmp_4_fu_494_p5);
    crypto_sign_mac_mWhU_U100 = new crypto_sign_mac_mWhU<1,1,12,8,17,17>("crypto_sign_mac_mWhU_U100");
    crypto_sign_mac_mWhU_U100->din0(add_ln66_fu_398_p2);
    crypto_sign_mac_mWhU_U100->din1(grp_fu_641_p1);
    crypto_sign_mac_mWhU_U100->din2(zext_ln54_cast1_reg_693);
    crypto_sign_mac_mWhU_U100->dout(grp_fu_641_p3);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_add_ln1349_fu_575_p2);
    sensitive << ( rand_pos_read );

    SC_METHOD(thread_add_ln54_1_fu_297_p2);
    sensitive << ( zext_ln54_cast_reg_698 );

    SC_METHOD(thread_add_ln54_fu_287_p2);
    sensitive << ( zext_ln54_cast_reg_698 );

    SC_METHOD(thread_add_ln66_fu_398_p2);
    sensitive << ( sext_ln66_reg_788 );
    sensitive << ( zext_ln66_37_fu_394_p1 );

    SC_METHOD(thread_and_ln1343_1_fu_473_p2);
    sensitive << ( tmp_2_fu_464_p5 );
    sensitive << ( tmp_1_fu_455_p5 );

    SC_METHOD(thread_and_ln1343_2_fu_479_p2);
    sensitive << ( tmp_fu_411_p5 );
    sensitive << ( tmp_2_fu_464_p5 );

    SC_METHOD(thread_and_ln1343_fu_449_p2);
    sensitive << ( tmp_s_fu_440_p5 );
    sensitive << ( tmp_fu_411_p5 );

    SC_METHOD(thread_and_ln66_fu_629_p2);
    sensitive << ( views_communicatedBi_q0 );
    sensitive << ( xor_ln66_reg_811 );

    SC_METHOD(thread_ap_CS_fsm_state1);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state2);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state3);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state4);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state5);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_CS_fsm_state6);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );

    SC_METHOD(thread_ap_phi_mux_i_0_phi_fu_221_p4);
    sensitive << ( i_0_reg_217 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );

    SC_METHOD(thread_ap_return_0);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );
    sensitive << ( add_ln1349_fu_575_p2 );

    SC_METHOD(thread_ap_return_1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );
    sensitive << ( select_ln1350_fu_580_p3 );

    SC_METHOD(thread_ap_return_2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );
    sensitive << ( select_ln1350_1_fu_587_p3 );

    SC_METHOD(thread_ap_return_3);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );
    sensitive << ( select_ln1350_2_fu_594_p3 );

    SC_METHOD(thread_grp_fu_228_p1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln54_11_fu_312_p1 );
    sensitive << ( zext_ln54_11_reg_724 );
    sensitive << ( ap_CS_fsm_state3 );

    SC_METHOD(thread_grp_fu_228_p2);
    sensitive << ( rand_tape_q0 );
    sensitive << ( grp_fu_228_p1 );

    SC_METHOD(thread_grp_fu_641_p1);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );

    SC_METHOD(thread_i_fu_388_p2);
    sensitive << ( i_0_reg_217 );

    SC_METHOD(thread_icmp_ln1342_fu_382_p2);
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( i_0_reg_217 );

    SC_METHOD(thread_icmp_ln1343_fu_420_p2);
    sensitive << ( i_fu_388_p2 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );

    SC_METHOD(thread_lshr_ln54_6_fu_358_p2);
    sensitive << ( rand_tape_q1 );
    sensitive << ( zext_ln54_11_reg_724 );

    SC_METHOD(thread_lshr_ln_fu_233_p4);
    sensitive << ( rand_pos_read );

    SC_METHOD(thread_r_0_fu_317_p1);
    sensitive << ( grp_fu_228_p2 );

    SC_METHOD(thread_r_1_fu_350_p1);
    sensitive << ( grp_fu_228_p2 );

    SC_METHOD(thread_r_2_fu_363_p1);
    sensitive << ( lshr_ln54_6_fu_358_p2 );

    SC_METHOD(thread_rand_tape_address0);
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( zext_ln54_fu_243_p1 );
    sensitive << ( sext_ln54_fu_292_p1 );

    SC_METHOD(thread_rand_tape_address1);
    sensitive << ( ap_CS_fsm_state2 );
    sensitive << ( sext_ln54_1_fu_302_p1 );

    SC_METHOD(thread_rand_tape_ce0);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_rand_tape_ce1);
    sensitive << ( ap_CS_fsm_state2 );

    SC_METHOD(thread_select_ln1343_fu_432_p3);
    sensitive << ( i_fu_388_p2 );
    sensitive << ( icmp_ln1343_fu_420_p2 );
    sensitive << ( xor_ln1343_3_fu_426_p2 );

    SC_METHOD(thread_select_ln1350_1_fu_587_p3);
    sensitive << ( out_1_read );
    sensitive << ( out5_02_fu_94 );
    sensitive << ( write_flag3_0_fu_102 );

    SC_METHOD(thread_select_ln1350_2_fu_594_p3);
    sensitive << ( out_2_read );
    sensitive << ( out6_01_fu_82 );
    sensitive << ( write_flag6_0_fu_90 );

    SC_METHOD(thread_select_ln1350_fu_580_p3);
    sensitive << ( out_0_read );
    sensitive << ( write_flag_0_fu_86 );
    sensitive << ( out_03_fu_98 );

    SC_METHOD(thread_sext_ln54_1_fu_302_p1);
    sensitive << ( add_ln54_1_fu_297_p2 );

    SC_METHOD(thread_sext_ln54_fu_292_p1);
    sensitive << ( add_ln54_fu_287_p2 );

    SC_METHOD(thread_sext_ln66_2_fu_407_p1);
    sensitive << ( grp_fu_641_p3 );

    SC_METHOD(thread_sext_ln66_fu_343_p1);
    sensitive << ( sub_ln66_fu_337_p2 );

    SC_METHOD(thread_shl_ln66_6_fu_625_p2);
    sensitive << ( zext_ln54_11_reg_724 );
    sensitive << ( xor_ln1343_4_reg_829 );

    SC_METHOD(thread_shl_ln66_fu_371_p2);
    sensitive << ( zext_ln54_11_reg_724 );

    SC_METHOD(thread_sub_ln66_fu_337_p2);
    sensitive << ( zext_ln66_36_fu_333_p1 );
    sensitive << ( zext_ln66_fu_321_p1 );

    SC_METHOD(thread_tmp_18_fu_325_p3);
    sensitive << ( views_communicatedBits_offset );

    SC_METHOD(thread_trunc_ln54_fu_268_p1);
    sensitive << ( rand_pos_read );

    SC_METHOD(thread_views_communicatedBi_address0);
    sensitive << ( views_communicatedBi_3_reg_824 );
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_views_communicatedBi_ce0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( ap_CS_fsm_state5 );

    SC_METHOD(thread_views_communicatedBi_d0);
    sensitive << ( ap_CS_fsm_state6 );
    sensitive << ( and_ln66_fu_629_p2 );
    sensitive << ( shl_ln66_6_fu_625_p2 );

    SC_METHOD(thread_views_communicatedBi_we0);
    sensitive << ( ap_CS_fsm_state6 );

    SC_METHOD(thread_xor_ln1343_1_fu_509_p2);
    sensitive << ( and_ln1343_1_fu_473_p2 );
    sensitive << ( tmp_4_fu_494_p5 );

    SC_METHOD(thread_xor_ln1343_2_fu_515_p2);
    sensitive << ( xor_ln1343_1_fu_509_p2 );
    sensitive << ( and_ln1343_fu_449_p2 );

    SC_METHOD(thread_xor_ln1343_3_fu_426_p2);
    sensitive << ( i_0_reg_217 );

    SC_METHOD(thread_xor_ln1343_4_fu_521_p2);
    sensitive << ( xor_ln1343_2_fu_515_p2 );
    sensitive << ( xor_ln1343_fu_503_p2 );

    SC_METHOD(thread_xor_ln1343_fu_503_p2);
    sensitive << ( and_ln1343_2_fu_479_p2 );
    sensitive << ( tmp_3_fu_485_p5 );

    SC_METHOD(thread_xor_ln54_fu_307_p2);
    sensitive << ( trunc_ln54_reg_709 );

    SC_METHOD(thread_xor_ln66_fu_376_p2);
    sensitive << ( shl_ln66_fu_371_p2 );

    SC_METHOD(thread_zext_ln54_11_fu_312_p1);
    sensitive << ( xor_ln54_fu_307_p2 );

    SC_METHOD(thread_zext_ln54_12_fu_347_p1);
    sensitive << ( r_0_reg_732 );

    SC_METHOD(thread_zext_ln54_13_fu_354_p1);
    sensitive << ( r_1_fu_350_p1 );

    SC_METHOD(thread_zext_ln54_14_fu_367_p1);
    sensitive << ( r_2_fu_363_p1 );

    SC_METHOD(thread_zext_ln54_fu_243_p1);
    sensitive << ( lshr_ln_fu_233_p4 );

    SC_METHOD(thread_zext_ln66_36_fu_333_p1);
    sensitive << ( tmp_18_fu_325_p3 );

    SC_METHOD(thread_zext_ln66_37_fu_394_p1);
    sensitive << ( i_0_reg_217 );

    SC_METHOD(thread_zext_ln66_fu_321_p1);
    sensitive << ( views_communicatedBits_offset );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( ap_CS_fsm_state1 );
    sensitive << ( ap_CS_fsm_state4 );
    sensitive << ( icmp_ln1342_fu_382_p2 );

    ap_CS_fsm = "000001";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "mpc_AND_2_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in1_0_read, "(port)in1_0_read");
    sc_trace(mVcdFile, in1_1_read, "(port)in1_1_read");
    sc_trace(mVcdFile, in1_2_read, "(port)in1_2_read");
    sc_trace(mVcdFile, in2_0_read, "(port)in2_0_read");
    sc_trace(mVcdFile, in2_1_read, "(port)in2_1_read");
    sc_trace(mVcdFile, in2_2_read, "(port)in2_2_read");
    sc_trace(mVcdFile, out_0_read, "(port)out_0_read");
    sc_trace(mVcdFile, out_1_read, "(port)out_1_read");
    sc_trace(mVcdFile, out_2_read, "(port)out_2_read");
    sc_trace(mVcdFile, rand_tape_address0, "(port)rand_tape_address0");
    sc_trace(mVcdFile, rand_tape_ce0, "(port)rand_tape_ce0");
    sc_trace(mVcdFile, rand_tape_q0, "(port)rand_tape_q0");
    sc_trace(mVcdFile, rand_tape_address1, "(port)rand_tape_address1");
    sc_trace(mVcdFile, rand_tape_ce1, "(port)rand_tape_ce1");
    sc_trace(mVcdFile, rand_tape_q1, "(port)rand_tape_q1");
    sc_trace(mVcdFile, rand_pos_read, "(port)rand_pos_read");
    sc_trace(mVcdFile, views_communicatedBi_address0, "(port)views_communicatedBi_address0");
    sc_trace(mVcdFile, views_communicatedBi_ce0, "(port)views_communicatedBi_ce0");
    sc_trace(mVcdFile, views_communicatedBi_we0, "(port)views_communicatedBi_we0");
    sc_trace(mVcdFile, views_communicatedBi_d0, "(port)views_communicatedBi_d0");
    sc_trace(mVcdFile, views_communicatedBi_q0, "(port)views_communicatedBi_q0");
    sc_trace(mVcdFile, views_communicatedBits_offset, "(port)views_communicatedBits_offset");
    sc_trace(mVcdFile, ap_return_0, "(port)ap_return_0");
    sc_trace(mVcdFile, ap_return_1, "(port)ap_return_1");
    sc_trace(mVcdFile, ap_return_2, "(port)ap_return_2");
    sc_trace(mVcdFile, ap_return_3, "(port)ap_return_3");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_CS_fsm_state1, "ap_CS_fsm_state1");
    sc_trace(mVcdFile, zext_ln54_cast1_reg_693, "zext_ln54_cast1_reg_693");
    sc_trace(mVcdFile, zext_ln54_cast_reg_698, "zext_ln54_cast_reg_698");
    sc_trace(mVcdFile, trunc_ln54_fu_268_p1, "trunc_ln54_fu_268_p1");
    sc_trace(mVcdFile, trunc_ln54_reg_709, "trunc_ln54_reg_709");
    sc_trace(mVcdFile, ap_CS_fsm_state2, "ap_CS_fsm_state2");
    sc_trace(mVcdFile, zext_ln54_11_fu_312_p1, "zext_ln54_11_fu_312_p1");
    sc_trace(mVcdFile, zext_ln54_11_reg_724, "zext_ln54_11_reg_724");
    sc_trace(mVcdFile, r_0_fu_317_p1, "r_0_fu_317_p1");
    sc_trace(mVcdFile, r_0_reg_732, "r_0_reg_732");
    sc_trace(mVcdFile, ap_CS_fsm_state3, "ap_CS_fsm_state3");
    sc_trace(mVcdFile, sext_ln66_fu_343_p1, "sext_ln66_fu_343_p1");
    sc_trace(mVcdFile, sext_ln66_reg_788, "sext_ln66_reg_788");
    sc_trace(mVcdFile, zext_ln54_12_fu_347_p1, "zext_ln54_12_fu_347_p1");
    sc_trace(mVcdFile, zext_ln54_12_reg_793, "zext_ln54_12_reg_793");
    sc_trace(mVcdFile, zext_ln54_13_fu_354_p1, "zext_ln54_13_fu_354_p1");
    sc_trace(mVcdFile, zext_ln54_13_reg_799, "zext_ln54_13_reg_799");
    sc_trace(mVcdFile, zext_ln54_14_fu_367_p1, "zext_ln54_14_fu_367_p1");
    sc_trace(mVcdFile, zext_ln54_14_reg_805, "zext_ln54_14_reg_805");
    sc_trace(mVcdFile, xor_ln66_fu_376_p2, "xor_ln66_fu_376_p2");
    sc_trace(mVcdFile, xor_ln66_reg_811, "xor_ln66_reg_811");
    sc_trace(mVcdFile, i_fu_388_p2, "i_fu_388_p2");
    sc_trace(mVcdFile, i_reg_819, "i_reg_819");
    sc_trace(mVcdFile, ap_CS_fsm_state4, "ap_CS_fsm_state4");
    sc_trace(mVcdFile, views_communicatedBi_3_reg_824, "views_communicatedBi_3_reg_824");
    sc_trace(mVcdFile, icmp_ln1342_fu_382_p2, "icmp_ln1342_fu_382_p2");
    sc_trace(mVcdFile, xor_ln1343_4_fu_521_p2, "xor_ln1343_4_fu_521_p2");
    sc_trace(mVcdFile, xor_ln1343_4_reg_829, "xor_ln1343_4_reg_829");
    sc_trace(mVcdFile, ap_phi_mux_i_0_phi_fu_221_p4, "ap_phi_mux_i_0_phi_fu_221_p4");
    sc_trace(mVcdFile, i_0_reg_217, "i_0_reg_217");
    sc_trace(mVcdFile, ap_CS_fsm_state6, "ap_CS_fsm_state6");
    sc_trace(mVcdFile, zext_ln54_fu_243_p1, "zext_ln54_fu_243_p1");
    sc_trace(mVcdFile, sext_ln54_fu_292_p1, "sext_ln54_fu_292_p1");
    sc_trace(mVcdFile, sext_ln54_1_fu_302_p1, "sext_ln54_1_fu_302_p1");
    sc_trace(mVcdFile, sext_ln66_2_fu_407_p1, "sext_ln66_2_fu_407_p1");
    sc_trace(mVcdFile, out6_01_fu_82, "out6_01_fu_82");
    sc_trace(mVcdFile, write_flag_0_fu_86, "write_flag_0_fu_86");
    sc_trace(mVcdFile, write_flag6_0_fu_90, "write_flag6_0_fu_90");
    sc_trace(mVcdFile, out5_02_fu_94, "out5_02_fu_94");
    sc_trace(mVcdFile, out_03_fu_98, "out_03_fu_98");
    sc_trace(mVcdFile, write_flag3_0_fu_102, "write_flag3_0_fu_102");
    sc_trace(mVcdFile, ap_CS_fsm_state5, "ap_CS_fsm_state5");
    sc_trace(mVcdFile, grp_fu_228_p1, "grp_fu_228_p1");
    sc_trace(mVcdFile, lshr_ln_fu_233_p4, "lshr_ln_fu_233_p4");
    sc_trace(mVcdFile, add_ln54_fu_287_p2, "add_ln54_fu_287_p2");
    sc_trace(mVcdFile, add_ln54_1_fu_297_p2, "add_ln54_1_fu_297_p2");
    sc_trace(mVcdFile, xor_ln54_fu_307_p2, "xor_ln54_fu_307_p2");
    sc_trace(mVcdFile, grp_fu_228_p2, "grp_fu_228_p2");
    sc_trace(mVcdFile, tmp_18_fu_325_p3, "tmp_18_fu_325_p3");
    sc_trace(mVcdFile, zext_ln66_36_fu_333_p1, "zext_ln66_36_fu_333_p1");
    sc_trace(mVcdFile, zext_ln66_fu_321_p1, "zext_ln66_fu_321_p1");
    sc_trace(mVcdFile, sub_ln66_fu_337_p2, "sub_ln66_fu_337_p2");
    sc_trace(mVcdFile, r_1_fu_350_p1, "r_1_fu_350_p1");
    sc_trace(mVcdFile, lshr_ln54_6_fu_358_p2, "lshr_ln54_6_fu_358_p2");
    sc_trace(mVcdFile, r_2_fu_363_p1, "r_2_fu_363_p1");
    sc_trace(mVcdFile, shl_ln66_fu_371_p2, "shl_ln66_fu_371_p2");
    sc_trace(mVcdFile, zext_ln66_37_fu_394_p1, "zext_ln66_37_fu_394_p1");
    sc_trace(mVcdFile, add_ln66_fu_398_p2, "add_ln66_fu_398_p2");
    sc_trace(mVcdFile, grp_fu_641_p3, "grp_fu_641_p3");
    sc_trace(mVcdFile, icmp_ln1343_fu_420_p2, "icmp_ln1343_fu_420_p2");
    sc_trace(mVcdFile, xor_ln1343_3_fu_426_p2, "xor_ln1343_3_fu_426_p2");
    sc_trace(mVcdFile, select_ln1343_fu_432_p3, "select_ln1343_fu_432_p3");
    sc_trace(mVcdFile, tmp_s_fu_440_p5, "tmp_s_fu_440_p5");
    sc_trace(mVcdFile, tmp_fu_411_p5, "tmp_fu_411_p5");
    sc_trace(mVcdFile, tmp_2_fu_464_p5, "tmp_2_fu_464_p5");
    sc_trace(mVcdFile, tmp_1_fu_455_p5, "tmp_1_fu_455_p5");
    sc_trace(mVcdFile, and_ln1343_2_fu_479_p2, "and_ln1343_2_fu_479_p2");
    sc_trace(mVcdFile, tmp_3_fu_485_p5, "tmp_3_fu_485_p5");
    sc_trace(mVcdFile, and_ln1343_1_fu_473_p2, "and_ln1343_1_fu_473_p2");
    sc_trace(mVcdFile, tmp_4_fu_494_p5, "tmp_4_fu_494_p5");
    sc_trace(mVcdFile, xor_ln1343_1_fu_509_p2, "xor_ln1343_1_fu_509_p2");
    sc_trace(mVcdFile, and_ln1343_fu_449_p2, "and_ln1343_fu_449_p2");
    sc_trace(mVcdFile, xor_ln1343_2_fu_515_p2, "xor_ln1343_2_fu_515_p2");
    sc_trace(mVcdFile, xor_ln1343_fu_503_p2, "xor_ln1343_fu_503_p2");
    sc_trace(mVcdFile, add_ln1349_fu_575_p2, "add_ln1349_fu_575_p2");
    sc_trace(mVcdFile, select_ln1350_fu_580_p3, "select_ln1350_fu_580_p3");
    sc_trace(mVcdFile, select_ln1350_1_fu_587_p3, "select_ln1350_1_fu_587_p3");
    sc_trace(mVcdFile, select_ln1350_2_fu_594_p3, "select_ln1350_2_fu_594_p3");
    sc_trace(mVcdFile, and_ln66_fu_629_p2, "and_ln66_fu_629_p2");
    sc_trace(mVcdFile, shl_ln66_6_fu_625_p2, "shl_ln66_6_fu_625_p2");
    sc_trace(mVcdFile, grp_fu_641_p1, "grp_fu_641_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

mpc_AND_2::~mpc_AND_2() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete crypto_sign_mux_3VhK_U94;
    delete crypto_sign_mux_3VhK_U95;
    delete crypto_sign_mux_3VhK_U96;
    delete crypto_sign_mux_3VhK_U97;
    delete crypto_sign_mux_3VhK_U98;
    delete crypto_sign_mux_3VhK_U99;
    delete crypto_sign_mac_mWhU_U100;
}

void mpc_AND_2::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_fsm_state1;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        i_0_reg_217 = i_reg_819.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        i_0_reg_217 = ap_const_lv2_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,2,2>(ap_phi_mux_i_0_phi_fu_221_p4.read(), ap_const_lv2_1))) {
        write_flag3_0_fu_102 = ap_const_lv1_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        write_flag3_0_fu_102 = ap_const_lv1_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && 
         !esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_phi_fu_221_p4.read()) && 
         !esl_seteq<1,2,2>(ap_phi_mux_i_0_phi_fu_221_p4.read(), ap_const_lv2_1))) {
        write_flag6_0_fu_90 = ap_const_lv1_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        write_flag6_0_fu_90 = ap_const_lv1_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && 
         esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_phi_fu_221_p4.read()))) {
        write_flag_0_fu_86 = ap_const_lv1_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
                esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        write_flag_0_fu_86 = ap_const_lv1_0;
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read())) {
        i_reg_819 = i_fu_388_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && esl_seteq<1,2,2>(ap_phi_mux_i_0_phi_fu_221_p4.read(), ap_const_lv2_1))) {
        out5_02_fu_94 = xor_ln1343_4_fu_521_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && !esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_phi_fu_221_p4.read()) && !esl_seteq<1,2,2>(ap_phi_mux_i_0_phi_fu_221_p4.read(), ap_const_lv2_1))) {
        out6_01_fu_82 = xor_ln1343_4_fu_521_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0) && esl_seteq<1,2,2>(ap_const_lv2_0, ap_phi_mux_i_0_phi_fu_221_p4.read()))) {
        out_03_fu_98 = xor_ln1343_4_fu_521_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        r_0_reg_732 = r_0_fu_317_p1.read();
        zext_ln54_11_reg_724 = zext_ln54_11_fu_312_p1.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        sext_ln66_reg_788 = sext_ln66_fu_343_p1.read();
        xor_ln66_reg_811 = xor_ln66_fu_376_p2.read();
        zext_ln54_12_reg_793 = zext_ln54_12_fu_347_p1.read();
        zext_ln54_13_reg_799 = zext_ln54_13_fu_354_p1.read();
        zext_ln54_14_reg_805 = zext_ln54_14_fu_367_p1.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
        trunc_ln54_reg_709 = trunc_ln54_fu_268_p1.read();
        zext_ln54_cast1_reg_693 = rand_pos_read.read().range(19, 3);
        zext_ln54_cast_reg_698 = rand_pos_read.read().range(12, 3);
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_0))) {
        views_communicatedBi_3_reg_824 =  (sc_lv<16>) (sext_ln66_2_fu_407_p1.read());
        xor_ln1343_4_reg_829 = xor_ln1343_4_fu_521_p2.read();
    }
}

void mpc_AND_2::thread_add_ln1349_fu_575_p2() {
    add_ln1349_fu_575_p2 = (!rand_pos_read.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<32>(): (sc_biguint<32>(rand_pos_read.read()) + sc_biguint<32>(ap_const_lv32_1));
}

void mpc_AND_2::thread_add_ln54_1_fu_297_p2() {
    add_ln54_1_fu_297_p2 = (!ap_const_lv10_14C.is_01() || !zext_ln54_cast_reg_698.read().is_01())? sc_lv<10>(): (sc_biguint<10>(ap_const_lv10_14C) + sc_biguint<10>(zext_ln54_cast_reg_698.read()));
}

void mpc_AND_2::thread_add_ln54_fu_287_p2() {
    add_ln54_fu_287_p2 = (!ap_const_lv10_A6.is_01() || !zext_ln54_cast_reg_698.read().is_01())? sc_lv<10>(): (sc_biguint<10>(ap_const_lv10_A6) + sc_biguint<10>(zext_ln54_cast_reg_698.read()));
}

void mpc_AND_2::thread_add_ln66_fu_398_p2() {
    add_ln66_fu_398_p2 = (!zext_ln66_37_fu_394_p1.read().is_01() || !sext_ln66_reg_788.read().is_01())? sc_lv<12>(): (sc_biguint<12>(zext_ln66_37_fu_394_p1.read()) + sc_bigint<12>(sext_ln66_reg_788.read()));
}

void mpc_AND_2::thread_and_ln1343_1_fu_473_p2() {
    and_ln1343_1_fu_473_p2 = (tmp_2_fu_464_p5.read() & tmp_1_fu_455_p5.read());
}

void mpc_AND_2::thread_and_ln1343_2_fu_479_p2() {
    and_ln1343_2_fu_479_p2 = (tmp_2_fu_464_p5.read() & tmp_fu_411_p5.read());
}

void mpc_AND_2::thread_and_ln1343_fu_449_p2() {
    and_ln1343_fu_449_p2 = (tmp_s_fu_440_p5.read() & tmp_fu_411_p5.read());
}

void mpc_AND_2::thread_and_ln66_fu_629_p2() {
    and_ln66_fu_629_p2 = (views_communicatedBi_q0.read() & xor_ln66_reg_811.read());
}

void mpc_AND_2::thread_ap_CS_fsm_state1() {
    ap_CS_fsm_state1 = ap_CS_fsm.read()[0];
}

void mpc_AND_2::thread_ap_CS_fsm_state2() {
    ap_CS_fsm_state2 = ap_CS_fsm.read()[1];
}

void mpc_AND_2::thread_ap_CS_fsm_state3() {
    ap_CS_fsm_state3 = ap_CS_fsm.read()[2];
}

void mpc_AND_2::thread_ap_CS_fsm_state4() {
    ap_CS_fsm_state4 = ap_CS_fsm.read()[3];
}

void mpc_AND_2::thread_ap_CS_fsm_state5() {
    ap_CS_fsm_state5 = ap_CS_fsm.read()[4];
}

void mpc_AND_2::thread_ap_CS_fsm_state6() {
    ap_CS_fsm_state6 = ap_CS_fsm.read()[5];
}

void mpc_AND_2::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
          esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_1)))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_ap_phi_mux_i_0_phi_fu_221_p4() {
    ap_phi_mux_i_0_phi_fu_221_p4 = i_0_reg_217.read();
}

void mpc_AND_2::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && 
         esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_1))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_ap_return_0() {
    ap_return_0 = add_ln1349_fu_575_p2.read();
}

void mpc_AND_2::thread_ap_return_1() {
    ap_return_1 = select_ln1350_fu_580_p3.read();
}

void mpc_AND_2::thread_ap_return_2() {
    ap_return_2 = select_ln1350_1_fu_587_p3.read();
}

void mpc_AND_2::thread_ap_return_3() {
    ap_return_3 = select_ln1350_2_fu_594_p3.read();
}

void mpc_AND_2::thread_grp_fu_228_p1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state3.read())) {
        grp_fu_228_p1 = zext_ln54_11_reg_724.read();
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        grp_fu_228_p1 = zext_ln54_11_fu_312_p1.read();
    } else {
        grp_fu_228_p1 = "XXXXXXXX";
    }
}

void mpc_AND_2::thread_grp_fu_228_p2() {
    grp_fu_228_p2 = (!grp_fu_228_p1.read().is_01())? sc_lv<8>(): rand_tape_q0.read() >> (unsigned short)grp_fu_228_p1.read().to_uint();
}

void mpc_AND_2::thread_grp_fu_641_p1() {
    grp_fu_641_p1 =  (sc_lv<8>) (ap_const_lv17_4B);
}

void mpc_AND_2::thread_i_fu_388_p2() {
    i_fu_388_p2 = (!i_0_reg_217.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<2>(): (sc_biguint<2>(i_0_reg_217.read()) + sc_biguint<2>(ap_const_lv2_1));
}

void mpc_AND_2::thread_icmp_ln1342_fu_382_p2() {
    icmp_ln1342_fu_382_p2 = (!i_0_reg_217.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_0_reg_217.read() == ap_const_lv2_3);
}

void mpc_AND_2::thread_icmp_ln1343_fu_420_p2() {
    icmp_ln1343_fu_420_p2 = (!i_fu_388_p2.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(i_fu_388_p2.read() != ap_const_lv2_3);
}

void mpc_AND_2::thread_lshr_ln54_6_fu_358_p2() {
    lshr_ln54_6_fu_358_p2 = (!zext_ln54_11_reg_724.read().is_01())? sc_lv<8>(): rand_tape_q1.read() >> (unsigned short)zext_ln54_11_reg_724.read().to_uint();
}

void mpc_AND_2::thread_lshr_ln_fu_233_p4() {
    lshr_ln_fu_233_p4 = rand_pos_read.read().range(31, 3);
}

void mpc_AND_2::thread_r_0_fu_317_p1() {
    r_0_fu_317_p1 = grp_fu_228_p2.read().range(1-1, 0);
}

void mpc_AND_2::thread_r_1_fu_350_p1() {
    r_1_fu_350_p1 = grp_fu_228_p2.read().range(1-1, 0);
}

void mpc_AND_2::thread_r_2_fu_363_p1() {
    r_2_fu_363_p1 = lshr_ln54_6_fu_358_p2.read().range(1-1, 0);
}

void mpc_AND_2::thread_rand_tape_address0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        rand_tape_address0 =  (sc_lv<9>) (sext_ln54_fu_292_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read())) {
        rand_tape_address0 =  (sc_lv<9>) (zext_ln54_fu_243_p1.read());
    } else {
        rand_tape_address0 =  (sc_lv<9>) ("XXXXXXXXX");
    }
}

void mpc_AND_2::thread_rand_tape_address1() {
    rand_tape_address1 =  (sc_lv<9>) (sext_ln54_1_fu_302_p1.read());
}

void mpc_AND_2::thread_rand_tape_ce0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && 
          esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1)) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read()))) {
        rand_tape_ce0 = ap_const_logic_1;
    } else {
        rand_tape_ce0 = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_rand_tape_ce1() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state2.read())) {
        rand_tape_ce1 = ap_const_logic_1;
    } else {
        rand_tape_ce1 = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_select_ln1343_fu_432_p3() {
    select_ln1343_fu_432_p3 = (!icmp_ln1343_fu_420_p2.read()[0].is_01())? sc_lv<2>(): ((icmp_ln1343_fu_420_p2.read()[0].to_bool())? i_fu_388_p2.read(): xor_ln1343_3_fu_426_p2.read());
}

void mpc_AND_2::thread_select_ln1350_1_fu_587_p3() {
    select_ln1350_1_fu_587_p3 = (!write_flag3_0_fu_102.read()[0].is_01())? sc_lv<8>(): ((write_flag3_0_fu_102.read()[0].to_bool())? out5_02_fu_94.read(): out_1_read.read());
}

void mpc_AND_2::thread_select_ln1350_2_fu_594_p3() {
    select_ln1350_2_fu_594_p3 = (!write_flag6_0_fu_90.read()[0].is_01())? sc_lv<8>(): ((write_flag6_0_fu_90.read()[0].to_bool())? out6_01_fu_82.read(): out_2_read.read());
}

void mpc_AND_2::thread_select_ln1350_fu_580_p3() {
    select_ln1350_fu_580_p3 = (!write_flag_0_fu_86.read()[0].is_01())? sc_lv<8>(): ((write_flag_0_fu_86.read()[0].to_bool())? out_03_fu_98.read(): out_0_read.read());
}

void mpc_AND_2::thread_sext_ln54_1_fu_302_p1() {
    sext_ln54_1_fu_302_p1 = esl_sext<64,10>(add_ln54_1_fu_297_p2.read());
}

void mpc_AND_2::thread_sext_ln54_fu_292_p1() {
    sext_ln54_fu_292_p1 = esl_sext<64,10>(add_ln54_fu_287_p2.read());
}

void mpc_AND_2::thread_sext_ln66_2_fu_407_p1() {
    sext_ln66_2_fu_407_p1 = esl_sext<64,17>(grp_fu_641_p3.read());
}

void mpc_AND_2::thread_sext_ln66_fu_343_p1() {
    sext_ln66_fu_343_p1 = esl_sext<12,11>(sub_ln66_fu_337_p2.read());
}

void mpc_AND_2::thread_shl_ln66_6_fu_625_p2() {
    shl_ln66_6_fu_625_p2 = (!zext_ln54_11_reg_724.read().is_01())? sc_lv<8>(): xor_ln1343_4_reg_829.read() << (unsigned short)zext_ln54_11_reg_724.read().to_uint();
}

void mpc_AND_2::thread_shl_ln66_fu_371_p2() {
    shl_ln66_fu_371_p2 = (!zext_ln54_11_reg_724.read().is_01())? sc_lv<8>(): ap_const_lv8_1 << (unsigned short)zext_ln54_11_reg_724.read().to_uint();
}

void mpc_AND_2::thread_sub_ln66_fu_337_p2() {
    sub_ln66_fu_337_p2 = (!zext_ln66_36_fu_333_p1.read().is_01() || !zext_ln66_fu_321_p1.read().is_01())? sc_lv<11>(): (sc_biguint<11>(zext_ln66_36_fu_333_p1.read()) - sc_biguint<11>(zext_ln66_fu_321_p1.read()));
}

void mpc_AND_2::thread_tmp_18_fu_325_p3() {
    tmp_18_fu_325_p3 = esl_concat<8,2>(views_communicatedBits_offset.read(), ap_const_lv2_0);
}

void mpc_AND_2::thread_trunc_ln54_fu_268_p1() {
    trunc_ln54_fu_268_p1 = rand_pos_read.read().range(3-1, 0);
}

void mpc_AND_2::thread_views_communicatedBi_address0() {
    views_communicatedBi_address0 = views_communicatedBi_3_reg_824.read();
}

void mpc_AND_2::thread_views_communicatedBi_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state5.read()))) {
        views_communicatedBi_ce0 = ap_const_logic_1;
    } else {
        views_communicatedBi_ce0 = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_views_communicatedBi_d0() {
    views_communicatedBi_d0 = (and_ln66_fu_629_p2.read() | shl_ln66_6_fu_625_p2.read());
}

void mpc_AND_2::thread_views_communicatedBi_we0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state6.read())) {
        views_communicatedBi_we0 = ap_const_logic_1;
    } else {
        views_communicatedBi_we0 = ap_const_logic_0;
    }
}

void mpc_AND_2::thread_xor_ln1343_1_fu_509_p2() {
    xor_ln1343_1_fu_509_p2 = (and_ln1343_1_fu_473_p2.read() ^ tmp_4_fu_494_p5.read());
}

void mpc_AND_2::thread_xor_ln1343_2_fu_515_p2() {
    xor_ln1343_2_fu_515_p2 = (xor_ln1343_1_fu_509_p2.read() ^ and_ln1343_fu_449_p2.read());
}

void mpc_AND_2::thread_xor_ln1343_3_fu_426_p2() {
    xor_ln1343_3_fu_426_p2 = (i_0_reg_217.read() ^ ap_const_lv2_2);
}

void mpc_AND_2::thread_xor_ln1343_4_fu_521_p2() {
    xor_ln1343_4_fu_521_p2 = (xor_ln1343_2_fu_515_p2.read() ^ xor_ln1343_fu_503_p2.read());
}

void mpc_AND_2::thread_xor_ln1343_fu_503_p2() {
    xor_ln1343_fu_503_p2 = (and_ln1343_2_fu_479_p2.read() ^ tmp_3_fu_485_p5.read());
}

void mpc_AND_2::thread_xor_ln54_fu_307_p2() {
    xor_ln54_fu_307_p2 = (trunc_ln54_reg_709.read() ^ ap_const_lv3_7);
}

void mpc_AND_2::thread_xor_ln66_fu_376_p2() {
    xor_ln66_fu_376_p2 = (shl_ln66_fu_371_p2.read() ^ ap_const_lv8_FF);
}

void mpc_AND_2::thread_zext_ln54_11_fu_312_p1() {
    zext_ln54_11_fu_312_p1 = esl_zext<8,3>(xor_ln54_fu_307_p2.read());
}

void mpc_AND_2::thread_zext_ln54_12_fu_347_p1() {
    zext_ln54_12_fu_347_p1 = esl_zext<8,1>(r_0_reg_732.read());
}

void mpc_AND_2::thread_zext_ln54_13_fu_354_p1() {
    zext_ln54_13_fu_354_p1 = esl_zext<8,1>(r_1_fu_350_p1.read());
}

void mpc_AND_2::thread_zext_ln54_14_fu_367_p1() {
    zext_ln54_14_fu_367_p1 = esl_zext<8,1>(r_2_fu_363_p1.read());
}

void mpc_AND_2::thread_zext_ln54_fu_243_p1() {
    zext_ln54_fu_243_p1 = esl_zext<64,29>(lshr_ln_fu_233_p4.read());
}

void mpc_AND_2::thread_zext_ln66_36_fu_333_p1() {
    zext_ln66_36_fu_333_p1 = esl_zext<11,10>(tmp_18_fu_325_p3.read());
}

void mpc_AND_2::thread_zext_ln66_37_fu_394_p1() {
    zext_ln66_37_fu_394_p1 = esl_zext<12,2>(i_0_reg_217.read());
}

void mpc_AND_2::thread_zext_ln66_fu_321_p1() {
    zext_ln66_fu_321_p1 = esl_zext<11,8>(views_communicatedBits_offset.read());
}

void mpc_AND_2::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state1.read()) && esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_1))) {
                ap_NS_fsm = ap_ST_fsm_state2;
            } else {
                ap_NS_fsm = ap_ST_fsm_state1;
            }
            break;
        case 2 : 
            ap_NS_fsm = ap_ST_fsm_state3;
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        case 8 : 
            if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_CS_fsm_state4.read()) && esl_seteq<1,1,1>(icmp_ln1342_fu_382_p2.read(), ap_const_lv1_1))) {
                ap_NS_fsm = ap_ST_fsm_state1;
            } else {
                ap_NS_fsm = ap_ST_fsm_state5;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_fsm_state6;
            break;
        case 32 : 
            ap_NS_fsm = ap_ST_fsm_state4;
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}
