// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module matrix_mul (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        output_r_address0,
        output_r_ce0,
        output_r_we0,
        output_r_d0,
        output_offset,
        state_address0,
        state_ce0,
        state_q0,
        state_offset,
        state_offset1,
        matrix_offset
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_pp0_stage0 = 11'd4;
parameter    ap_ST_fsm_state5 = 11'd8;
parameter    ap_ST_fsm_state6 = 11'd16;
parameter    ap_ST_fsm_state7 = 11'd32;
parameter    ap_ST_fsm_state8 = 11'd64;
parameter    ap_ST_fsm_state9 = 11'd128;
parameter    ap_ST_fsm_state10 = 11'd256;
parameter    ap_ST_fsm_state11 = 11'd512;
parameter    ap_ST_fsm_state12 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] output_r_address0;
output   output_r_ce0;
output  [3:0] output_r_we0;
output  [31:0] output_r_d0;
input  [4:0] output_offset;
output  [11:0] state_address0;
output   state_ce0;
input  [31:0] state_q0;
input  [7:0] state_offset;
input  [3:0] state_offset1;
input  [13:0] matrix_offset;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg output_r_ce0;
reg[3:0] output_r_we0;
reg state_ce0;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [13:0] temp_matrix_address0;
reg    temp_matrix_ce0;
wire   [31:0] temp_matrix_q0;
reg   [2:0] j_0_reg_260;
wire   [12:0] tmp_41_cast_fu_340_p3;
reg   [12:0] tmp_41_cast_reg_1000;
wire   [0:0] icmp_ln124_fu_348_p2;
wire    ap_CS_fsm_state2;
wire   [7:0] i_fu_354_p2;
reg   [7:0] i_reg_1014;
wire   [2:0] trunc_ln124_fu_360_p1;
reg   [2:0] trunc_ln124_reg_1019;
wire   [8:0] shl_ln_fu_368_p3;
reg   [8:0] shl_ln_reg_1024;
wire   [3:0] trunc_ln134_fu_376_p1;
reg   [3:0] trunc_ln134_reg_1029;
wire   [0:0] icmp_ln125_fu_379_p2;
reg   [0:0] icmp_ln125_reg_1034;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state3_pp0_stage0_iter0;
wire    ap_block_state4_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] j_fu_385_p2;
reg   [2:0] j_reg_1038;
reg    ap_enable_reg_pp0_iter0;
wire   [31:0] prod_q0;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state7;
wire   [0:0] icmp_ln85_fu_445_p2;
wire   [2:0] i_12_fu_451_p2;
reg   [2:0] i_12_reg_1066;
reg   [1:0] tmp_46_reg_1071;
reg   [5:0] temp_addr_3_reg_1077;
wire   [31:0] x_8_fu_482_p2;
wire    ap_CS_fsm_state8;
wire   [4:0] start_pos_fu_694_p3;
reg   [4:0] start_pos_reg_1087;
wire    ap_CS_fsm_state9;
wire   [4:0] or_ln66_7_fu_702_p2;
reg   [4:0] or_ln66_7_reg_1093;
wire   [7:0] or_ln66_fu_838_p2;
reg   [7:0] or_ln66_reg_1099;
wire   [2:0] loop_fu_966_p2;
reg   [2:0] loop_reg_1107;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln133_fu_960_p2;
wire   [3:0] add_ln134_fu_981_p2;
reg   [3:0] add_ln134_reg_1117;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state3;
reg    ap_enable_reg_pp0_iter1;
reg   [5:0] prod_address0;
reg    prod_ce0;
reg    prod_we0;
wire   [31:0] prod_d0;
reg   [5:0] temp_address0;
reg    temp_ce0;
reg   [3:0] temp_we0;
wire   [31:0] temp_d0;
wire   [31:0] temp_q0;
reg   [7:0] bitNumber_assign_reg_248;
wire    ap_CS_fsm_state10;
reg   [2:0] ap_phi_mux_j_0_phi_fu_264_p4;
wire    ap_block_pp0_stage0;
reg   [31:0] x_0_i_reg_272;
reg   [2:0] i_0_i_reg_282;
reg   [2:0] loop_0_reg_293;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln127_9_fu_413_p1;
wire   [63:0] zext_ln127_4_fu_423_p1;
wire   [63:0] zext_ln127_fu_428_p1;
wire   [63:0] zext_ln85_fu_440_p1;
wire   [63:0] zext_ln66_fu_477_p1;
wire   [63:0] zext_ln134_fu_972_p1;
wire   [63:0] zext_ln134_4_fu_986_p1;
wire    ap_CS_fsm_state5;
wire   [3:0] shl_ln66_20_fu_953_p2;
reg   [4:0] grp_fu_304_p0;
reg   [4:0] grp_fu_304_p1;
wire   [9:0] tmp_fu_316_p3;
wire   [10:0] zext_ln127_7_fu_324_p1;
wire   [10:0] zext_ln127_6_fu_312_p1;
wire   [10:0] sub_ln127_fu_328_p2;
wire   [10:0] zext_ln127_5_fu_308_p1;
wire   [10:0] add_ln127_2_fu_334_p2;
wire   [6:0] trunc_ln126_fu_364_p1;
wire   [8:0] zext_ln125_fu_391_p1;
wire   [8:0] add_ln126_fu_395_p2;
wire   [12:0] zext_ln127_8_fu_404_p1;
wire   [12:0] add_ln127_3_fu_408_p2;
wire   [13:0] zext_ln126_fu_400_p1;
wire   [13:0] add_ln127_fu_418_p2;
wire   [2:0] adjSize_fu_467_p4;
wire   [30:0] lshr_ln_fu_488_p4;
wire   [31:0] zext_ln93_fu_498_p1;
wire   [31:0] y_fu_528_p2;
wire   [29:0] lshr_ln4_fu_534_p4;
wire   [23:0] trunc_ln93_6_fu_518_p4;
wire   [23:0] trunc_ln93_2_fu_514_p1;
wire   [31:0] zext_ln94_fu_544_p1;
wire   [31:0] y_4_fu_572_p2;
wire   [27:0] lshr_ln5_fu_578_p4;
wire   [23:0] trunc_ln94_2_fu_562_p4;
wire   [23:0] xor_ln94_fu_556_p2;
wire   [31:0] zext_ln95_fu_588_p1;
wire   [23:0] trunc_ln95_2_fu_606_p4;
wire   [23:0] xor_ln95_fu_600_p2;
wire   [31:0] y_5_fu_616_p2;
wire   [23:0] trunc_ln_fu_628_p4;
wire   [23:0] xor_ln95_4_fu_622_p2;
wire   [23:0] y_6_fu_646_p2;
wire   [0:0] trunc_ln93_fu_502_p1;
wire   [0:0] tmp_42_fu_548_p3;
wire   [0:0] xor_ln98_fu_660_p2;
wire   [0:0] tmp_41_fu_506_p3;
wire   [0:0] tmp_44_fu_638_p3;
wire   [0:0] tmp_45_fu_652_p3;
wire   [0:0] xor_ln98_6_fu_672_p2;
wire   [0:0] tmp_43_fu_592_p3;
wire   [0:0] xor_ln98_7_fu_678_p2;
wire   [0:0] xor_ln98_5_fu_666_p2;
wire   [0:0] xor_ln98_8_fu_684_p2;
wire   [5:0] zext_ln66_49_fu_709_p1;
wire   [5:0] zext_ln66_50_fu_713_p1;
wire   [0:0] grp_fu_304_p2;
wire   [5:0] sub_ln66_fu_727_p2;
wire   [5:0] sub_ln66_11_fu_739_p2;
reg   [31:0] tmp_47_fu_717_p4;
wire   [5:0] xor_ln66_15_fu_733_p2;
wire   [5:0] select_ln66_fu_745_p3;
wire   [5:0] select_ln66_28_fu_761_p3;
wire   [5:0] sub_ln66_12_fu_769_p2;
wire   [31:0] select_ln66_27_fu_753_p3;
wire   [31:0] zext_ln66_51_fu_775_p1;
wire   [31:0] zext_ln66_52_fu_779_p1;
wire   [31:0] lshr_ln66_fu_783_p2;
wire   [31:0] lshr_ln66_11_fu_789_p2;
wire   [31:0] and_ln66_15_fu_795_p2;
wire   [2:0] xor_ln66_fu_805_p2;
wire   [7:0] zext_ln66_2_fu_810_p1;
wire   [7:0] shl_ln66_fu_814_p2;
wire   [7:0] zext_ln98_fu_690_p1;
wire   [7:0] trunc_ln66_fu_801_p1;
wire   [7:0] xor_ln66_4_fu_820_p2;
wire   [7:0] and_ln66_fu_832_p2;
wire   [7:0] shl_ln66_8_fu_826_p2;
wire   [5:0] zext_ln66_53_fu_844_p1;
wire   [5:0] zext_ln66_54_fu_847_p1;
wire   [5:0] xor_ln66_16_fu_853_p2;
wire   [5:0] select_ln66_29_fu_859_p3;
wire   [5:0] select_ln66_31_fu_875_p3;
wire   [5:0] select_ln66_30_fu_867_p3;
wire   [5:0] xor_ln66_17_fu_883_p2;
wire   [31:0] zext_ln66_55_fu_850_p1;
wire   [31:0] zext_ln66_56_fu_889_p1;
wire   [31:0] shl_ln66_18_fu_901_p2;
reg   [31:0] tmp_48_fu_907_p4;
wire   [31:0] zext_ln66_57_fu_893_p1;
wire   [31:0] zext_ln66_58_fu_897_p1;
wire   [31:0] shl_ln66_19_fu_925_p2;
wire   [31:0] lshr_ln66_12_fu_931_p2;
wire   [31:0] select_ln66_32_fu_917_p3;
wire   [31:0] and_ln66_16_fu_937_p2;
wire   [3:0] zext_ln66_59_fu_950_p1;
wire   [3:0] zext_ln134_3_fu_977_p1;
reg   [10:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
end

matrix_mul_temp_mUhA #(
    .DataWidth( 32 ),
    .AddressRange( 10752 ),
    .AddressWidth( 14 ))
