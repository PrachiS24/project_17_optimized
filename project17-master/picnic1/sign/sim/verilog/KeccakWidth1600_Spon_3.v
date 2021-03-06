// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module KeccakWidth1600_Spon_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        instance_state_address0,
        instance_state_ce0,
        instance_state_we0,
        instance_state_d0,
        instance_state_q0,
        instance_byteIOIndex_read,
        instance_squeezing_read,
        data_0_address0,
        data_0_ce0,
        data_0_we0,
        data_0_d0
);

parameter    ap_ST_fsm_state1 = 19'd1;
parameter    ap_ST_fsm_state2 = 19'd2;
parameter    ap_ST_fsm_state3 = 19'd4;
parameter    ap_ST_fsm_state4 = 19'd8;
parameter    ap_ST_fsm_state5 = 19'd16;
parameter    ap_ST_fsm_state6 = 19'd32;
parameter    ap_ST_fsm_state7 = 19'd64;
parameter    ap_ST_fsm_state8 = 19'd128;
parameter    ap_ST_fsm_state9 = 19'd256;
parameter    ap_ST_fsm_state10 = 19'd512;
parameter    ap_ST_fsm_state11 = 19'd1024;
parameter    ap_ST_fsm_state12 = 19'd2048;
parameter    ap_ST_fsm_state13 = 19'd4096;
parameter    ap_ST_fsm_state14 = 19'd8192;
parameter    ap_ST_fsm_state15 = 19'd16384;
parameter    ap_ST_fsm_state16 = 19'd32768;
parameter    ap_ST_fsm_state17 = 19'd65536;
parameter    ap_ST_fsm_state18 = 19'd131072;
parameter    ap_ST_fsm_state19 = 19'd262144;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] instance_state_address0;
output   instance_state_ce0;
output   instance_state_we0;
output  [7:0] instance_state_d0;
input  [7:0] instance_state_q0;
input  [31:0] instance_byteIOIndex_read;
input  [31:0] instance_squeezing_read;
output  [4:0] data_0_address0;
output   data_0_ce0;
output   data_0_we0;
output  [7:0] data_0_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[7:0] instance_state_address0;
reg instance_state_ce0;
reg instance_state_we0;
reg[7:0] instance_state_d0;
reg data_0_ce0;
reg data_0_we0;

