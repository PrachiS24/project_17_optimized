// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakP1600OnWords (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        state_address0,
        state_ce0,
        state_we0,
        state_d0,
        state_q0,
        state_address1,
        state_ce1,
        state_we1,
        state_d1,
        state_q1
);

parameter    ap_ST_fsm_state1 = 12'd1;
parameter    ap_ST_fsm_state2 = 12'd2;
parameter    ap_ST_fsm_state3 = 12'd4;
parameter    ap_ST_fsm_pp0_stage0 = 12'd8;
parameter    ap_ST_fsm_pp0_stage1 = 12'd16;
parameter    ap_ST_fsm_pp0_stage2 = 12'd32;
parameter    ap_ST_fsm_state8 = 12'd64;
parameter    ap_ST_fsm_state9 = 12'd128;
parameter    ap_ST_fsm_state10 = 12'd256;
parameter    ap_ST_fsm_state11 = 12'd512;
parameter    ap_ST_fsm_state12 = 12'd1024;
parameter    ap_ST_fsm_state13 = 12'd2048;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] state_address0;
output   state_ce0;
output   state_we0;
output  [63:0] state_d0;
input  [63:0] state_q0;
output  [4:0] state_address1;
output   state_ce1;
output   state_we1;
output  [63:0] state_d1;
input  [63:0] state_q1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[4:0] state_address0;
reg state_ce0;
reg state_we0;
reg[63:0] state_d0;
reg[4:0] state_address1;
reg state_ce1;
reg state_we1;
reg[63:0] state_d1;

