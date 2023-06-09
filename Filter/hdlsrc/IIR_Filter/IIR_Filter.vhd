-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\IIR_Filter\IIR_Filter.vhd
-- Created: 2023-04-04 14:57:38
-- 
-- Generated by MATLAB 9.12 and HDL Coder 3.20
-- 
-- 
-- -------------------------------------------------------------
-- Rate and Clocking Details
-- -------------------------------------------------------------
-- Model base rate: 0.02322
-- Target subsystem base rate: 0.02322
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: IIR_Filter
-- Source Path: IIR_Filter
-- Hierarchy Level: 0
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.IIR_Filter_pkg.ALL;

ENTITY IIR_Filter IS
END IIR_Filter;


ARCHITECTURE rtl OF IIR_Filter IS

  -- Signals
  SIGNAL Filtered_Signal                  : vector_of_signed16(0 TO 1023);  -- sfix16_En14 [1024]
  SIGNAL Original_Signal                  : vector_of_signed16(0 TO 1023);  -- sfix16_En14 [1024]

BEGIN
  -- Non-Tunable Bandpass Filtering of Noisy Sine Wave
  -- 
  -- Copyright 2021 The MathWorks, Inc.

END rtl;