(* fsm_encoding = "none" *) reg   [18:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire   [0:0] icmp_ln299_fu_205_p2;
reg   [0:0] icmp_ln299_reg_360;
reg   [7:0] instance_state_addr_reg_364;
wire   [7:0] instance_state_addr_1_reg_369;
wire    ap_CS_fsm_state3;
wire   [0:0] icmp_ln305_fu_246_p2;
reg   [0:0] icmp_ln305_reg_377;
wire    ap_CS_fsm_state11;
wire   [0:0] icmp_ln304_fu_240_p2;
wire   [5:0] partialBlock_fu_256_p2;
reg   [5:0] partialBlock_reg_381;
wire    ap_CS_fsm_state16;
wire    grp_fromWordsToBytes_fu_191_ap_ready;
wire    grp_fromWordsToBytes_fu_191_ap_done;
reg    ap_block_state16_on_subcall_done;
wire   [31:0] partialBlock_25_fu_283_p3;
reg   [31:0] partialBlock_25_reg_386;
wire    ap_CS_fsm_state17;
wire   [63:0] zext_ln325_fu_291_p1;
reg   [63:0] zext_ln325_reg_392;
wire   [32:0] i_fu_299_p2;
reg   [32:0] i_reg_397;
wire   [31:0] loop_fu_310_p2;
reg   [31:0] loop_reg_405;
wire    ap_CS_fsm_state18;
wire   [0:0] icmp_ln393_fu_305_p2;
wire   [6:0] add_ln394_2_fu_335_p2;
reg   [6:0] add_ln394_2_reg_415;
wire   [31:0] add_ln332_fu_341_p2;
wire   [63:0] add_ln331_fu_346_p2;
reg   [4:0] stateAsWords_address0;
reg    stateAsWords_ce0;
reg    stateAsWords_we0;
reg   [63:0] stateAsWords_d0;
wire   [63:0] stateAsWords_q0;
reg    stateAsWords_ce1;
reg    stateAsWords_we1;
wire   [63:0] stateAsWords_q1;
reg   [4:0] stateAsWords_13_address0;
reg    stateAsWords_13_ce0;
reg    stateAsWords_13_we0;
reg   [63:0] stateAsWords_13_d0;
wire   [63:0] stateAsWords_13_q0;
reg    stateAsWords_13_ce1;
reg    stateAsWords_13_we1;
wire   [63:0] stateAsWords_13_q1;
wire    grp_KeccakP1600OnWords_fu_182_ap_start;
wire    grp_KeccakP1600OnWords_fu_182_ap_done;
wire    grp_KeccakP1600OnWords_fu_182_ap_idle;
wire    grp_KeccakP1600OnWords_fu_182_ap_ready;
wire   [4:0] grp_KeccakP1600OnWords_fu_182_state_address0;
wire    grp_KeccakP1600OnWords_fu_182_state_ce0;
wire    grp_KeccakP1600OnWords_fu_182_state_we0;
wire   [63:0] grp_KeccakP1600OnWords_fu_182_state_d0;
reg   [63:0] grp_KeccakP1600OnWords_fu_182_state_q0;
wire   [4:0] grp_KeccakP1600OnWords_fu_182_state_address1;
wire    grp_KeccakP1600OnWords_fu_182_state_ce1;
wire    grp_KeccakP1600OnWords_fu_182_state_we1;
wire   [63:0] grp_KeccakP1600OnWords_fu_182_state_d1;
reg   [63:0] grp_KeccakP1600OnWords_fu_182_state_q1;
wire    grp_fromWordsToBytes_fu_191_ap_start;
wire    grp_fromWordsToBytes_fu_191_ap_idle;
wire   [7:0] grp_fromWordsToBytes_fu_191_state_address0;
wire    grp_fromWordsToBytes_fu_191_state_ce0;
wire    grp_fromWordsToBytes_fu_191_state_we0;
wire   [7:0] grp_fromWordsToBytes_fu_191_state_d0;
wire   [4:0] grp_fromWordsToBytes_fu_191_stateAsWords_address0;
wire    grp_fromWordsToBytes_fu_191_stateAsWords_ce0;
reg   [63:0] grp_fromWordsToBytes_fu_191_stateAsWords_q0;
wire    grp_fromBytesToWords_fu_198_ap_start;
wire    grp_fromBytesToWords_fu_198_ap_done;
wire    grp_fromBytesToWords_fu_198_ap_idle;
wire    grp_fromBytesToWords_fu_198_ap_ready;
wire   [4:0] grp_fromBytesToWords_fu_198_stateAsWords_address0;
wire    grp_fromBytesToWords_fu_198_stateAsWords_ce0;
wire    grp_fromBytesToWords_fu_198_stateAsWords_we0;
wire   [63:0] grp_fromBytesToWords_fu_198_stateAsWords_d0;
reg   [63:0] grp_fromBytesToWords_fu_198_stateAsWords_q0;
wire   [7:0] grp_fromBytesToWords_fu_198_state_address0;
wire    grp_fromBytesToWords_fu_198_state_ce0;
reg   [31:0] ap_phi_mux_instance_byteIOIndex_2_phi_fu_115_p4;
reg   [31:0] instance_byteIOIndex_2_reg_112;
wire    ap_CS_fsm_state10;
reg    ap_block_state10_on_subcall_done;
reg   [31:0] instance_byteIOIndex_1_reg_123;
reg   [32:0] i_0_reg_134;
reg   [63:0] curData_0_idx_reg_146;
reg   [31:0] offset_assign_reg_158;
reg   [31:0] loop_0_i1_reg_171;
wire    ap_CS_fsm_state19;
reg    grp_KeccakP1600OnWords_fu_182_ap_start_reg;
wire    ap_CS_fsm_state7;
wire    ap_CS_fsm_state13;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state14;
reg    grp_fromWordsToBytes_fu_191_ap_start_reg;
wire    ap_CS_fsm_state9;
wire    ap_CS_fsm_state15;
reg    grp_fromBytesToWords_fu_198_ap_start_reg;
wire    ap_CS_fsm_state5;
wire    ap_CS_fsm_state6;
wire    ap_CS_fsm_state12;
wire   [63:0] zext_ln149_fu_211_p1;
wire   [63:0] zext_ln394_fu_322_p1;
wire   [63:0] zext_ln394_2_fu_351_p1;
wire    ap_CS_fsm_state2;
wire   [7:0] xor_ln149_fu_216_p2;
wire    ap_CS_fsm_state4;
wire   [7:0] xor_ln149_16_fu_223_p2;
wire   [27:0] tmp_fu_230_p4;
wire   [5:0] trunc_ln322_fu_252_p1;
wire   [31:0] zext_ln322_fu_262_p1;
wire   [31:0] add_ln323_fu_265_p2;
wire   [0:0] icmp_ln323_fu_271_p2;
wire   [31:0] partialBlock_24_fu_277_p2;
wire   [32:0] zext_ln325_3_fu_295_p1;
wire   [31:0] add_ln394_fu_316_p2;
wire   [6:0] trunc_ln304_fu_331_p1;
wire   [6:0] trunc_ln394_fu_327_p1;
reg   [18:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 19'd1;
#0 grp_KeccakP1600OnWords_fu_182_ap_start_reg = 1'b0;
#0 grp_fromWordsToBytes_fu_191_ap_start_reg = 1'b0;
#0 grp_fromBytesToWords_fu_198_ap_start_reg = 1'b0;
end

pi_tempA #(
    .DataWidth( 64 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
stateAsWords_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(stateAsWords_address0),
    .ce0(stateAsWords_ce0),
    .we0(stateAsWords_we0),
    .d0(stateAsWords_d0),
    .q0(stateAsWords_q0),
    .address1(grp_KeccakP1600OnWords_fu_182_state_address1),
    .ce1(stateAsWords_ce1),
    .we1(stateAsWords_we1),
    .d1(grp_KeccakP1600OnWords_fu_182_state_d1),
    .q1(stateAsWords_q1)
);

pi_tempA #(
    .DataWidth( 64 ),
    .AddressRange( 25 ),
    .AddressWidth( 5 ))
stateAsWords_13_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(stateAsWords_13_address0),
    .ce0(stateAsWords_13_ce0),
    .we0(stateAsWords_13_we0),
    .d0(stateAsWords_13_d0),
    .q0(stateAsWords_13_q0),
    .address1(grp_KeccakP1600OnWords_fu_182_state_address1),
    .ce1(stateAsWords_13_ce1),
    .we1(stateAsWords_13_we1),
    .d1(grp_KeccakP1600OnWords_fu_182_state_d1),
    .q1(stateAsWords_13_q1)
);