(* fsm_encoding = "none" *) reg   [11:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [4:0] KeccakRhoOffsets_address0;
reg    KeccakRhoOffsets_ce0;
wire   [5:0] KeccakRhoOffsets_q0;
wire   [4:0] KeccakRoundConstants_address0;
reg    KeccakRoundConstants_ce0;
wire   [63:0] KeccakRoundConstants_q0;
reg   [4:0] indvar_flatten_reg_125;
reg   [2:0] x_0_i_reg_136;
reg   [2:0] y_0_i_reg_148;
wire   [4:0] i_fu_183_p2;
reg   [4:0] i_reg_377;
wire    ap_CS_fsm_state2;
wire   [0:0] icmp_ln352_3_fu_189_p2;
reg   [0:0] icmp_ln352_3_reg_382;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state4_pp0_stage0_iter0;
wire    ap_block_state7_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] add_ln352_fu_195_p2;
reg   [4:0] add_ln352_reg_386;
reg    ap_enable_reg_pp0_iter0;
wire   [2:0] x_fu_201_p2;
reg   [2:0] x_reg_391;
wire   [0:0] icmp_ln352_fu_207_p2;
reg   [0:0] icmp_ln352_reg_396;
wire   [2:0] select_ln353_17_fu_213_p3;
reg   [2:0] select_ln353_17_reg_401;
wire   [2:0] select_ln353_18_fu_221_p3;
reg   [2:0] select_ln353_18_reg_409;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_state5_pp0_stage1_iter0;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln353_fu_302_p2;
reg   [0:0] icmp_ln353_reg_419;
reg   [4:0] state_addr_2_reg_424;
wire   [63:0] select_ln353_fu_344_p3;
reg   [63:0] select_ln353_reg_430;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_state6_pp0_stage2_iter0;
wire    ap_block_pp0_stage2_11001;
wire   [2:0] y_fu_351_p2;
reg   [2:0] y_reg_435;
wire    ap_CS_fsm_state12;
wire    ap_CS_fsm_state3;
wire    grp_theta_fu_165_ap_ready;
wire    grp_theta_fu_165_ap_done;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state4;
reg    ap_enable_reg_pp0_iter1;
wire    ap_block_pp0_stage2_subdone;
wire    grp_pi_fu_159_ap_start;
wire    grp_pi_fu_159_ap_done;
wire    grp_pi_fu_159_ap_idle;
wire    grp_pi_fu_159_ap_ready;
wire   [4:0] grp_pi_fu_159_A_address0;
wire    grp_pi_fu_159_A_ce0;
wire    grp_pi_fu_159_A_we0;
wire   [63:0] grp_pi_fu_159_A_d0;
wire   [4:0] grp_pi_fu_159_A_address1;
wire    grp_pi_fu_159_A_ce1;
wire    grp_pi_fu_159_A_we1;
wire   [63:0] grp_pi_fu_159_A_d1;
wire    grp_theta_fu_165_ap_start;
wire    grp_theta_fu_165_ap_idle;
wire   [4:0] grp_theta_fu_165_A_address0;
wire    grp_theta_fu_165_A_ce0;
wire   [4:0] grp_theta_fu_165_A_address1;
wire    grp_theta_fu_165_A_ce1;
wire    grp_theta_fu_165_A_we1;
wire   [63:0] grp_theta_fu_165_A_d1;
wire    grp_chi_fu_171_ap_start;
wire    grp_chi_fu_171_ap_done;
wire    grp_chi_fu_171_ap_idle;
wire    grp_chi_fu_171_ap_ready;
wire   [4:0] grp_chi_fu_171_A_address0;
wire    grp_chi_fu_171_A_ce0;
wire   [4:0] grp_chi_fu_171_A_address1;
wire    grp_chi_fu_171_A_ce1;
wire    grp_chi_fu_171_A_we1;
wire   [63:0] grp_chi_fu_171_A_d1;
reg   [4:0] indexRound_assign_reg_113;
wire    ap_CS_fsm_state13;
reg   [4:0] ap_phi_mux_indvar_flatten_phi_fu_129_p4;
wire    ap_block_pp0_stage0;
reg   [2:0] ap_phi_mux_x_0_i_phi_fu_140_p4;
reg   [2:0] ap_phi_mux_y_0_i_phi_fu_152_p4;
reg    grp_pi_fu_159_ap_start_reg;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state9;
reg    grp_theta_fu_165_ap_start_reg;
wire   [0:0] icmp_ln293_fu_177_p2;
reg    grp_chi_fu_171_ap_start_reg;
wire    ap_CS_fsm_state10;
wire    ap_CS_fsm_state11;
wire   [63:0] zext_ln353_17_fu_296_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln382_fu_356_p1;
wire   [63:0] xor_ln382_fu_361_p2;
wire   [0:0] icmp_ln353_9_fu_227_p2;
wire   [2:0] add_ln353_10_fu_233_p2;
wire   [2:0] select_ln353_19_fu_239_p3;
wire   [0:0] icmp_ln353_10_fu_251_p2;
wire   [2:0] add_ln353_11_fu_256_p2;
wire   [2:0] select_ln353_20_fu_261_p3;
wire   [3:0] zext_ln353_fu_247_p1;
wire   [3:0] zext_ln353_15_fu_268_p1;
wire   [3:0] add_ln353_fu_280_p2;
wire   [4:0] shl_ln_fu_272_p3;
wire   [4:0] zext_ln353_16_fu_286_p1;
wire   [4:0] add_ln353_5_fu_290_p2;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln353_19_fu_312_p1;
wire   [6:0] zext_ln353_18_fu_308_p1;
wire   [6:0] sub_ln353_fu_322_p2;
wire   [63:0] zext_ln353_20_fu_328_p1;
wire   [63:0] lshr_ln353_fu_332_p2;
wire   [63:0] shl_ln353_fu_316_p2;
wire   [63:0] xor_ln353_fu_338_p2;
reg   [11:0] ap_NS_fsm;
wire    ap_block_pp0_stage1_subdone;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 12'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 grp_pi_fu_159_ap_start_reg = 1'b0;
#0 grp_theta_fu_165_ap_start_reg = 1'b0;
#0 grp_chi_fu_171_ap_start_reg = 1'b0;
end

KeccakP1600OnWordeOg #(
    .DataWidth( 6 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
KeccakRhoOffsets_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(KeccakRhoOffsets_address0),
    .ce0(KeccakRhoOffsets_ce0),
    .q0(KeccakRhoOffsets_q0)
);

KeccakP1600OnWordfYi #(
    .DataWidth( 64 ),
    .AddressRange( 24 ),
    .AddressWidth( 5 ))
