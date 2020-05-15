// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
// Version: 2019.2
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="crypto_sign,hls_ip_2019_2,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7a200t-fbg676-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=8.750000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=468,HLS_SYN_DSP=5,HLS_SYN_FF=46135,HLS_SYN_LUT=104855,HLS_VERSION=2019_2}" *)

module crypto_sign (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        sm_address0,
        sm_ce0,
        sm_we0,
        sm_d0,
        sm_address1,
        sm_ce1,
        sm_we1,
        sm_d1,
        smlen_address0,
        smlen_ce0,
        smlen_we0,
        smlen_d0,
        m_address0,
        m_ce0,
        m_q0,
        mlen,
        sk_address0,
        sk_ce0,
        sk_q0,
        sk_address1,
        sk_ce1,
        sk_q1,
        viewOutputs_address0,
        viewOutputs_ce0,
        viewOutputs_we0,
        viewOutputs_d0,
        viewOutputs_q0,
        viewOutputs_address1,
        viewOutputs_ce1,
        viewOutputs_q1,
        ap_return
);

parameter    ap_ST_fsm_state1 = 11'd1;
parameter    ap_ST_fsm_state2 = 11'd2;
parameter    ap_ST_fsm_state3 = 11'd4;
parameter    ap_ST_fsm_state4 = 11'd8;
parameter    ap_ST_fsm_state5 = 11'd16;
parameter    ap_ST_fsm_state6 = 11'd32;
parameter    ap_ST_fsm_state7 = 11'd64;
parameter    ap_ST_fsm_state8 = 11'd128;
parameter    ap_ST_fsm_state9 = 11'd256;
parameter    ap_ST_fsm_state10 = 11'd512;
parameter    ap_ST_fsm_state11 = 11'd1024;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [15:0] sm_address0;
output   sm_ce0;
output   sm_we0;
output  [7:0] sm_d0;
output  [15:0] sm_address1;
output   sm_ce1;
output   sm_we1;
output  [7:0] sm_d1;
output  [0:0] smlen_address0;
output   smlen_ce0;
output   smlen_we0;
output  [63:0] smlen_d0;
output  [11:0] m_address0;
output   m_ce0;
input  [7:0] m_q0;
input  [63:0] mlen;
output  [5:0] sk_address0;
output   sk_ce0;
input  [7:0] sk_q0;
output  [5:0] sk_address1;
output   sk_ce1;
input  [7:0] sk_q1;
output  [13:0] viewOutputs_address0;
output   viewOutputs_ce0;
output   viewOutputs_we0;
output  [31:0] viewOutputs_d0;
input  [31:0] viewOutputs_q0;
output  [13:0] viewOutputs_address1;
output   viewOutputs_ce1;
input  [31:0] viewOutputs_q1;
output  [31:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] sm_address0;
reg sm_ce0;
reg sm_we0;
reg[7:0] sm_d0;
reg[15:0] sm_address1;
reg sm_ce1;
reg sm_we1;
reg[7:0] sm_d1;
reg smlen_ce0;
reg smlen_we0;
reg[11:0] m_address0;
reg m_ce0;
reg[5:0] sk_address0;
reg sk_ce0;
reg sk_ce1;