KeccakP1600OnWords grp_KeccakP1600OnWords_fu_182(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_KeccakP1600OnWords_fu_182_ap_start),
    .ap_done(grp_KeccakP1600OnWords_fu_182_ap_done),
    .ap_idle(grp_KeccakP1600OnWords_fu_182_ap_idle),
    .ap_ready(grp_KeccakP1600OnWords_fu_182_ap_ready),
    .state_address0(grp_KeccakP1600OnWords_fu_182_state_address0),
    .state_ce0(grp_KeccakP1600OnWords_fu_182_state_ce0),
    .state_we0(grp_KeccakP1600OnWords_fu_182_state_we0),
    .state_d0(grp_KeccakP1600OnWords_fu_182_state_d0),
    .state_q0(grp_KeccakP1600OnWords_fu_182_state_q0),
    .state_address1(grp_KeccakP1600OnWords_fu_182_state_address1),
    .state_ce1(grp_KeccakP1600OnWords_fu_182_state_ce1),
    .state_we1(grp_KeccakP1600OnWords_fu_182_state_we1),
    .state_d1(grp_KeccakP1600OnWords_fu_182_state_d1),
    .state_q1(grp_KeccakP1600OnWords_fu_182_state_q1)
);

fromWordsToBytes grp_fromWordsToBytes_fu_191(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fromWordsToBytes_fu_191_ap_start),
    .ap_done(grp_fromWordsToBytes_fu_191_ap_done),
    .ap_idle(grp_fromWordsToBytes_fu_191_ap_idle),
    .ap_ready(grp_fromWordsToBytes_fu_191_ap_ready),
    .state_address0(grp_fromWordsToBytes_fu_191_state_address0),
    .state_ce0(grp_fromWordsToBytes_fu_191_state_ce0),
    .state_we0(grp_fromWordsToBytes_fu_191_state_we0),
    .state_d0(grp_fromWordsToBytes_fu_191_state_d0),
    .stateAsWords_address0(grp_fromWordsToBytes_fu_191_stateAsWords_address0),
    .stateAsWords_ce0(grp_fromWordsToBytes_fu_191_stateAsWords_ce0),
    .stateAsWords_q0(grp_fromWordsToBytes_fu_191_stateAsWords_q0)
);

