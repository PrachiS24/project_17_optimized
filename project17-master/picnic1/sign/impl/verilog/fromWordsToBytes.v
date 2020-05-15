// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module fromWordsToBytes (
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
        stateAsWords_address0,
        stateAsWords_ce0,
        stateAsWords_q0
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state5 = 3'd4;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] state_address0;
output   state_ce0;
output   state_we0;
output  [7:0] state_d0;
output  [4:0] stateAsWords_address0;
output   stateAsWords_ce0;
input  [63:0] stateAsWords_q0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg state_ce0;
reg state_we0;
reg stateAsWords_ce0;

(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [7:0] indvar_flatten_reg_78;
reg   [4:0] i_0_reg_89;
reg   [3:0] j_0_reg_100;
wire   [0:0] icmp_ln280_fu_111_p2;
reg   [0:0] icmp_ln280_reg_208;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_pp0_stage0_11001;
reg   [0:0] icmp_ln280_reg_208_pp0_iter1_reg;
wire   [7:0] add_ln280_fu_117_p2;
reg    ap_enable_reg_pp0_iter0;
wire   [3:0] select_ln280_fu_135_p3;
reg   [3:0] select_ln280_reg_217;
reg   [3:0] select_ln280_reg_217_pp0_iter1_reg;
wire   [4:0] select_ln280_1_fu_143_p3;
reg   [4:0] select_ln280_1_reg_222;
reg   [4:0] select_ln280_1_reg_222_pp0_iter1_reg;
wire   [2:0] trunc_ln282_fu_156_p1;
reg   [2:0] trunc_ln282_reg_233;
wire   [3:0] j_fu_160_p2;
wire   [7:0] trunc_ln282_1_fu_183_p1;
reg   [7:0] trunc_ln282_1_reg_243;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg   [4:0] ap_phi_mux_i_0_phi_fu_93_p4;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln280_fu_151_p1;
wire   [63:0] zext_ln282_1_fu_203_p1;
wire   [0:0] icmp_ln281_fu_129_p2;
wire   [4:0] i_fu_123_p2;
wire   [5:0] shl_ln_fu_166_p3;
wire   [63:0] zext_ln282_fu_173_p1;
wire   [63:0] lshr_ln282_fu_177_p2;
wire   [7:0] zext_ln281_fu_194_p1;
wire   [7:0] shl_ln282_1_mid2_fu_187_p3;
wire   [7:0] add_ln282_fu_197_p2;
wire    ap_CS_fsm_state5;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
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
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_condition_pp0_exit_iter0_state2) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_reg_208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_0_reg_89 <= select_ln280_1_reg_222;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        i_0_reg_89 <= 5'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_fu_111_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_78 <= add_ln280_fu_117_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        indvar_flatten_reg_78 <= 8'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_fu_111_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_0_reg_100 <= j_fu_160_p2;
    end else if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        j_0_reg_100 <= 4'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln280_reg_208 <= icmp_ln280_fu_111_p2;
        icmp_ln280_reg_208_pp0_iter1_reg <= icmp_ln280_reg_208;
        select_ln280_1_reg_222_pp0_iter1_reg <= select_ln280_1_reg_222;
        select_ln280_reg_217_pp0_iter1_reg <= select_ln280_reg_217;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_fu_111_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln280_1_reg_222 <= select_ln280_1_fu_143_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_fu_111_p2 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln280_reg_217 <= select_ln280_fu_135_p3;
        trunc_ln282_reg_233 <= trunc_ln282_fu_156_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln280_reg_208 == 1'd0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        trunc_ln282_1_reg_243 <= trunc_ln282_1_fu_183_p1;
    end
end

always @ (*) begin
    if ((icmp_ln280_fu_111_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) | ((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1)))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln280_reg_208 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b0 == ap_block_pp0_stage0))) begin
        ap_phi_mux_i_0_phi_fu_93_p4 = select_ln280_1_reg_222;
    end else begin
        ap_phi_mux_i_0_phi_fu_93_p4 = i_0_reg_89;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        stateAsWords_ce0 = 1'b1;
    end else begin
        stateAsWords_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        state_ce0 = 1'b1;
    end else begin
        state_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln280_reg_208_pp0_iter1_reg == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        state_we0 = 1'b1;
    end else begin
        state_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((ap_start == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln280_fu_111_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)) & ~((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1)) | ((ap_enable_reg_pp0_iter1 == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (icmp_ln280_fu_111_p2 == 1'd1) & (ap_enable_reg_pp0_iter0 == 1'b1)))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln280_fu_117_p2 = (indvar_flatten_reg_78 + 8'd1);

assign add_ln282_fu_197_p2 = (zext_ln281_fu_194_p1 + shl_ln282_1_mid2_fu_187_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign i_fu_123_p2 = (5'd1 + ap_phi_mux_i_0_phi_fu_93_p4);

assign icmp_ln280_fu_111_p2 = ((indvar_flatten_reg_78 == 8'd200) ? 1'b1 : 1'b0);

assign icmp_ln281_fu_129_p2 = ((j_0_reg_100 == 4'd8) ? 1'b1 : 1'b0);

assign j_fu_160_p2 = (4'd1 + select_ln280_fu_135_p3);

assign lshr_ln282_fu_177_p2 = stateAsWords_q0 >> zext_ln282_fu_173_p1;

assign select_ln280_1_fu_143_p3 = ((icmp_ln281_fu_129_p2[0:0] === 1'b1) ? i_fu_123_p2 : ap_phi_mux_i_0_phi_fu_93_p4);

assign select_ln280_fu_135_p3 = ((icmp_ln281_fu_129_p2[0:0] === 1'b1) ? 4'd0 : j_0_reg_100);

assign shl_ln282_1_mid2_fu_187_p3 = {{select_ln280_1_reg_222_pp0_iter1_reg}, {3'd0}};

assign shl_ln_fu_166_p3 = {{trunc_ln282_reg_233}, {3'd0}};

assign stateAsWords_address0 = zext_ln280_fu_151_p1;

assign state_address0 = zext_ln282_1_fu_203_p1;

assign state_d0 = trunc_ln282_1_reg_243;

assign trunc_ln282_1_fu_183_p1 = lshr_ln282_fu_177_p2[7:0];

assign trunc_ln282_fu_156_p1 = select_ln280_fu_135_p3[2:0];

assign zext_ln280_fu_151_p1 = select_ln280_1_fu_143_p3;

assign zext_ln281_fu_194_p1 = select_ln280_reg_217_pp0_iter1_reg;

assign zext_ln282_1_fu_203_p1 = add_ln282_fu_197_p2;

assign zext_ln282_fu_173_p1 = shl_ln_fu_166_p3;

endmodule //fromWordsToBytes
