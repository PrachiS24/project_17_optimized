// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _KeccakWidth1600_Spon_2_HH_
#define _KeccakWidth1600_Spon_2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "KeccakP1600OnWords.h"
#include "fromWordsToBytes.h"
#include "fromBytesToWords.h"
#include "pi_tempA.h"

namespace ap_rtl {

struct KeccakWidth1600_Spon_2 : public sc_module {
    // Port declarations 21
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
    sc_in< sc_lv<32> > instance_byteIOIndex_read;
    sc_in< sc_lv<32> > instance_squeezing_read;
    sc_out< sc_lv<14> > data_address0;
    sc_out< sc_logic > data_ce0;
    sc_out< sc_logic > data_we0;
    sc_out< sc_lv<8> > data_d0;
    sc_in< sc_lv<8> > data_offset;
    sc_in< sc_lv<2> > data_offset1;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;


    // Module declarations
    KeccakWidth1600_Spon_2(sc_module_name name);
    SC_HAS_PROCESS(KeccakWidth1600_Spon_2);

    ~KeccakWidth1600_Spon_2();

    sc_trace_file* mVcdFile;

    pi_tempA* stateAsWords_U;
    pi_tempA* stateAsWords_13_U;
    KeccakP1600OnWords* grp_KeccakP1600OnWords_fu_223;
    fromWordsToBytes* grp_fromWordsToBytes_fu_232;
    fromBytesToWords* grp_fromBytesToWords_fu_239;
    sc_signal< sc_lv<19> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<15> > tmp_51_cast_fu_278_p3;
    sc_signal< sc_lv<15> > tmp_51_cast_reg_467;
    sc_signal< sc_lv<1> > icmp_ln299_fu_286_p2;
    sc_signal< sc_lv<1> > icmp_ln299_reg_472;
    sc_signal< sc_lv<8> > instance_state_addr_reg_476;
    sc_signal< sc_lv<8> > instance_state_addr_1_reg_481;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<1> > icmp_ln305_fu_327_p2;
    sc_signal< sc_lv<1> > icmp_ln305_reg_489;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > icmp_ln304_fu_321_p2;
    sc_signal< sc_lv<5> > partialBlock_fu_349_p2;
    sc_signal< sc_lv<5> > partialBlock_reg_493;
    sc_signal< sc_logic > ap_CS_fsm_state16;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_ap_ready;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_ap_done;
    sc_signal< bool > ap_block_state16_on_subcall_done;
    sc_signal< sc_lv<32> > partialBlock_27_fu_376_p3;
    sc_signal< sc_lv<32> > partialBlock_27_reg_498;
    sc_signal< sc_logic > ap_CS_fsm_state17;
    sc_signal< sc_lv<64> > zext_ln325_fu_384_p1;
    sc_signal< sc_lv<64> > zext_ln325_reg_504;
    sc_signal< sc_lv<33> > i_fu_392_p2;
    sc_signal< sc_lv<33> > i_reg_509;
    sc_signal< sc_lv<32> > loop_fu_403_p2;
    sc_signal< sc_lv<32> > loop_reg_517;
    sc_signal< sc_logic > ap_CS_fsm_state18;
    sc_signal< sc_lv<1> > icmp_ln393_fu_398_p2;
    sc_signal< sc_lv<15> > add_ln394_5_fu_438_p2;
    sc_signal< sc_lv<15> > add_ln394_5_reg_527;
    sc_signal< sc_lv<32> > add_ln332_fu_443_p2;
    sc_signal< sc_lv<64> > add_ln331_fu_448_p2;
    sc_signal< sc_lv<5> > stateAsWords_address0;
    sc_signal< sc_logic > stateAsWords_ce0;
    sc_signal< sc_logic > stateAsWords_we0;
    sc_signal< sc_lv<64> > stateAsWords_d0;
    sc_signal< sc_lv<64> > stateAsWords_q0;
    sc_signal< sc_logic > stateAsWords_ce1;
    sc_signal< sc_logic > stateAsWords_we1;
    sc_signal< sc_lv<64> > stateAsWords_q1;
    sc_signal< sc_lv<5> > stateAsWords_13_address0;
    sc_signal< sc_logic > stateAsWords_13_ce0;
    sc_signal< sc_logic > stateAsWords_13_we0;
    sc_signal< sc_lv<64> > stateAsWords_13_d0;
    sc_signal< sc_lv<64> > stateAsWords_13_q0;
    sc_signal< sc_logic > stateAsWords_13_ce1;
    sc_signal< sc_logic > stateAsWords_13_we1;
    sc_signal< sc_lv<64> > stateAsWords_13_q1;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_ap_start;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_ap_done;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_ap_idle;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_ap_ready;
    sc_signal< sc_lv<5> > grp_KeccakP1600OnWords_fu_223_state_address0;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_state_ce0;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_state_we0;
    sc_signal< sc_lv<64> > grp_KeccakP1600OnWords_fu_223_state_d0;
    sc_signal< sc_lv<64> > grp_KeccakP1600OnWords_fu_223_state_q0;
    sc_signal< sc_lv<5> > grp_KeccakP1600OnWords_fu_223_state_address1;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_state_ce1;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_state_we1;
    sc_signal< sc_lv<64> > grp_KeccakP1600OnWords_fu_223_state_d1;
    sc_signal< sc_lv<64> > grp_KeccakP1600OnWords_fu_223_state_q1;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_ap_start;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_ap_idle;
    sc_signal< sc_lv<8> > grp_fromWordsToBytes_fu_232_state_address0;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_state_ce0;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_state_we0;
    sc_signal< sc_lv<8> > grp_fromWordsToBytes_fu_232_state_d0;
    sc_signal< sc_lv<5> > grp_fromWordsToBytes_fu_232_stateAsWords_address0;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_stateAsWords_ce0;
    sc_signal< sc_lv<64> > grp_fromWordsToBytes_fu_232_stateAsWords_q0;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_ap_start;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_ap_done;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_ap_idle;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_ap_ready;
    sc_signal< sc_lv<5> > grp_fromBytesToWords_fu_239_stateAsWords_address0;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_stateAsWords_ce0;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_stateAsWords_we0;
    sc_signal< sc_lv<64> > grp_fromBytesToWords_fu_239_stateAsWords_d0;
    sc_signal< sc_lv<64> > grp_fromBytesToWords_fu_239_stateAsWords_q0;
    sc_signal< sc_lv<8> > grp_fromBytesToWords_fu_239_state_address0;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_state_ce0;
    sc_signal< sc_lv<32> > instance_squeezing_w_reg_142;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< bool > ap_block_state10_on_subcall_done;
    sc_signal< sc_lv<32> > ap_phi_mux_instance_byteIOIndex_phi_fu_156_p4;
    sc_signal< sc_lv<32> > instance_byteIOIndex_reg_153;
    sc_signal< sc_lv<32> > instance_byteIOIndex_1_reg_164;
    sc_signal< sc_lv<33> > i_0_reg_175;
    sc_signal< sc_lv<64> > curData_0_idx_reg_187;
    sc_signal< sc_lv<32> > offset_assign_reg_199;
    sc_signal< sc_lv<32> > loop_0_i1_reg_212;
    sc_signal< sc_logic > ap_CS_fsm_state19;
    sc_signal< sc_logic > grp_KeccakP1600OnWords_fu_223_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_logic > grp_fromWordsToBytes_fu_232_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state15;
    sc_signal< sc_logic > grp_fromBytesToWords_fu_239_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_lv<64> > zext_ln149_fu_292_p1;
    sc_signal< sc_lv<64> > zext_ln394_fu_415_p1;
    sc_signal< sc_lv<64> > zext_ln394_7_fu_453_p1;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<8> > xor_ln149_fu_297_p2;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > xor_ln149_16_fu_304_p2;
    sc_signal< sc_lv<10> > tmp_fu_254_p3;
    sc_signal< sc_lv<11> > zext_ln394_5_fu_262_p1;
    sc_signal< sc_lv<11> > zext_ln394_4_fu_250_p1;
    sc_signal< sc_lv<11> > sub_ln394_fu_266_p2;
    sc_signal< sc_lv<11> > zext_ln394_3_fu_246_p1;
    sc_signal< sc_lv<11> > add_ln394_4_fu_272_p2;
    sc_signal< sc_lv<29> > tmp_61_fu_311_p4;
    sc_signal< sc_lv<5> > trunc_ln322_fu_345_p1;
    sc_signal< sc_lv<32> > zext_ln322_fu_355_p1;
    sc_signal< sc_lv<32> > add_ln323_fu_358_p2;
    sc_signal< sc_lv<1> > icmp_ln323_fu_364_p2;
    sc_signal< sc_lv<32> > partialBlock_26_fu_370_p2;
    sc_signal< sc_lv<33> > zext_ln325_3_fu_388_p1;
    sc_signal< sc_lv<32> > add_ln394_fu_409_p2;
    sc_signal< sc_lv<6> > trunc_ln394_fu_420_p1;
    sc_signal< sc_lv<6> > trunc_ln304_fu_424_p1;
    sc_signal< sc_lv<6> > add_ln394_3_fu_428_p2;
    sc_signal< sc_lv<15> > zext_ln394_6_fu_434_p1;
    sc_signal< sc_lv<32> > ap_return_0_preg;
    sc_signal< sc_lv<32> > ap_return_1_preg;
    sc_signal< sc_lv<19> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<19> ap_ST_fsm_state1;
    static const sc_lv<19> ap_ST_fsm_state2;
    static const sc_lv<19> ap_ST_fsm_state3;
    static const sc_lv<19> ap_ST_fsm_state4;
    static const sc_lv<19> ap_ST_fsm_state5;
    static const sc_lv<19> ap_ST_fsm_state6;
    static const sc_lv<19> ap_ST_fsm_state7;
    static const sc_lv<19> ap_ST_fsm_state8;
    static const sc_lv<19> ap_ST_fsm_state9;
    static const sc_lv<19> ap_ST_fsm_state10;
    static const sc_lv<19> ap_ST_fsm_state11;
    static const sc_lv<19> ap_ST_fsm_state12;
    static const sc_lv<19> ap_ST_fsm_state13;
    static const sc_lv<19> ap_ST_fsm_state14;
    static const sc_lv<19> ap_ST_fsm_state15;
    static const sc_lv<19> ap_ST_fsm_state16;
    static const sc_lv<19> ap_ST_fsm_state17;
    static const sc_lv<19> ap_ST_fsm_state18;
    static const sc_lv<19> ap_ST_fsm_state19;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<32> ap_const_lv32_F;
    static const bool ap_const_boolean_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_11;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<33> ap_const_lv33_0;
    static const sc_lv<64> ap_const_lv64_0;
    static const sc_lv<32> ap_const_lv32_12;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_E;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<64> ap_const_lv64_A7;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<8> ap_const_lv8_80;
    static const sc_lv<32> ap_const_lv32_20;
    static const sc_lv<29> ap_const_lv29_0;
    static const sc_lv<32> ap_const_lv32_A8;
    static const sc_lv<5> ap_const_lv5_10;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_add_ln323_fu_358_p2();
    void thread_add_ln331_fu_448_p2();
    void thread_add_ln332_fu_443_p2();
    void thread_add_ln394_3_fu_428_p2();
    void thread_add_ln394_4_fu_272_p2();
    void thread_add_ln394_5_fu_438_p2();
    void thread_add_ln394_fu_409_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state15();
    void thread_ap_CS_fsm_state16();
    void thread_ap_CS_fsm_state17();
    void thread_ap_CS_fsm_state18();
    void thread_ap_CS_fsm_state19();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state10_on_subcall_done();
    void thread_ap_block_state16_on_subcall_done();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_phi_mux_instance_byteIOIndex_phi_fu_156_p4();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_data_address0();
    void thread_data_ce0();
    void thread_data_d0();
    void thread_data_we0();
    void thread_grp_KeccakP1600OnWords_fu_223_ap_start();
    void thread_grp_KeccakP1600OnWords_fu_223_state_q0();
    void thread_grp_KeccakP1600OnWords_fu_223_state_q1();
    void thread_grp_fromBytesToWords_fu_239_ap_start();
    void thread_grp_fromBytesToWords_fu_239_stateAsWords_q0();
    void thread_grp_fromWordsToBytes_fu_232_ap_start();
    void thread_grp_fromWordsToBytes_fu_232_stateAsWords_q0();
    void thread_i_fu_392_p2();
    void thread_icmp_ln299_fu_286_p2();
    void thread_icmp_ln304_fu_321_p2();
    void thread_icmp_ln305_fu_327_p2();
    void thread_icmp_ln323_fu_364_p2();
    void thread_icmp_ln393_fu_398_p2();
    void thread_instance_state_addr_1_reg_481();
    void thread_instance_state_address0();
    void thread_instance_state_ce0();
    void thread_instance_state_d0();
    void thread_instance_state_we0();
    void thread_loop_fu_403_p2();
    void thread_partialBlock_26_fu_370_p2();
    void thread_partialBlock_27_fu_376_p3();
    void thread_partialBlock_fu_349_p2();
    void thread_stateAsWords_13_address0();
    void thread_stateAsWords_13_ce0();
    void thread_stateAsWords_13_ce1();
    void thread_stateAsWords_13_d0();
    void thread_stateAsWords_13_we0();
    void thread_stateAsWords_13_we1();
    void thread_stateAsWords_address0();
    void thread_stateAsWords_ce0();
    void thread_stateAsWords_ce1();
    void thread_stateAsWords_d0();
    void thread_stateAsWords_we0();
    void thread_stateAsWords_we1();
    void thread_sub_ln394_fu_266_p2();
    void thread_tmp_51_cast_fu_278_p3();
    void thread_tmp_61_fu_311_p4();
    void thread_tmp_fu_254_p3();
    void thread_trunc_ln304_fu_424_p1();
    void thread_trunc_ln322_fu_345_p1();
    void thread_trunc_ln394_fu_420_p1();
    void thread_xor_ln149_16_fu_304_p2();
    void thread_xor_ln149_fu_297_p2();
    void thread_zext_ln149_fu_292_p1();
    void thread_zext_ln322_fu_355_p1();
    void thread_zext_ln325_3_fu_388_p1();
    void thread_zext_ln325_fu_384_p1();
    void thread_zext_ln394_3_fu_246_p1();
    void thread_zext_ln394_4_fu_250_p1();
    void thread_zext_ln394_5_fu_262_p1();
    void thread_zext_ln394_6_fu_434_p1();
    void thread_zext_ln394_7_fu_453_p1();
    void thread_zext_ln394_fu_415_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif