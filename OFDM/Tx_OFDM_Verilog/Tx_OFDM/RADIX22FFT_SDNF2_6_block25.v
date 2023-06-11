// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\RADIX22FFT_SDNF2_6_block25.v
// Created: 2023-06-11 16:01:41
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDNF2_6_block25
// Source Path: dsphdl.IFFT/RADIX22FFT_SDNF2_6
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDNF2_6_block25
          (clk,
           reset,
           enb_1_4096_0,
           rotate_53,
           dout_50_re,
           dout_50_im,
           dout_54_re,
           dout_54_im,
           dout_1_vld,
           dout_53_re,
           dout_53_im,
           dout_54_re_1,
           dout_54_im_1);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   rotate_53;  // ufix1
  input   signed [15:0] dout_50_re;  // sfix16_En14
  input   signed [15:0] dout_50_im;  // sfix16_En14
  input   signed [15:0] dout_54_re;  // sfix16_En14
  input   signed [15:0] dout_54_im;  // sfix16_En14
  input   dout_1_vld;
  output  signed [15:0] dout_53_re;  // sfix16_En14
  output  signed [15:0] dout_53_im;  // sfix16_En14
  output  signed [15:0] dout_54_re_1;  // sfix16_En14
  output  signed [15:0] dout_54_im_1;  // sfix16_En14


  reg  Radix22ButterflyG2_NF_din_vld_dly;
  reg signed [16:0] Radix22ButterflyG2_NF_btf1_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG2_NF_btf1_im_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG2_NF_btf2_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG2_NF_btf2_im_reg;  // sfix17
  reg  Radix22ButterflyG2_NF_din_vld_dly_next;
  reg signed [16:0] Radix22ButterflyG2_NF_btf1_re_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_btf1_im_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_btf2_re_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_btf2_im_reg_next;  // sfix17_En14
  reg signed [15:0] dout_53_re_1;  // sfix16_En14
  reg signed [15:0] dout_53_im_1;  // sfix16_En14
  reg signed [15:0] dout_54_re_2;  // sfix16_En14
  reg signed [15:0] dout_54_im_2;  // sfix16_En14
  reg  dout_6_vld;
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_2;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_2;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sra_temp;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_3;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_4;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_5;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_add_cast_6;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sra_temp_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_3;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_4;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_5;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sub_cast_6;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sra_temp_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG2_NF_sra_temp_2;  // sfix17_En14


  // Radix22ButterflyG2_NF
  always @(posedge clk or posedge reset)
    begin : Radix22ButterflyG2_NF_process
      if (reset == 1'b1) begin
        Radix22ButterflyG2_NF_din_vld_dly <= 1'b0;
        Radix22ButterflyG2_NF_btf1_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG2_NF_btf1_im_reg <= 17'sb00000000000000000;
        Radix22ButterflyG2_NF_btf2_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG2_NF_btf2_im_reg <= 17'sb00000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          Radix22ButterflyG2_NF_din_vld_dly <= Radix22ButterflyG2_NF_din_vld_dly_next;
          Radix22ButterflyG2_NF_btf1_re_reg <= Radix22ButterflyG2_NF_btf1_re_reg_next;
          Radix22ButterflyG2_NF_btf1_im_reg <= Radix22ButterflyG2_NF_btf1_im_reg_next;
          Radix22ButterflyG2_NF_btf2_re_reg <= Radix22ButterflyG2_NF_btf2_re_reg_next;
          Radix22ButterflyG2_NF_btf2_im_reg <= Radix22ButterflyG2_NF_btf2_im_reg_next;
        end
      end
    end

  always @(Radix22ButterflyG2_NF_btf1_im_reg, Radix22ButterflyG2_NF_btf1_re_reg,
       Radix22ButterflyG2_NF_btf2_im_reg, Radix22ButterflyG2_NF_btf2_re_reg,
       Radix22ButterflyG2_NF_din_vld_dly, dout_1_vld, dout_50_im, dout_50_re,
       dout_54_im, dout_54_re, rotate_53) begin
    Radix22ButterflyG2_NF_add_cast_1 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_2 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_1 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_2 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_5 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_6 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_5 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_6 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_0 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_0 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_3 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_add_cast_4 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_3 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_sub_cast_4 = 17'sb00000000000000000;
    Radix22ButterflyG2_NF_btf1_re_reg_next = Radix22ButterflyG2_NF_btf1_re_reg;
    Radix22ButterflyG2_NF_btf1_im_reg_next = Radix22ButterflyG2_NF_btf1_im_reg;
    Radix22ButterflyG2_NF_btf2_re_reg_next = Radix22ButterflyG2_NF_btf2_re_reg;
    Radix22ButterflyG2_NF_btf2_im_reg_next = Radix22ButterflyG2_NF_btf2_im_reg;
    Radix22ButterflyG2_NF_din_vld_dly_next = dout_1_vld;
    if (rotate_53 != 1'b0) begin
      if (dout_1_vld) begin
        Radix22ButterflyG2_NF_add_cast_1 = {dout_50_re[15], dout_50_re};
        Radix22ButterflyG2_NF_add_cast_2 = {dout_54_im[15], dout_54_im};
        Radix22ButterflyG2_NF_btf1_re_reg_next = Radix22ButterflyG2_NF_add_cast_1 + Radix22ButterflyG2_NF_add_cast_2;
        Radix22ButterflyG2_NF_sub_cast_1 = {dout_50_re[15], dout_50_re};
        Radix22ButterflyG2_NF_sub_cast_2 = {dout_54_im[15], dout_54_im};
        Radix22ButterflyG2_NF_btf2_re_reg_next = Radix22ButterflyG2_NF_sub_cast_1 - Radix22ButterflyG2_NF_sub_cast_2;
        Radix22ButterflyG2_NF_add_cast_5 = {dout_50_im[15], dout_50_im};
        Radix22ButterflyG2_NF_add_cast_6 = {dout_54_re[15], dout_54_re};
        Radix22ButterflyG2_NF_btf2_im_reg_next = Radix22ButterflyG2_NF_add_cast_5 + Radix22ButterflyG2_NF_add_cast_6;
        Radix22ButterflyG2_NF_sub_cast_5 = {dout_50_im[15], dout_50_im};
        Radix22ButterflyG2_NF_sub_cast_6 = {dout_54_re[15], dout_54_re};
        Radix22ButterflyG2_NF_btf1_im_reg_next = Radix22ButterflyG2_NF_sub_cast_5 - Radix22ButterflyG2_NF_sub_cast_6;
      end
    end
    else if (dout_1_vld) begin
      Radix22ButterflyG2_NF_add_cast = {dout_50_re[15], dout_50_re};
      Radix22ButterflyG2_NF_add_cast_0 = {dout_54_re[15], dout_54_re};
      Radix22ButterflyG2_NF_btf1_re_reg_next = Radix22ButterflyG2_NF_add_cast + Radix22ButterflyG2_NF_add_cast_0;
      Radix22ButterflyG2_NF_sub_cast = {dout_50_re[15], dout_50_re};
      Radix22ButterflyG2_NF_sub_cast_0 = {dout_54_re[15], dout_54_re};
      Radix22ButterflyG2_NF_btf2_re_reg_next = Radix22ButterflyG2_NF_sub_cast - Radix22ButterflyG2_NF_sub_cast_0;
      Radix22ButterflyG2_NF_add_cast_3 = {dout_50_im[15], dout_50_im};
      Radix22ButterflyG2_NF_add_cast_4 = {dout_54_im[15], dout_54_im};
      Radix22ButterflyG2_NF_btf1_im_reg_next = Radix22ButterflyG2_NF_add_cast_3 + Radix22ButterflyG2_NF_add_cast_4;
      Radix22ButterflyG2_NF_sub_cast_3 = {dout_50_im[15], dout_50_im};
      Radix22ButterflyG2_NF_sub_cast_4 = {dout_54_im[15], dout_54_im};
      Radix22ButterflyG2_NF_btf2_im_reg_next = Radix22ButterflyG2_NF_sub_cast_3 - Radix22ButterflyG2_NF_sub_cast_4;
    end
    Radix22ButterflyG2_NF_sra_temp = Radix22ButterflyG2_NF_btf1_re_reg >>> 8'd1;
    dout_53_re_1 = Radix22ButterflyG2_NF_sra_temp[15:0];
    Radix22ButterflyG2_NF_sra_temp_0 = Radix22ButterflyG2_NF_btf1_im_reg >>> 8'd1;
    dout_53_im_1 = Radix22ButterflyG2_NF_sra_temp_0[15:0];
    Radix22ButterflyG2_NF_sra_temp_1 = Radix22ButterflyG2_NF_btf2_re_reg >>> 8'd1;
    dout_54_re_2 = Radix22ButterflyG2_NF_sra_temp_1[15:0];
    Radix22ButterflyG2_NF_sra_temp_2 = Radix22ButterflyG2_NF_btf2_im_reg >>> 8'd1;
    dout_54_im_2 = Radix22ButterflyG2_NF_sra_temp_2[15:0];
    dout_6_vld = Radix22ButterflyG2_NF_din_vld_dly;
  end



  assign dout_53_re = dout_53_re_1;

  assign dout_53_im = dout_53_im_1;

  assign dout_54_re_1 = dout_54_re_2;

  assign dout_54_im_1 = dout_54_im_2;

endmodule  // RADIX22FFT_SDNF2_6_block25