temp_matrix_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_matrix_address0),
    .ce0(temp_matrix_ce0),
    .q0(temp_matrix_q0)
);

matrix_mul_prod #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
prod_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(prod_address0),
    .ce0(prod_ce0),
    .we0(prod_we0),
    .d0(prod_d0),
    .q0(prod_q0)
);

matrix_mul_temp #(
    .DataWidth( 32 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
temp_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(temp_address0),
    .ce0(temp_ce0),
    .we0(temp_we0),
    .d0(temp_d0),
    .q0(temp_q0)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((icmp_ln124_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_pp0_exit_iter0_state3) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state3);
        end else if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((icmp_ln124_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        bitNumber_assign_reg_248 <= i_reg_1014;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        bitNumber_assign_reg_248 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        i_0_i_reg_282 <= i_12_reg_1066;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        i_0_i_reg_282 <= 3'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        j_0_reg_260 <= 3'd0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln125_reg_1034 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        j_0_reg_260 <= j_reg_1038;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_348_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        loop_0_reg_293 <= 3'd0;
    end else if ((1'b1 == ap_CS_fsm_state12)) begin
        loop_0_reg_293 <= loop_reg_1107;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        x_0_i_reg_272 <= x_8_fu_482_p2;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        x_0_i_reg_272 <= prod_q0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln133_fu_960_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        add_ln134_reg_1117 <= add_ln134_fu_981_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_445_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state7))) begin
        i_12_reg_1066 <= i_12_fu_451_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_1014 <= i_fu_354_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln125_reg_1034 <= icmp_ln125_fu_379_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        j_reg_1038 <= j_fu_385_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        loop_reg_1107 <= loop_fu_966_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        or_ln66_7_reg_1093[4 : 3] <= or_ln66_7_fu_702_p2[4 : 3];
        or_ln66_reg_1099 <= or_ln66_fu_838_p2;
        start_pos_reg_1087[4 : 3] <= start_pos_fu_694_p3[4 : 3];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_348_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        shl_ln_reg_1024[8 : 2] <= shl_ln_fu_368_p3[8 : 2];
        trunc_ln124_reg_1019 <= trunc_ln124_fu_360_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln85_fu_445_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
        temp_addr_3_reg_1077[2 : 0] <= zext_ln66_fu_477_p1[2 : 0];
        tmp_46_reg_1071 <= {{bitNumber_assign_reg_248[4:3]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        tmp_41_cast_reg_1000[12 : 2] <= tmp_41_cast_fu_340_p3[12 : 2];
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln124_fu_348_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        trunc_ln134_reg_1029 <= trunc_ln134_fu_376_p1;
    end
end

always @ (*) begin
    if ((icmp_ln125_fu_379_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state3 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state3 = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)) | ((icmp_ln133_fu_960_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln125_reg_1034 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_j_0_phi_fu_264_p4 = j_reg_1038;
    end else begin
        ap_phi_mux_j_0_phi_fu_264_p4 = j_0_reg_260;
    end
end

always @ (*) begin
    if (((icmp_ln133_fu_960_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_304_p0 = start_pos_reg_1087;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_304_p0 = start_pos_fu_694_p3;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        grp_fu_304_p1 = or_ln66_7_reg_1093;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        grp_fu_304_p1 = or_ln66_7_fu_702_p2;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_r_ce0 = 1'b1;
    end else begin
        output_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        output_r_we0 = 4'd15;
    end else begin
        output_r_we0 = 4'd0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        prod_address0 = zext_ln85_fu_440_p1;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        prod_address0 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        prod_address0 = zext_ln127_fu_428_p1;
    end else begin
        prod_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | (1'b1 == ap_CS_fsm_state7) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        prod_ce0 = 1'b1;
    end else begin
        prod_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln125_reg_1034 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        prod_we0 = 1'b1;
    end else begin
        prod_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        temp_address0 = zext_ln134_fu_972_p1;
    end else if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_address0 = temp_addr_3_reg_1077;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        temp_address0 = zext_ln66_fu_477_p1;
    end else begin
        temp_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state11) | (1'b1 == ap_CS_fsm_state7))) begin
        temp_ce0 = 1'b1;
    end else begin
        temp_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
        temp_matrix_ce0 = 1'b1;
    end else begin
        temp_matrix_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        temp_we0 = shl_ln66_20_fu_953_p2;
    end else begin
        temp_we0 = 4'd0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (((icmp_ln124_fu_348_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if (~((icmp_ln125_fu_379_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((icmp_ln125_fu_379_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((icmp_ln85_fu_445_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state7))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln133_fu_960_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln126_fu_395_p2 = (zext_ln125_fu_391_p1 + shl_ln_reg_1024);

assign add_ln127_2_fu_334_p2 = (sub_ln127_fu_328_p2 + zext_ln127_5_fu_308_p1);

assign add_ln127_3_fu_408_p2 = (tmp_41_cast_reg_1000 + zext_ln127_8_fu_404_p1);

assign add_ln127_fu_418_p2 = (matrix_offset + zext_ln126_fu_400_p1);

assign add_ln134_fu_981_p2 = (zext_ln134_3_fu_977_p1 + trunc_ln134_reg_1029);

assign adjSize_fu_467_p4 = {{bitNumber_assign_reg_248[7:5]}};

assign and_ln66_15_fu_795_p2 = (lshr_ln66_fu_783_p2 & lshr_ln66_11_fu_789_p2);

assign and_ln66_16_fu_937_p2 = (shl_ln66_19_fu_925_p2 & lshr_ln66_12_fu_931_p2);

assign and_ln66_fu_832_p2 = (xor_ln66_4_fu_820_p2 & trunc_ln66_fu_801_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_fu_304_p2 = ((grp_fu_304_p0 > grp_fu_304_p1) ? 1'b1 : 1'b0);

assign i_12_fu_451_p2 = (i_0_i_reg_282 + 3'd1);

assign i_fu_354_p2 = (bitNumber_assign_reg_248 + 8'd1);

assign icmp_ln124_fu_348_p2 = ((bitNumber_assign_reg_248 == 8'd128) ? 1'b1 : 1'b0);

assign icmp_ln125_fu_379_p2 = ((ap_phi_mux_j_0_phi_fu_264_p4 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln133_fu_960_p2 = ((loop_0_reg_293 == 3'd4) ? 1'b1 : 1'b0);

assign icmp_ln85_fu_445_p2 = ((i_0_i_reg_282 == 3'd4) ? 1'b1 : 1'b0);

assign j_fu_385_p2 = (ap_phi_mux_j_0_phi_fu_264_p4 + 3'd1);

assign loop_fu_966_p2 = (loop_0_reg_293 + 3'd1);

assign lshr_ln4_fu_534_p4 = {{y_fu_528_p2[31:2]}};

assign lshr_ln5_fu_578_p4 = {{y_4_fu_572_p2[31:4]}};

assign lshr_ln66_11_fu_789_p2 = 32'd4294967295 >> zext_ln66_52_fu_779_p1;

assign lshr_ln66_12_fu_931_p2 = 32'd4294967295 >> zext_ln66_58_fu_897_p1;

assign lshr_ln66_fu_783_p2 = select_ln66_27_fu_753_p3 >> zext_ln66_51_fu_775_p1;

assign lshr_ln_fu_488_p4 = {{x_0_i_reg_272[31:1]}};

assign or_ln66_7_fu_702_p2 = (start_pos_fu_694_p3 | 5'd7);

assign or_ln66_fu_838_p2 = (shl_ln66_8_fu_826_p2 | and_ln66_fu_832_p2);

assign output_r_address0 = zext_ln134_4_fu_986_p1;

assign output_r_d0 = temp_q0;

assign prod_d0 = (temp_matrix_q0 & state_q0);

assign select_ln66_27_fu_753_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? tmp_47_fu_717_p4 : temp_q0);

assign select_ln66_28_fu_761_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? xor_ln66_15_fu_733_p2 : zext_ln66_49_fu_709_p1);

assign select_ln66_29_fu_859_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? zext_ln66_53_fu_844_p1 : zext_ln66_54_fu_847_p1);

assign select_ln66_30_fu_867_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? zext_ln66_54_fu_847_p1 : zext_ln66_53_fu_844_p1);

assign select_ln66_31_fu_875_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? xor_ln66_16_fu_853_p2 : zext_ln66_53_fu_844_p1);

assign select_ln66_32_fu_917_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? tmp_48_fu_907_p4 : shl_ln66_18_fu_901_p2);

assign select_ln66_fu_745_p3 = ((grp_fu_304_p2[0:0] === 1'b1) ? sub_ln66_fu_727_p2 : sub_ln66_11_fu_739_p2);

assign shl_ln66_18_fu_901_p2 = zext_ln66_55_fu_850_p1 << zext_ln66_56_fu_889_p1;

assign shl_ln66_19_fu_925_p2 = 32'd4294967295 << zext_ln66_57_fu_893_p1;

assign shl_ln66_20_fu_953_p2 = 4'd1 << zext_ln66_59_fu_950_p1;

assign shl_ln66_8_fu_826_p2 = zext_ln98_fu_690_p1 << zext_ln66_2_fu_810_p1;

assign shl_ln66_fu_814_p2 = 8'd1 << zext_ln66_2_fu_810_p1;

assign shl_ln_fu_368_p3 = {{trunc_ln126_fu_364_p1}, {2'd0}};

assign start_pos_fu_694_p3 = {{tmp_46_reg_1071}, {3'd0}};

assign state_address0 = zext_ln127_9_fu_413_p1;

assign sub_ln127_fu_328_p2 = (zext_ln127_7_fu_324_p1 - zext_ln127_6_fu_312_p1);

assign sub_ln66_11_fu_739_p2 = (zext_ln66_50_fu_713_p1 - zext_ln66_49_fu_709_p1);

assign sub_ln66_12_fu_769_p2 = (6'd31 - select_ln66_fu_745_p3);

assign sub_ln66_fu_727_p2 = (zext_ln66_49_fu_709_p1 - zext_ln66_50_fu_713_p1);

assign temp_d0 = (select_ln66_32_fu_917_p3 & and_ln66_16_fu_937_p2);

assign temp_matrix_address0 = zext_ln127_4_fu_423_p1;

assign tmp_41_cast_fu_340_p3 = {{add_ln127_2_fu_334_p2}, {2'd0}};

assign tmp_41_fu_506_p3 = x_0_i_reg_272[32'd1];

assign tmp_42_fu_548_p3 = y_fu_528_p2[32'd2];

assign tmp_43_fu_592_p3 = y_4_fu_572_p2[32'd4];

assign tmp_44_fu_638_p3 = y_5_fu_616_p2[32'd8];

assign tmp_45_fu_652_p3 = y_6_fu_646_p2[32'd16];

integer ap_tvar_int_0;

always @ (temp_q0) begin
    for (ap_tvar_int_0 = 32 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 31 - 0) begin
            tmp_47_fu_717_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            tmp_47_fu_717_p4[ap_tvar_int_0] = temp_q0[31 - ap_tvar_int_0];
        end
    end
end

integer ap_tvar_int_1;

always @ (shl_ln66_18_fu_901_p2) begin
    for (ap_tvar_int_1 = 32 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 31 - 0) begin
            tmp_48_fu_907_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            tmp_48_fu_907_p4[ap_tvar_int_1] = shl_ln66_18_fu_901_p2[31 - ap_tvar_int_1];
        end
    end
end

assign tmp_fu_316_p3 = {{state_offset}, {2'd0}};

assign trunc_ln124_fu_360_p1 = bitNumber_assign_reg_248[2:0];

assign trunc_ln126_fu_364_p1 = bitNumber_assign_reg_248[6:0];

assign trunc_ln134_fu_376_p1 = output_offset[3:0];

assign trunc_ln66_fu_801_p1 = and_ln66_15_fu_795_p2[7:0];

assign trunc_ln93_2_fu_514_p1 = x_0_i_reg_272[23:0];

assign trunc_ln93_6_fu_518_p4 = {{x_0_i_reg_272[24:1]}};

assign trunc_ln93_fu_502_p1 = x_0_i_reg_272[0:0];

assign trunc_ln94_2_fu_562_p4 = {{y_fu_528_p2[25:2]}};

assign trunc_ln95_2_fu_606_p4 = {{y_4_fu_572_p2[27:4]}};

assign trunc_ln_fu_628_p4 = {{y_5_fu_616_p2[31:8]}};

assign x_8_fu_482_p2 = (x_0_i_reg_272 ^ prod_q0);

assign xor_ln66_15_fu_733_p2 = (zext_ln66_49_fu_709_p1 ^ 6'd31);

assign xor_ln66_16_fu_853_p2 = (zext_ln66_53_fu_844_p1 ^ 6'd31);

assign xor_ln66_17_fu_883_p2 = (select_ln66_29_fu_859_p3 ^ 6'd31);

assign xor_ln66_4_fu_820_p2 = (shl_ln66_fu_814_p2 ^ 8'd255);

assign xor_ln66_fu_805_p2 = (trunc_ln124_reg_1019 ^ 3'd7);

assign xor_ln94_fu_556_p2 = (trunc_ln93_6_fu_518_p4 ^ trunc_ln93_2_fu_514_p1);

assign xor_ln95_4_fu_622_p2 = (xor_ln95_fu_600_p2 ^ trunc_ln95_2_fu_606_p4);

assign xor_ln95_fu_600_p2 = (xor_ln94_fu_556_p2 ^ trunc_ln94_2_fu_562_p4);

assign xor_ln98_5_fu_666_p2 = (xor_ln98_fu_660_p2 ^ tmp_41_fu_506_p3);

assign xor_ln98_6_fu_672_p2 = (tmp_45_fu_652_p3 ^ tmp_44_fu_638_p3);

assign xor_ln98_7_fu_678_p2 = (xor_ln98_6_fu_672_p2 ^ tmp_43_fu_592_p3);

assign xor_ln98_8_fu_684_p2 = (xor_ln98_7_fu_678_p2 ^ xor_ln98_5_fu_666_p2);

assign xor_ln98_fu_660_p2 = (trunc_ln93_fu_502_p1 ^ tmp_42_fu_548_p3);

assign y_4_fu_572_p2 = (zext_ln94_fu_544_p1 ^ y_fu_528_p2);

assign y_5_fu_616_p2 = (zext_ln95_fu_588_p1 ^ y_4_fu_572_p2);

assign y_6_fu_646_p2 = (xor_ln95_4_fu_622_p2 ^ trunc_ln_fu_628_p4);

assign y_fu_528_p2 = (zext_ln93_fu_498_p1 ^ x_0_i_reg_272);

assign zext_ln125_fu_391_p1 = ap_phi_mux_j_0_phi_fu_264_p4;

assign zext_ln126_fu_400_p1 = add_ln126_fu_395_p2;

assign zext_ln127_4_fu_423_p1 = add_ln127_fu_418_p2;

assign zext_ln127_5_fu_308_p1 = state_offset1;

assign zext_ln127_6_fu_312_p1 = state_offset;

assign zext_ln127_7_fu_324_p1 = tmp_fu_316_p3;

assign zext_ln127_8_fu_404_p1 = ap_phi_mux_j_0_phi_fu_264_p4;

assign zext_ln127_9_fu_413_p1 = add_ln127_3_fu_408_p2;

assign zext_ln127_fu_428_p1 = j_0_reg_260;

assign zext_ln134_3_fu_977_p1 = loop_0_reg_293;

assign zext_ln134_4_fu_986_p1 = add_ln134_reg_1117;

assign zext_ln134_fu_972_p1 = loop_0_reg_293;

assign zext_ln66_2_fu_810_p1 = xor_ln66_fu_805_p2;

assign zext_ln66_49_fu_709_p1 = start_pos_fu_694_p3;

assign zext_ln66_50_fu_713_p1 = or_ln66_7_fu_702_p2;

assign zext_ln66_51_fu_775_p1 = select_ln66_28_fu_761_p3;

assign zext_ln66_52_fu_779_p1 = sub_ln66_12_fu_769_p2;

assign zext_ln66_53_fu_844_p1 = start_pos_reg_1087;

assign zext_ln66_54_fu_847_p1 = or_ln66_7_reg_1093;

assign zext_ln66_55_fu_850_p1 = or_ln66_reg_1099;

assign zext_ln66_56_fu_889_p1 = select_ln66_31_fu_875_p3;

assign zext_ln66_57_fu_893_p1 = select_ln66_30_fu_867_p3;

assign zext_ln66_58_fu_897_p1 = xor_ln66_17_fu_883_p2;

assign zext_ln66_59_fu_950_p1 = tmp_46_reg_1071;

assign zext_ln66_fu_477_p1 = adjSize_fu_467_p4;

assign zext_ln85_fu_440_p1 = i_0_i_reg_282;

assign zext_ln93_fu_498_p1 = lshr_ln_fu_488_p4;

assign zext_ln94_fu_544_p1 = lshr_ln4_fu_534_p4;

assign zext_ln95_fu_588_p1 = lshr_ln5_fu_578_p4;

assign zext_ln98_fu_690_p1 = xor_ln98_8_fu_684_p2;

always @ (posedge ap_clk) begin
    tmp_41_cast_reg_1000[1:0] <= 2'b00;
    shl_ln_reg_1024[1:0] <= 2'b00;
    temp_addr_3_reg_1077[5:3] <= 3'b000;
    start_pos_reg_1087[2:0] <= 3'b000;
    or_ln66_7_reg_1093[2:0] <= 3'b111;
end

endmodule //matrix_mul
