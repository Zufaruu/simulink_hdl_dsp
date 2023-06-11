// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\TWDLMULT_SDNF1_5_block7.v
// Created: 2023-06-11 16:01:40
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: TWDLMULT_SDNF1_5_block7
// Source Path: dsphdl.IFFT/TWDLMULT_SDNF1_5
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module TWDLMULT_SDNF1_5_block7
          (clk,
           reset,
           enb_1_4096_0,
           dout_17_re,
           dout_17_im,
           dout_19_re,
           dout_19_im,
           dout_4_vld,
           twdl_5_18_re,
           twdl_5_18_im,
           twdlXdin_17_re,
           twdlXdin_17_im,
           twdlXdin_18_re,
           twdlXdin_18_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] dout_17_re;  // sfix16_En14
  input   signed [15:0] dout_17_im;  // sfix16_En14
  input   signed [15:0] dout_19_re;  // sfix16_En14
  input   signed [15:0] dout_19_im;  // sfix16_En14
  input   dout_4_vld;
  input   signed [15:0] twdl_5_18_re;  // sfix16_En14
  input   signed [15:0] twdl_5_18_im;  // sfix16_En14
  output  signed [15:0] twdlXdin_17_re;  // sfix16_En14
  output  signed [15:0] twdlXdin_17_im;  // sfix16_En14
  output  signed [15:0] twdlXdin_18_re;  // sfix16_En14
  output  signed [15:0] twdlXdin_18_im;  // sfix16_En14


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


  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        din1_re_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_re_dly1 <= dout_17_re;
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



  assign twdlXdin_17_re = din1_re_dly9;

  always @(posedge clk or posedge reset)
    begin : intdelay_9_process
      if (reset == 1'b1) begin
        din1_im_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly1 <= dout_17_im;
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



  assign twdlXdin_17_im = din1_im_dly9;

  always @(posedge clk or posedge reset)
    begin : intdelay_18_process
      if (reset == 1'b1) begin
        din2_re_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_re_dly1 <= dout_19_re;
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
          din2_im_dly1 <= dout_19_im;
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
          di2_vld_dly1 <= dout_4_vld;
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



  Complex4Multiply_block75 u_MUL4_2 (.clk(clk),
                                     .reset(reset),
                                     .enb_1_4096_0(enb_1_4096_0),
                                     .din2_re_dly3(din2_re_dly3),  // sfix16_En14
                                     .din2_im_dly3(din2_im_dly3),  // sfix16_En14
                                     .di2_vld_dly3(di2_vld_dly3),
                                     .twdl_5_18_re(twdl_5_18_re),  // sfix16_En14
                                     .twdl_5_18_im(twdl_5_18_im),  // sfix16_En14
                                     .twdlXdin_18_re(twdlXdin_18_re),  // sfix16_En14
                                     .twdlXdin_18_im(twdlXdin_18_im)  // sfix16_En14
                                     );

endmodule  // TWDLMULT_SDNF1_5_block7
