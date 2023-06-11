// -------------------------------------------------------------
// 
// File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM_Verilog\Tx_OFDM\RADIX22FFT_SDF1_1_block37.v
// Created: 2023-06-11 16:01:38
// 
// Generated by MATLAB 9.14 and HDL Coder 4.1
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: RADIX22FFT_SDF1_1_block37
// Source Path: dsphdl.IFFT/RADIX22FFT_SDF1_1
// Hierarchy Level: 4
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module RADIX22FFT_SDF1_1_block37
          (clk,
           reset,
           enb_1_4096_0,
           din_1_39_re_dly,
           din_1_39_im_dly,
           din_1_vld_dly,
           rd_1_Addr,
           rd_1_Enb,
           proc_1_enb,
           dout_1_39_re,
           dout_1_39_im);


  input   clk;
  input   reset;
  input   enb_1_4096_0;
  input   signed [15:0] din_1_39_re_dly;  // sfix16_En14
  input   signed [15:0] din_1_39_im_dly;  // sfix16_En14
  input   din_1_vld_dly;
  input   rd_1_Addr;
  input   rd_1_Enb;
  input   proc_1_enb;
  output  signed [15:0] dout_1_39_re;  // sfix16_En14
  output  signed [15:0] dout_1_39_im;  // sfix16_En14


  reg signed [15:0] dinXTwdl_re;  // sfix16_En14
  reg signed [15:0] dinXTwdl_im;  // sfix16_En14
  reg  dinXTwdl_1_39_vld;
  reg  x_vld;
  wire signed [15:0] wrData_re;  // sfix16_En14
  wire signed [15:0] wrData_im;  // sfix16_En14
  wire wrAddr;  // ufix1
  wire wrEnb;
  reg signed [15:0] twoLocationReg_0_MEM_re_0;  // sfix16
  reg signed [15:0] twoLocationReg_0_MEM_im_0;  // sfix16
  reg signed [15:0] twoLocationReg_0_MEM_re_1;  // sfix16
  reg signed [15:0] twoLocationReg_0_MEM_im_1;  // sfix16
  reg signed [15:0] twoLocationReg_0_dout_re_reg;  // sfix16
  reg signed [15:0] twoLocationReg_0_dout_im_reg;  // sfix16
  reg signed [15:0] twoLocationReg_0_MEM_re_0_next;  // sfix16_En14
  reg signed [15:0] twoLocationReg_0_MEM_im_0_next;  // sfix16_En14
  reg signed [15:0] twoLocationReg_0_MEM_re_1_next;  // sfix16_En14
  reg signed [15:0] twoLocationReg_0_MEM_im_1_next;  // sfix16_En14
  reg signed [15:0] twoLocationReg_0_dout_re_reg_next;  // sfix16_En14
  reg signed [15:0] twoLocationReg_0_dout_im_reg_next;  // sfix16_En14
  reg signed [15:0] x_re;  // sfix16_En14
  reg signed [15:0] x_im;  // sfix16_En14
  reg signed [16:0] Radix22ButterflyG1_btf1_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_btf1_im_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_btf2_re_reg;  // sfix17
  reg signed [16:0] Radix22ButterflyG1_btf2_im_reg;  // sfix17
  reg signed [15:0] Radix22ButterflyG1_dinXtwdl_re_dly1;  // sfix16
  reg signed [15:0] Radix22ButterflyG1_dinXtwdl_im_dly1;  // sfix16
  reg signed [15:0] Radix22ButterflyG1_dinXtwdl_re_dly2;  // sfix16
  reg signed [15:0] Radix22ButterflyG1_dinXtwdl_im_dly2;  // sfix16
  reg  Radix22ButterflyG1_dinXtwdl_vld_dly1;
  reg  Radix22ButterflyG1_dinXtwdl_vld_dly2;
  wire signed [16:0] Radix22ButterflyG1_btf1_re_reg_next;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_btf1_im_reg_next;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_btf2_re_reg_next;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_btf2_im_reg_next;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_add_cast;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_add_cast_1;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sub_cast;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sub_cast_1;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_add_cast_2;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_add_cast_3;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sub_cast_2;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sub_cast_3;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sra_temp;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sra_temp_1;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sra_temp_2;  // sfix17_En14
  wire signed [16:0] Radix22ButterflyG1_sra_temp_3;  // sfix17_En14
  reg signed [15:0] xf_re;  // sfix16_En14
  reg signed [15:0] xf_im;  // sfix16_En14
  reg  xf_vld;
  wire signed [15:0] dinXTwdlf_re;  // sfix16_En14
  wire signed [15:0] dinXTwdlf_im;  // sfix16_En14
  wire dinxTwdlf_vld;
  wire signed [15:0] btf1_re;  // sfix16_En14
  wire signed [15:0] btf1_im;  // sfix16_En14
  wire signed [15:0] btf2_re;  // sfix16_En14
  wire signed [15:0] btf2_im;  // sfix16_En14
  reg  btf_vld;


  always @(posedge clk or posedge reset)
    begin : intdelay_process
      if (reset == 1'b1) begin
        dinXTwdl_re <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          dinXTwdl_re <= din_1_39_re_dly;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_1_process
      if (reset == 1'b1) begin
        dinXTwdl_im <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          dinXTwdl_im <= din_1_39_im_dly;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_2_process
      if (reset == 1'b1) begin
        dinXTwdl_1_39_vld <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          dinXTwdl_1_39_vld <= din_1_vld_dly;
        end
      end
    end



  always @(posedge clk or posedge reset)
    begin : intdelay_3_process
      if (reset == 1'b1) begin
        x_vld <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          x_vld <= rd_1_Enb;
        end
      end
    end



  // twoLocationReg_0
  always @(posedge clk or posedge reset)
    begin : twoLocationReg_0_process
      if (reset == 1'b1) begin
        twoLocationReg_0_MEM_re_0 <= 16'sb0000000000000000;
        twoLocationReg_0_MEM_im_0 <= 16'sb0000000000000000;
        twoLocationReg_0_MEM_re_1 <= 16'sb0000000000000000;
        twoLocationReg_0_MEM_im_1 <= 16'sb0000000000000000;
        twoLocationReg_0_dout_re_reg <= 16'sb0000000000000000;
        twoLocationReg_0_dout_im_reg <= 16'sb0000000000000000;
      end
      else begin
        if (enb_1_4096_0) begin
          twoLocationReg_0_MEM_re_0 <= twoLocationReg_0_MEM_re_0_next;
          twoLocationReg_0_MEM_im_0 <= twoLocationReg_0_MEM_im_0_next;
          twoLocationReg_0_MEM_re_1 <= twoLocationReg_0_MEM_re_1_next;
          twoLocationReg_0_MEM_im_1 <= twoLocationReg_0_MEM_im_1_next;
          twoLocationReg_0_dout_re_reg <= twoLocationReg_0_dout_re_reg_next;
          twoLocationReg_0_dout_im_reg <= twoLocationReg_0_dout_im_reg_next;
        end
      end
    end

  always @(rd_1_Addr, twoLocationReg_0_MEM_im_0, twoLocationReg_0_MEM_im_1,
       twoLocationReg_0_MEM_re_0, twoLocationReg_0_MEM_re_1,
       twoLocationReg_0_dout_im_reg, twoLocationReg_0_dout_re_reg, wrAddr,
       wrData_im, wrData_re, wrEnb) begin
    twoLocationReg_0_MEM_re_0_next = twoLocationReg_0_MEM_re_0;
    twoLocationReg_0_MEM_im_0_next = twoLocationReg_0_MEM_im_0;
    twoLocationReg_0_MEM_re_1_next = twoLocationReg_0_MEM_re_1;
    twoLocationReg_0_MEM_im_1_next = twoLocationReg_0_MEM_im_1;
    if (rd_1_Addr) begin
      twoLocationReg_0_dout_re_reg_next = twoLocationReg_0_MEM_re_1;
      twoLocationReg_0_dout_im_reg_next = twoLocationReg_0_MEM_im_1;
    end
    else begin
      twoLocationReg_0_dout_re_reg_next = twoLocationReg_0_MEM_re_0;
      twoLocationReg_0_dout_im_reg_next = twoLocationReg_0_MEM_im_0;
    end
    if (wrEnb) begin
      if (wrAddr == 1'b1) begin
        twoLocationReg_0_MEM_re_1_next = wrData_re;
        twoLocationReg_0_MEM_im_1_next = wrData_im;
      end
      else begin
        twoLocationReg_0_MEM_re_0_next = wrData_re;
        twoLocationReg_0_MEM_im_0_next = wrData_im;
      end
    end
    x_re = twoLocationReg_0_dout_re_reg;
    x_im = twoLocationReg_0_dout_im_reg;
  end



  // Radix22ButterflyG1
  always @(posedge clk or posedge reset)
    begin : Radix22ButterflyG1_process
      if (reset == 1'b1) begin
        Radix22ButterflyG1_btf1_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_btf1_im_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_btf2_re_reg <= 17'sb00000000000000000;
        Radix22ButterflyG1_btf2_im_reg <= 17'sb00000000000000000;
        xf_re <= 16'sb0000000000000000;
        xf_im <= 16'sb0000000000000000;
        xf_vld <= 1'b0;
        Radix22ButterflyG1_dinXtwdl_re_dly1 <= 16'sb0000000000000000;
        Radix22ButterflyG1_dinXtwdl_im_dly1 <= 16'sb0000000000000000;
        Radix22ButterflyG1_dinXtwdl_re_dly2 <= 16'sb0000000000000000;
        Radix22ButterflyG1_dinXtwdl_im_dly2 <= 16'sb0000000000000000;
        Radix22ButterflyG1_dinXtwdl_vld_dly1 <= 1'b0;
        Radix22ButterflyG1_dinXtwdl_vld_dly2 <= 1'b0;
        btf_vld <= 1'b0;
      end
      else begin
        if (enb_1_4096_0) begin
          Radix22ButterflyG1_btf1_re_reg <= Radix22ButterflyG1_btf1_re_reg_next;
          Radix22ButterflyG1_btf1_im_reg <= Radix22ButterflyG1_btf1_im_reg_next;
          Radix22ButterflyG1_btf2_re_reg <= Radix22ButterflyG1_btf2_re_reg_next;
          Radix22ButterflyG1_btf2_im_reg <= Radix22ButterflyG1_btf2_im_reg_next;
          btf_vld <= Radix22ButterflyG1_dinXtwdl_vld_dly2;
          Radix22ButterflyG1_dinXtwdl_vld_dly2 <= Radix22ButterflyG1_dinXtwdl_vld_dly1;
          Radix22ButterflyG1_dinXtwdl_re_dly2 <= Radix22ButterflyG1_dinXtwdl_re_dly1;
          Radix22ButterflyG1_dinXtwdl_im_dly2 <= Radix22ButterflyG1_dinXtwdl_im_dly1;
          Radix22ButterflyG1_dinXtwdl_re_dly1 <= dinXTwdl_re;
          Radix22ButterflyG1_dinXtwdl_im_dly1 <= dinXTwdl_im;
          xf_re <= x_re;
          xf_im <= x_im;
          xf_vld <= x_vld;
          Radix22ButterflyG1_dinXtwdl_vld_dly1 <= proc_1_enb && dinXTwdl_1_39_vld;
        end
      end
    end

  assign dinxTwdlf_vld = ( ! proc_1_enb) && dinXTwdl_1_39_vld;
  assign Radix22ButterflyG1_add_cast = {x_re[15], x_re};
  assign Radix22ButterflyG1_add_cast_1 = {Radix22ButterflyG1_dinXtwdl_re_dly2[15], Radix22ButterflyG1_dinXtwdl_re_dly2};
  assign Radix22ButterflyG1_btf1_re_reg_next = Radix22ButterflyG1_add_cast + Radix22ButterflyG1_add_cast_1;
  assign Radix22ButterflyG1_sub_cast = {x_re[15], x_re};
  assign Radix22ButterflyG1_sub_cast_1 = {Radix22ButterflyG1_dinXtwdl_re_dly2[15], Radix22ButterflyG1_dinXtwdl_re_dly2};
  assign Radix22ButterflyG1_btf2_re_reg_next = Radix22ButterflyG1_sub_cast - Radix22ButterflyG1_sub_cast_1;
  assign Radix22ButterflyG1_add_cast_2 = {x_im[15], x_im};
  assign Radix22ButterflyG1_add_cast_3 = {Radix22ButterflyG1_dinXtwdl_im_dly2[15], Radix22ButterflyG1_dinXtwdl_im_dly2};
  assign Radix22ButterflyG1_btf1_im_reg_next = Radix22ButterflyG1_add_cast_2 + Radix22ButterflyG1_add_cast_3;
  assign Radix22ButterflyG1_sub_cast_2 = {x_im[15], x_im};
  assign Radix22ButterflyG1_sub_cast_3 = {Radix22ButterflyG1_dinXtwdl_im_dly2[15], Radix22ButterflyG1_dinXtwdl_im_dly2};
  assign Radix22ButterflyG1_btf2_im_reg_next = Radix22ButterflyG1_sub_cast_2 - Radix22ButterflyG1_sub_cast_3;
  assign dinXTwdlf_re = dinXTwdl_re;
  assign dinXTwdlf_im = dinXTwdl_im;
  assign Radix22ButterflyG1_sra_temp = Radix22ButterflyG1_btf1_re_reg >>> 8'd1;
  assign btf1_re = Radix22ButterflyG1_sra_temp[15:0];
  assign Radix22ButterflyG1_sra_temp_1 = Radix22ButterflyG1_btf1_im_reg >>> 8'd1;
  assign btf1_im = Radix22ButterflyG1_sra_temp_1[15:0];
  assign Radix22ButterflyG1_sra_temp_2 = Radix22ButterflyG1_btf2_re_reg >>> 8'd1;
  assign btf2_re = Radix22ButterflyG1_sra_temp_2[15:0];
  assign Radix22ButterflyG1_sra_temp_3 = Radix22ButterflyG1_btf2_im_reg >>> 8'd1;
  assign btf2_im = Radix22ButterflyG1_sra_temp_3[15:0];



  SDFCommutator1_block37 u_SDFCOMMUTATOR_1 (.clk(clk),
                                            .reset(reset),
                                            .enb_1_4096_0(enb_1_4096_0),
                                            .din_1_vld_dly(din_1_vld_dly),
                                            .xf_re(xf_re),  // sfix16_En14
                                            .xf_im(xf_im),  // sfix16_En14
                                            .xf_vld(xf_vld),
                                            .dinXTwdlf_re(dinXTwdlf_re),  // sfix16_En14
                                            .dinXTwdlf_im(dinXTwdlf_im),  // sfix16_En14
                                            .dinxTwdlf_vld(dinxTwdlf_vld),
                                            .btf1_re(btf1_re),  // sfix16_En14
                                            .btf1_im(btf1_im),  // sfix16_En14
                                            .btf2_re(btf2_re),  // sfix16_En14
                                            .btf2_im(btf2_im),  // sfix16_En14
                                            .btf_vld(btf_vld),
                                            .wrData_re(wrData_re),  // sfix16_En14
                                            .wrData_im(wrData_im),  // sfix16_En14
                                            .wrAddr(wrAddr),  // ufix1
                                            .wrEnb(wrEnb),
                                            .dout_1_39_re(dout_1_39_re),  // sfix16_En14
                                            .dout_1_39_im(dout_1_39_im)  // sfix16_En14
                                            );

endmodule  // RADIX22FFT_SDF1_1_block37