KeccakRoundConstants_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(KeccakRoundConstants_address0),
    .ce0(KeccakRoundConstants_ce0),
    .q0(KeccakRoundConstants_q0)
);

pi grp_pi_fu_159(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_pi_fu_159_ap_start),
    .ap_done(grp_pi_fu_159_ap_done),
    .ap_idle(grp_pi_fu_159_ap_idle),
    .ap_ready(grp_pi_fu_159_ap_ready),
    .A_address0(grp_pi_fu_159_A_address0),
    .A_ce0(grp_pi_fu_159_A_ce0),
    .A_we0(grp_pi_fu_159_A_we0),
    .A_d0(grp_pi_fu_159_A_d0),
    .A_q0(state_q0),
    .A_address1(grp_pi_fu_159_A_address1),
    .A_ce1(grp_pi_fu_159_A_ce1),
    .A_we1(grp_pi_fu_159_A_we1),
    .A_d1(grp_pi_fu_159_A_d1),
    .A_q1(state_q1)
);

theta grp_theta_fu_165(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_theta_fu_165_ap_start),
    .ap_done(grp_theta_fu_165_ap_done),
    .ap_idle(grp_theta_fu_165_ap_idle),
    .ap_ready(grp_theta_fu_165_ap_ready),
    .A_address0(grp_theta_fu_165_A_address0),
    .A_ce0(grp_theta_fu_165_A_ce0),
    .A_q0(state_q0),
    .A_address1(grp_theta_fu_165_A_address1),
    .A_ce1(grp_theta_fu_165_A_ce1),
    .A_we1(grp_theta_fu_165_A_we1),
    .A_d1(grp_theta_fu_165_A_d1),
    .A_q1(state_q1)
);

