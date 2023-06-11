// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\Complex4Multiply_block28.v
// Created: 2023-06-11 16:01:39
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Complex4Multiply_block28
// Source Path: dsphdl.IFFT/TWDLMULT_SDNF1_3/Complex4Multiply
// Hierarchy Level: 5
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Complex4Multiply_block28
          (clk,
           reset,
           enb_1_4096_0,
           din1_re_dly3,
           din1_im_dly3,
           din1_vld_dly3,
           twdl_3_31_re,
           twdl_3_31_im,
           twdlXdin_31_re,
           twdlXdin_31_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] din1_re_dly3;  // sfix16_En14
  input   signed [15:0] din1_im_dly3;  // sfix16_En14
  input   din1_vld_dly3;
  input   signed [15:0] twdl_3_31_re;  // sfix16_En14
  input   signed [15:0] twdl_3_31_im;  // sfix16_En14
  output  signed [15:0] twdlXdin_31_re;  // sfix16_En14
  output  signed [15:0] twdlXdin_31_im;  // sfix16_En14


  reg signed [15:0] din_re_reg;  // sfix16_En14
  reg signed [15:0] din_im_reg;  // sfix16_En14
  reg signed [15:0] twdl_re_reg;  // sfix16_En14
  reg signed [15:0] twdl_im_reg;  // sfix16_En14
  reg signed [15:0] Complex4Multiply_din1_re_pipe1;  // sfix16
  reg signed [15:0] Complex4Multiply_din1_im_pipe1;  // sfix16
  reg signed [31:0] Complex4Multiply_mult1_re_pipe1;  // sfix32
  reg signed [31:0] Complex4Multiply_mult2_re_pipe1;  // sfix32
  reg signed [31:0] Complex4Multiply_mult1_im_pipe1;  // sfix32
  reg signed [31:0] Complex4Multiply_mult2_im_pipe1;  // sfix32
  reg signed [15:0] Complex4Multiply_twiddle_re_pipe1;  // sfix16
  reg signed [15:0] Complex4Multiply_twiddle_im_pipe1;  // sfix16
  reg signed [31:0] prod1_re;  // sfix32_En28
  reg signed [31:0] prod1_im;  // sfix32_En28
  reg signed [31:0] prod2_re;  // sfix32_En28
  reg signed [31:0] prod2_im;  // sfix32_En28
  reg  din_vld_dly1;
  reg  din_vld_dly2;
  reg  din_vld_dly3;
  reg  prod_vld;
  reg signed [32:0] Complex4Add_multRes_re_reg;  // sfix33
  reg signed [32:0] Complex4Add_multRes_im_reg;  // sfix33
  reg  Complex4Add_prod_vld_reg1;
  reg signed [31:0] Complex4Add_prod1_re_reg;  // sfix32
  reg signed [31:0] Complex4Add_prod1_im_reg;  // sfix32
  reg signed [31:0] Complex4Add_prod2_re_reg;  // sfix32
  reg signed [31:0] Complex4Add_prod2_im_reg;  // sfix32
  wire signed [32:0] Complex4Add_multRes_re_reg_next;  // sfix33_En28
  wire signed [32:0] Complex4Add_multRes_im_reg_next;  // sfix33_En28
  wire signed [32:0] Complex4Add_sub_cast;  // sfix33_En28
  wire signed [32:0] Complex4Add_sub_cast_1;  // sfix33_En28
  wire signed [32:0] Complex4Add_add_cast;  // sfix33_En28
  wire signed [32:0] Complex4Add_add_cast_1;  // sfix33_En28
  wire signed [32:0] mulResFP_re;  // sfix33_En28
  wire signed [32:0] mulResFP_im;  // sfix33_En28
  reg  twdlXdin1_vld;

  initial begin
    Complex4Multiply_din1_re_pipe1 = 16'sb0000000000000000;
    Complex4Multiply_din1_im_pipe1 = 16'sb0000000000000000;
    Complex4Multiply_twiddle_re_pipe1 = 16'sb0000000000000000;
    Complex4Multiply_twiddle_im_pipe1 = 16'sb0000000000000000;
    Complex4Multiply_mult1_re_pipe1 = 32'sb00000000000000000000000000000000;
    Complex4Multiply_mult2_re_pipe1 = 32'sb00000000000000000000000000000000;
    Complex4Multiply_mult1_im_pipe1 = 32'sb00000000000000000000000000000000;
    Complex4Multiply_mult2_im_pipe1 = 32'sb00000000000000000000000000000000;
    prod1_re = 32'sb00000000000000000000000000000000;
    prod2_re = 32'sb00000000000000000000000000000000;
    prod1_im = 32'sb00000000000000000000000000000000;
    prod2_im = 32'sb00000000000000000000000000000000;
  end

  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        din_re_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din_re_reg <= din1_re_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        din_im_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          din_im_reg <= din1_im_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        twdl_re_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          twdl_re_reg <= twdl_3_31_re;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        twdl_im_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          twdl_im_reg <= twdl_3_31_im;
        end
      end
    end



  // Complex4Multiply
  always @(posedge clk)
    begin : Complex4Multiply_process
      if (enb_1_4096_0) begin
        prod1_re <= Complex4Multiply_mult1_re_pipe1;
        prod2_re <= Complex4Multiply_mult2_re_pipe1;
        prod1_im <= Complex4Multiply_mult1_im_pipe1;
        prod2_im <= Complex4Multiply_mult2_im_pipe1;
        Complex4Multiply_mult1_re_pipe1 <= Complex4Multiply_din1_re_pipe1 * Complex4Multiply_twiddle_re_pipe1;
        Complex4Multiply_mult2_re_pipe1 <= Complex4Multiply_din1_im_pipe1 * Complex4Multiply_twiddle_im_pipe1;
        Complex4Multiply_mult1_im_pipe1 <= Complex4Multiply_din1_re_pipe1 * Complex4Multiply_twiddle_im_pipe1;
        Complex4Multiply_mult2_im_pipe1 <= Complex4Multiply_din1_im_pipe1 * Complex4Multiply_twiddle_re_pipe1;
        Complex4Multiply_twiddle_re_pipe1 <= twdl_re_reg;
        Complex4Multiply_twiddle_im_pipe1 <= twdl_im_reg;
        Complex4Multiply_din1_re_pipe1 <= din_re_reg;
        Complex4Multiply_din1_im_pipe1 <= din_im_reg;
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_4_process
      if (reset == 1'b1) begin
        din_vld_dly1 <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          din_vld_dly1 <= din1_vld_dly3;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_5_process
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
    begin : intdelay_6_process
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
    begin : intdelay_7_process
      if (reset == 1'b1) begin
        prod_vld <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          prod_vld <= din_vld_dly3;
        end
      end
    end



  // Complex4Add
  always @(posedge clk or posedge reset)
    begin : Complex4Add_process
      if (reset == 1'b1) begin
        Complex4Add_multRes_re_reg <= 33'sh000000000;
        Complex4Add_multRes_im_reg <= 33'sh000000000;
        Complex4Add_prod1_re_reg <= 32'sb00000000000000000000000000000000;
        Complex4Add_prod1_im_reg <= 32'sb00000000000000000000000000000000;
        Complex4Add_prod2_re_reg <= 32'sb00000000000000000000000000000000;
        Complex4Add_prod2_im_reg <= 32'sb00000000000000000000000000000000;
        Complex4Add_prod_vld_reg1 <= 1'b0;
        twdlXdin1_vld <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          Complex4Add_multRes_re_reg <= Complex4Add_multRes_re_reg_next;
          Complex4Add_multRes_im_reg <= Complex4Add_multRes_im_reg_next;
          Complex4Add_prod1_re_reg <= prod1_re;
          Complex4Add_prod1_im_reg <= prod1_im;
          Complex4Add_prod2_re_reg <= prod2_re;
          Complex4Add_prod2_im_reg <= prod2_im;
          twdlXdin1_vld <= Complex4Add_prod_vld_reg1;
          Complex4Add_prod_vld_reg1 <= prod_vld;
        end
      end
    end

  assign Complex4Add_sub_cast = {Complex4Add_prod1_re_reg[31], Complex4Add_prod1_re_reg};
  assign Complex4Add_sub_cast_1 = {Complex4Add_prod2_re_reg[31], Complex4Add_prod2_re_reg};
  assign Complex4Add_multRes_re_reg_next = Complex4Add_sub_cast - Complex4Add_sub_cast_1;
  assign Complex4Add_add_cast = {Complex4Add_prod1_im_reg[31], Complex4Add_prod1_im_reg};
  assign Complex4Add_add_cast_1 = {Complex4Add_prod2_im_reg[31], Complex4Add_prod2_im_reg};
  assign Complex4Add_multRes_im_reg_next = Complex4Add_add_cast + Complex4Add_add_cast_1;
  assign mulResFP_re = Complex4Add_multRes_re_reg;
  assign mulResFP_im = Complex4Add_multRes_im_reg;



  assign twdlXdin_31_re = mulResFP_re[29:14];



  assign twdlXdin_31_im = mulResFP_im[29:14];



endmodule  // Complex4Multiply_block28

