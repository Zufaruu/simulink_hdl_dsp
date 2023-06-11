// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\TWDLMULT_SDNF1_5_block.v
// Created: 2023-06-11 16:01:40
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: TWDLMULT_SDNF1_5_block
// Source Path: dsphdl.IFFT/TWDLMULT_SDNF1_5
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module TWDLMULT_SDNF1_5_block
          (clk,
           reset,
           enb_1_4096_0,
           dout_5_re,
           dout_5_im,
           dout_7_re,
           dout_7_im,
           dout_4_vld,
           twdl_5_3_re,
           twdl_5_3_im,
           twdl_5_4_re,
           twdl_5_4_im,
           twdlXdin_3_re,
           twdlXdin_3_im,
           twdlXdin_4_re,
           twdlXdin_4_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] dout_5_re;  // sfix16_En14
  input   signed [15:0] dout_5_im;  // sfix16_En14
  input   signed [15:0] dout_7_re;  // sfix16_En14
  input   signed [15:0] dout_7_im;  // sfix16_En14
  input   dout_4_vld;
  input   signed [15:0] twdl_5_3_re;  // sfix16_En14
  input   signed [15:0] twdl_5_3_im;  // sfix16_En14
  input   signed [15:0] twdl_5_4_re;  // sfix16_En14
  input   signed [15:0] twdl_5_4_im;  // sfix16_En14
  output  signed [15:0] twdlXdin_3_re;  // sfix16_En14
  output  signed [15:0] twdlXdin_3_im;  // sfix16_En14
  output  signed [15:0] twdlXdin_4_re;  // sfix16_En14
  output  signed [15:0] twdlXdin_4_im;  // sfix16_En14


  reg signed [15:0] din1_re_dly1;  // sfix16_En14
  reg signed [15:0] din1_re_dly2;  // sfix16_En14
  reg signed [15:0] din1_re_dly3;  // sfix16_En14
  reg signed [15:0] din1_im_dly1;  // sfix16_En14
  reg signed [15:0] din1_im_dly2;  // sfix16_En14
  reg signed [15:0] din1_im_dly3;  // sfix16_En14
  reg  din1_vld_dly1;
  reg  din1_vld_dly2;
  reg  din1_vld_dly3;
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
          din1_re_dly1 <= dout_5_re;
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
        din1_im_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_im_dly1 <= dout_5_im;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_4_process
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
    begin : intdelay_5_process
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
    begin : intdelay_6_process
      if (reset == 1'b1) begin
        din1_vld_dly1 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_vld_dly1 <= dout_4_vld;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_7_process
      if (reset == 1'b1) begin
        din1_vld_dly2 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_vld_dly2 <= din1_vld_dly1;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_8_process
      if (reset == 1'b1) begin
        din1_vld_dly3 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din1_vld_dly3 <= din1_vld_dly2;
        end
      end
    end



  Complex4Multiply_block62 u_MUL4_1 (.clk(clk),
                                     .reset(reset),
                                     .enb_1_4096_0(enb_1_4096_0),
                                     .din1_re_dly3(din1_re_dly3),  // sfix16_En14
                                     .din1_im_dly3(din1_im_dly3),  // sfix16_En14
                                     .din1_vld_dly3(din1_vld_dly3),
                                     .twdl_5_3_re(twdl_5_3_re),  // sfix16_En14
                                     .twdl_5_3_im(twdl_5_3_im),  // sfix16_En14
                                     .twdlXdin_3_re(twdlXdin_3_re),  // sfix16_En14
                                     .twdlXdin_3_im(twdlXdin_3_im)  // sfix16_En14
                                     );

  always @(posedge clk or posedge reset)
    begin : intdelay_9_process
      if (reset == 1'b1) begin
        din2_re_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_re_dly1 <= dout_7_re;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_10_process
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
    begin : intdelay_11_process
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
    begin : intdelay_12_process
      if (reset == 1'b1) begin
        din2_im_dly1 <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din2_im_dly1 <= dout_7_im;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_13_process
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
    begin : intdelay_14_process
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
    begin : intdelay_15_process
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
    begin : intdelay_16_process
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
    begin : intdelay_17_process
      if (reset == 1'b1) begin
        di2_vld_dly3 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          di2_vld_dly3 <= di2_vld_dly2;
        end
      end
    end



  Complex4Multiply_block63 u_MUL4_2 (.clk(clk),
                                     .reset(reset),
                                     .enb_1_4096_0(enb_1_4096_0),
                                     .din2_re_dly3(din2_re_dly3),  // sfix16_En14
                                     .din2_im_dly3(din2_im_dly3),  // sfix16_En14
                                     .di2_vld_dly3(di2_vld_dly3),
                                     .twdl_5_4_re(twdl_5_4_re),  // sfix16_En14
                                     .twdl_5_4_im(twdl_5_4_im),  // sfix16_En14
                                     .twdlXdin_4_re(twdlXdin_4_re),  // sfix16_En14
                                     .twdlXdin_4_im(twdlXdin_4_im)  // sfix16_En14
                                     );

endmodule  // TWDLMULT_SDNF1_5_block