fromBytesToWords grp_fromBytesToWords_fu_198(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_fromBytesToWords_fu_198_ap_start),
    .ap_done(grp_fromBytesToWords_fu_198_ap_done),
    .ap_idle(grp_fromBytesToWords_fu_198_ap_idle),
    .ap_ready(grp_fromBytesToWords_fu_198_ap_ready),
    .stateAsWords_address0(grp_fromBytesToWords_fu_198_stateAsWords_address0),
    .stateAsWords_ce0(grp_fromBytesToWords_fu_198_stateAsWords_ce0),
    .stateAsWords_we0(grp_fromBytesToWords_fu_198_stateAsWords_we0),
    .stateAsWords_d0(grp_fromBytesToWords_fu_198_stateAsWords_d0),
    .stateAsWords_q0(grp_fromBytesToWords_fu_198_stateAsWords_q0),
    .state_address0(grp_fromBytesToWords_fu_198_state_address0),
    .state_ce0(grp_fromBytesToWords_fu_198_state_ce0),
    .state_q0(instance_state_q0)
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
        grp_KeccakP1600OnWords_fu_182_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state13) | (1'b1 == ap_CS_fsm_state7))) begin
            grp_KeccakP1600OnWords_fu_182_ap_start_reg <= 1'b1;
        end else if ((grp_KeccakP1600OnWords_fu_182_ap_ready == 1'b1)) begin
            grp_KeccakP1600OnWords_fu_182_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fromBytesToWords_fu_198_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state5) | ((icmp_ln304_fu_240_p2 == 1'd1) & (icmp_ln305_fu_246_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11)))) begin
            grp_fromBytesToWords_fu_198_ap_start_reg <= 1'b1;
        end else if ((grp_fromBytesToWords_fu_198_ap_ready == 1'b1)) begin
            grp_fromBytesToWords_fu_198_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_fromWordsToBytes_fu_191_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state15) | (1'b1 == ap_CS_fsm_state9))) begin
            grp_fromWordsToBytes_fu_191_ap_start_reg <= 1'b1;
        end else if ((grp_fromWordsToBytes_fu_191_ap_ready == 1'b1)) begin
            grp_fromWordsToBytes_fu_191_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        curData_0_idx_reg_146 <= 64'd0;
    end else if (((icmp_ln393_fu_305_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        curData_0_idx_reg_146 <= add_ln331_fu_346_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        i_0_reg_134 <= 33'd0;
    end else if (((icmp_ln393_fu_305_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        i_0_reg_134 <= i_reg_397;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        instance_byteIOIndex_1_reg_123 <= ap_phi_mux_instance_byteIOIndex_2_phi_fu_115_p4;
    end else if (((icmp_ln393_fu_305_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
        instance_byteIOIndex_1_reg_123 <= add_ln332_fu_341_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln299_reg_360 == 1'd1) & (1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
        instance_byteIOIndex_2_reg_112 <= 32'd0;
    end else if (((icmp_ln299_fu_205_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_byteIOIndex_2_reg_112 <= instance_byteIOIndex_read;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        loop_0_i1_reg_171 <= 32'd0;
    end else if ((1'b1 == ap_CS_fsm_state19)) begin
        loop_0_i1_reg_171 <= loop_reg_405;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln305_fu_246_p2 == 1'd0) & (icmp_ln304_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        offset_assign_reg_158 <= instance_byteIOIndex_1_reg_123;
    end else if (((1'b0 == ap_block_state16_on_subcall_done) & (icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        offset_assign_reg_158 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state18) & (icmp_ln393_fu_305_p2 == 1'd0))) begin
        add_ln394_2_reg_415 <= add_ln394_2_fu_335_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state17)) begin
        i_reg_397 <= i_fu_299_p2;
        partialBlock_25_reg_386 <= partialBlock_25_fu_283_p3;
        zext_ln325_reg_392[31 : 0] <= zext_ln325_fu_291_p1[31 : 0];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        icmp_ln299_reg_360 <= icmp_ln299_fu_205_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln304_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
        icmp_ln305_reg_377 <= icmp_ln305_fu_246_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln299_fu_205_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        instance_state_addr_reg_364 <= zext_ln149_fu_211_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        loop_reg_405 <= loop_fu_310_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
        partialBlock_reg_381 <= partialBlock_fu_256_p2;
    end
end

always @ (*) begin
    if ((((icmp_ln304_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11)) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        ap_phi_mux_instance_byteIOIndex_2_phi_fu_115_p4 = 32'd0;
    end else begin
        ap_phi_mux_instance_byteIOIndex_2_phi_fu_115_p4 = instance_byteIOIndex_2_reg_112;
    end
end

always @ (*) begin
    if (((icmp_ln304_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        data_0_ce0 = 1'b1;
    end else begin
        data_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state19)) begin
        data_0_we0 = 1'b1;
    end else begin
        data_0_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_KeccakP1600OnWords_fu_182_state_q0 = stateAsWords_13_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_KeccakP1600OnWords_fu_182_state_q0 = stateAsWords_q0;
    end else begin
        grp_KeccakP1600OnWords_fu_182_state_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        grp_KeccakP1600OnWords_fu_182_state_q1 = stateAsWords_13_q1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        grp_KeccakP1600OnWords_fu_182_state_q1 = stateAsWords_q1;
    end else begin
        grp_KeccakP1600OnWords_fu_182_state_q1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        grp_fromBytesToWords_fu_198_stateAsWords_q0 = stateAsWords_13_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        grp_fromBytesToWords_fu_198_stateAsWords_q0 = stateAsWords_q0;
    end else begin
        grp_fromBytesToWords_fu_198_stateAsWords_q0 = 'bx;
    end
end

always @ (*) begin
    if (((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        grp_fromWordsToBytes_fu_191_stateAsWords_q0 = stateAsWords_13_q0;
    end else if (((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        grp_fromWordsToBytes_fu_191_stateAsWords_q0 = stateAsWords_q0;
    end else begin
        grp_fromWordsToBytes_fu_191_stateAsWords_q0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        instance_state_address0 = zext_ln394_fu_322_p1;
    end else if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_address0 = instance_state_addr_1_reg_369;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        instance_state_address0 = 64'd167;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_address0 = instance_state_addr_reg_364;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        instance_state_address0 = zext_ln149_fu_211_p1;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6))) begin
        instance_state_address0 = grp_fromBytesToWords_fu_198_state_address0;
    end else if ((((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10)))) begin
        instance_state_address0 = grp_fromWordsToBytes_fu_191_state_address0;
    end else begin
        instance_state_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2) | (1'b1 == ap_CS_fsm_state18) | ((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1)))) begin
        instance_state_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state12) | (1'b1 == ap_CS_fsm_state6))) begin
        instance_state_ce0 = grp_fromBytesToWords_fu_198_state_ce0;
    end else if ((((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10)))) begin
        instance_state_ce0 = grp_fromWordsToBytes_fu_191_state_ce0;
    end else begin
        instance_state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        instance_state_d0 = xor_ln149_16_fu_223_p2;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        instance_state_d0 = xor_ln149_fu_216_p2;
    end else if ((((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10)))) begin
        instance_state_d0 = grp_fromWordsToBytes_fu_191_state_d0;
    end else begin
        instance_state_d0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) | (1'b1 == ap_CS_fsm_state2))) begin
        instance_state_we0 = 1'b1;
    end else if ((((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16)) | ((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10)))) begin
        instance_state_we0 = grp_fromWordsToBytes_fu_191_state_we0;
    end else begin
        instance_state_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        stateAsWords_13_address0 = grp_fromBytesToWords_fu_198_stateAsWords_address0;
    end else if (((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        stateAsWords_13_address0 = grp_fromWordsToBytes_fu_191_stateAsWords_address0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_address0 = grp_KeccakP1600OnWords_fu_182_state_address0;
    end else begin
        stateAsWords_13_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        stateAsWords_13_ce0 = grp_fromBytesToWords_fu_198_stateAsWords_ce0;
    end else if (((icmp_ln305_reg_377 == 1'd1) & (1'b1 == ap_CS_fsm_state16))) begin
        stateAsWords_13_ce0 = grp_fromWordsToBytes_fu_191_stateAsWords_ce0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_ce0 = grp_KeccakP1600OnWords_fu_182_state_ce0;
    end else begin
        stateAsWords_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_ce1 = grp_KeccakP1600OnWords_fu_182_state_ce1;
    end else begin
        stateAsWords_13_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        stateAsWords_13_d0 = grp_fromBytesToWords_fu_198_stateAsWords_d0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_d0 = grp_KeccakP1600OnWords_fu_182_state_d0;
    end else begin
        stateAsWords_13_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state12)) begin
        stateAsWords_13_we0 = grp_fromBytesToWords_fu_198_stateAsWords_we0;
    end else if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_we0 = grp_KeccakP1600OnWords_fu_182_state_we0;
    end else begin
        stateAsWords_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state14)) begin
        stateAsWords_13_we1 = grp_KeccakP1600OnWords_fu_182_state_we1;
    end else begin
        stateAsWords_13_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_address0 = grp_fromBytesToWords_fu_198_stateAsWords_address0;
    end else if (((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        stateAsWords_address0 = grp_fromWordsToBytes_fu_191_stateAsWords_address0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_address0 = grp_KeccakP1600OnWords_fu_182_state_address0;
    end else begin
        stateAsWords_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_ce0 = grp_fromBytesToWords_fu_198_stateAsWords_ce0;
    end else if (((icmp_ln299_reg_360 == 1'd1) & (1'b1 == ap_CS_fsm_state10))) begin
        stateAsWords_ce0 = grp_fromWordsToBytes_fu_191_stateAsWords_ce0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_ce0 = grp_KeccakP1600OnWords_fu_182_state_ce0;
    end else begin
        stateAsWords_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_ce1 = grp_KeccakP1600OnWords_fu_182_state_ce1;
    end else begin
        stateAsWords_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_d0 = grp_fromBytesToWords_fu_198_stateAsWords_d0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_d0 = grp_KeccakP1600OnWords_fu_182_state_d0;
    end else begin
        stateAsWords_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        stateAsWords_we0 = grp_fromBytesToWords_fu_198_stateAsWords_we0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_we0 = grp_KeccakP1600OnWords_fu_182_state_we0;
    end else begin
        stateAsWords_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        stateAsWords_we1 = grp_KeccakP1600OnWords_fu_182_state_we1;
    end else begin
        stateAsWords_we1 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((icmp_ln299_fu_205_p2 == 1'd0) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else if (((icmp_ln299_fu_205_p2 == 1'd1) & (ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_fromBytesToWords_fu_198_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if (((1'b1 == ap_CS_fsm_state8) & (grp_KeccakP1600OnWords_fu_182_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            ap_NS_fsm = ap_ST_fsm_state10;
        end
        ap_ST_fsm_state10 : begin
            if (((1'b0 == ap_block_state10_on_subcall_done) & (1'b1 == ap_CS_fsm_state10))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state11 : begin
            if (((icmp_ln304_fu_240_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else if (((icmp_ln305_fu_246_p2 == 1'd0) & (icmp_ln304_fu_240_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state11))) begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state12 : begin
            if (((1'b1 == ap_CS_fsm_state12) & (grp_fromBytesToWords_fu_198_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state12;
            end
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            if (((1'b1 == ap_CS_fsm_state14) & (grp_KeccakP1600OnWords_fu_182_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state14;
            end
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            if (((1'b0 == ap_block_state16_on_subcall_done) & (1'b1 == ap_CS_fsm_state16))) begin
                ap_NS_fsm = ap_ST_fsm_state17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state16;
            end
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            if (((icmp_ln393_fu_305_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state18))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state19;
            end
        end
        ap_ST_fsm_state19 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln323_fu_265_p2 = (offset_assign_reg_158 + zext_ln322_fu_262_p1);

assign add_ln331_fu_346_p2 = (zext_ln325_reg_392 + curData_0_idx_reg_146);

assign add_ln332_fu_341_p2 = (offset_assign_reg_158 + partialBlock_25_reg_386);

assign add_ln394_2_fu_335_p2 = (trunc_ln304_fu_331_p1 + trunc_ln394_fu_327_p1);

assign add_ln394_fu_316_p2 = (loop_0_i1_reg_171 + offset_assign_reg_158);

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

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state10_on_subcall_done = ((icmp_ln299_reg_360 == 1'd1) & (grp_fromWordsToBytes_fu_191_ap_done == 1'b0));
end

always @ (*) begin
    ap_block_state16_on_subcall_done = ((icmp_ln305_reg_377 == 1'd1) & (grp_fromWordsToBytes_fu_191_ap_done == 1'b0));
end

assign data_0_address0 = zext_ln394_2_fu_351_p1;

assign data_0_d0 = instance_state_q0;

assign grp_KeccakP1600OnWords_fu_182_ap_start = grp_KeccakP1600OnWords_fu_182_ap_start_reg;

assign grp_fromBytesToWords_fu_198_ap_start = grp_fromBytesToWords_fu_198_ap_start_reg;

assign grp_fromWordsToBytes_fu_191_ap_start = grp_fromWordsToBytes_fu_191_ap_start_reg;

assign i_fu_299_p2 = (zext_ln325_3_fu_295_p1 + i_0_reg_134);

assign icmp_ln299_fu_205_p2 = ((instance_squeezing_read == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln304_fu_240_p2 = ((tmp_fu_230_p4 == 28'd0) ? 1'b1 : 1'b0);

assign icmp_ln305_fu_246_p2 = ((instance_byteIOIndex_1_reg_123 == 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln323_fu_271_p2 = ((add_ln323_fu_265_p2 > 32'd168) ? 1'b1 : 1'b0);

assign icmp_ln393_fu_305_p2 = ((loop_0_i1_reg_171 == partialBlock_25_reg_386) ? 1'b1 : 1'b0);

assign instance_state_addr_1_reg_369 = 64'd167;

assign loop_fu_310_p2 = (loop_0_i1_reg_171 + 32'd1);

assign partialBlock_24_fu_277_p2 = (32'd168 - offset_assign_reg_158);

assign partialBlock_25_fu_283_p3 = ((icmp_ln323_fu_271_p2[0:0] === 1'b1) ? partialBlock_24_fu_277_p2 : zext_ln322_fu_262_p1);

assign partialBlock_fu_256_p2 = ($signed(6'd32) - $signed(trunc_ln322_fu_252_p1));

assign tmp_fu_230_p4 = {{i_0_reg_134[32:5]}};

assign trunc_ln304_fu_331_p1 = curData_0_idx_reg_146[6:0];

assign trunc_ln322_fu_252_p1 = i_0_reg_134[5:0];

assign trunc_ln394_fu_327_p1 = loop_0_i1_reg_171[6:0];

assign xor_ln149_16_fu_223_p2 = (instance_state_q0 ^ 8'd128);

assign xor_ln149_fu_216_p2 = (instance_state_q0 ^ 8'd1);

assign zext_ln149_fu_211_p1 = instance_byteIOIndex_read;

assign zext_ln322_fu_262_p1 = partialBlock_reg_381;

assign zext_ln325_3_fu_295_p1 = partialBlock_25_fu_283_p3;

assign zext_ln325_fu_291_p1 = partialBlock_25_fu_283_p3;

assign zext_ln394_2_fu_351_p1 = add_ln394_2_reg_415;

assign zext_ln394_fu_322_p1 = add_ln394_fu_316_p2;

always @ (posedge ap_clk) begin
    zext_ln325_reg_392[63:32] <= 32'b00000000000000000000000000000000;
end

endmodule //KeccakWidth1600_Spon_3