chi grp_chi_fu_171(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_chi_fu_171_ap_start),
    .ap_done(grp_chi_fu_171_ap_done),
    .ap_idle(grp_chi_fu_171_ap_idle),
    .ap_ready(grp_chi_fu_171_ap_ready),
    .A_address0(grp_chi_fu_171_A_address0),
    .A_ce0(grp_chi_fu_171_A_ce0),
    .A_q0(state_q0),
    .A_address1(grp_chi_fu_171_A_address1),
    .A_ce1(grp_chi_fu_171_A_ce1),
    .A_we1(grp_chi_fu_171_A_we1),
    .A_d1(grp_chi_fu_171_A_d1),
    .A_q1(state_q1)
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
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state4) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0_subdone)) | ((1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_subdone)))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_chi_fu_171_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state10)) begin
            grp_chi_fu_171_ap_start_reg <= 1'b1;
        end else if ((grp_chi_fu_171_ap_ready == 1'b1)) begin
            grp_chi_fu_171_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_pi_fu_159_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state8)) begin
            grp_pi_fu_159_ap_start_reg <= 1'b1;
        end else if ((grp_pi_fu_159_ap_ready == 1'b1)) begin
            grp_pi_fu_159_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_theta_fu_165_ap_start_reg <= 1'b0;
    end else begin
        if (((icmp_ln293_fu_177_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
            grp_theta_fu_165_ap_start_reg <= 1'b1;
        end else if ((grp_theta_fu_165_ap_ready == 1'b1)) begin
            grp_theta_fu_165_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        indexRound_assign_reg_113 <= i_reg_377;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indexRound_assign_reg_113 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        indvar_flatten_reg_125 <= add_ln352_reg_386;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
        indvar_flatten_reg_125 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        x_0_i_reg_136 <= select_ln353_18_reg_409;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
        x_0_i_reg_136 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        y_0_i_reg_148 <= y_reg_435;
    end else if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
        y_0_i_reg_148 <= 3'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln352_reg_386 <= add_ln352_fu_195_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_377 <= i_fu_183_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln352_3_reg_382 <= icmp_ln352_3_fu_189_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln352_3_fu_189_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln352_reg_396 <= icmp_ln352_fu_207_p2;
        select_ln353_17_reg_401 <= select_ln353_17_fu_213_p3;
        x_reg_391 <= x_fu_201_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        icmp_ln353_reg_419 <= icmp_ln353_fu_302_p2;
        state_addr_2_reg_424 <= zext_ln353_17_fu_296_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        select_ln353_18_reg_409 <= select_ln353_18_fu_221_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        select_ln353_reg_430 <= select_ln353_fu_344_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (1'b0 == ap_block_pp0_stage2_11001))) begin
        y_reg_435 <= y_fu_351_p2;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001))) begin
        KeccakRhoOffsets_ce0 = 1'b1;
    end else begin
        KeccakRhoOffsets_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        KeccakRoundConstants_ce0 = 1'b1;
    end else begin
        KeccakRoundConstants_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((icmp_ln352_3_fu_189_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state4 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state4 = 1'b0;
    end
end

always @ (*) begin
    if ((((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_177_p2 == 1'd1)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_indvar_flatten_phi_fu_129_p4 = add_ln352_reg_386;
    end else begin
        ap_phi_mux_indvar_flatten_phi_fu_129_p4 = indvar_flatten_reg_125;
    end
end

always @ (*) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_x_0_i_phi_fu_140_p4 = select_ln353_18_reg_409;
    end else begin
        ap_phi_mux_x_0_i_phi_fu_140_p4 = x_0_i_reg_136;
    end
end

always @ (*) begin
    if (((icmp_ln352_3_reg_382 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_y_0_i_phi_fu_152_p4 = y_reg_435;
    end else begin
        ap_phi_mux_y_0_i_phi_fu_152_p4 = y_0_i_reg_148;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_177_p2 == 1'd1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        state_address0 = state_addr_2_reg_424;
    end else if (((1'b1 == ap_CS_fsm_state13) | ((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        state_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address0 = grp_chi_fu_171_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address0 = grp_theta_fu_165_A_address0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address0 = grp_pi_fu_159_A_address0;
    end else begin
        state_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        state_address1 = 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        state_address1 = zext_ln353_17_fu_296_p1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_address1 = grp_chi_fu_171_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_address1 = grp_theta_fu_165_A_address1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_address1 = grp_pi_fu_159_A_address1;
    end else begin
        state_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)) | ((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        state_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_ce0 = grp_chi_fu_171_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_ce0 = grp_theta_fu_165_A_ce0;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_ce0 = grp_pi_fu_159_A_ce0;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state12) | ((ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (1'b0 == ap_block_pp0_stage1_11001)))) begin
        state_ce1 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state11)) begin
        state_ce1 = grp_chi_fu_171_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_ce1 = grp_theta_fu_165_A_ce1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_ce1 = grp_pi_fu_159_A_ce1;
    end else begin
        state_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state13)) begin
        state_d0 = xor_ln382_fu_361_p2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        state_d0 = select_ln353_reg_430;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d0 = grp_pi_fu_159_A_d0;
    end else begin
        state_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        state_d1 = grp_chi_fu_171_A_d1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_d1 = grp_theta_fu_165_A_d1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_d1 = grp_pi_fu_159_A_d1;
    end else begin
        state_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state13) | ((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln352_3_reg_382 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1)))) begin
        state_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_we0 = grp_pi_fu_159_A_we0;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        state_we1 = grp_chi_fu_171_A_we1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        state_we1 = grp_theta_fu_165_A_we1;
    end else if ((1'b1 == ap_CS_fsm_state9)) begin
        state_we1 = grp_pi_fu_159_A_we1;
    end else begin
        state_we1 = 1'b0;
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
            if (((1'b1 == ap_CS_fsm_state2) & (icmp_ln293_fu_177_p2 == 1'd1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (grp_theta_fu_165_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln352_3_fu_189_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else if (((icmp_ln352_3_fu_189_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (grp_pi_fu_159_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            if (((grp_chi_fu_171_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign KeccakRhoOffsets_address0 = zext_ln353_17_fu_296_p1;

assign KeccakRoundConstants_address0 = zext_ln382_fu_356_p1;

assign add_ln352_fu_195_p2 = (ap_phi_mux_indvar_flatten_phi_fu_129_p4 + 5'd1);

assign add_ln353_10_fu_233_p2 = (select_ln353_18_fu_221_p3 + 3'd3);

assign add_ln353_11_fu_256_p2 = (select_ln353_17_reg_401 + 3'd3);

assign add_ln353_5_fu_290_p2 = (shl_ln_fu_272_p3 + zext_ln353_16_fu_286_p1);

assign add_ln353_fu_280_p2 = (zext_ln353_fu_247_p1 + zext_ln353_15_fu_268_p1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd8];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd7];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage2_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign grp_chi_fu_171_ap_start = grp_chi_fu_171_ap_start_reg;

assign grp_pi_fu_159_ap_start = grp_pi_fu_159_ap_start_reg;

assign grp_theta_fu_165_ap_start = grp_theta_fu_165_ap_start_reg;

assign i_fu_183_p2 = (indexRound_assign_reg_113 + 5'd1);

assign icmp_ln293_fu_177_p2 = ((indexRound_assign_reg_113 == 5'd24) ? 1'b1 : 1'b0);

assign icmp_ln352_3_fu_189_p2 = ((ap_phi_mux_indvar_flatten_phi_fu_129_p4 == 5'd25) ? 1'b1 : 1'b0);

assign icmp_ln352_fu_207_p2 = ((ap_phi_mux_y_0_i_phi_fu_152_p4 == 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln353_10_fu_251_p2 = ((select_ln353_17_reg_401 < 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln353_9_fu_227_p2 = ((select_ln353_18_fu_221_p3 < 3'd5) ? 1'b1 : 1'b0);

assign icmp_ln353_fu_302_p2 = ((add_ln353_5_fu_290_p2 == 5'd0) ? 1'b1 : 1'b0);

assign lshr_ln353_fu_332_p2 = state_q1 >> zext_ln353_20_fu_328_p1;

assign select_ln353_17_fu_213_p3 = ((icmp_ln352_fu_207_p2[0:0] === 1'b1) ? 3'd0 : ap_phi_mux_y_0_i_phi_fu_152_p4);

assign select_ln353_18_fu_221_p3 = ((icmp_ln352_reg_396[0:0] === 1'b1) ? x_reg_391 : x_0_i_reg_136);

assign select_ln353_19_fu_239_p3 = ((icmp_ln353_9_fu_227_p2[0:0] === 1'b1) ? select_ln353_18_fu_221_p3 : add_ln353_10_fu_233_p2);

assign select_ln353_20_fu_261_p3 = ((icmp_ln353_10_fu_251_p2[0:0] === 1'b1) ? select_ln353_17_reg_401 : add_ln353_11_fu_256_p2);

assign select_ln353_fu_344_p3 = ((icmp_ln353_reg_419[0:0] === 1'b1) ? state_q0 : xor_ln353_fu_338_p2);

assign shl_ln353_fu_316_p2 = state_q1 << zext_ln353_19_fu_312_p1;

assign shl_ln_fu_272_p3 = {{select_ln353_20_fu_261_p3}, {2'd0}};

assign sub_ln353_fu_322_p2 = ($signed(7'd64) - $signed(zext_ln353_18_fu_308_p1));

assign x_fu_201_p2 = (ap_phi_mux_x_0_i_phi_fu_140_p4 + 3'd1);

assign xor_ln353_fu_338_p2 = (shl_ln353_fu_316_p2 ^ lshr_ln353_fu_332_p2);

assign xor_ln382_fu_361_p2 = (state_q1 ^ KeccakRoundConstants_q0);

assign y_fu_351_p2 = (select_ln353_17_reg_401 + 3'd1);

assign zext_ln353_15_fu_268_p1 = select_ln353_20_fu_261_p3;

assign zext_ln353_16_fu_286_p1 = add_ln353_fu_280_p2;

assign zext_ln353_17_fu_296_p1 = add_ln353_5_fu_290_p2;

assign zext_ln353_18_fu_308_p1 = KeccakRhoOffsets_q0;

assign zext_ln353_19_fu_312_p1 = KeccakRhoOffsets_q0;

assign zext_ln353_20_fu_328_p1 = sub_ln353_fu_322_p2;

assign zext_ln353_fu_247_p1 = select_ln353_19_fu_239_p3;

assign zext_ln382_fu_356_p1 = indexRound_assign_reg_113;

endmodule //KeccakP1600OnWords
