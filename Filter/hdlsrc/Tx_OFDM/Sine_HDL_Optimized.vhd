-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc\Tx_OFDM\Sine_HDL_Optimized.vhd
-- Created: 2023-04-08 13:30:41
-- 
-- Generated by MATLAB 9.14 and HDL Coder 4.1
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Sine_HDL_Optimized
-- Source Path: Tx_OFDM/Transmitter/Sine HDL Optimized
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.Transmitter_pkg.ALL;

ENTITY Sine_HDL_Optimized IS
  PORT( u                                 :   IN    std_logic_vector(63 DOWNTO 0);  -- sfix64_En34
        x                                 :   OUT   std_logic_vector(16 DOWNTO 0)  -- sfix17_En15
        );
END Sine_HDL_Optimized;


ARCHITECTURE rtl OF Sine_HDL_Optimized IS

  -- Constants
  CONSTANT Look_Up_Table_data             : vector_of_signed17(0 TO 63) := 
    (to_signed(16#00000#, 17), to_signed(16#00324#, 17), to_signed(16#00648#, 17), to_signed(16#0096B#, 17),
     to_signed(16#00C8C#, 17), to_signed(16#00FAB#, 17), to_signed(16#012C8#, 17), to_signed(16#015E2#, 17),
     to_signed(16#018F9#, 17), to_signed(16#01C0C#, 17), to_signed(16#01F1A#, 17), to_signed(16#02224#, 17),
     to_signed(16#02528#, 17), to_signed(16#02827#, 17), to_signed(16#02B1F#, 17), to_signed(16#02E11#, 17),
     to_signed(16#030FC#, 17), to_signed(16#033DF#, 17), to_signed(16#036BA#, 17), to_signed(16#0398D#, 17),
     to_signed(16#03C57#, 17), to_signed(16#03F17#, 17), to_signed(16#041CE#, 17), to_signed(16#0447B#, 17),
     to_signed(16#0471D#, 17), to_signed(16#049B4#, 17), to_signed(16#04C40#, 17), to_signed(16#04EC0#, 17),
     to_signed(16#05134#, 17), to_signed(16#0539B#, 17), to_signed(16#055F6#, 17), to_signed(16#05843#, 17),
     to_signed(16#05A82#, 17), to_signed(16#05CB4#, 17), to_signed(16#05ED7#, 17), to_signed(16#060EC#, 17),
     to_signed(16#062F2#, 17), to_signed(16#064E9#, 17), to_signed(16#066D0#, 17), to_signed(16#068A7#, 17),
     to_signed(16#06A6E#, 17), to_signed(16#06C24#, 17), to_signed(16#06DCA#, 17), to_signed(16#06F5F#, 17),
     to_signed(16#070E3#, 17), to_signed(16#07255#, 17), to_signed(16#073B6#, 17), to_signed(16#07505#, 17),
     to_signed(16#07642#, 17), to_signed(16#0776C#, 17), to_signed(16#07885#, 17), to_signed(16#0798A#, 17),
     to_signed(16#07A7D#, 17), to_signed(16#07B5D#, 17), to_signed(16#07C2A#, 17), to_signed(16#07CE4#, 17),
     to_signed(16#07D8A#, 17), to_signed(16#07E1E#, 17), to_signed(16#07E9D#, 17), to_signed(16#07F0A#, 17),
     to_signed(16#07F62#, 17), to_signed(16#07FA7#, 17), to_signed(16#07FD9#, 17), to_signed(16#07FF6#, 17));  -- sfix17 [64]

  -- Signals
  SIGNAL u_signed                         : signed(63 DOWNTO 0);  -- sfix64_En34
  SIGNAL insig_out1                       : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL Point50_out1                     : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp50_1_cast                    : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp50_relop1                    : std_logic;
  SIGNAL pow2switch_out1                  : std_logic;
  SIGNAL Amp50_sub_cast                   : signed(31 DOWNTO 0);  -- sfix32_En17
  SIGNAL Amp50_sub_cast_1                 : signed(31 DOWNTO 0);  -- sfix32_En17
  SIGNAL Amp50_sub_temp                   : signed(31 DOWNTO 0);  -- sfix32_En17
  SIGNAL Amp50_out1                       : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL insig_out1_dtc                   : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL QuadHandle1_out1                 : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL Point25_out1                     : unsigned(16 DOWNTO 0);  -- ufix17_En17
  SIGNAL LTEp25_1_cast                    : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL LTEp25_relop1                    : std_logic;
  SIGNAL p50mA_sub_cast                   : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL p50mA_out1                       : unsigned(31 DOWNTO 0);  -- ufix32_En17
  SIGNAL p50mA_out1_dtc                   : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle1_out1_dtc             : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL QuadHandle2_out1                 : unsigned(7 DOWNTO 0);  -- ufix8_En8
  SIGNAL CastU16En2_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL CastU16En4_out1                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL CastU16En3_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Saturation_out1                  : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Switch_out1                      : unsigned(7 DOWNTO 0);  -- uint8
  SIGNAL Look_Up_Table_k                  : unsigned(5 DOWNTO 0);  -- ufix6
  SIGNAL Look_Up_Table_out1               : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Negate_cast                      : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate_cast_1                    : signed(17 DOWNTO 0);  -- sfix18_En15
  SIGNAL Negate_out1                      : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Sine                             : signed(16 DOWNTO 0);  -- sfix17_En15
  SIGNAL Sine_1                           : signed(16 DOWNTO 0);  -- sfix17_En15

BEGIN
  -- (C) 2016 Mathworks, Inc

  u_signed <= signed(u);

  insig_out1 <= unsigned(u_signed(33 DOWNTO 26));

  Point50_out1 <= to_unsigned(16#10000#, 17);

  LTEp50_1_cast <= insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  LTEp50_relop1 <= '1' WHEN LTEp50_1_cast <= Point50_out1 ELSE
      '0';

  pow2switch_out1 <= '1';

  Amp50_sub_cast <= signed(resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 32));
  Amp50_sub_cast_1 <= signed(resize(Point50_out1, 32));
  Amp50_sub_temp <= Amp50_sub_cast - Amp50_sub_cast_1;
  Amp50_out1 <= unsigned(Amp50_sub_temp);

  insig_out1_dtc <= resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0' & '0', 32);

  
  QuadHandle1_out1 <= Amp50_out1 WHEN LTEp50_relop1 = '0' ELSE
      insig_out1_dtc;

  Point25_out1 <= to_unsigned(16#08000#, 17);

  LTEp25_1_cast <= resize(Point25_out1, 32);
  
  LTEp25_relop1 <= '1' WHEN QuadHandle1_out1 <= LTEp25_1_cast ELSE
      '0';

  p50mA_sub_cast <= resize(Point50_out1, 32);
  p50mA_out1 <= p50mA_sub_cast - QuadHandle1_out1;

  p50mA_out1_dtc <= p50mA_out1(16 DOWNTO 9);

  QuadHandle1_out1_dtc <= QuadHandle1_out1(16 DOWNTO 9);

  
  QuadHandle2_out1 <= p50mA_out1_dtc WHEN LTEp25_relop1 = '0' ELSE
      QuadHandle1_out1_dtc;

  CastU16En2_out1 <= QuadHandle2_out1;

  CastU16En4_out1 <= resize(CastU16En2_out1, 9);

  
  CastU16En3_out1 <= "11111111" WHEN CastU16En4_out1(8) /= '0' ELSE
      CastU16En4_out1(7 DOWNTO 0);

  -- saturation block maybe optimized away
  -- if the NumDataPoints is a power of 2
  
  Saturation_out1 <= to_unsigned(16#3F#, 8) WHEN CastU16En3_out1 > to_unsigned(16#3F#, 8) ELSE
      CastU16En3_out1;

  
  Switch_out1 <= CastU16En3_out1 WHEN pow2switch_out1 = '0' ELSE
      Saturation_out1;

  
  Look_Up_Table_k <= to_unsigned(16#00#, 6) WHEN Switch_out1 = to_unsigned(16#00#, 8) ELSE
      to_unsigned(16#3F#, 6) WHEN Switch_out1 >= to_unsigned(16#3F#, 8) ELSE
      Switch_out1(5 DOWNTO 0);
  Look_Up_Table_out1 <= Look_Up_Table_data(to_integer(Look_Up_Table_k));

  Negate_cast <= resize(Look_Up_Table_out1, 18);
  Negate_cast_1 <=  - (Negate_cast);
  Negate_out1 <= Negate_cast_1(16 DOWNTO 0);

  
  Sine <= Negate_out1 WHEN LTEp50_relop1 = '0' ELSE
      Look_Up_Table_out1;

  Sine_1 <= Sine;

  x <= std_logic_vector(Sine_1);

END rtl;
