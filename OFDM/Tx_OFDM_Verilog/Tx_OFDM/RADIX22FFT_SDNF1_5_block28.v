// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\RADIX22FFT_SDNF1_5_block28.v
// Created: 2023-06-11 16:01:41
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDNF1_5_block28
// Source Path: dsphdl.IFFT/RADIX22FFT_SDNF1_5
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDNF1_5_block28
          (clk,
           reset,
           enb_1_4096_0,
           twdlXdin_58_re,
           twdlXdin_58_im,
           twdlXdin_62_re,
           twdlXdin_62_im,
           twdlXdin_1_vld,
           dout_59_re,
           dout_59_im,
           dout_60_re,
           dout_60_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] twdlXdin_58_re;  // sfix16_En14
  input   signed [15:0] twdlXdin_58_im;  // sfix16_En14
  input   signed [15:0] twdlXdin_62_re;  // sfix16_En14
  input   signed [15:0] twdlXdin_62_im;  // sfix16_En14
  input   twdlXdin_1_vld;
  output  signed [15:0] dout_59_re;  // sfix16_En14
  output  signed [15:0] dout_59_im;  // sfix16_En14
  output  signed [15:0] dout_60_re;  // sfix16_En14
  output  signed [15:0] dout_60_im;  // sfix16_En14


  reg signed [16:0] Radix22ButterflyG1_NF_btf1_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_NF_btf1_im_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_NF_btf2_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_NF_btf2_im_reg;  // sfix17
  reg  Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  reg signed [16:0] Radix22ButterflyG1_NF_btf1_re_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_btf1_im_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_btf2_re_reg_next;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_btf2_im_reg_next;  // sfix17_En14
  reg  Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next;
  reg signed [15:0] dout_59_re_1;  // sfix16_En14
  reg signed [15:0] dout_59_im_1;  // sfix16_En14
  reg signed [15:0] dout_60_re_1;  // sfix16_En14
  reg signed [15:0] dout_60_im_1;  // sfix16_En14
  reg  dout_59_vld;
  reg signed [16:0] Radix22ButterflyG1_NF_add_cast;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_add_cast_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sra_temp;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sub_cast;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sub_cast_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sra_temp_0;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_add_cast_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_add_cast_2;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sra_temp_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sub_cast_1;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sub_cast_2;  // sfix17_En14
  reg signed [16:0] Radix22ButterflyG1_NF_sra_temp_2;  // sfix17_En14


  // Radix22ButterflyG1_NF
  always @(posedge clk or posedge reset)
    begin : Radix22ButterflyG1_NF_process
      if (reset == 1'b1) begin
        Radix22ButterflyG1_NF_btf1_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_NF_btf1_im_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_NF_btf2_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_NF_btf2_im_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          Radix22ButterflyG1_NF_btf1_re_reg <= Radix22ButterflyG1_NF_btf1_re_reg_next;
          Radix22ButterflyG1_NF_btf1_im_reg <= Radix22ButterflyG1_NF_btf1_im_reg_next;
          Radix22ButterflyG1_NF_btf2_re_reg <= Radix22ButterflyG1_NF_btf2_re_reg_next;
          Radix22ButterflyG1_NF_btf2_im_reg <= Radix22ButterflyG1_NF_btf2_im_reg_next;
          Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next;
        end
      end
    end

  always @(Radix22ButterflyG1_NF_btf1_im_reg, Radix22ButterflyG1_NF_btf1_re_reg,
       Radix22ButterflyG1_NF_btf2_im_reg, Radix22ButterflyG1_NF_btf2_re_reg,
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, twdlXdin_1_vld, twdlXdin_58_im,
       twdlXdin_58_re, twdlXdin_62_im, twdlXdin_62_re) begin
    Radix22ButterflyG1_NF_add_cast = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_add_cast_0 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_sub_cast = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_sub_cast_0 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_add_cast_1 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_add_cast_2 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_sub_cast_1 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_sub_cast_2 = 17'sb00000000000000000;
    Radix22ButterflyG1_NF_btf1_re_reg_next = Radix22ButterflyG1_NF_btf1_re_reg;
    Radix22ButterflyG1_NF_btf1_im_reg_next = Radix22ButterflyG1_NF_btf1_im_reg;
    Radix22ButterflyG1_NF_btf2_re_reg_next = Radix22ButterflyG1_NF_btf2_re_reg;
    Radix22ButterflyG1_NF_btf2_im_reg_next = Radix22ButterflyG1_NF_btf2_im_reg;
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next = twdlXdin_1_vld;
    if (twdlXdin_1_vld) begin
      Radix22ButterflyG1_NF_add_cast = {twdlXdin_58_re[15], twdlXdin_58_re};
      Radix22ButterflyG1_NF_add_cast_0 = {twdlXdin_62_re[15], twdlXdin_62_re};
      Radix22ButterflyG1_NF_btf1_re_reg_next = Radix22ButterflyG1_NF_add_cast + Radix22ButterflyG1_NF_add_cast_0;
      Radix22ButterflyG1_NF_sub_cast = {twdlXdin_58_re[15], twdlXdin_58_re};
      Radix22ButterflyG1_NF_sub_cast_0 = {twdlXdin_62_re[15], twdlXdin_62_re};
      Radix22ButterflyG1_NF_btf2_re_reg_next = Radix22ButterflyG1_NF_sub_cast - Radix22ButterflyG1_NF_sub_cast_0;
      Radix22ButterflyG1_NF_add_cast_1 = {twdlXdin_58_im[15], twdlXdin_58_im};
      Radix22ButterflyG1_NF_add_cast_2 = {twdlXdin_62_im[15], twdlXdin_62_im};
      Radix22ButterflyG1_NF_btf1_im_reg_next = Radix22ButterflyG1_NF_add_cast_1 + Radix22ButterflyG1_NF_add_cast_2;
      Radix22ButterflyG1_NF_sub_cast_1 = {twdlXdin_58_im[15], twdlXdin_58_im};
      Radix22ButterflyG1_NF_sub_cast_2 = {twdlXdin_62_im[15], twdlXdin_62_im};
      Radix22ButterflyG1_NF_btf2_im_reg_next = Radix22ButterflyG1_NF_sub_cast_1 - Radix22ButterflyG1_NF_sub_cast_2;
    end
    Radix22ButterflyG1_NF_sra_temp = Radix22ButterflyG1_NF_btf1_re_reg >>> 8'd1;
    dout_59_re_1 = Radix22ButterflyG1_NF_sra_temp[15:0];
    Radix22ButterflyG1_NF_sra_temp_0 = Radix22ButterflyG1_NF_btf1_im_reg >>> 8'd1;
    dout_59_im_1 = Radix22ButterflyG1_NF_sra_temp_0[15:0];
    Radix22ButterflyG1_NF_sra_temp_1 = Radix22ButterflyG1_NF_btf2_re_reg >>> 8'd1;
    dout_60_re_1 = Radix22ButterflyG1_NF_sra_temp_1[15:0];
    Radix22ButterflyG1_NF_sra_temp_2 = Radix22ButterflyG1_NF_btf2_im_reg >>> 8'd1;
    dout_60_im_1 = Radix22ButterflyG1_NF_sra_temp_2[15:0];
    dout_59_vld = Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  end



  assign dout_59_re = dout_59_re_1;

  assign dout_59_im = dout_59_im_1;

  assign dout_60_re = dout_60_re_1;

  assign dout_60_im = dout_60_im_1;

endmodule  // RADIX22FFT_SDNF1_5_block28

