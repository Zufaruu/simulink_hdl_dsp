-- -------------------------------------------------------------
-- 
-- File Name: C:\Users\acer\OneDrive\Documents\ITS CAK V2\Magang\BRIN\Progress\Matlab Simulink\HDL Coder\proyek\OFDM\Tx_OFDM\TWDLMULT_SDNF1_5_block13.vhd
-- Created: 2023-04-09 19:16:03
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: TWDLMULT_SDNF1_5_block13
-- Source Path: dsphdl.IFFT/TWDLMULT_SDNF1_5
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY TWDLMULT_SDNF1_5_block13 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_960_0                       :   IN    std_logic;
        dout_26_re                        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        dout_26_im                        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        dout_28_re                        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        dout_28_im                        :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        dout_4_vld                        :   IN    std_logic;
        twdl_5_29_re                      :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdl_5_29_im                      :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdl_5_30_re                      :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdl_5_30_im                      :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdlXdin_29_re                    :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdlXdin_29_im                    :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdlXdin_30_re                    :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        twdlXdin_30_im                    :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END TWDLMULT_SDNF1_5_block13;


ARCHITECTURE rtl OF TWDLMULT_SDNF1_5_block13 IS

  -- Component Declarations
  COMPONENT Complex4Multiply_block85
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_960_0                     :   IN    std_logic;
          din1_re_dly3                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          din1_im_dly3                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          din1_vld_dly3                   :   IN    std_logic;
          twdl_5_29_re                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdl_5_29_im                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdlXdin_29_re                  :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdlXdin_29_im                  :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  COMPONENT Complex4Multiply_block86
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb_1_960_0                     :   IN    std_logic;
          din2_re_dly3                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          din2_im_dly3                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          di2_vld_dly3                    :   IN    std_logic;
          twdl_5_30_re                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdl_5_30_im                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdlXdin_30_re                  :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          twdlXdin_30_im                  :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Complex4Multiply_block85
    USE ENTITY work.Complex4Multiply_block85(rtl);

  FOR ALL : Complex4Multiply_block86
    USE ENTITY work.Complex4Multiply_block86(rtl);

  -- Signals
  SIGNAL dout_26_re_signed                : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_re_dly1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_re_dly2                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL dout_26_im_signed                : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_im_dly1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_im_dly2                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_re_dly3                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_im_dly3                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din1_vld_dly1                    : std_logic;
  SIGNAL din1_vld_dly2                    : std_logic;
  SIGNAL din1_vld_dly3                    : std_logic;
  SIGNAL twdlXdin_29_re_tmp               : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL twdlXdin_29_im_tmp               : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL dout_28_re_signed                : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_re_dly1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_re_dly2                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL dout_28_im_signed                : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_im_dly1                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_im_dly2                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_re_dly3                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL din2_im_dly3                     : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL di2_vld_dly1                     : std_logic;
  SIGNAL di2_vld_dly2                     : std_logic;
  SIGNAL di2_vld_dly3                     : std_logic;
  SIGNAL twdlXdin_30_re_tmp               : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL twdlXdin_30_im_tmp               : std_logic_vector(15 DOWNTO 0);  -- ufix16

BEGIN
  u_MUL4_1 : Complex4Multiply_block85
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_960_0 => enb_1_960_0,
              din1_re_dly3 => std_logic_vector(din1_re_dly3),  -- sfix16_En14
              din1_im_dly3 => std_logic_vector(din1_im_dly3),  -- sfix16_En14
              din1_vld_dly3 => din1_vld_dly3,
              twdl_5_29_re => twdl_5_29_re,  -- sfix16_En14
              twdl_5_29_im => twdl_5_29_im,  -- sfix16_En14
              twdlXdin_29_re => twdlXdin_29_re_tmp,  -- sfix16_En14
              twdlXdin_29_im => twdlXdin_29_im_tmp  -- sfix16_En14
              );

  u_MUL4_2 : Complex4Multiply_block86
    PORT MAP( clk => clk,
              reset => reset,
              enb_1_960_0 => enb_1_960_0,
              din2_re_dly3 => std_logic_vector(din2_re_dly3),  -- sfix16_En14
              din2_im_dly3 => std_logic_vector(din2_im_dly3),  -- sfix16_En14
              di2_vld_dly3 => di2_vld_dly3,
              twdl_5_30_re => twdl_5_30_re,  -- sfix16_En14
              twdl_5_30_im => twdl_5_30_im,  -- sfix16_En14
              twdlXdin_30_re => twdlXdin_30_re_tmp,  -- sfix16_En14
              twdlXdin_30_im => twdlXdin_30_im_tmp  -- sfix16_En14
              );

  dout_26_re_signed <= signed(dout_26_re);

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly1 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_re_dly1 <= dout_26_re_signed;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  intdelay_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly2 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_re_dly2 <= din1_re_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_1_process;


  dout_26_im_signed <= signed(dout_26_im);

  intdelay_2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly1 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_im_dly1 <= dout_26_im_signed;
      END IF;
    END IF;
  END PROCESS intdelay_2_process;


  intdelay_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly2 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_im_dly2 <= din1_im_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_3_process;


  intdelay_4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly3 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_re_dly3 <= din1_re_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_4_process;


  intdelay_5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly3 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_im_dly3 <= din1_im_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_5_process;


  intdelay_6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_vld_dly1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_vld_dly1 <= dout_4_vld;
      END IF;
    END IF;
  END PROCESS intdelay_6_process;


  intdelay_7_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_vld_dly2 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_vld_dly2 <= din1_vld_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_7_process;


  intdelay_8_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_vld_dly3 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din1_vld_dly3 <= din1_vld_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_8_process;


  dout_28_re_signed <= signed(dout_28_re);

  intdelay_9_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly1 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_re_dly1 <= dout_28_re_signed;
      END IF;
    END IF;
  END PROCESS intdelay_9_process;


  intdelay_10_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly2 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_re_dly2 <= din2_re_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_10_process;


  dout_28_im_signed <= signed(dout_28_im);

  intdelay_11_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly1 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_im_dly1 <= dout_28_im_signed;
      END IF;
    END IF;
  END PROCESS intdelay_11_process;


  intdelay_12_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly2 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_im_dly2 <= din2_im_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_12_process;


  intdelay_13_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly3 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_re_dly3 <= din2_re_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_13_process;


  intdelay_14_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly3 <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        din2_im_dly3 <= din2_im_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_14_process;


  intdelay_15_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        di2_vld_dly1 <= dout_4_vld;
      END IF;
    END IF;
  END PROCESS intdelay_15_process;


  intdelay_16_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly2 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        di2_vld_dly2 <= di2_vld_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_16_process;


  intdelay_17_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly3 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_960_0 = '1' THEN
        di2_vld_dly3 <= di2_vld_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_17_process;


  twdlXdin_29_re <= twdlXdin_29_re_tmp;

  twdlXdin_29_im <= twdlXdin_29_im_tmp;

  twdlXdin_30_re <= twdlXdin_30_re_tmp;

  twdlXdin_30_im <= twdlXdin_30_im_tmp;

END rtl;

