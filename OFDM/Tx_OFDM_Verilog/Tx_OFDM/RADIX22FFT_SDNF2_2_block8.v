// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\RADIX22FFT_SDNF2_2_block8.v
// Created: 2023-06-11 16:01:38
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDNF2_2_block8
// Source Path: dsphdl.IFFT/RADIX22FFT_SDNF2_2
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDNF2_2_block8
          (clk,
           reset,
           enb_1_4096_0,
           rotate_64,
           dout_1_10_re,
           dout_1_10_im,
           dout_1_42_re,
           dout_1_42_im,
           dout_1_1_vld,
           dout_19_re,
           dout_19_im,
           dout_20_re,
           dout_20_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   rotate_64;  // ufix1
  input   signed [15:0] dout_1_10_re;  // sfix16_En14
  input   signed [15:0] dout_1_10_im;  // sfix16_En14
  input   signed [15:0] dout_1_42_re;  // sfix16_En14
  input   signed [15:0] dout_1_42_im;  // sfix16_En14
  input   dout_1_1_vld;
  output  signed [15:0] dout_19_re;  // sfix16_En14
  output  signed [15:0] dout_19_im;  // sfix16_En14
  output  signed [15:0] dout_20_re;  // sfix16_En14
  output  signed [15:0] dout_20_im;  // sfix16_En14


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
  reg signed [15:0] dout_19_re_1;  // sfix16_En14
  reg signed [15:0] dout_19_im_1;  // sfix16_En14
  reg signed [15:0] dout_20_re_1;  // sfix16_En14
  reg signed [15:0] dout_20_im_1;  // sfix16_En14
  reg  dout_2_vld;
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
       Radix22ButterflyG2_NF_din_vld_dly, dout_1_10_im, dout_1_10_re,
       dout_1_1_vld, dout_1_42_im, dout_1_42_re, rotate_64) begin
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
    Radix22ButterflyG2_NF_din_vld_dly_next = dout_1_1_vld;
    if (rotate_64 != 1'b0) begin
      if (dout_1_1_vld) begin
        Radix22ButterflyG2_NF_add_cast_1 = {dout_1_10_re[15], dout_1_10_re};
        Radix22ButterflyG2_NF_add_cast_2 = {dout_1_42_im[15], dout_1_42_im};
        Radix22ButterflyG2_NF_btf1_re_reg_next = Radix22ButterflyG2_NF_add_cast_1 + Radix22ButterflyG2_NF_add_cast_2;
        Radix22ButterflyG2_NF_sub_cast_1 = {dout_1_10_re[15], dout_1_10_re};
        Radix22ButterflyG2_NF_sub_cast_2 = {dout_1_42_im[15], dout_1_42_im};
        Radix22ButterflyG2_NF_btf2_re_reg_next = Radix22ButterflyG2_NF_sub_cast_1 - Radix22ButterflyG2_NF_sub_cast_2;
        Radix22ButterflyG2_NF_add_cast_5 = {dout_1_10_im[15], dout_1_10_im};
        Radix22ButterflyG2_NF_add_cast_6 = {dout_1_42_re[15], dout_1_42_re};
        Radix22ButterflyG2_NF_btf2_im_reg_next = Radix22ButterflyG2_NF_add_cast_5 + Radix22ButterflyG2_NF_add_cast_6;
        Radix22ButterflyG2_NF_sub_cast_5 = {dout_1_10_im[15], dout_1_10_im};
        Radix22ButterflyG2_NF_sub_cast_6 = {dout_1_42_re[15], dout_1_42_re};
        Radix22ButterflyG2_NF_btf1_im_reg_next = Radix22ButterflyG2_NF_sub_cast_5 - Radix22ButterflyG2_NF_sub_cast_6;
      end
    end
    else if (dout_1_1_vld) begin
      Radix22ButterflyG2_NF_add_cast = {dout_1_10_re[15], dout_1_10_re};
      Radix22ButterflyG2_NF_add_cast_0 = {dout_1_42_re[15], dout_1_42_re};
      Radix22ButterflyG2_NF_btf1_re_reg_next = Radix22ButterflyG2_NF_add_cast + Radix22ButterflyG2_NF_add_cast_0;
      Radix22ButterflyG2_NF_sub_cast = {dout_1_10_re[15], dout_1_10_re};
      Radix22ButterflyG2_NF_sub_cast_0 = {dout_1_42_re[15], dout_1_42_re};
      Radix22ButterflyG2_NF_btf2_re_reg_next = Radix22ButterflyG2_NF_sub_cast - Radix22ButterflyG2_NF_sub_cast_0;
      Radix22ButterflyG2_NF_add_cast_3 = {dout_1_10_im[15], dout_1_10_im};
      Radix22ButterflyG2_NF_add_cast_4 = {dout_1_42_im[15], dout_1_42_im};
      Radix22ButterflyG2_NF_btf1_im_reg_next = Radix22ButterflyG2_NF_add_cast_3 + Radix22ButterflyG2_NF_add_cast_4;
      Radix22ButterflyG2_NF_sub_cast_3 = {dout_1_10_im[15], dout_1_10_im};
      Radix22ButterflyG2_NF_sub_cast_4 = {dout_1_42_im[15], dout_1_42_im};
      Radix22ButterflyG2_NF_btf2_im_reg_next = Radix22ButterflyG2_NF_sub_cast_3 - Radix22ButterflyG2_NF_sub_cast_4;
    end
    Radix22ButterflyG2_NF_sra_temp = Radix22ButterflyG2_NF_btf1_re_reg >>> 8'd1;
    dout_19_re_1 = Radix22ButterflyG2_NF_sra_temp[15:0];
    Radix22ButterflyG2_NF_sra_temp_0 = Radix22ButterflyG2_NF_btf1_im_reg >>> 8'd1;
    dout_19_im_1 = Radix22ButterflyG2_NF_sra_temp_0[15:0];
    Radix22ButterflyG2_NF_sra_temp_1 = Radix22ButterflyG2_NF_btf2_re_reg >>> 8'd1;
    dout_20_re_1 = Radix22ButterflyG2_NF_sra_temp_1[15:0];
    Radix22ButterflyG2_NF_sra_temp_2 = Radix22ButterflyG2_NF_btf2_im_reg >>> 8'd1;
    dout_20_im_1 = Radix22ButterflyG2_NF_sra_temp_2[15:0];
    dout_2_vld = Radix22ButterflyG2_NF_din_vld_dly;
  end



  assign dout_19_re = dout_19_re_1;

  assign dout_19_im = dout_19_im_1;

  assign dout_20_re = dout_20_re_1;

  assign dout_20_im = dout_20_im_1;

endmodule  // RADIX22FFT_SDNF2_2_block8

