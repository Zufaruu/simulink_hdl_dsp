// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\RADIX22FFT_SDNF1_7_block22.v
// Created: 2023-06-11 16:01:41
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDNF1_7_block22
// Source Path: dsphdl.IFFT/RADIX22FFT_SDNF1_7
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDNF1_7_block22
          (clk,
           reset,
           enb_1_4096_0,
           dout_46_re,
           dout_46_im,
           dout_48_re,
           dout_48_im,
           dout_6_vld,
           twdl_7_48_re,
           twdl_7_48_im,
           dout_47_re,
           dout_47_im,
           dout_48_re_1,
           dout_48_im_1);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] dout_46_re;  // sfix16_En14
  input   signed [15:0] dout_46_im;  // sfix16_En14
  input   signed [15:0] dout_48_re;  // sfix16_En14
  input   signed [15:0] dout_48_im;  // sfix16_En14
  input   dout_6_vld;
  input   signed [15:0] twdl_7_48_re;  // sfix16_En14
  input   signed [15:0] twdl_7_48_im;  // sfix16_En14
  output  signed [15:0] dout_47_re;  // sfix16_En14
  output  signed [15:0] dout_47_im;  // sfix16_En14
  output  signed [15:0] dout_48_re_1;  // sfix16_En14
  output  signed [15:0] dout_48_im_1;  // sfix16_En14


  reg signed [15:0] din1_re_dly1;  // sfix16_En14
  reg signed [15:0] din1_re_dly2;  // sfix16_En14
  reg signed [15:0] din1_re_dly3;  // sfix16_En14
  reg signed [15:0] din1_re_dly4;  // sfix16_En14
  reg signed [15:0] din1_re_dly5;  // sfix16_En14
  reg signed [15:0] din1_re_dly6;  // sfix16_En14
  reg signed [15:0] din1_re_dly7;  // sfix16_En14
  reg signed [15:0] din1_re_dly8;  // sfix16_En14
  reg signed [15:0] din1_re_dly9;  // sfix16_En14
  reg signed [15:0] din1_im_dly1;  // sfix16_En14
  reg signed [15:0] din1_im_dly2;  // sfix16_En14
  reg signed [15:0] din1_im_dly3;  // sfix16_En14
  reg signed [15:0] din1_im_dly4;  // sfix16_En14
  reg signed [15:0] din1_im_dly5;  // sfix16_En14
  reg signed [15:0] din1_im_dly6;  // sfix16_En14
  reg signed [15:0] din1_im_dly7;  // sfix16_En14
  reg signed [15:0] din1_im_dly8;  // sfix16_En14
  reg signed [15:0] din1_im_dly9;  // sfix16_En14
  reg signed [15:0] din2_re_dly1;  // sfix16_En14
  reg signed [15:0] din2_re_dly2;  // sfix16_En14
  reg signed [15:0] din2_re_dly3;  // sfix16_En14
  reg signed [15:0] din2_im_dly1;  // sfix16_En14
  reg signed [15:0] din2_im_dly2;  // sfix16_En14
  reg signed [15:0] din2_im_dly3;  // sfix16_En14
  reg  di2_vld_dly1;
  reg  di2_vld_dly2;
  reg  di2_vld_dly3;
  wire signed [15:0] dinXTwdl2_re;  // sfix16_En14
  wire signed [15:0] dinXTwdl2_im;  // sfix16_En14
  reg  din_vld_dly1;
  reg  din_vld_dly2;
  reg  din_vld_dly3;
  reg  din_vld_dly4;
  reg  din_vld_dly5;
  reg  din_vld_dly6;
  reg  din_vld_dly7;
  reg  din_vld_dly8;
  reg  din_vld_dly9;
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
  reg signed [15:0] dout_47_re_1;  // sfix16_En14
  reg signed [15:0] dout_47_im_1;  // sfix16_En14
  reg signed [15:0] dout_48_re_2;  // sfix16_En14
  reg signed [15:0] dout_48_im_2;  // sfix16_En14
  reg  dout_48_vld;
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


  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        din1_re_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly1 <= dout_46_re;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        din1_re_dly2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly2 <= din1_re_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        din1_re_dly3 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly3 <= din1_re_dly2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        din1_re_dly4 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly4 <= din1_re_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_4_process
      if (reset == 1'b1) begin
        din1_re_dly5 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly5 <= din1_re_dly4;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_5_process
      if (reset == 1'b1) begin
        din1_re_dly6 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly6 <= din1_re_dly5;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_6_process
      if (reset == 1'b1) begin
        din1_re_dly7 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly7 <= din1_re_dly6;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_7_process
      if (reset == 1'b1) begin
        din1_re_dly8 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly8 <= din1_re_dly7;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_8_process
      if (reset == 1'b1) begin
        din1_re_dly9 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly9 <= din1_re_dly8;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_9_process
      if (reset == 1'b1) begin
        din1_im_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly1 <= dout_46_im;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_10_process
      if (reset == 1'b1) begin
        din1_im_dly2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly2 <= din1_im_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_11_process
      if (reset == 1'b1) begin
        din1_im_dly3 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly3 <= din1_im_dly2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_12_process
      if (reset == 1'b1) begin
        din1_im_dly4 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly4 <= din1_im_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_13_process
      if (reset == 1'b1) begin
        din1_im_dly5 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly5 <= din1_im_dly4;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_14_process
      if (reset == 1'b1) begin
        din1_im_dly6 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly6 <= din1_im_dly5;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_15_process
      if (reset == 1'b1) begin
        din1_im_dly7 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly7 <= din1_im_dly6;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_16_process
      if (reset == 1'b1) begin
        din1_im_dly8 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly8 <= din1_im_dly7;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_17_process
      if (reset == 1'b1) begin
        din1_im_dly9 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly9 <= din1_im_dly8;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_18_process
      if (reset == 1'b1) begin
        din2_re_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_re_dly1 <= dout_48_re;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_19_process
      if (reset == 1'b1) begin
        din2_re_dly2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_re_dly2 <= din2_re_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_20_process
      if (reset == 1'b1) begin
        din2_re_dly3 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_re_dly3 <= din2_re_dly2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_21_process
      if (reset == 1'b1) begin
        din2_im_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_im_dly1 <= dout_48_im;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_22_process
      if (reset == 1'b1) begin
        din2_im_dly2 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_im_dly2 <= din2_im_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_23_process
      if (reset == 1'b1) begin
        din2_im_dly3 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_im_dly3 <= din2_im_dly2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_24_process
      if (reset == 1'b1) begin
        di2_vld_dly1 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          di2_vld_dly1 <= dout_6_vld;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_25_process
      if (reset == 1'b1) begin
        di2_vld_dly2 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          di2_vld_dly2 <= di2_vld_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_26_process
      if (reset == 1'b1) begin
        di2_vld_dly3 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          di2_vld_dly3 <= di2_vld_dly2;
        end
      end
    end



  Complex4Multiply_block140 u_MUL4_2 (.clk(clk),
                                      .reset(reset),
                                      .enb_1_4096_0(enb_1_4096_0),
                                      .din2_re_dly3(din2_re_dly3),  // sfix16_En14
                                      .din2_im_dly3(din2_im_dly3),  // sfix16_En14
                                      .di2_vld_dly3(di2_vld_dly3),
                                      .twdl_7_48_re(twdl_7_48_re),  // sfix16_En14
                                      .twdl_7_48_im(twdl_7_48_im),  // sfix16_En14
                                      .dinXTwdl2_re(dinXTwdl2_re),  // sfix16_En14
                                      .dinXTwdl2_im(dinXTwdl2_im)  // sfix16_En14
                                      );

  always @(posedge clk or posedge reset)
    begin : intdelay_27_process
      if (reset == 1'b1) begin
        din_vld_dly1 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly1 <= dout_6_vld;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_28_process
      if (reset == 1'b1) begin
        din_vld_dly2 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly2 <= din_vld_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_29_process
      if (reset == 1'b1) begin
        din_vld_dly3 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly3 <= din_vld_dly2;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_30_process
      if (reset == 1'b1) begin
        din_vld_dly4 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly4 <= din_vld_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_31_process
      if (reset == 1'b1) begin
        din_vld_dly5 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly5 <= din_vld_dly4;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_32_process
      if (reset == 1'b1) begin
        din_vld_dly6 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly6 <= din_vld_dly5;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_33_process
      if (reset == 1'b1) begin
        din_vld_dly7 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly7 <= din_vld_dly6;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_34_process
      if (reset == 1'b1) begin
        din_vld_dly8 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly8 <= din_vld_dly7;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_35_process
      if (reset == 1'b1) begin
        din_vld_dly9 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly9 <= din_vld_dly8;
        end
      end
    end



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
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, din1_im_dly9, din1_re_dly9,
       dinXTwdl2_im, dinXTwdl2_re, din_vld_dly9) begin
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
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next = din_vld_dly9;
    if (din_vld_dly9) begin
      Radix22ButterflyG1_NF_add_cast = {din1_re_dly9[15], din1_re_dly9};
      Radix22ButterflyG1_NF_add_cast_0 = {dinXTwdl2_re[15], dinXTwdl2_re};
      Radix22ButterflyG1_NF_btf1_re_reg_next = Radix22ButterflyG1_NF_add_cast + Radix22ButterflyG1_NF_add_cast_0;
      Radix22ButterflyG1_NF_sub_cast = {din1_re_dly9[15], din1_re_dly9};
      Radix22ButterflyG1_NF_sub_cast_0 = {dinXTwdl2_re[15], dinXTwdl2_re};
      Radix22ButterflyG1_NF_btf2_re_reg_next = Radix22ButterflyG1_NF_sub_cast - Radix22ButterflyG1_NF_sub_cast_0;
      Radix22ButterflyG1_NF_add_cast_1 = {din1_im_dly9[15], din1_im_dly9};
      Radix22ButterflyG1_NF_add_cast_2 = {dinXTwdl2_im[15], dinXTwdl2_im};
      Radix22ButterflyG1_NF_btf1_im_reg_next = Radix22ButterflyG1_NF_add_cast_1 + Radix22ButterflyG1_NF_add_cast_2;
      Radix22ButterflyG1_NF_sub_cast_1 = {din1_im_dly9[15], din1_im_dly9};
      Radix22ButterflyG1_NF_sub_cast_2 = {dinXTwdl2_im[15], dinXTwdl2_im};
      Radix22ButterflyG1_NF_btf2_im_reg_next = Radix22ButterflyG1_NF_sub_cast_1 - Radix22ButterflyG1_NF_sub_cast_2;
    end
    Radix22ButterflyG1_NF_sra_temp = Radix22ButterflyG1_NF_btf1_re_reg >>> 8'd1;
    dout_47_re_1 = Radix22ButterflyG1_NF_sra_temp[15:0];
    Radix22ButterflyG1_NF_sra_temp_0 = Radix22ButterflyG1_NF_btf1_im_reg >>> 8'd1;
    dout_47_im_1 = Radix22ButterflyG1_NF_sra_temp_0[15:0];
    Radix22ButterflyG1_NF_sra_temp_1 = Radix22ButterflyG1_NF_btf2_re_reg >>> 8'd1;
    dout_48_re_2 = Radix22ButterflyG1_NF_sra_temp_1[15:0];
    Radix22ButterflyG1_NF_sra_temp_2 = Radix22ButterflyG1_NF_btf2_im_reg >>> 8'd1;
    dout_48_im_2 = Radix22ButterflyG1_NF_sra_temp_2[15:0];
    dout_48_vld = Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  end



  assign dout_47_re = dout_47_re_1;

  assign dout_47_im = dout_47_im_1;

  assign dout_48_re_1 = dout_48_re_2;

  assign dout_48_im_1 = dout_48_im_2;

endmodule  // RADIX22FFT_SDNF1_7_block22