(* fsm_encoding = "none" *) reg   [10:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire   [0:0] empty_96_fu_425_p2;
reg   [0:0] empty_96_reg_578;
wire   [63:0] zext_ln657_fu_431_p1;
reg   [63:0] zext_ln657_reg_582;
wire    ap_CS_fsm_state3;
wire   [5:0] sext_ln657_i_cast_fu_435_p1;
reg   [5:0] sext_ln657_i_cast_reg_589;
wire   [4:0] loop_22_fu_445_p2;
reg   [4:0] loop_22_reg_598;
wire   [0:0] icmp_ln657_fu_439_p2;
wire   [31:0] select_ln625_fu_456_p3;
wire   [63:0] add_ln100_fu_464_p2;
reg   [63:0] add_ln100_reg_613;
reg   [0:0] ap_phi_mux_ret_phi_fu_287_p4;
wire    ap_CS_fsm_state4;
wire    ap_CS_fsm_state6;
wire    grp_picnic_sign_fu_324_ap_ready;
wire    grp_picnic_sign_fu_324_ap_done;
wire   [63:0] add_ln108_fu_510_p2;
reg   [63:0] add_ln108_reg_640;
wire   [0:0] icmp_ln101_fu_498_p2;
wire   [0:0] icmp_ln104_fu_504_p2;
wire   [7:0] trunc_ln111_fu_515_p1;
reg   [7:0] trunc_ln111_reg_645;
reg   [7:0] trunc_ln_reg_650;
wire   [31:0] loop_fu_539_p2;
reg   [31:0] loop_reg_658;
wire    ap_CS_fsm_state9;
wire   [0:0] icmp_ln119_fu_534_p2;
reg   [4:0] secret_data_address0;
reg    secret_data_ce0;
reg    secret_data_we0;
wire   [7:0] secret_data_q0;
reg    secret_data_ce1;
wire   [7:0] secret_data_q1;
reg   [4:0] secret_pk_plaintext_address0;
reg    secret_pk_plaintext_ce0;
reg    secret_pk_plaintext_we0;
wire   [7:0] secret_pk_plaintext_q0;
reg    secret_pk_plaintext_ce1;
wire   [7:0] secret_pk_plaintext_q1;
reg   [4:0] secret_pk_ciphertext_address0;
reg    secret_pk_ciphertext_ce0;
reg    secret_pk_ciphertext_we0;
wire   [7:0] secret_pk_ciphertext_q0;
reg    secret_pk_ciphertext_ce1;
wire   [7:0] secret_pk_ciphertext_q1;
wire    grp_picnic_sign_fu_324_ap_start;
wire    grp_picnic_sign_fu_324_ap_idle;
wire   [4:0] grp_picnic_sign_fu_324_sk_data_address0;
wire    grp_picnic_sign_fu_324_sk_data_ce0;
wire   [4:0] grp_picnic_sign_fu_324_sk_data_address1;
wire    grp_picnic_sign_fu_324_sk_data_ce1;
wire   [4:0] grp_picnic_sign_fu_324_sk_pk_plaintext_address0;
wire    grp_picnic_sign_fu_324_sk_pk_plaintext_ce0;
wire   [4:0] grp_picnic_sign_fu_324_sk_pk_plaintext_address1;
wire    grp_picnic_sign_fu_324_sk_pk_plaintext_ce1;
wire   [4:0] grp_picnic_sign_fu_324_sk_pk_ciphertext_address0;
wire    grp_picnic_sign_fu_324_sk_pk_ciphertext_ce0;
wire   [4:0] grp_picnic_sign_fu_324_sk_pk_ciphertext_address1;
wire    grp_picnic_sign_fu_324_sk_pk_ciphertext_ce1;
wire   [11:0] grp_picnic_sign_fu_324_message_address0;
wire    grp_picnic_sign_fu_324_message_ce0;
wire   [15:0] grp_picnic_sign_fu_324_signature_address0;
wire    grp_picnic_sign_fu_324_signature_ce0;
wire    grp_picnic_sign_fu_324_signature_we0;
wire   [7:0] grp_picnic_sign_fu_324_signature_d0;
wire   [13:0] grp_picnic_sign_fu_324_viewOutputs_address0;
wire    grp_picnic_sign_fu_324_viewOutputs_ce0;
wire    grp_picnic_sign_fu_324_viewOutputs_we0;
wire   [31:0] grp_picnic_sign_fu_324_viewOutputs_d0;
wire   [13:0] grp_picnic_sign_fu_324_viewOutputs_address1;
wire    grp_picnic_sign_fu_324_viewOutputs_ce1;
wire   [31:0] grp_picnic_sign_fu_324_ap_return_0;
wire   [63:0] grp_picnic_sign_fu_324_ap_return_1;
reg   [4:0] loop_0_i_reg_272;
wire    ap_CS_fsm_state5;
reg   [0:0] ret_reg_283;
reg  signed [31:0] loop_0_reg_295;
wire    ap_CS_fsm_state8;
wire    ap_CS_fsm_state10;
reg   [31:0] p_0_reg_307;
reg    grp_picnic_sign_fu_324_ap_start_reg;
wire   [63:0] zext_ln658_fu_451_p1;
wire   [63:0] zext_ln659_fu_475_p1;
wire   [63:0] zext_ln660_fu_485_p1;
wire    ap_CS_fsm_state7;
wire  signed [63:0] sext_ln119_fu_529_p1;
wire  signed [63:0] sext_ln120_fu_551_p1;
wire   [3:0] trunc_ln632_fu_349_p1;
wire   [0:0] empty_85_fu_359_p2;
wire   [0:0] empty_fu_353_p2;
wire   [0:0] empty_87_fu_371_p2;
wire   [0:0] empty_86_fu_365_p2;
wire   [0:0] empty_89_fu_383_p2;
wire   [0:0] empty_88_fu_377_p2;
wire   [0:0] empty_91_fu_395_p2;
wire   [0:0] empty_90_fu_389_p2;
wire   [0:0] empty_93_fu_407_p2;
wire   [0:0] empty_92_fu_401_p2;
wire   [0:0] empty_95_fu_419_p2;
wire   [0:0] empty_94_fu_413_p2;
wire   [5:0] add_ln659_fu_470_p2;
wire   [5:0] add_ln660_fu_480_p2;
wire   [31:0] add_ln120_fu_545_p2;
wire    ap_CS_fsm_state11;
reg   [10:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 11'd1;
#0 grp_picnic_sign_fu_324_ap_start_reg = 1'b0;
end

crypto_sign_secrebJp #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
secret_data_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(secret_data_address0),
    .ce0(secret_data_ce0),
    .we0(secret_data_we0),
    .d0(sk_q0),
    .q0(secret_data_q0),
    .address1(grp_picnic_sign_fu_324_sk_data_address1),
    .ce1(secret_data_ce1),
    .q1(secret_data_q1)
);

crypto_sign_secrebJp #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
secret_pk_plaintext_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(secret_pk_plaintext_address0),
    .ce0(secret_pk_plaintext_ce0),
    .we0(secret_pk_plaintext_we0),
    .d0(sk_q1),
    .q0(secret_pk_plaintext_q0),
    .address1(grp_picnic_sign_fu_324_sk_pk_plaintext_address1),
    .ce1(secret_pk_plaintext_ce1),
    .q1(secret_pk_plaintext_q1)
);

