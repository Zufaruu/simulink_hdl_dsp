open_system('Tx_OFDM');
open_system('gm_Tx_OFDM');
cs.HiliteType = 'user1';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'cyan';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Tx_OFDM/Transmitter/IQ Modulator/Cosine HDL Optimized/Look-Up Table', 'user1');
annotate_port('gm_Tx_OFDM/Transmitter/IQ Modulator/Cosine HDL Optimized/Look-Up Table', 0, 1, 'Lookup Table mapped to RAM');
hilite_system('Tx_OFDM/Transmitter/IQ Modulator/Cosine HDL Optimized/cosine hdl/Look-Up Table', 'user1');
annotate_port('Tx_OFDM/Transmitter/IQ Modulator/Cosine HDL Optimized/cosine hdl/Look-Up Table', 0, 1, 'Lookup Table mapped to RAM');
cs.HiliteType = 'user1';
cs.ForegroundColor = 'black';
cs.BackgroundColor = 'cyan';
set_param(0, 'HiliteAncestorsData', cs);
hilite_system('gm_Tx_OFDM/Transmitter/IQ Modulator/Sine HDL Optimized/Look-Up Table', 'user1');
annotate_port('gm_Tx_OFDM/Transmitter/IQ Modulator/Sine HDL Optimized/Look-Up Table', 0, 1, 'Lookup Table mapped to RAM');
hilite_system('Tx_OFDM/Transmitter/IQ Modulator/Sine HDL Optimized/sine hdl/Look-Up Table', 'user1');
annotate_port('Tx_OFDM/Transmitter/IQ Modulator/Sine HDL Optimized/sine hdl/Look-Up Table', 0, 1, 'Lookup Table mapped to RAM');