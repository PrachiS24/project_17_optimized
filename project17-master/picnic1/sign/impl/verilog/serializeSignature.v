// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module serializeSignature (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sig_0_proofs_seed1_address0,
        sig_0_proofs_seed1_ce0,
        sig_0_proofs_seed1_q0,
        sig_0_proofs_seed2_address0,
        sig_0_proofs_seed2_ce0,
        sig_0_proofs_seed2_q0,
        sig_0_proofs_inputS_address0,
        sig_0_proofs_inputS_ce0,
        sig_0_proofs_inputS_q0,
        sig_0_proofs_commun_address0,
        sig_0_proofs_commun_ce0,
        sig_0_proofs_commun_q0,
        sig_0_proofs_view3C_address0,
        sig_0_proofs_view3C_ce0,
        sig_0_proofs_view3C_q0,
        sig_0_challengeBits_address0,
        sig_0_challengeBits_ce0,
        sig_0_challengeBits_q0,
        sig_0_salt_address0,
        sig_0_salt_ce0,
        sig_0_salt_q0,
        sigBytes_address0,
        sigBytes_ce0,
        sigBytes_we0,
        sigBytes_d0,
        sigBytes_offset,
        ap_return
);

parameter    ap_ST_fsm_state1 = 21'd1;
parameter    ap_ST_fsm_state2 = 21'd2;
parameter    ap_ST_fsm_state3 = 21'd4;
parameter    ap_ST_fsm_state4 = 21'd8;
parameter    ap_ST_fsm_state5 = 21'd16;
parameter    ap_ST_fsm_state6 = 21'd32;
parameter    ap_ST_fsm_state7 = 21'd64;
parameter    ap_ST_fsm_state8 = 21'd128;
parameter    ap_ST_fsm_state9 = 21'd256;
parameter    ap_ST_fsm_state10 = 21'd512;
parameter    ap_ST_fsm_state11 = 21'd1024;
parameter    ap_ST_fsm_state12 = 21'd2048;
parameter    ap_ST_fsm_state13 = 21'd4096;
parameter    ap_ST_fsm_state14 = 21'd8192;
parameter    ap_ST_fsm_state15 = 21'd16384;
parameter    ap_ST_fsm_state16 = 21'd32768;
parameter    ap_ST_fsm_state17 = 21'd65536;
parameter    ap_ST_fsm_state18 = 21'd131072;
parameter    ap_ST_fsm_state19 = 21'd262144;
parameter    ap_ST_fsm_state20 = 21'd524288;
parameter    ap_ST_fsm_state21 = 21'd1048576;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sig_0_proofs_seed1_address0;
output   sig_0_proofs_seed1_ce0;
input  [7:0] sig_0_proofs_seed1_q0;
output  [11:0] sig_0_proofs_seed2_address0;
output   sig_0_proofs_seed2_ce0;
input  [7:0] sig_0_proofs_seed2_q0;
output  [9:0] sig_0_proofs_inputS_address0;
output   sig_0_proofs_inputS_ce0;
input  [31:0] sig_0_proofs_inputS_q0;
output  [14:0] sig_0_proofs_commun_address0;
output   sig_0_proofs_commun_ce0;
input  [7:0] sig_0_proofs_commun_q0;
output  [12:0] sig_0_proofs_view3C_address0;
output   sig_0_proofs_view3C_ce0;
input  [7:0] sig_0_proofs_view3C_q0;
output  [5:0] sig_0_challengeBits_address0;
output   sig_0_challengeBits_ce0;
input  [7:0] sig_0_challengeBits_q0;
output  [4:0] sig_0_salt_address0;
output   sig_0_salt_ce0;
input  [7:0] sig_0_salt_q0;
output  [15:0] sigBytes_address0;
output   sigBytes_ce0;
output   sigBytes_we0;
output  [7:0] sigBytes_d0;
input  [63:0] sigBytes_offset;
output  [15:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg sig_0_proofs_seed1_ce0;
reg sig_0_proofs_seed2_ce0;
reg sig_0_proofs_inputS_ce0;
reg sig_0_proofs_commun_ce0;
reg sig_0_proofs_view3C_ce0;
reg[5:0] sig_0_challengeBits_address0;
reg sig_0_challengeBits_ce0;
reg sig_0_salt_ce0;
reg[15:0] sigBytes_address0;
reg sigBytes_ce0;
reg sigBytes_we0;
reg[7:0] sigBytes_d0;
reg[15:0] ap_return;

(* fsm_encoding = "none" *) reg   [20:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [16:0] trunc_ln1870_fu_474_p1;
reg   [16:0] trunc_ln1870_reg_1112;
wire   [5:0] loop_fu_484_p2;
reg   [5:0] loop_reg_1126;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln1869_fu_478_p2;
wire   [5:0] loop_7_fu_515_p2;
reg   [5:0] loop_7_reg_1139;
wire    ap_CS_fsm_state4;
wire   [0:0] icmp_ln1874_fu_509_p2;
wire   [14:0] add_ln1878_fu_550_p2;
reg   [14:0] add_ln1878_reg_1149;
wire    ap_CS_fsm_state6;
wire   [12:0] zext_ln1884_fu_564_p1;
reg   [12:0] zext_ln1884_reg_1154;
wire   [13:0] zext_ln1878_fu_576_p1;
reg   [13:0] zext_ln1878_reg_1160;
wire   [7:0] i_fu_586_p2;
reg   [7:0] i_reg_1168;
wire   [0:0] icmp_ln1878_fu_580_p2;
wire   [2:0] zext_ln386_fu_673_p1;
reg   [2:0] zext_ln386_reg_1178;
wire    ap_CS_fsm_state7;
wire   [16:0] add_ln1884_fu_681_p2;
reg   [16:0] add_ln1884_reg_1183;
wire   [5:0] loop_8_fu_692_p2;
reg   [5:0] loop_8_reg_1194;
wire    ap_CS_fsm_state8;
wire   [0:0] icmp_ln1883_fu_686_p2;
wire   [6:0] loop_9_fu_742_p2;
reg   [6:0] loop_9_reg_1207;
wire    ap_CS_fsm_state10;
wire   [0:0] icmp_ln1894_fu_736_p2;
wire   [4:0] loop_10_fu_793_p2;
reg   [4:0] loop_10_reg_1220;
wire    ap_CS_fsm_state12;
wire   [0:0] icmp_ln1899_fu_787_p2;
wire   [4:0] loop_11_fu_847_p2;
reg   [4:0] loop_11_reg_1233;
wire    ap_CS_fsm_state14;
wire   [0:0] icmp_ln1904_fu_841_p2;
wire   [16:0] add_ln1905_2_fu_885_p2;
reg   [16:0] add_ln1905_2_reg_1243;
wire   [15:0] add_ln1913_fu_911_p2;
reg   [15:0] add_ln1913_reg_1251;
wire   [0:0] icmp_ln1909_fu_905_p2;
wire    ap_CS_fsm_state16;
wire   [0:0] tmp_17_fu_921_p3;
reg   [7:0] trunc_ln9_reg_1267;
wire    ap_CS_fsm_state17;
wire   [3:0] trunc_ln1911_fu_990_p1;
reg   [3:0] trunc_ln1911_reg_1272;
reg   [7:0] trunc_ln_reg_1279;
reg   [7:0] trunc_ln1_reg_1284;
wire   [4:0] loop_12_fu_1014_p2;
reg   [4:0] loop_12_reg_1289;
wire   [16:0] add_ln1917_1_fu_1066_p2;
reg   [16:0] add_ln1917_1_reg_1294;
wire    ap_CS_fsm_state18;
wire   [16:0] add_ln1919_1_fu_1089_p2;
reg   [16:0] add_ln1919_1_reg_1299;
wire   [15:0] add_ln1922_fu_1106_p2;
wire    ap_CS_fsm_state21;
reg   [5:0] loop_0_reg_342;
wire    ap_CS_fsm_state3;
reg   [5:0] loop_1_reg_354;
wire    ap_CS_fsm_state5;
reg   [15:0] p_01_rec_reg_366;
reg   [7:0] round_assign_reg_378;
reg   [14:0] phi_mul_reg_390;
reg   [5:0] loop_2_reg_402;
wire    ap_CS_fsm_state9;
reg   [6:0] loop_3_reg_414;
wire    ap_CS_fsm_state11;
reg   [4:0] loop_4_reg_426;
wire    ap_CS_fsm_state13;
reg   [4:0] loop_5_reg_438;
wire    ap_CS_fsm_state15;
reg   [4:0] loop_6_reg_449;
wire    ap_CS_fsm_state20;
reg   [7:0] p_sum5_pn_reg_461;
wire   [63:0] zext_ln1870_fu_490_p1;
wire   [63:0] zext_ln1870_2_fu_504_p1;
wire   [63:0] zext_ln1875_fu_521_p1;
wire   [63:0] zext_ln1875_3_fu_545_p1;
wire   [63:0] zext_ln54_fu_602_p1;
wire   [63:0] zext_ln1884_5_fu_707_p1;
wire   [63:0] zext_ln1884_3_fu_731_p1;
wire   [63:0] zext_ln1895_4_fu_758_p1;
wire   [63:0] zext_ln1895_3_fu_782_p1;
wire   [63:0] zext_ln1900_4_fu_808_p1;
wire   [63:0] zext_ln1900_3_fu_836_p1;
wire   [63:0] zext_ln1905_4_fu_862_p1;
wire   [63:0] zext_ln1905_3_fu_917_p1;
wire   [63:0] zext_ln1912_fu_947_p1;
wire   [63:0] zext_ln1913_2_fu_975_p1;
wire   [63:0] zext_ln1915_2_fu_1043_p1;
wire   [63:0] zext_ln1917_2_fu_1094_p1;
wire    ap_CS_fsm_state19;
wire   [63:0] zext_ln1919_2_fu_1098_p1;
wire   [7:0] trunc_ln1913_fu_952_p1;
wire   [16:0] zext_ln1870_1_fu_495_p1;
wire   [16:0] add_ln1870_fu_499_p2;
wire   [6:0] zext_ln1875_1_fu_526_p1;
wire   [6:0] add_ln1875_fu_530_p2;
wire   [16:0] zext_ln1875_2_fu_536_p1;
wire   [16:0] add_ln1875_1_fu_540_p2;
wire   [11:0] tmp_fu_556_p3;
wire   [12:0] tmp_s_fu_568_p3;
wire   [5:0] trunc_ln4_fu_592_p4;
wire   [1:0] trunc_ln386_fu_613_p1;
wire   [2:0] bitNumber_assign_fu_617_p3;
wire   [2:0] xor_ln54_fu_625_p2;
wire   [7:0] zext_ln54_3_fu_631_p1;
wire   [7:0] lshr_ln54_fu_635_p2;
wire   [2:0] xor_ln54_2_fu_645_p2;
wire   [7:0] zext_ln54_4_fu_651_p1;
wire   [7:0] lshr_ln54_2_fu_655_p2;
wire   [0:0] trunc_ln386_2_fu_641_p1;
wire   [0:0] trunc_ln54_fu_661_p1;
wire   [1:0] challenge_fu_665_p3;
wire   [16:0] zext_ln1878_1_fu_677_p1;
wire   [13:0] zext_ln1884_4_fu_698_p1;
wire   [13:0] add_ln1884_3_fu_702_p2;
wire   [6:0] zext_ln1884_1_fu_712_p1;
wire   [6:0] add_ln1884_2_fu_716_p2;
wire   [16:0] zext_ln1884_2_fu_722_p1;
wire   [16:0] add_ln1884_1_fu_726_p2;
wire   [14:0] zext_ln1895_fu_748_p1;
wire   [14:0] add_ln1895_fu_752_p2;
wire   [7:0] zext_ln1895_1_fu_763_p1;
wire   [7:0] add_ln1895_1_fu_767_p2;
wire   [16:0] zext_ln1895_2_fu_773_p1;
wire   [16:0] add_ln1895_2_fu_777_p2;
wire   [12:0] zext_ln1900_fu_799_p1;
wire   [12:0] add_ln1900_fu_803_p2;
wire   [6:0] zext_ln1900_1_fu_813_p1;
wire   [6:0] add_ln1900_1_fu_817_p2;
wire  signed [7:0] sext_ln1900_fu_823_p1;
wire   [16:0] zext_ln1900_2_fu_827_p1;
wire   [16:0] add_ln1900_2_fu_831_p2;
wire   [12:0] zext_ln1905_fu_853_p1;
wire   [12:0] add_ln1905_fu_857_p2;
wire   [6:0] zext_ln1905_1_fu_867_p1;
wire   [6:0] add_ln1905_1_fu_871_p2;
wire  signed [7:0] sext_ln1905_fu_877_p1;
wire   [16:0] zext_ln1905_2_fu_881_p1;
wire   [2:0] add_ln1909_fu_890_p2;
wire   [1:0] tmp_16_fu_895_p4;
wire   [1:0] trunc_ln7_fu_929_p4;
wire   [9:0] tmp_15_fu_939_p3;
wire   [15:0] zext_ln1913_fu_957_p1;
wire   [15:0] add_ln1913_1_fu_961_p2;
wire   [16:0] zext_ln1913_1_fu_966_p1;
wire   [16:0] add_ln1913_2_fu_970_p2;
wire   [3:0] or_ln1915_fu_1020_p2;
wire   [15:0] zext_ln1915_fu_1025_p1;
wire   [15:0] add_ln1915_fu_1029_p2;
wire   [16:0] zext_ln1915_1_fu_1034_p1;
wire   [16:0] add_ln1915_1_fu_1038_p2;
wire   [3:0] or_ln1917_fu_1048_p2;
wire   [15:0] zext_ln1917_fu_1053_p1;
wire   [15:0] add_ln1917_fu_1057_p2;
wire   [16:0] zext_ln1917_1_fu_1062_p1;
wire   [3:0] or_ln1919_fu_1071_p2;
wire   [15:0] zext_ln1919_fu_1076_p1;
wire   [15:0] add_ln1919_fu_1080_p2;
wire   [16:0] zext_ln1919_1_fu_1085_p1;
wire   [15:0] zext_ln1922_fu_1102_p1;
wire   [15:0] add_ln1928_fu_607_p2;
reg   [15:0] ap_return_preg;
reg   [20:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 21'd1;
#0 ap_return_preg = 16'd0;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 16'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln1878_fu_580_p2 == 1'd1))) begin
            ap_return_preg <= add_ln1928_fu_607_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        loop_0_reg_342 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        loop_0_reg_342 <= loop_reg_1126;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1869_fu_478_p2 == 1'd1))) begin
        loop_1_reg_354 <= 6'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        loop_1_reg_354 <= loop_7_reg_1139;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        loop_2_reg_402 <= loop_8_reg_1194;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        loop_2_reg_402 <= 6'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln1883_fu_686_p2 == 1'd1))) begin
        loop_3_reg_414 <= 7'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_3_reg_414 <= loop_9_reg_1207;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln1894_fu_736_p2 == 1'd1))) begin
        loop_4_reg_426 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        loop_4_reg_426 <= loop_10_reg_1220;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1899_fu_787_p2 == 1'd1))) begin
        loop_5_reg_438 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        loop_5_reg_438 <= loop_11_reg_1233;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1909_fu_905_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd1))) begin
        loop_6_reg_449 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state20)) begin
        loop_6_reg_449 <= loop_12_reg_1289;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1874_fu_509_p2 == 1'd1))) begin
        p_01_rec_reg_366 <= 16'd0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        p_01_rec_reg_366 <= add_ln1922_fu_1106_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((tmp_17_fu_921_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                p_sum5_pn_reg_461[4] <= 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd1) & (icmp_ln1909_fu_905_p2 == 1'd0))) begin
                p_sum5_pn_reg_461[4] <= 1'b0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1874_fu_509_p2 == 1'd1))) begin
        phi_mul_reg_390 <= 15'd0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        phi_mul_reg_390 <= add_ln1878_reg_1149;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1874_fu_509_p2 == 1'd1))) begin
        round_assign_reg_378 <= 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state21)) begin
        round_assign_reg_378 <= i_reg_1168;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        add_ln1878_reg_1149 <= add_ln1878_fu_550_p2;
        i_reg_1168 <= i_fu_586_p2;
        zext_ln1878_reg_1160[12 : 5] <= zext_ln1878_fu_576_p1[12 : 5];
        zext_ln1884_reg_1154[11 : 4] <= zext_ln1884_fu_564_p1[11 : 4];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln1884_reg_1183 <= add_ln1884_fu_681_p2;
        zext_ln386_reg_1178[1 : 0] <= zext_ln386_fu_673_p1[1 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd0))) begin
        add_ln1905_2_reg_1243 <= add_ln1905_2_fu_885_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln1909_fu_905_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd1))) begin
        add_ln1913_reg_1251 <= add_ln1913_fu_911_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        add_ln1917_1_reg_1294 <= add_ln1917_1_fu_1066_p2;
        add_ln1919_1_reg_1299 <= add_ln1919_1_fu_1089_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        loop_10_reg_1220 <= loop_10_fu_793_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        loop_11_reg_1233 <= loop_11_fu_847_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        loop_12_reg_1289 <= loop_12_fu_1014_p2;
        trunc_ln1911_reg_1272 <= trunc_ln1911_fu_990_p1;
        trunc_ln1_reg_1284 <= {{sig_0_proofs_inputS_q0[31:24]}};
        trunc_ln9_reg_1267 <= {{sig_0_proofs_inputS_q0[15:8]}};
        trunc_ln_reg_1279 <= {{sig_0_proofs_inputS_q0[23:16]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        loop_7_reg_1139 <= loop_7_fu_515_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        loop_8_reg_1194 <= loop_8_fu_692_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_9_reg_1207 <= loop_9_fu_742_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        loop_reg_1126 <= loop_fu_484_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        trunc_ln1870_reg_1112 <= trunc_ln1870_fu_474_p1;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((1'b1 == ap_CS_fsm_state6) & (icmp_ln1878_fu_580_p2 == 1'd1)))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln1878_fu_580_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln1878_fu_580_p2 == 1'd1))) begin
        ap_return = add_ln1928_fu_607_p2;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sigBytes_address0 = zext_ln1919_2_fu_1098_p1;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        sigBytes_address0 = zext_ln1917_2_fu_1094_p1;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        sigBytes_address0 = zext_ln1915_2_fu_1043_p1;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sigBytes_address0 = zext_ln1913_2_fu_975_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sigBytes_address0 = zext_ln1905_3_fu_917_p1;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sigBytes_address0 = zext_ln1900_3_fu_836_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sigBytes_address0 = zext_ln1895_3_fu_782_p1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sigBytes_address0 = zext_ln1884_3_fu_731_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sigBytes_address0 = zext_ln1875_3_fu_545_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sigBytes_address0 = zext_ln1870_2_fu_504_p1;
    end else begin
        sigBytes_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17))) begin
        sigBytes_ce0 = 1'b1;
    end else begin
        sigBytes_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state20)) begin
        sigBytes_d0 = trunc_ln1_reg_1284;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        sigBytes_d0 = trunc_ln_reg_1279;
    end else if ((1'b1 == ap_CS_fsm_state18)) begin
        sigBytes_d0 = trunc_ln9_reg_1267;
    end else if ((1'b1 == ap_CS_fsm_state17)) begin
        sigBytes_d0 = trunc_ln1913_fu_952_p1;
    end else if ((1'b1 == ap_CS_fsm_state15)) begin
        sigBytes_d0 = sig_0_proofs_seed2_q0;
    end else if ((1'b1 == ap_CS_fsm_state13)) begin
        sigBytes_d0 = sig_0_proofs_seed1_q0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        sigBytes_d0 = sig_0_proofs_commun_q0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        sigBytes_d0 = sig_0_proofs_view3C_q0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        sigBytes_d0 = sig_0_salt_q0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sigBytes_d0 = sig_0_challengeBits_q0;
    end else begin
        sigBytes_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state19) | (1'b1 == ap_CS_fsm_state20) | (1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state9) | (1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state18) | (1'b1 == ap_CS_fsm_state17))) begin
        sigBytes_we0 = 1'b1;
    end else begin
        sigBytes_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        sig_0_challengeBits_address0 = zext_ln54_fu_602_p1;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        sig_0_challengeBits_address0 = zext_ln1870_fu_490_p1;
    end else begin
        sig_0_challengeBits_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) | (1'b1 == ap_CS_fsm_state2))) begin
        sig_0_challengeBits_ce0 = 1'b1;
    end else begin
        sig_0_challengeBits_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sig_0_proofs_commun_ce0 = 1'b1;
    end else begin
        sig_0_proofs_commun_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state16)) begin
        sig_0_proofs_inputS_ce0 = 1'b1;
    end else begin
        sig_0_proofs_inputS_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        sig_0_proofs_seed1_ce0 = 1'b1;
    end else begin
        sig_0_proofs_seed1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        sig_0_proofs_seed2_ce0 = 1'b1;
    end else begin
        sig_0_proofs_seed2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sig_0_proofs_view3C_ce0 = 1'b1;
    end else begin
        sig_0_proofs_view3C_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sig_0_salt_ce0 = 1'b1;
    end else begin
        sig_0_salt_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln1869_fu_478_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (icmp_ln1874_fu_509_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (icmp_ln1878_fu_580_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (icmp_ln1883_fu_686_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b1 == ap_CS_fsm_state10) & (icmp_ln1894_fu_736_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1899_fu_787_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state14 : begin
            if (((icmp_ln1909_fu_905_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln1904_fu_841_p2 == 1'd1) & (icmp_ln1909_fu_905_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state16 : begin
            if (((tmp_17_fu_921_p3 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state19;
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state20;
        end
        ap_ST_fsm_state20 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state21 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln1870_fu_499_p2 = (zext_ln1870_1_fu_495_p1 + trunc_ln1870_reg_1112);

assign add_ln1875_1_fu_540_p2 = (zext_ln1875_2_fu_536_p1 + trunc_ln1870_reg_1112);

assign add_ln1875_fu_530_p2 = (zext_ln1875_1_fu_526_p1 + 7'd55);

assign add_ln1878_fu_550_p2 = (phi_mul_reg_390 + 15'd75);

assign add_ln1884_1_fu_726_p2 = (add_ln1884_reg_1183 + zext_ln1884_2_fu_722_p1);

assign add_ln1884_2_fu_716_p2 = ($signed(zext_ln1884_1_fu_712_p1) + $signed(7'd87));

assign add_ln1884_3_fu_702_p2 = (zext_ln1878_reg_1160 + zext_ln1884_4_fu_698_p1);

assign add_ln1884_fu_681_p2 = (trunc_ln1870_reg_1112 + zext_ln1878_1_fu_677_p1);

assign add_ln1895_1_fu_767_p2 = (zext_ln1895_1_fu_763_p1 + 8'd119);

assign add_ln1895_2_fu_777_p2 = (add_ln1884_reg_1183 + zext_ln1895_2_fu_773_p1);

assign add_ln1895_fu_752_p2 = (phi_mul_reg_390 + zext_ln1895_fu_748_p1);

assign add_ln1900_1_fu_817_p2 = ($signed(zext_ln1900_1_fu_813_p1) + $signed(7'd66));

assign add_ln1900_2_fu_831_p2 = (add_ln1884_reg_1183 + zext_ln1900_2_fu_827_p1);

assign add_ln1900_fu_803_p2 = (zext_ln1884_reg_1154 + zext_ln1900_fu_799_p1);

assign add_ln1905_1_fu_871_p2 = ($signed(zext_ln1905_1_fu_867_p1) + $signed(7'd82));

assign add_ln1905_2_fu_885_p2 = (add_ln1884_reg_1183 + zext_ln1905_2_fu_881_p1);

assign add_ln1905_fu_857_p2 = (zext_ln1884_reg_1154 + zext_ln1905_fu_853_p1);

assign add_ln1909_fu_890_p2 = ($signed(zext_ln386_reg_1178) + $signed(3'd7));

assign add_ln1913_1_fu_961_p2 = (add_ln1913_reg_1251 + zext_ln1913_fu_957_p1);

assign add_ln1913_2_fu_970_p2 = (zext_ln1913_1_fu_966_p1 + trunc_ln1870_reg_1112);

assign add_ln1913_fu_911_p2 = (p_01_rec_reg_366 + 16'd226);

assign add_ln1915_1_fu_1038_p2 = (zext_ln1915_1_fu_1034_p1 + trunc_ln1870_reg_1112);

assign add_ln1915_fu_1029_p2 = (add_ln1913_reg_1251 + zext_ln1915_fu_1025_p1);

assign add_ln1917_1_fu_1066_p2 = (zext_ln1917_1_fu_1062_p1 + trunc_ln1870_reg_1112);

assign add_ln1917_fu_1057_p2 = (add_ln1913_reg_1251 + zext_ln1917_fu_1053_p1);

assign add_ln1919_1_fu_1089_p2 = (zext_ln1919_1_fu_1085_p1 + trunc_ln1870_reg_1112);

assign add_ln1919_fu_1080_p2 = (add_ln1913_reg_1251 + zext_ln1919_fu_1076_p1);

assign add_ln1922_fu_1106_p2 = (zext_ln1922_fu_1102_p1 + p_01_rec_reg_366);

assign add_ln1928_fu_607_p2 = (p_01_rec_reg_366 + 16'd87);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state19 = ap_CS_fsm[32'd18];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state20 = ap_CS_fsm[32'd19];

assign ap_CS_fsm_state21 = ap_CS_fsm[32'd20];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign bitNumber_assign_fu_617_p3 = {{trunc_ln386_fu_613_p1}, {1'd0}};

assign challenge_fu_665_p3 = {{trunc_ln386_2_fu_641_p1}, {trunc_ln54_fu_661_p1}};

assign i_fu_586_p2 = (round_assign_reg_378 + 8'd1);

assign icmp_ln1869_fu_478_p2 = ((loop_0_reg_342 == 6'd55) ? 1'b1 : 1'b0);

assign icmp_ln1874_fu_509_p2 = ((loop_1_reg_354 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln1878_fu_580_p2 = ((round_assign_reg_378 == 8'd219) ? 1'b1 : 1'b0);

assign icmp_ln1883_fu_686_p2 = ((loop_2_reg_402 == 6'd32) ? 1'b1 : 1'b0);

assign icmp_ln1894_fu_736_p2 = ((loop_3_reg_414 == 7'd75) ? 1'b1 : 1'b0);

assign icmp_ln1899_fu_787_p2 = ((loop_4_reg_426 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln1904_fu_841_p2 = ((loop_5_reg_438 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln1909_fu_905_p2 = ((tmp_16_fu_895_p4 == 2'd0) ? 1'b1 : 1'b0);

assign loop_10_fu_793_p2 = (loop_4_reg_426 + 5'd1);

assign loop_11_fu_847_p2 = (loop_5_reg_438 + 5'd1);

assign loop_12_fu_1014_p2 = (5'd4 + loop_6_reg_449);

assign loop_7_fu_515_p2 = (loop_1_reg_354 + 6'd1);

assign loop_8_fu_692_p2 = (loop_2_reg_402 + 6'd1);

assign loop_9_fu_742_p2 = (loop_3_reg_414 + 7'd1);

assign loop_fu_484_p2 = (loop_0_reg_342 + 6'd1);

assign lshr_ln54_2_fu_655_p2 = sig_0_challengeBits_q0 >> zext_ln54_4_fu_651_p1;

assign lshr_ln54_fu_635_p2 = sig_0_challengeBits_q0 >> zext_ln54_3_fu_631_p1;

assign or_ln1915_fu_1020_p2 = (trunc_ln1911_reg_1272 | 4'd1);

assign or_ln1917_fu_1048_p2 = (trunc_ln1911_reg_1272 | 4'd2);

assign or_ln1919_fu_1071_p2 = (trunc_ln1911_reg_1272 | 4'd3);

assign sext_ln1900_fu_823_p1 = $signed(add_ln1900_1_fu_817_p2);

assign sext_ln1905_fu_877_p1 = $signed(add_ln1905_1_fu_871_p2);

assign sig_0_proofs_commun_address0 = zext_ln1895_4_fu_758_p1;

assign sig_0_proofs_inputS_address0 = zext_ln1912_fu_947_p1;

assign sig_0_proofs_seed1_address0 = zext_ln1900_4_fu_808_p1;

assign sig_0_proofs_seed2_address0 = zext_ln1905_4_fu_862_p1;

assign sig_0_proofs_view3C_address0 = zext_ln1884_5_fu_707_p1;

assign sig_0_salt_address0 = zext_ln1875_fu_521_p1;

assign tmp_15_fu_939_p3 = {{round_assign_reg_378}, {trunc_ln7_fu_929_p4}};

assign tmp_16_fu_895_p4 = {{add_ln1909_fu_890_p2[2:1]}};

assign tmp_17_fu_921_p3 = loop_6_reg_449[32'd4];

assign tmp_fu_556_p3 = {{round_assign_reg_378}, {4'd0}};

assign tmp_s_fu_568_p3 = {{round_assign_reg_378}, {5'd0}};

assign trunc_ln1870_fu_474_p1 = sigBytes_offset[16:0];

assign trunc_ln1911_fu_990_p1 = loop_6_reg_449[3:0];

assign trunc_ln1913_fu_952_p1 = sig_0_proofs_inputS_q0[7:0];

assign trunc_ln386_2_fu_641_p1 = lshr_ln54_fu_635_p2[0:0];

assign trunc_ln386_fu_613_p1 = round_assign_reg_378[1:0];

assign trunc_ln4_fu_592_p4 = {{round_assign_reg_378[7:2]}};

assign trunc_ln54_fu_661_p1 = lshr_ln54_2_fu_655_p2[0:0];

assign trunc_ln7_fu_929_p4 = {{loop_6_reg_449[3:2]}};

assign xor_ln54_2_fu_645_p2 = (bitNumber_assign_fu_617_p3 ^ 3'd7);

assign xor_ln54_fu_625_p2 = (bitNumber_assign_fu_617_p3 ^ 3'd6);

assign zext_ln1870_1_fu_495_p1 = loop_0_reg_342;

assign zext_ln1870_2_fu_504_p1 = add_ln1870_fu_499_p2;

assign zext_ln1870_fu_490_p1 = loop_0_reg_342;

assign zext_ln1875_1_fu_526_p1 = loop_1_reg_354;

assign zext_ln1875_2_fu_536_p1 = add_ln1875_fu_530_p2;

assign zext_ln1875_3_fu_545_p1 = add_ln1875_1_fu_540_p2;

assign zext_ln1875_fu_521_p1 = loop_1_reg_354;

assign zext_ln1878_1_fu_677_p1 = p_01_rec_reg_366;

assign zext_ln1878_fu_576_p1 = tmp_s_fu_568_p3;

assign zext_ln1884_1_fu_712_p1 = loop_2_reg_402;

assign zext_ln1884_2_fu_722_p1 = add_ln1884_2_fu_716_p2;

assign zext_ln1884_3_fu_731_p1 = add_ln1884_1_fu_726_p2;

assign zext_ln1884_4_fu_698_p1 = loop_2_reg_402;

assign zext_ln1884_5_fu_707_p1 = add_ln1884_3_fu_702_p2;

assign zext_ln1884_fu_564_p1 = tmp_fu_556_p3;

assign zext_ln1895_1_fu_763_p1 = loop_3_reg_414;

assign zext_ln1895_2_fu_773_p1 = add_ln1895_1_fu_767_p2;

assign zext_ln1895_3_fu_782_p1 = add_ln1895_2_fu_777_p2;

assign zext_ln1895_4_fu_758_p1 = add_ln1895_fu_752_p2;

assign zext_ln1895_fu_748_p1 = loop_3_reg_414;

assign zext_ln1900_1_fu_813_p1 = loop_4_reg_426;

assign zext_ln1900_2_fu_827_p1 = $unsigned(sext_ln1900_fu_823_p1);

assign zext_ln1900_3_fu_836_p1 = add_ln1900_2_fu_831_p2;

assign zext_ln1900_4_fu_808_p1 = add_ln1900_fu_803_p2;

assign zext_ln1900_fu_799_p1 = loop_4_reg_426;

assign zext_ln1905_1_fu_867_p1 = loop_5_reg_438;

assign zext_ln1905_2_fu_881_p1 = $unsigned(sext_ln1905_fu_877_p1);

assign zext_ln1905_3_fu_917_p1 = add_ln1905_2_reg_1243;

assign zext_ln1905_4_fu_862_p1 = add_ln1905_fu_857_p2;

assign zext_ln1905_fu_853_p1 = loop_5_reg_438;

assign zext_ln1912_fu_947_p1 = tmp_15_fu_939_p3;

assign zext_ln1913_1_fu_966_p1 = add_ln1913_1_fu_961_p2;

assign zext_ln1913_2_fu_975_p1 = add_ln1913_2_fu_970_p2;

assign zext_ln1913_fu_957_p1 = loop_6_reg_449;

assign zext_ln1915_1_fu_1034_p1 = add_ln1915_fu_1029_p2;

assign zext_ln1915_2_fu_1043_p1 = add_ln1915_1_fu_1038_p2;

assign zext_ln1915_fu_1025_p1 = or_ln1915_fu_1020_p2;

assign zext_ln1917_1_fu_1062_p1 = add_ln1917_fu_1057_p2;

assign zext_ln1917_2_fu_1094_p1 = add_ln1917_1_reg_1294;

assign zext_ln1917_fu_1053_p1 = or_ln1917_fu_1048_p2;

assign zext_ln1919_1_fu_1085_p1 = add_ln1919_fu_1080_p2;

assign zext_ln1919_2_fu_1098_p1 = add_ln1919_1_reg_1299;

assign zext_ln1919_fu_1076_p1 = or_ln1919_fu_1071_p2;

assign zext_ln1922_fu_1102_p1 = p_sum5_pn_reg_461;

assign zext_ln386_fu_673_p1 = challenge_fu_665_p3;

assign zext_ln54_3_fu_631_p1 = xor_ln54_fu_625_p2;

assign zext_ln54_4_fu_651_p1 = xor_ln54_2_fu_645_p2;

assign zext_ln54_fu_602_p1 = trunc_ln4_fu_592_p4;

always @ (posedge ap_clk) begin
    zext_ln1884_reg_1154[3:0] <= 4'b0000;
    zext_ln1884_reg_1154[12] <= 1'b0;
    zext_ln1878_reg_1160[4:0] <= 5'b00000;
    zext_ln1878_reg_1160[13] <= 1'b0;
    zext_ln386_reg_1178[2] <= 1'b0;
    p_sum5_pn_reg_461[3:0] <= 4'b1011;
    p_sum5_pn_reg_461[7:5] <= 3'b100;
end

endmodule //serializeSignature