crypto_sign_secrebJp #(
    .DataWidth( 8 ),
    .AddressRange( 32 ),
    .AddressWidth( 5 ))
secret_pk_ciphertext_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(secret_pk_ciphertext_address0),
    .ce0(secret_pk_ciphertext_ce0),
    .we0(secret_pk_ciphertext_we0),
    .d0(sk_q0),
    .q0(secret_pk_ciphertext_q0),
    .address1(grp_picnic_sign_fu_324_sk_pk_ciphertext_address1),
    .ce1(secret_pk_ciphertext_ce1),
    .q1(secret_pk_ciphertext_q1)
);

picnic_sign grp_picnic_sign_fu_324(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_picnic_sign_fu_324_ap_start),
    .ap_done(grp_picnic_sign_fu_324_ap_done),
    .ap_idle(grp_picnic_sign_fu_324_ap_idle),
    .ap_ready(grp_picnic_sign_fu_324_ap_ready),
    .sk_data_address0(grp_picnic_sign_fu_324_sk_data_address0),
    .sk_data_ce0(grp_picnic_sign_fu_324_sk_data_ce0),
    .sk_data_q0(secret_data_q0),
    .sk_data_address1(grp_picnic_sign_fu_324_sk_data_address1),
    .sk_data_ce1(grp_picnic_sign_fu_324_sk_data_ce1),
    .sk_data_q1(secret_data_q1),
    .sk_pk_plaintext_address0(grp_picnic_sign_fu_324_sk_pk_plaintext_address0),
    .sk_pk_plaintext_ce0(grp_picnic_sign_fu_324_sk_pk_plaintext_ce0),
    .sk_pk_plaintext_q0(secret_pk_plaintext_q0),
    .sk_pk_plaintext_address1(grp_picnic_sign_fu_324_sk_pk_plaintext_address1),
    .sk_pk_plaintext_ce1(grp_picnic_sign_fu_324_sk_pk_plaintext_ce1),
    .sk_pk_plaintext_q1(secret_pk_plaintext_q1),
    .sk_pk_ciphertext_address0(grp_picnic_sign_fu_324_sk_pk_ciphertext_address0),
    .sk_pk_ciphertext_ce0(grp_picnic_sign_fu_324_sk_pk_ciphertext_ce0),
    .sk_pk_ciphertext_q0(secret_pk_ciphertext_q0),
    .sk_pk_ciphertext_address1(grp_picnic_sign_fu_324_sk_pk_ciphertext_address1),
    .sk_pk_ciphertext_ce1(grp_picnic_sign_fu_324_sk_pk_ciphertext_ce1),
    .sk_pk_ciphertext_q1(secret_pk_ciphertext_q1),
    .message_address0(grp_picnic_sign_fu_324_message_address0),
    .message_ce0(grp_picnic_sign_fu_324_message_ce0),
    .message_q0(m_q0),
    .message_len(mlen),
    .signature_address0(grp_picnic_sign_fu_324_signature_address0),
    .signature_ce0(grp_picnic_sign_fu_324_signature_ce0),
    .signature_we0(grp_picnic_sign_fu_324_signature_we0),
    .signature_d0(grp_picnic_sign_fu_324_signature_d0),
    .signature_offset(add_ln100_reg_613),
    .viewOutputs_address0(grp_picnic_sign_fu_324_viewOutputs_address0),
    .viewOutputs_ce0(grp_picnic_sign_fu_324_viewOutputs_ce0),
    .viewOutputs_we0(grp_picnic_sign_fu_324_viewOutputs_we0),
    .viewOutputs_d0(grp_picnic_sign_fu_324_viewOutputs_d0),
    .viewOutputs_q0(viewOutputs_q0),
    .viewOutputs_address1(grp_picnic_sign_fu_324_viewOutputs_address1),
    .viewOutputs_ce1(grp_picnic_sign_fu_324_viewOutputs_ce1),
    .viewOutputs_q1(viewOutputs_q1),
    .ap_return_0(grp_picnic_sign_fu_324_ap_return_0),
    .ap_return_1(grp_picnic_sign_fu_324_ap_return_1)
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
        grp_picnic_sign_fu_324_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state3) & (((empty_96_reg_578 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0)) | ((icmp_ln657_fu_439_p2 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0))))) begin
            grp_picnic_sign_fu_324_ap_start_reg <= 1'b1;
        end else if ((grp_picnic_sign_fu_324_ap_ready == 1'b1)) begin
            grp_picnic_sign_fu_324_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((empty_96_fu_425_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        loop_0_i_reg_272 <= 5'd0;
    end else if ((1'b1 == ap_CS_fsm_state5)) begin
        loop_0_i_reg_272 <= loop_22_reg_598;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        loop_0_reg_295 <= loop_reg_658;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        loop_0_reg_295 <= 32'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln119_fu_534_p2 == 1'd0))) begin
        p_0_reg_307 <= 32'd0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_picnic_sign_fu_324_ap_done == 1'b1) & (icmp_ln104_fu_504_p2 == 1'd1) & (icmp_ln101_fu_498_p2 == 1'd1))) begin
        p_0_reg_307 <= 32'd4294967295;
    end else if (((1'b1 == ap_CS_fsm_state6) & (grp_picnic_sign_fu_324_ap_done == 1'b1) & (icmp_ln101_fu_498_p2 == 1'd0))) begin
        p_0_reg_307 <= grp_picnic_sign_fu_324_ap_return_0;
    end else if (((1'b1 == ap_CS_fsm_state3) & (((empty_96_reg_578 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd1)) | ((ap_phi_mux_ret_phi_fu_287_p4 == 1'd1) & (icmp_ln657_fu_439_p2 == 1'd1))))) begin
        p_0_reg_307 <= select_ln625_fu_456_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_96_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln657_fu_439_p2 == 1'd1))) begin
        ret_reg_283 <= 1'd0;
    end else if (((empty_96_fu_425_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ret_reg_283 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state3) & (((empty_96_reg_578 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0)) | ((icmp_ln657_fu_439_p2 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0))))) begin
        add_ln100_reg_613 <= add_ln100_fu_464_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state6) & (grp_picnic_sign_fu_324_ap_done == 1'b1) & (icmp_ln101_fu_498_p2 == 1'd1) & (icmp_ln104_fu_504_p2 == 1'd0))) begin
        add_ln108_reg_640 <= add_ln108_fu_510_p2;
        trunc_ln111_reg_645 <= trunc_ln111_fu_515_p1;
        trunc_ln_reg_650 <= {{grp_picnic_sign_fu_324_ap_return_1[15:8]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        empty_96_reg_578 <= empty_96_fu_425_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((empty_96_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        loop_22_reg_598 <= loop_22_fu_445_p2;
        sext_ln657_i_cast_reg_589[4 : 0] <= sext_ln657_i_cast_fu_435_p1[4 : 0];
        zext_ln657_reg_582[4 : 0] <= zext_ln657_fu_431_p1[4 : 0];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        loop_reg_658 <= loop_fu_539_p2;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
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
    if (((empty_96_reg_578 == 1'd0) & (1'b1 == ap_CS_fsm_state3) & (icmp_ln657_fu_439_p2 == 1'd1))) begin
        ap_phi_mux_ret_phi_fu_287_p4 = 1'd0;
    end else begin
        ap_phi_mux_ret_phi_fu_287_p4 = ret_reg_283;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m_address0 = sext_ln119_fu_529_p1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m_address0 = grp_picnic_sign_fu_324_message_address0;
    end else begin
        m_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        m_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        m_ce0 = grp_picnic_sign_fu_324_message_ce0;
    end else begin
        m_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        secret_data_address0 = zext_ln657_reg_582;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_data_address0 = grp_picnic_sign_fu_324_sk_data_address0;
    end else begin
        secret_data_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        secret_data_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_data_ce0 = grp_picnic_sign_fu_324_sk_data_ce0;
    end else begin
        secret_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_data_ce1 = grp_picnic_sign_fu_324_sk_data_ce1;
    end else begin
        secret_data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        secret_data_we0 = 1'b1;
    end else begin
        secret_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_ciphertext_address0 = zext_ln657_reg_582;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_ciphertext_address0 = grp_picnic_sign_fu_324_sk_pk_ciphertext_address0;
    end else begin
        secret_pk_ciphertext_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_ciphertext_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_ciphertext_ce0 = grp_picnic_sign_fu_324_sk_pk_ciphertext_ce0;
    end else begin
        secret_pk_ciphertext_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_ciphertext_ce1 = grp_picnic_sign_fu_324_sk_pk_ciphertext_ce1;
    end else begin
        secret_pk_ciphertext_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_ciphertext_we0 = 1'b1;
    end else begin
        secret_pk_ciphertext_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_plaintext_address0 = zext_ln657_reg_582;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_plaintext_address0 = grp_picnic_sign_fu_324_sk_pk_plaintext_address0;
    end else begin
        secret_pk_plaintext_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_plaintext_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_plaintext_ce0 = grp_picnic_sign_fu_324_sk_pk_plaintext_ce0;
    end else begin
        secret_pk_plaintext_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        secret_pk_plaintext_ce1 = grp_picnic_sign_fu_324_sk_pk_plaintext_ce1;
    end else begin
        secret_pk_plaintext_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        secret_pk_plaintext_we0 = 1'b1;
    end else begin
        secret_pk_plaintext_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sk_address0 = zext_ln659_fu_475_p1;
    end else if ((1'b1 == ap_CS_fsm_state3)) begin
        sk_address0 = zext_ln658_fu_451_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sk_address0 = 64'd0;
    end else begin
        sk_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state3) | (1'b1 == ap_CS_fsm_state4) | ((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1)))) begin
        sk_ce0 = 1'b1;
    end else begin
        sk_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        sk_ce1 = 1'b1;
    end else begin
        sk_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sm_address0 = sext_ln120_fu_551_p1;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sm_address0 = 64'd2;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sm_address0 = 64'd0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sm_address0 = grp_picnic_sign_fu_324_signature_address0;
    end else begin
        sm_address0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sm_address1 = 64'd3;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sm_address1 = 64'd1;
    end else begin
        sm_address1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
        sm_ce0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sm_ce0 = grp_picnic_sign_fu_324_signature_ce0;
    end else begin
        sm_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8))) begin
        sm_ce1 = 1'b1;
    end else begin
        sm_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state10)) begin
        sm_d0 = m_q0;
    end else if ((1'b1 == ap_CS_fsm_state8)) begin
        sm_d0 = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sm_d0 = trunc_ln111_reg_645;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sm_d0 = grp_picnic_sign_fu_324_signature_d0;
    end else begin
        sm_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state8)) begin
        sm_d1 = 8'd0;
    end else if ((1'b1 == ap_CS_fsm_state7)) begin
        sm_d1 = trunc_ln_reg_650;
    end else begin
        sm_d1 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state10) | (1'b1 == ap_CS_fsm_state8))) begin
        sm_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        sm_we0 = grp_picnic_sign_fu_324_signature_we0;
    end else begin
        sm_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) | (1'b1 == ap_CS_fsm_state8))) begin
        sm_we1 = 1'b1;
    end else begin
        sm_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        smlen_ce0 = 1'b1;
    end else begin
        smlen_ce0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        smlen_we0 = 1'b1;
    end else begin
        smlen_we0 = 1'b0;
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
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((1'b1 == ap_CS_fsm_state3) & (((empty_96_reg_578 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd1)) | ((ap_phi_mux_ret_phi_fu_287_p4 == 1'd1) & (icmp_ln657_fu_439_p2 == 1'd1))))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else if (((1'b1 == ap_CS_fsm_state3) & (((empty_96_reg_578 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0)) | ((icmp_ln657_fu_439_p2 == 1'd1) & (ap_phi_mux_ret_phi_fu_287_p4 == 1'd0))))) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state6 : begin
            if (((1'b1 == ap_CS_fsm_state6) & (grp_picnic_sign_fu_324_ap_done == 1'b1) & (icmp_ln101_fu_498_p2 == 1'd1) & (icmp_ln104_fu_504_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else if (((1'b1 == ap_CS_fsm_state6) & (grp_picnic_sign_fu_324_ap_done == 1'b1) & ((icmp_ln104_fu_504_p2 == 1'd1) | (icmp_ln101_fu_498_p2 == 1'd0)))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state9 : begin
            if (((1'b1 == ap_CS_fsm_state9) & (icmp_ln119_fu_534_p2 == 1'd0))) begin
                ap_NS_fsm = ap_ST_fsm_state11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state9;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln100_fu_464_p2 = (mlen + 64'd4);

assign add_ln108_fu_510_p2 = (add_ln100_reg_613 + grp_picnic_sign_fu_324_ap_return_1);

assign add_ln120_fu_545_p2 = ($signed(loop_0_reg_295) + $signed(32'd4));

assign add_ln659_fu_470_p2 = (sext_ln657_i_cast_reg_589 + 6'd17);

assign add_ln660_fu_480_p2 = ($signed(sext_ln657_i_cast_reg_589) + $signed(6'd33));

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

assign ap_return = p_0_reg_307;

assign empty_85_fu_359_p2 = ((trunc_ln632_fu_349_p1 == 4'd14) ? 1'b1 : 1'b0);

assign empty_86_fu_365_p2 = (empty_fu_353_p2 | empty_85_fu_359_p2);

assign empty_87_fu_371_p2 = ((trunc_ln632_fu_349_p1 == 4'd13) ? 1'b1 : 1'b0);

assign empty_88_fu_377_p2 = (empty_87_fu_371_p2 | empty_86_fu_365_p2);

assign empty_89_fu_383_p2 = ((trunc_ln632_fu_349_p1 == 4'd12) ? 1'b1 : 1'b0);

assign empty_90_fu_389_p2 = (empty_89_fu_383_p2 | empty_88_fu_377_p2);

assign empty_91_fu_395_p2 = ((trunc_ln632_fu_349_p1 == 4'd11) ? 1'b1 : 1'b0);

assign empty_92_fu_401_p2 = (empty_91_fu_395_p2 | empty_90_fu_389_p2);

assign empty_93_fu_407_p2 = ((trunc_ln632_fu_349_p1 == 4'd10) ? 1'b1 : 1'b0);

assign empty_94_fu_413_p2 = (empty_93_fu_407_p2 | empty_92_fu_401_p2);

assign empty_95_fu_419_p2 = ((trunc_ln632_fu_349_p1 == 4'd0) ? 1'b1 : 1'b0);

assign empty_96_fu_425_p2 = (empty_95_fu_419_p2 | empty_94_fu_413_p2);

assign empty_fu_353_p2 = ((trunc_ln632_fu_349_p1 == 4'd15) ? 1'b1 : 1'b0);

assign grp_picnic_sign_fu_324_ap_start = grp_picnic_sign_fu_324_ap_start_reg;

assign icmp_ln101_fu_498_p2 = ((grp_picnic_sign_fu_324_ap_return_0 == 32'd0) ? 1'b1 : 1'b0);

assign icmp_ln104_fu_504_p2 = ((grp_picnic_sign_fu_324_ap_return_1 > 64'd34036) ? 1'b1 : 1'b0);

assign icmp_ln119_fu_534_p2 = ((sext_ln119_fu_529_p1 < mlen) ? 1'b1 : 1'b0);

assign icmp_ln657_fu_439_p2 = ((loop_0_i_reg_272 == 5'd16) ? 1'b1 : 1'b0);

assign loop_22_fu_445_p2 = (loop_0_i_reg_272 + 5'd1);

assign loop_fu_539_p2 = ($signed(loop_0_reg_295) + $signed(32'd1));

assign select_ln625_fu_456_p3 = ((ap_phi_mux_ret_phi_fu_287_p4[0:0] === 1'b1) ? 32'd4294967295 : 32'd0);

assign sext_ln119_fu_529_p1 = loop_0_reg_295;

assign sext_ln120_fu_551_p1 = $signed(add_ln120_fu_545_p2);

assign sext_ln657_i_cast_fu_435_p1 = loop_0_i_reg_272;

assign sk_address1 = zext_ln660_fu_485_p1;

assign smlen_address0 = 64'd0;

assign smlen_d0 = add_ln108_reg_640;

assign trunc_ln111_fu_515_p1 = grp_picnic_sign_fu_324_ap_return_1[7:0];

assign trunc_ln632_fu_349_p1 = sk_q0[3:0];

assign viewOutputs_address0 = grp_picnic_sign_fu_324_viewOutputs_address0;

assign viewOutputs_address1 = grp_picnic_sign_fu_324_viewOutputs_address1;

assign viewOutputs_ce0 = grp_picnic_sign_fu_324_viewOutputs_ce0;

assign viewOutputs_ce1 = grp_picnic_sign_fu_324_viewOutputs_ce1;

assign viewOutputs_d0 = grp_picnic_sign_fu_324_viewOutputs_d0;

assign viewOutputs_we0 = grp_picnic_sign_fu_324_viewOutputs_we0;

assign zext_ln657_fu_431_p1 = loop_0_i_reg_272;

assign zext_ln658_fu_451_p1 = loop_22_fu_445_p2;

assign zext_ln659_fu_475_p1 = add_ln659_fu_470_p2;

assign zext_ln660_fu_485_p1 = add_ln660_fu_480_p2;

always @ (posedge ap_clk) begin
    zext_ln657_reg_582[63:5] <= 59'b00000000000000000000000000000000000000000000000000000000000;
    sext_ln657_i_cast_reg_589[5] <= 1'b0;
end

endmodule //crypto_sign