-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "04/03/2025 23:01:20"

-- 
-- Device: Altera 5CSEMA4U23C6 Package UFBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	main IS
    PORT (
	CLOCK_50 : IN std_logic;
	leds : OUT std_logic_vector(7 DOWNTO 0);
	ct : OUT std_logic_vector(3 DOWNTO 0);
	GPIO_0 : OUT std_logic_vector(0 DOWNTO 0);
	data_input : IN std_logic;
	s1 : IN std_logic;
	s2 : IN std_logic
	);
END main;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_AG20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[4]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[5]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[6]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[7]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct[0]	=>  Location: PIN_AF25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct[1]	=>  Location: PIN_AF18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct[2]	=>  Location: PIN_AH21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ct[3]	=>  Location: PIN_AH18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO_0[0]	=>  Location: PIN_V12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_input	=>  Location: PIN_AF7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- s2	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ct : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_GPIO_0 : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_data_input : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \clk_div_count[0]~0_combout\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \data_input~input_o\ : std_logic;
SIGNAL \uart_rx_0|rx_sync_0~q\ : std_logic;
SIGNAL \uart_rx_0|rx_sync_1~q\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[7]~feeder_combout\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \uart_rx_0|Add0~65_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~62\ : std_logic;
SIGNAL \uart_rx_0|Add0~69_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~70\ : std_logic;
SIGNAL \uart_rx_0|Add0~53_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~54\ : std_logic;
SIGNAL \uart_rx_0|Add0~49_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~50\ : std_logic;
SIGNAL \uart_rx_0|Add0~9_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~10\ : std_logic;
SIGNAL \uart_rx_0|Add0~5_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~6\ : std_logic;
SIGNAL \uart_rx_0|Add0~45_sumout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Add0~46\ : std_logic;
SIGNAL \uart_rx_0|Add0~1_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~2\ : std_logic;
SIGNAL \uart_rx_0|Add0~41_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~42\ : std_logic;
SIGNAL \uart_rx_0|Add0~37_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~38\ : std_logic;
SIGNAL \uart_rx_0|Add0~57_sumout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Add0~58\ : std_logic;
SIGNAL \uart_rx_0|Add0~29_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~30\ : std_logic;
SIGNAL \uart_rx_0|Add0~33_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~34\ : std_logic;
SIGNAL \uart_rx_0|Add0~89_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~90\ : std_logic;
SIGNAL \uart_rx_0|Add0~25_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~26\ : std_logic;
SIGNAL \uart_rx_0|Add0~21_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~22\ : std_logic;
SIGNAL \uart_rx_0|Add0~85_sumout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Add0~86\ : std_logic;
SIGNAL \uart_rx_0|Add0~17_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~18\ : std_logic;
SIGNAL \uart_rx_0|Add0~81_sumout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Add0~82\ : std_logic;
SIGNAL \uart_rx_0|Add0~13_sumout\ : std_logic;
SIGNAL \uart_rx_0|Equal0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Equal0~3_combout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Equal0~1_combout\ : std_logic;
SIGNAL \uart_rx_0|Add0~14\ : std_logic;
SIGNAL \uart_rx_0|Add0~77_sumout\ : std_logic;
SIGNAL \uart_rx_0|Add0~78\ : std_logic;
SIGNAL \uart_rx_0|Add0~73_sumout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Equal1~2_combout\ : std_logic;
SIGNAL \uart_rx_0|state.IDLE~q\ : std_logic;
SIGNAL \uart_rx_0|bit_count~3_combout\ : std_logic;
SIGNAL \uart_rx_0|state.DATA~q\ : std_logic;
SIGNAL \uart_rx_0|Equal1~3_combout\ : std_logic;
SIGNAL \uart_rx_0|Selector0~1_combout\ : std_logic;
SIGNAL \uart_rx_0|rx_sync_1_prev~q\ : std_logic;
SIGNAL \uart_rx_0|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Selector1~0_combout\ : std_logic;
SIGNAL \uart_rx_0|state.START~q\ : std_logic;
SIGNAL \uart_rx_0|Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Selector2~1_combout\ : std_logic;
SIGNAL \uart_rx_0|state.DATA~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|bit_count[1]~1_combout\ : std_logic;
SIGNAL \uart_rx_0|bit_count~2_combout\ : std_logic;
SIGNAL \uart_rx_0|bit_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|bit_count~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Selector3~2_combout\ : std_logic;
SIGNAL \uart_rx_0|state.STOP~q\ : std_logic;
SIGNAL \uart_rx_0|always3~0_combout\ : std_logic;
SIGNAL \uart_rx_0|state.IDLE~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Selector2~2_combout\ : std_logic;
SIGNAL \uart_rx_0|state.IDLE~1_combout\ : std_logic;
SIGNAL \uart_rx_0|state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|tick_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|Equal0~2_combout\ : std_logic;
SIGNAL \uart_rx_0|Equal0~4_combout\ : std_logic;
SIGNAL \uart_rx_0|tick_count[8]~0_combout\ : std_logic;
SIGNAL \uart_rx_0|Add0~66\ : std_logic;
SIGNAL \uart_rx_0|Add0~61_sumout\ : std_logic;
SIGNAL \uart_rx_0|Equal1~1_combout\ : std_logic;
SIGNAL \uart_rx_0|always3~1_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[5]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[4]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[2]~feeder_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \freqgen_0|Add0~117_sumout\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \freqgen_0|Add0~82\ : std_logic;
SIGNAL \freqgen_0|Add0~93_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~94\ : std_logic;
SIGNAL \freqgen_0|Add0~97_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~98\ : std_logic;
SIGNAL \freqgen_0|Add0~1_sumout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~0_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~1_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~2_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~3_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~4_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~6_combout\ : std_logic;
SIGNAL \freqgen_0|Add0~118\ : std_logic;
SIGNAL \freqgen_0|Add0~113_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~114\ : std_logic;
SIGNAL \freqgen_0|Add0~109_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~110\ : std_logic;
SIGNAL \freqgen_0|Add0~105_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~106\ : std_logic;
SIGNAL \freqgen_0|Add0~101_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~102\ : std_logic;
SIGNAL \freqgen_0|Add0~61_sumout\ : std_logic;
SIGNAL \freqgen_0|count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~62\ : std_logic;
SIGNAL \freqgen_0|Add0~57_sumout\ : std_logic;
SIGNAL \freqgen_0|count[8]~feeder_combout\ : std_logic;
SIGNAL \freqgen_0|Add0~58\ : std_logic;
SIGNAL \freqgen_0|Add0~53_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~54\ : std_logic;
SIGNAL \freqgen_0|Add0~49_sumout\ : std_logic;
SIGNAL \freqgen_0|count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~50\ : std_logic;
SIGNAL \freqgen_0|Add0~45_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~46\ : std_logic;
SIGNAL \freqgen_0|Add0~77_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~78\ : std_logic;
SIGNAL \freqgen_0|Add0~73_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~74\ : std_logic;
SIGNAL \freqgen_0|Add0~69_sumout\ : std_logic;
SIGNAL \freqgen_0|count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~70\ : std_logic;
SIGNAL \freqgen_0|Add0~65_sumout\ : std_logic;
SIGNAL \freqgen_0|count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~66\ : std_logic;
SIGNAL \freqgen_0|Add0~41_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~42\ : std_logic;
SIGNAL \freqgen_0|Add0~17_sumout\ : std_logic;
SIGNAL \freqgen_0|count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~18\ : std_logic;
SIGNAL \freqgen_0|Add0~21_sumout\ : std_logic;
SIGNAL \freqgen_0|count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~22\ : std_logic;
SIGNAL \freqgen_0|Add0~25_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~26\ : std_logic;
SIGNAL \freqgen_0|Add0~29_sumout\ : std_logic;
SIGNAL \freqgen_0|count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~30\ : std_logic;
SIGNAL \freqgen_0|Add0~33_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~34\ : std_logic;
SIGNAL \freqgen_0|Add0~37_sumout\ : std_logic;
SIGNAL \freqgen_0|count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~38\ : std_logic;
SIGNAL \freqgen_0|Add0~13_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~14\ : std_logic;
SIGNAL \freqgen_0|Add0~9_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~10\ : std_logic;
SIGNAL \freqgen_0|Add0~5_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~6\ : std_logic;
SIGNAL \freqgen_0|Add0~85_sumout\ : std_logic;
SIGNAL \freqgen_0|count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~86\ : std_logic;
SIGNAL \freqgen_0|Add0~89_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~90\ : std_logic;
SIGNAL \freqgen_0|Add0~81_sumout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~5_combout\ : std_logic;
SIGNAL \freqgen_0|new_freq~0_combout\ : std_logic;
SIGNAL \freqgen_0|new_freq~q\ : std_logic;
SIGNAL \siggen_0|Selector0~1_combout\ : std_logic;
SIGNAL \siggen_0|index~2_combout\ : std_logic;
SIGNAL \siggen_0|index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|Selector1~0_combout\ : std_logic;
SIGNAL \siggen_0|state.IDLE~q\ : std_logic;
SIGNAL \siggen_0|Selector2~0_combout\ : std_logic;
SIGNAL \siggen_0|state.START~q\ : std_logic;
SIGNAL \siggen_0|Selector3~0_combout\ : std_logic;
SIGNAL \siggen_0|state.DATA~q\ : std_logic;
SIGNAL \siggen_0|index~3_combout\ : std_logic;
SIGNAL \siggen_0|state.START~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[1]~feeder_combout\ : std_logic;
SIGNAL \uart_rx_0|rx_shift_reg[0]~feeder_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr6~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr5~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr4~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr3~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr2~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr1~0_combout\ : std_logic;
SIGNAL \decode7_0|WideOr0~0_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~0_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~1_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~2_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~3_combout\ : std_logic;
SIGNAL \uart_rx_0|tick_count\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \uart_rx_0|rx_shift_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \freqgen_0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \siggen_0|index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_0|data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL clk_div_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_rx_0|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_bit_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_state.DATA~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_state.START~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[10]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[20]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[14]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[17]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[19]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[11]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[7]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[9]~DUPLICATE_q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_data_input~input_o\ : std_logic;
SIGNAL ALT_INV_clk_div_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \uart_rx_0|ALT_INV_state.IDLE~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_state.START~q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Selector0~1_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_rx_sync_1_prev~q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_rx_sync_1~q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \uart_rx_0|ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_state.DATA~q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_rx_shift_reg\ : std_logic_vector(6 DOWNTO 1);
SIGNAL \uart_rx_0|ALT_INV_always3~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_state.STOP~q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_new_freq~q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \decode2_0|ALT_INV_Decoder0~3_combout\ : std_logic;
SIGNAL \decode2_0|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \decode2_0|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr1~0_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr2~0_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr3~0_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr4~0_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr5~0_combout\ : std_logic;
SIGNAL \decode7_0|ALT_INV_WideOr6~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_Selector0~0_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \siggen_0|ALT_INV_state.DATA~q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_state.START~q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count\ : std_logic_vector(31 DOWNTO 2);
SIGNAL \freqgen_0|ALT_INV_Add0~57_sumout\ : std_logic;
SIGNAL \uart_rx_0|ALT_INV_tick_count\ : std_logic_vector(22 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
leds <= ww_leds;
ct <= ww_ct;
GPIO_0 <= ww_GPIO_0;
ww_data_input <= data_input;
ww_s1 <= s1;
ww_s2 <= s2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\ <= NOT \uart_rx_0|state.IDLE~DUPLICATE_q\;
\uart_rx_0|ALT_INV_bit_count[1]~DUPLICATE_q\ <= NOT \uart_rx_0|bit_count[1]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_state.DATA~DUPLICATE_q\ <= NOT \uart_rx_0|state.DATA~DUPLICATE_q\;
\siggen_0|ALT_INV_index[2]~DUPLICATE_q\ <= NOT \siggen_0|index[2]~DUPLICATE_q\;
\siggen_0|ALT_INV_state.START~DUPLICATE_q\ <= NOT \siggen_0|state.START~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[26]~DUPLICATE_q\ <= NOT \freqgen_0|count[26]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[14]~DUPLICATE_q\ <= NOT \freqgen_0|count[14]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[15]~DUPLICATE_q\ <= NOT \freqgen_0|count[15]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[7]~DUPLICATE_q\ <= NOT \freqgen_0|count[7]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[10]~DUPLICATE_q\ <= NOT \freqgen_0|count[10]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[22]~DUPLICATE_q\ <= NOT \freqgen_0|count[22]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[20]~DUPLICATE_q\ <= NOT \freqgen_0|count[20]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[18]~DUPLICATE_q\ <= NOT \freqgen_0|count[18]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[17]~DUPLICATE_q\ <= NOT \freqgen_0|count[17]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[14]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[14]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[17]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[17]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[19]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[19]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[11]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[11]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[7]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[7]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[9]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[9]~DUPLICATE_q\;
\uart_rx_0|ALT_INV_tick_count[13]~DUPLICATE_q\ <= NOT \uart_rx_0|tick_count[13]~DUPLICATE_q\;
\ALT_INV_data_input~input_o\ <= NOT \data_input~input_o\;
ALT_INV_clk_div_count(0) <= NOT clk_div_count(0);
ALT_INV_clk_div_count(1) <= NOT clk_div_count(1);
ALT_INV_clk_div_count(2) <= NOT clk_div_count(2);
ALT_INV_clk_div_count(3) <= NOT clk_div_count(3);
ALT_INV_clk_div_count(4) <= NOT clk_div_count(4);
ALT_INV_clk_div_count(5) <= NOT clk_div_count(5);
ALT_INV_clk_div_count(6) <= NOT clk_div_count(6);
ALT_INV_clk_div_count(7) <= NOT clk_div_count(7);
ALT_INV_clk_div_count(8) <= NOT clk_div_count(8);
ALT_INV_clk_div_count(9) <= NOT clk_div_count(9);
ALT_INV_clk_div_count(10) <= NOT clk_div_count(10);
ALT_INV_clk_div_count(11) <= NOT clk_div_count(11);
ALT_INV_clk_div_count(12) <= NOT clk_div_count(12);
ALT_INV_clk_div_count(13) <= NOT clk_div_count(13);
\uart_rx_0|ALT_INV_state.IDLE~0_combout\ <= NOT \uart_rx_0|state.IDLE~0_combout\;
\uart_rx_0|ALT_INV_Selector2~2_combout\ <= NOT \uart_rx_0|Selector2~2_combout\;
\uart_rx_0|ALT_INV_Selector2~0_combout\ <= NOT \uart_rx_0|Selector2~0_combout\;
\uart_rx_0|ALT_INV_state.START~q\ <= NOT \uart_rx_0|state.START~q\;
\uart_rx_0|ALT_INV_Selector0~1_combout\ <= NOT \uart_rx_0|Selector0~1_combout\;
\uart_rx_0|ALT_INV_Selector0~0_combout\ <= NOT \uart_rx_0|Selector0~0_combout\;
\uart_rx_0|ALT_INV_rx_sync_1_prev~q\ <= NOT \uart_rx_0|rx_sync_1_prev~q\;
\uart_rx_0|ALT_INV_rx_sync_1~q\ <= NOT \uart_rx_0|rx_sync_1~q\;
\uart_rx_0|ALT_INV_Equal0~4_combout\ <= NOT \uart_rx_0|Equal0~4_combout\;
\uart_rx_0|ALT_INV_Equal0~3_combout\ <= NOT \uart_rx_0|Equal0~3_combout\;
\uart_rx_0|ALT_INV_Equal0~2_combout\ <= NOT \uart_rx_0|Equal0~2_combout\;
\uart_rx_0|ALT_INV_state.IDLE~q\ <= NOT \uart_rx_0|state.IDLE~q\;
\uart_rx_0|ALT_INV_bit_count\(0) <= NOT \uart_rx_0|bit_count\(0);
\uart_rx_0|ALT_INV_bit_count\(1) <= NOT \uart_rx_0|bit_count\(1);
\uart_rx_0|ALT_INV_bit_count\(2) <= NOT \uart_rx_0|bit_count\(2);
\uart_rx_0|ALT_INV_Equal1~3_combout\ <= NOT \uart_rx_0|Equal1~3_combout\;
\uart_rx_0|ALT_INV_state.DATA~q\ <= NOT \uart_rx_0|state.DATA~q\;
\freqgen_0|ALT_INV_LessThan0~5_combout\ <= NOT \freqgen_0|LessThan0~5_combout\;
\freqgen_0|ALT_INV_LessThan0~4_combout\ <= NOT \freqgen_0|LessThan0~4_combout\;
\freqgen_0|ALT_INV_LessThan0~3_combout\ <= NOT \freqgen_0|LessThan0~3_combout\;
\freqgen_0|ALT_INV_LessThan0~2_combout\ <= NOT \freqgen_0|LessThan0~2_combout\;
\freqgen_0|ALT_INV_LessThan0~1_combout\ <= NOT \freqgen_0|LessThan0~1_combout\;
\freqgen_0|ALT_INV_LessThan0~0_combout\ <= NOT \freqgen_0|LessThan0~0_combout\;
\uart_rx_0|ALT_INV_rx_shift_reg\(3) <= NOT \uart_rx_0|rx_shift_reg\(3);
\uart_rx_0|ALT_INV_rx_shift_reg\(2) <= NOT \uart_rx_0|rx_shift_reg\(2);
\uart_rx_0|ALT_INV_rx_shift_reg\(6) <= NOT \uart_rx_0|rx_shift_reg\(6);
\uart_rx_0|ALT_INV_rx_shift_reg\(1) <= NOT \uart_rx_0|rx_shift_reg\(1);
\uart_rx_0|ALT_INV_always3~0_combout\ <= NOT \uart_rx_0|always3~0_combout\;
\uart_rx_0|ALT_INV_Equal1~2_combout\ <= NOT \uart_rx_0|Equal1~2_combout\;
\uart_rx_0|ALT_INV_Equal1~1_combout\ <= NOT \uart_rx_0|Equal1~1_combout\;
\uart_rx_0|ALT_INV_Equal1~0_combout\ <= NOT \uart_rx_0|Equal1~0_combout\;
\uart_rx_0|ALT_INV_Equal0~1_combout\ <= NOT \uart_rx_0|Equal0~1_combout\;
\uart_rx_0|ALT_INV_Equal0~0_combout\ <= NOT \uart_rx_0|Equal0~0_combout\;
\uart_rx_0|ALT_INV_state.STOP~q\ <= NOT \uart_rx_0|state.STOP~q\;
\freqgen_0|ALT_INV_new_freq~q\ <= NOT \freqgen_0|new_freq~q\;
\siggen_0|ALT_INV_state.IDLE~q\ <= NOT \siggen_0|state.IDLE~q\;
\decode2_0|ALT_INV_Decoder0~3_combout\ <= NOT \decode2_0|Decoder0~3_combout\;
\decode2_0|ALT_INV_Decoder0~2_combout\ <= NOT \decode2_0|Decoder0~2_combout\;
\decode2_0|ALT_INV_Decoder0~1_combout\ <= NOT \decode2_0|Decoder0~1_combout\;
\decode7_0|ALT_INV_WideOr1~0_combout\ <= NOT \decode7_0|WideOr1~0_combout\;
\decode7_0|ALT_INV_WideOr2~0_combout\ <= NOT \decode7_0|WideOr2~0_combout\;
\decode7_0|ALT_INV_WideOr3~0_combout\ <= NOT \decode7_0|WideOr3~0_combout\;
\decode7_0|ALT_INV_WideOr4~0_combout\ <= NOT \decode7_0|WideOr4~0_combout\;
\decode7_0|ALT_INV_WideOr5~0_combout\ <= NOT \decode7_0|WideOr5~0_combout\;
\decode7_0|ALT_INV_WideOr6~0_combout\ <= NOT \decode7_0|WideOr6~0_combout\;
\ALT_INV_Mux0~0_combout\ <= NOT \Mux0~0_combout\;
\uart_rx_0|ALT_INV_data\(3) <= NOT \uart_rx_0|data\(3);
\uart_rx_0|ALT_INV_data\(7) <= NOT \uart_rx_0|data\(7);
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\uart_rx_0|ALT_INV_data\(2) <= NOT \uart_rx_0|data\(2);
\uart_rx_0|ALT_INV_data\(6) <= NOT \uart_rx_0|data\(6);
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\uart_rx_0|ALT_INV_data\(1) <= NOT \uart_rx_0|data\(1);
\uart_rx_0|ALT_INV_data\(5) <= NOT \uart_rx_0|data\(5);
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
ALT_INV_clk_div_count(15) <= NOT clk_div_count(15);
ALT_INV_clk_div_count(14) <= NOT clk_div_count(14);
\uart_rx_0|ALT_INV_data\(4) <= NOT \uart_rx_0|data\(4);
\uart_rx_0|ALT_INV_data\(0) <= NOT \uart_rx_0|data\(0);
\siggen_0|ALT_INV_Selector0~0_combout\ <= NOT \siggen_0|Selector0~0_combout\;
\siggen_0|ALT_INV_index\(2) <= NOT \siggen_0|index\(2);
\siggen_0|ALT_INV_state.DATA~q\ <= NOT \siggen_0|state.DATA~q\;
\siggen_0|ALT_INV_index\(0) <= NOT \siggen_0|index\(0);
\siggen_0|ALT_INV_index\(1) <= NOT \siggen_0|index\(1);
\siggen_0|ALT_INV_state.START~q\ <= NOT \siggen_0|state.START~q\;
\freqgen_0|ALT_INV_count\(2) <= NOT \freqgen_0|count\(2);
\freqgen_0|ALT_INV_count\(3) <= NOT \freqgen_0|count\(3);
\freqgen_0|ALT_INV_count\(4) <= NOT \freqgen_0|count\(4);
\freqgen_0|ALT_INV_count\(5) <= NOT \freqgen_0|count\(5);
\freqgen_0|ALT_INV_count\(6) <= NOT \freqgen_0|count\(6);
\freqgen_0|ALT_INV_Add0~57_sumout\ <= NOT \freqgen_0|Add0~57_sumout\;
\freqgen_0|ALT_INV_count\(30) <= NOT \freqgen_0|count\(30);
\freqgen_0|ALT_INV_count\(29) <= NOT \freqgen_0|count\(29);
\freqgen_0|ALT_INV_count\(27) <= NOT \freqgen_0|count\(27);
\freqgen_0|ALT_INV_count\(26) <= NOT \freqgen_0|count\(26);
\freqgen_0|ALT_INV_count\(28) <= NOT \freqgen_0|count\(28);
\freqgen_0|ALT_INV_count\(12) <= NOT \freqgen_0|count\(12);
\freqgen_0|ALT_INV_count\(13) <= NOT \freqgen_0|count\(13);
\freqgen_0|ALT_INV_count\(14) <= NOT \freqgen_0|count\(14);
\freqgen_0|ALT_INV_count\(15) <= NOT \freqgen_0|count\(15);
\freqgen_0|ALT_INV_count\(7) <= NOT \freqgen_0|count\(7);
\freqgen_0|ALT_INV_count\(8) <= NOT \freqgen_0|count\(8);
\freqgen_0|ALT_INV_count\(9) <= NOT \freqgen_0|count\(9);
\freqgen_0|ALT_INV_count\(10) <= NOT \freqgen_0|count\(10);
\freqgen_0|ALT_INV_count\(11) <= NOT \freqgen_0|count\(11);
\freqgen_0|ALT_INV_count\(16) <= NOT \freqgen_0|count\(16);
\freqgen_0|ALT_INV_count\(22) <= NOT \freqgen_0|count\(22);
\freqgen_0|ALT_INV_count\(21) <= NOT \freqgen_0|count\(21);
\freqgen_0|ALT_INV_count\(20) <= NOT \freqgen_0|count\(20);
\freqgen_0|ALT_INV_count\(19) <= NOT \freqgen_0|count\(19);
\freqgen_0|ALT_INV_count\(18) <= NOT \freqgen_0|count\(18);
\freqgen_0|ALT_INV_count\(17) <= NOT \freqgen_0|count\(17);
\freqgen_0|ALT_INV_count\(23) <= NOT \freqgen_0|count\(23);
\freqgen_0|ALT_INV_count\(24) <= NOT \freqgen_0|count\(24);
\freqgen_0|ALT_INV_count\(25) <= NOT \freqgen_0|count\(25);
\freqgen_0|ALT_INV_count\(31) <= NOT \freqgen_0|count\(31);
\uart_rx_0|ALT_INV_tick_count\(14) <= NOT \uart_rx_0|tick_count\(14);
\uart_rx_0|ALT_INV_tick_count\(17) <= NOT \uart_rx_0|tick_count\(17);
\uart_rx_0|ALT_INV_tick_count\(19) <= NOT \uart_rx_0|tick_count\(19);
\uart_rx_0|ALT_INV_tick_count\(21) <= NOT \uart_rx_0|tick_count\(21);
\uart_rx_0|ALT_INV_tick_count\(22) <= NOT \uart_rx_0|tick_count\(22);
\uart_rx_0|ALT_INV_tick_count\(2) <= NOT \uart_rx_0|tick_count\(2);
\uart_rx_0|ALT_INV_tick_count\(0) <= NOT \uart_rx_0|tick_count\(0);
\uart_rx_0|ALT_INV_tick_count\(1) <= NOT \uart_rx_0|tick_count\(1);
\uart_rx_0|ALT_INV_tick_count\(11) <= NOT \uart_rx_0|tick_count\(11);
\uart_rx_0|ALT_INV_tick_count\(3) <= NOT \uart_rx_0|tick_count\(3);
\uart_rx_0|ALT_INV_tick_count\(4) <= NOT \uart_rx_0|tick_count\(4);
\uart_rx_0|ALT_INV_tick_count\(7) <= NOT \uart_rx_0|tick_count\(7);
\uart_rx_0|ALT_INV_tick_count\(9) <= NOT \uart_rx_0|tick_count\(9);
\uart_rx_0|ALT_INV_tick_count\(10) <= NOT \uart_rx_0|tick_count\(10);
\uart_rx_0|ALT_INV_tick_count\(13) <= NOT \uart_rx_0|tick_count\(13);
\uart_rx_0|ALT_INV_tick_count\(12) <= NOT \uart_rx_0|tick_count\(12);
\uart_rx_0|ALT_INV_tick_count\(15) <= NOT \uart_rx_0|tick_count\(15);
\uart_rx_0|ALT_INV_tick_count\(16) <= NOT \uart_rx_0|tick_count\(16);
\uart_rx_0|ALT_INV_tick_count\(18) <= NOT \uart_rx_0|tick_count\(18);
\uart_rx_0|ALT_INV_tick_count\(20) <= NOT \uart_rx_0|tick_count\(20);
\uart_rx_0|ALT_INV_tick_count\(5) <= NOT \uart_rx_0|tick_count\(5);
\uart_rx_0|ALT_INV_tick_count\(6) <= NOT \uart_rx_0|tick_count\(6);
\uart_rx_0|ALT_INV_tick_count\(8) <= NOT \uart_rx_0|tick_count\(8);

-- Location: IOOBUF_X53_Y0_N36
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr6~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(0));

-- Location: IOOBUF_X50_Y0_N2
\leds[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr5~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(1));

-- Location: IOOBUF_X53_Y0_N53
\leds[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr4~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(2));

-- Location: IOOBUF_X59_Y0_N53
\leds[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr3~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(3));

-- Location: IOOBUF_X51_Y0_N2
\leds[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr2~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(4));

-- Location: IOOBUF_X61_Y0_N53
\leds[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|ALT_INV_WideOr1~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(5));

-- Location: IOOBUF_X50_Y0_N36
\leds[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode7_0|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => ww_leds(6));

-- Location: IOOBUF_X59_Y0_N2
\leds[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_leds(7));

-- Location: IOOBUF_X65_Y0_N2
\ct[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode2_0|Decoder0~0_combout\,
	devoe => ww_devoe,
	o => ww_ct(0));

-- Location: IOOBUF_X48_Y0_N76
\ct[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode2_0|ALT_INV_Decoder0~1_combout\,
	devoe => ww_devoe,
	o => ww_ct(1));

-- Location: IOOBUF_X57_Y0_N53
\ct[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode2_0|ALT_INV_Decoder0~2_combout\,
	devoe => ww_devoe,
	o => ww_ct(2));

-- Location: IOOBUF_X50_Y0_N53
\ct[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decode2_0|ALT_INV_Decoder0~3_combout\,
	devoe => ww_devoe,
	o => ww_ct(3));

-- Location: IOOBUF_X21_Y0_N2
\GPIO_0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \siggen_0|Selector0~0_combout\,
	devoe => ww_devoe,
	o => ww_GPIO_0(0));

-- Location: IOIBUF_X15_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X49_Y2_N54
\clk_div_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_count[0]~0_combout\ = ( !clk_div_count(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_div_count(0),
	combout => \clk_div_count[0]~0_combout\);

-- Location: FF_X49_Y2_N56
\clk_div_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \clk_div_count[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(0));

-- Location: LABCELL_X49_Y2_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( clk_div_count(0) ) + ( clk_div_count(1) ) + ( !VCC ))
-- \Add0~58\ = CARRY(( clk_div_count(0) ) + ( clk_div_count(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(1),
	datad => ALT_INV_clk_div_count(0),
	cin => GND,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X49_Y2_N2
\clk_div_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(1));

-- Location: LABCELL_X49_Y2_N3
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( clk_div_count(2) ) + ( GND ) + ( \Add0~58\ ))
-- \Add0~54\ = CARRY(( clk_div_count(2) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(2),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X49_Y2_N5
\clk_div_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(2));

-- Location: LABCELL_X49_Y2_N6
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( clk_div_count(3) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~50\ = CARRY(( clk_div_count(3) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(3),
	cin => \Add0~54\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X49_Y2_N7
\clk_div_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(3));

-- Location: LABCELL_X49_Y2_N9
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( clk_div_count(4) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~46\ = CARRY(( clk_div_count(4) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(4),
	cin => \Add0~50\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X49_Y2_N11
\clk_div_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(4));

-- Location: LABCELL_X49_Y2_N12
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( clk_div_count(5) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~42\ = CARRY(( clk_div_count(5) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_clk_div_count(5),
	cin => \Add0~46\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X49_Y2_N14
\clk_div_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(5));

-- Location: LABCELL_X49_Y2_N15
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( clk_div_count(6) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~38\ = CARRY(( clk_div_count(6) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(6),
	cin => \Add0~42\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X49_Y2_N17
\clk_div_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(6));

-- Location: LABCELL_X49_Y2_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( clk_div_count(7) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~34\ = CARRY(( clk_div_count(7) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(7),
	cin => \Add0~38\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X49_Y2_N20
\clk_div_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(7));

-- Location: LABCELL_X49_Y2_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( clk_div_count(8) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( clk_div_count(8) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(8),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X49_Y2_N23
\clk_div_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(8));

-- Location: LABCELL_X49_Y2_N24
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( clk_div_count(9) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( clk_div_count(9) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(9),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X49_Y2_N26
\clk_div_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(9));

-- Location: LABCELL_X49_Y2_N27
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( clk_div_count(10) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~22\ = CARRY(( clk_div_count(10) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(10),
	cin => \Add0~26\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X49_Y2_N29
\clk_div_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(10));

-- Location: LABCELL_X49_Y2_N30
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( clk_div_count(11) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~18\ = CARRY(( clk_div_count(11) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(11),
	cin => \Add0~22\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X49_Y2_N31
\clk_div_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(11));

-- Location: LABCELL_X49_Y2_N33
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( clk_div_count(12) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~14\ = CARRY(( clk_div_count(12) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(12),
	cin => \Add0~18\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X49_Y2_N35
\clk_div_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(12));

-- Location: LABCELL_X49_Y2_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( clk_div_count(13) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( clk_div_count(13) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(13),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X49_Y2_N37
\clk_div_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(13));

-- Location: LABCELL_X49_Y2_N39
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( clk_div_count(14) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~2\ = CARRY(( clk_div_count(14) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(14),
	cin => \Add0~10\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: FF_X49_Y2_N41
\clk_div_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(14));

-- Location: IOIBUF_X17_Y0_N75
\data_input~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_input,
	o => \data_input~input_o\);

-- Location: FF_X48_Y4_N52
\uart_rx_0|rx_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \data_input~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_sync_0~q\);

-- Location: FF_X48_Y4_N56
\uart_rx_0|rx_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_sync_0~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_sync_1~q\);

-- Location: LABCELL_X48_Y4_N15
\uart_rx_0|rx_shift_reg[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|rx_shift_reg[7]~feeder_combout\ = \uart_rx_0|rx_sync_1~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_rx_sync_1~q\,
	combout => \uart_rx_0|rx_shift_reg[7]~feeder_combout\);

-- Location: IOIBUF_X48_Y0_N41
\s2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: MLABCELL_X50_Y4_N0
\uart_rx_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~65_sumout\ = SUM(( \uart_rx_0|tick_count\(0) ) + ( VCC ) + ( !VCC ))
-- \uart_rx_0|Add0~66\ = CARRY(( \uart_rx_0|tick_count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count\(0),
	cin => GND,
	sumout => \uart_rx_0|Add0~65_sumout\,
	cout => \uart_rx_0|Add0~66\);

-- Location: MLABCELL_X50_Y4_N3
\uart_rx_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~61_sumout\ = SUM(( \uart_rx_0|tick_count\(1) ) + ( GND ) + ( \uart_rx_0|Add0~66\ ))
-- \uart_rx_0|Add0~62\ = CARRY(( \uart_rx_0|tick_count\(1) ) + ( GND ) + ( \uart_rx_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count\(1),
	cin => \uart_rx_0|Add0~66\,
	sumout => \uart_rx_0|Add0~61_sumout\,
	cout => \uart_rx_0|Add0~62\);

-- Location: MLABCELL_X50_Y4_N6
\uart_rx_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~69_sumout\ = SUM(( \uart_rx_0|tick_count\(2) ) + ( GND ) + ( \uart_rx_0|Add0~62\ ))
-- \uart_rx_0|Add0~70\ = CARRY(( \uart_rx_0|tick_count\(2) ) + ( GND ) + ( \uart_rx_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count\(2),
	cin => \uart_rx_0|Add0~62\,
	sumout => \uart_rx_0|Add0~69_sumout\,
	cout => \uart_rx_0|Add0~70\);

-- Location: FF_X50_Y4_N7
\uart_rx_0|tick_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~69_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(2));

-- Location: MLABCELL_X50_Y4_N9
\uart_rx_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~53_sumout\ = SUM(( \uart_rx_0|tick_count\(3) ) + ( GND ) + ( \uart_rx_0|Add0~70\ ))
-- \uart_rx_0|Add0~54\ = CARRY(( \uart_rx_0|tick_count\(3) ) + ( GND ) + ( \uart_rx_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(3),
	cin => \uart_rx_0|Add0~70\,
	sumout => \uart_rx_0|Add0~53_sumout\,
	cout => \uart_rx_0|Add0~54\);

-- Location: FF_X50_Y4_N11
\uart_rx_0|tick_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~53_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(3));

-- Location: MLABCELL_X50_Y4_N12
\uart_rx_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~49_sumout\ = SUM(( \uart_rx_0|tick_count\(4) ) + ( GND ) + ( \uart_rx_0|Add0~54\ ))
-- \uart_rx_0|Add0~50\ = CARRY(( \uart_rx_0|tick_count\(4) ) + ( GND ) + ( \uart_rx_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_tick_count\(4),
	cin => \uart_rx_0|Add0~54\,
	sumout => \uart_rx_0|Add0~49_sumout\,
	cout => \uart_rx_0|Add0~50\);

-- Location: FF_X50_Y4_N14
\uart_rx_0|tick_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~49_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(4));

-- Location: MLABCELL_X50_Y4_N15
\uart_rx_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~9_sumout\ = SUM(( \uart_rx_0|tick_count\(5) ) + ( GND ) + ( \uart_rx_0|Add0~50\ ))
-- \uart_rx_0|Add0~10\ = CARRY(( \uart_rx_0|tick_count\(5) ) + ( GND ) + ( \uart_rx_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(5),
	cin => \uart_rx_0|Add0~50\,
	sumout => \uart_rx_0|Add0~9_sumout\,
	cout => \uart_rx_0|Add0~10\);

-- Location: FF_X50_Y4_N17
\uart_rx_0|tick_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~9_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(5));

-- Location: MLABCELL_X50_Y4_N18
\uart_rx_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~5_sumout\ = SUM(( \uart_rx_0|tick_count\(6) ) + ( GND ) + ( \uart_rx_0|Add0~10\ ))
-- \uart_rx_0|Add0~6\ = CARRY(( \uart_rx_0|tick_count\(6) ) + ( GND ) + ( \uart_rx_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(6),
	cin => \uart_rx_0|Add0~10\,
	sumout => \uart_rx_0|Add0~5_sumout\,
	cout => \uart_rx_0|Add0~6\);

-- Location: FF_X50_Y4_N20
\uart_rx_0|tick_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~5_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(6));

-- Location: MLABCELL_X50_Y4_N21
\uart_rx_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~45_sumout\ = SUM(( \uart_rx_0|tick_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~6\ ))
-- \uart_rx_0|Add0~46\ = CARRY(( \uart_rx_0|tick_count[7]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count[7]~DUPLICATE_q\,
	cin => \uart_rx_0|Add0~6\,
	sumout => \uart_rx_0|Add0~45_sumout\,
	cout => \uart_rx_0|Add0~46\);

-- Location: FF_X50_Y4_N23
\uart_rx_0|tick_count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~45_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[7]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y4_N24
\uart_rx_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~1_sumout\ = SUM(( \uart_rx_0|tick_count\(8) ) + ( GND ) + ( \uart_rx_0|Add0~46\ ))
-- \uart_rx_0|Add0~2\ = CARRY(( \uart_rx_0|tick_count\(8) ) + ( GND ) + ( \uart_rx_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(8),
	cin => \uart_rx_0|Add0~46\,
	sumout => \uart_rx_0|Add0~1_sumout\,
	cout => \uart_rx_0|Add0~2\);

-- Location: FF_X50_Y4_N26
\uart_rx_0|tick_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~1_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(8));

-- Location: MLABCELL_X50_Y4_N27
\uart_rx_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~41_sumout\ = SUM(( \uart_rx_0|tick_count\(9) ) + ( GND ) + ( \uart_rx_0|Add0~2\ ))
-- \uart_rx_0|Add0~42\ = CARRY(( \uart_rx_0|tick_count\(9) ) + ( GND ) + ( \uart_rx_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count\(9),
	cin => \uart_rx_0|Add0~2\,
	sumout => \uart_rx_0|Add0~41_sumout\,
	cout => \uart_rx_0|Add0~42\);

-- Location: FF_X50_Y4_N29
\uart_rx_0|tick_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~41_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(9));

-- Location: MLABCELL_X50_Y3_N0
\uart_rx_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~37_sumout\ = SUM(( \uart_rx_0|tick_count\(10) ) + ( GND ) + ( \uart_rx_0|Add0~42\ ))
-- \uart_rx_0|Add0~38\ = CARRY(( \uart_rx_0|tick_count\(10) ) + ( GND ) + ( \uart_rx_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(10),
	cin => \uart_rx_0|Add0~42\,
	sumout => \uart_rx_0|Add0~37_sumout\,
	cout => \uart_rx_0|Add0~38\);

-- Location: FF_X50_Y3_N2
\uart_rx_0|tick_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~37_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(10));

-- Location: MLABCELL_X50_Y3_N3
\uart_rx_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~57_sumout\ = SUM(( \uart_rx_0|tick_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~38\ ))
-- \uart_rx_0|Add0~58\ = CARRY(( \uart_rx_0|tick_count[11]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count[11]~DUPLICATE_q\,
	cin => \uart_rx_0|Add0~38\,
	sumout => \uart_rx_0|Add0~57_sumout\,
	cout => \uart_rx_0|Add0~58\);

-- Location: FF_X50_Y3_N5
\uart_rx_0|tick_count[11]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~57_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[11]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y3_N6
\uart_rx_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~29_sumout\ = SUM(( \uart_rx_0|tick_count\(12) ) + ( GND ) + ( \uart_rx_0|Add0~58\ ))
-- \uart_rx_0|Add0~30\ = CARRY(( \uart_rx_0|tick_count\(12) ) + ( GND ) + ( \uart_rx_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_tick_count\(12),
	cin => \uart_rx_0|Add0~58\,
	sumout => \uart_rx_0|Add0~29_sumout\,
	cout => \uart_rx_0|Add0~30\);

-- Location: FF_X50_Y3_N8
\uart_rx_0|tick_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~29_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(12));

-- Location: MLABCELL_X50_Y3_N9
\uart_rx_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~33_sumout\ = SUM(( \uart_rx_0|tick_count\(13) ) + ( GND ) + ( \uart_rx_0|Add0~30\ ))
-- \uart_rx_0|Add0~34\ = CARRY(( \uart_rx_0|tick_count\(13) ) + ( GND ) + ( \uart_rx_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(13),
	cin => \uart_rx_0|Add0~30\,
	sumout => \uart_rx_0|Add0~33_sumout\,
	cout => \uart_rx_0|Add0~34\);

-- Location: FF_X50_Y3_N11
\uart_rx_0|tick_count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~33_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(13));

-- Location: MLABCELL_X50_Y3_N12
\uart_rx_0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~89_sumout\ = SUM(( \uart_rx_0|tick_count\(14) ) + ( GND ) + ( \uart_rx_0|Add0~34\ ))
-- \uart_rx_0|Add0~90\ = CARRY(( \uart_rx_0|tick_count\(14) ) + ( GND ) + ( \uart_rx_0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(14),
	cin => \uart_rx_0|Add0~34\,
	sumout => \uart_rx_0|Add0~89_sumout\,
	cout => \uart_rx_0|Add0~90\);

-- Location: FF_X50_Y3_N13
\uart_rx_0|tick_count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~89_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(14));

-- Location: MLABCELL_X50_Y3_N15
\uart_rx_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~25_sumout\ = SUM(( \uart_rx_0|tick_count\(15) ) + ( GND ) + ( \uart_rx_0|Add0~90\ ))
-- \uart_rx_0|Add0~26\ = CARRY(( \uart_rx_0|tick_count\(15) ) + ( GND ) + ( \uart_rx_0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(15),
	cin => \uart_rx_0|Add0~90\,
	sumout => \uart_rx_0|Add0~25_sumout\,
	cout => \uart_rx_0|Add0~26\);

-- Location: FF_X50_Y3_N17
\uart_rx_0|tick_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~25_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(15));

-- Location: MLABCELL_X50_Y3_N18
\uart_rx_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~21_sumout\ = SUM(( \uart_rx_0|tick_count\(16) ) + ( GND ) + ( \uart_rx_0|Add0~26\ ))
-- \uart_rx_0|Add0~22\ = CARRY(( \uart_rx_0|tick_count\(16) ) + ( GND ) + ( \uart_rx_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(16),
	cin => \uart_rx_0|Add0~26\,
	sumout => \uart_rx_0|Add0~21_sumout\,
	cout => \uart_rx_0|Add0~22\);

-- Location: FF_X50_Y3_N20
\uart_rx_0|tick_count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~21_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(16));

-- Location: MLABCELL_X50_Y3_N21
\uart_rx_0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~85_sumout\ = SUM(( \uart_rx_0|tick_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~22\ ))
-- \uart_rx_0|Add0~86\ = CARRY(( \uart_rx_0|tick_count[17]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count[17]~DUPLICATE_q\,
	cin => \uart_rx_0|Add0~22\,
	sumout => \uart_rx_0|Add0~85_sumout\,
	cout => \uart_rx_0|Add0~86\);

-- Location: FF_X50_Y3_N22
\uart_rx_0|tick_count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~85_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[17]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y3_N24
\uart_rx_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~17_sumout\ = SUM(( \uart_rx_0|tick_count\(18) ) + ( GND ) + ( \uart_rx_0|Add0~86\ ))
-- \uart_rx_0|Add0~18\ = CARRY(( \uart_rx_0|tick_count\(18) ) + ( GND ) + ( \uart_rx_0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_tick_count\(18),
	cin => \uart_rx_0|Add0~86\,
	sumout => \uart_rx_0|Add0~17_sumout\,
	cout => \uart_rx_0|Add0~18\);

-- Location: FF_X50_Y3_N25
\uart_rx_0|tick_count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~17_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(18));

-- Location: MLABCELL_X50_Y3_N27
\uart_rx_0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~81_sumout\ = SUM(( \uart_rx_0|tick_count[19]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~18\ ))
-- \uart_rx_0|Add0~82\ = CARRY(( \uart_rx_0|tick_count[19]~DUPLICATE_q\ ) + ( GND ) + ( \uart_rx_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_tick_count[19]~DUPLICATE_q\,
	cin => \uart_rx_0|Add0~18\,
	sumout => \uart_rx_0|Add0~81_sumout\,
	cout => \uart_rx_0|Add0~82\);

-- Location: FF_X50_Y3_N29
\uart_rx_0|tick_count[19]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~81_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[19]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y3_N30
\uart_rx_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~13_sumout\ = SUM(( \uart_rx_0|tick_count\(20) ) + ( GND ) + ( \uart_rx_0|Add0~82\ ))
-- \uart_rx_0|Add0~14\ = CARRY(( \uart_rx_0|tick_count\(20) ) + ( GND ) + ( \uart_rx_0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(20),
	cin => \uart_rx_0|Add0~82\,
	sumout => \uart_rx_0|Add0~13_sumout\,
	cout => \uart_rx_0|Add0~14\);

-- Location: FF_X50_Y3_N31
\uart_rx_0|tick_count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~13_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(20));

-- Location: MLABCELL_X50_Y4_N54
\uart_rx_0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal0~0_combout\ = ( !\uart_rx_0|tick_count\(20) & ( !\uart_rx_0|tick_count\(16) & ( (!\uart_rx_0|tick_count\(6) & (\uart_rx_0|tick_count\(18) & (\uart_rx_0|tick_count\(8) & \uart_rx_0|tick_count\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_tick_count\(6),
	datab => \uart_rx_0|ALT_INV_tick_count\(18),
	datac => \uart_rx_0|ALT_INV_tick_count\(8),
	datad => \uart_rx_0|ALT_INV_tick_count\(5),
	datae => \uart_rx_0|ALT_INV_tick_count\(20),
	dataf => \uart_rx_0|ALT_INV_tick_count\(16),
	combout => \uart_rx_0|Equal0~0_combout\);

-- Location: FF_X50_Y3_N4
\uart_rx_0|tick_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~57_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(11));

-- Location: MLABCELL_X50_Y4_N51
\uart_rx_0|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal0~3_combout\ = ( !\uart_rx_0|tick_count[7]~DUPLICATE_q\ & ( \uart_rx_0|tick_count\(11) & ( (\uart_rx_0|tick_count\(0) & (\uart_rx_0|tick_count\(4) & (\uart_rx_0|tick_count\(3) & \uart_rx_0|tick_count\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_tick_count\(0),
	datab => \uart_rx_0|ALT_INV_tick_count\(4),
	datac => \uart_rx_0|ALT_INV_tick_count\(3),
	datad => \uart_rx_0|ALT_INV_tick_count\(1),
	datae => \uart_rx_0|ALT_INV_tick_count[7]~DUPLICATE_q\,
	dataf => \uart_rx_0|ALT_INV_tick_count\(11),
	combout => \uart_rx_0|Equal0~3_combout\);

-- Location: FF_X50_Y4_N28
\uart_rx_0|tick_count[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~41_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[9]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y3_N57
\uart_rx_0|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal1~0_combout\ = ( !\uart_rx_0|tick_count[9]~DUPLICATE_q\ & ( (\uart_rx_0|tick_count\(13) & \uart_rx_0|tick_count\(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(13),
	datad => \uart_rx_0|ALT_INV_tick_count\(10),
	dataf => \uart_rx_0|ALT_INV_tick_count[9]~DUPLICATE_q\,
	combout => \uart_rx_0|Equal1~0_combout\);

-- Location: MLABCELL_X50_Y3_N54
\uart_rx_0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal0~1_combout\ = ( !\uart_rx_0|tick_count\(12) & ( !\uart_rx_0|tick_count\(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_tick_count\(15),
	dataf => \uart_rx_0|ALT_INV_tick_count\(12),
	combout => \uart_rx_0|Equal0~1_combout\);

-- Location: MLABCELL_X50_Y3_N33
\uart_rx_0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~77_sumout\ = SUM(( \uart_rx_0|tick_count\(21) ) + ( GND ) + ( \uart_rx_0|Add0~14\ ))
-- \uart_rx_0|Add0~78\ = CARRY(( \uart_rx_0|tick_count\(21) ) + ( GND ) + ( \uart_rx_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(21),
	cin => \uart_rx_0|Add0~14\,
	sumout => \uart_rx_0|Add0~77_sumout\,
	cout => \uart_rx_0|Add0~78\);

-- Location: FF_X50_Y3_N35
\uart_rx_0|tick_count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~77_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(21));

-- Location: MLABCELL_X50_Y3_N36
\uart_rx_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Add0~73_sumout\ = SUM(( \uart_rx_0|tick_count\(22) ) + ( GND ) + ( \uart_rx_0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(22),
	cin => \uart_rx_0|Add0~78\,
	sumout => \uart_rx_0|Add0~73_sumout\);

-- Location: FF_X50_Y3_N38
\uart_rx_0|tick_count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~73_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(22));

-- Location: FF_X50_Y3_N28
\uart_rx_0|tick_count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~81_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(19));

-- Location: FF_X50_Y3_N14
\uart_rx_0|tick_count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~89_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[14]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y3_N42
\uart_rx_0|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal1~2_combout\ = ( !\uart_rx_0|tick_count\(2) & ( \uart_rx_0|tick_count[17]~DUPLICATE_q\ & ( (!\uart_rx_0|tick_count\(22) & (!\uart_rx_0|tick_count\(19) & (\uart_rx_0|tick_count\(21) & !\uart_rx_0|tick_count[14]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_tick_count\(22),
	datab => \uart_rx_0|ALT_INV_tick_count\(19),
	datac => \uart_rx_0|ALT_INV_tick_count\(21),
	datad => \uart_rx_0|ALT_INV_tick_count[14]~DUPLICATE_q\,
	datae => \uart_rx_0|ALT_INV_tick_count\(2),
	dataf => \uart_rx_0|ALT_INV_tick_count[17]~DUPLICATE_q\,
	combout => \uart_rx_0|Equal1~2_combout\);

-- Location: FF_X49_Y4_N32
\uart_rx_0|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|state.IDLE~1_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.IDLE~q\);

-- Location: LABCELL_X49_Y4_N6
\uart_rx_0|bit_count~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|bit_count~3_combout\ = ( \uart_rx_0|state.IDLE~DUPLICATE_q\ & ( !\uart_rx_0|bit_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \uart_rx_0|ALT_INV_bit_count\(0),
	dataf => \uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\,
	combout => \uart_rx_0|bit_count~3_combout\);

-- Location: FF_X49_Y4_N14
\uart_rx_0|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Selector2~1_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.DATA~q\);

-- Location: LABCELL_X49_Y4_N24
\uart_rx_0|Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal1~3_combout\ = ( \uart_rx_0|Equal1~2_combout\ & ( (\uart_rx_0|Equal1~1_combout\ & (\uart_rx_0|Equal1~0_combout\ & (\uart_rx_0|Equal0~1_combout\ & \uart_rx_0|Equal0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_Equal1~1_combout\,
	datab => \uart_rx_0|ALT_INV_Equal1~0_combout\,
	datac => \uart_rx_0|ALT_INV_Equal0~1_combout\,
	datad => \uart_rx_0|ALT_INV_Equal0~0_combout\,
	dataf => \uart_rx_0|ALT_INV_Equal1~2_combout\,
	combout => \uart_rx_0|Equal1~3_combout\);

-- Location: LABCELL_X49_Y4_N15
\uart_rx_0|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector0~1_combout\ = ( \uart_rx_0|Equal1~3_combout\ & ( (\uart_rx_0|bit_count\(2) & (\uart_rx_0|state.DATA~q\ & (\uart_rx_0|bit_count\(0) & \uart_rx_0|bit_count[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_bit_count\(2),
	datab => \uart_rx_0|ALT_INV_state.DATA~q\,
	datac => \uart_rx_0|ALT_INV_bit_count\(0),
	datad => \uart_rx_0|ALT_INV_bit_count[1]~DUPLICATE_q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|Selector0~1_combout\);

-- Location: FF_X49_Y4_N41
\uart_rx_0|rx_sync_1_prev\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_sync_1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_sync_1_prev~q\);

-- Location: LABCELL_X49_Y4_N39
\uart_rx_0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector0~0_combout\ = ( !\uart_rx_0|rx_sync_1_prev~q\ & ( (!\uart_rx_0|state.IDLE~q\ & \uart_rx_0|rx_sync_1~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_state.IDLE~q\,
	datad => \uart_rx_0|ALT_INV_rx_sync_1~q\,
	dataf => \uart_rx_0|ALT_INV_rx_sync_1_prev~q\,
	combout => \uart_rx_0|Selector0~0_combout\);

-- Location: FF_X49_Y4_N28
\uart_rx_0|bit_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|bit_count~2_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|bit_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|bit_count\(1));

-- Location: LABCELL_X49_Y4_N0
\uart_rx_0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector1~0_combout\ = ( !\uart_rx_0|Selector0~0_combout\ & ( (((\uart_rx_0|state.START~q\ & ((!\uart_rx_0|Equal1~3_combout\))))) ) ) # ( \uart_rx_0|Selector0~0_combout\ & ( (!\uart_rx_0|bit_count\(2)) # ((!\uart_rx_0|bit_count\(0)) # 
-- ((!\uart_rx_0|state.DATA~DUPLICATE_q\) # ((!\uart_rx_0|bit_count\(1)) # (!\uart_rx_0|Equal1~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000111100001111111111111111111100000000000000001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_bit_count\(2),
	datab => \uart_rx_0|ALT_INV_bit_count\(0),
	datac => \uart_rx_0|ALT_INV_state.DATA~DUPLICATE_q\,
	datad => \uart_rx_0|ALT_INV_bit_count\(1),
	datae => \uart_rx_0|ALT_INV_Selector0~0_combout\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	datag => \uart_rx_0|ALT_INV_state.START~q\,
	combout => \uart_rx_0|Selector1~0_combout\);

-- Location: FF_X49_Y4_N2
\uart_rx_0|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Selector1~0_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.START~q\);

-- Location: LABCELL_X49_Y4_N9
\uart_rx_0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector2~0_combout\ = ( \uart_rx_0|Equal1~3_combout\ & ( (!\uart_rx_0|state.STOP~q\ & ((!\uart_rx_0|state.START~q\ & ((\uart_rx_0|state.DATA~q\))) # (\uart_rx_0|state.START~q\ & (\uart_rx_0|rx_sync_1~q\)))) ) ) # ( 
-- !\uart_rx_0|Equal1~3_combout\ & ( \uart_rx_0|state.DATA~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100011011000000000001101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_state.START~q\,
	datab => \uart_rx_0|ALT_INV_rx_sync_1~q\,
	datac => \uart_rx_0|ALT_INV_state.DATA~q\,
	datad => \uart_rx_0|ALT_INV_state.STOP~q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|Selector2~0_combout\);

-- Location: LABCELL_X49_Y4_N12
\uart_rx_0|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector2~1_combout\ = ( \uart_rx_0|Selector2~0_combout\ & ( (!\uart_rx_0|Selector0~1_combout\ & ((!\uart_rx_0|Selector0~0_combout\) # (\uart_rx_0|state.DATA~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000001100001111000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_state.DATA~q\,
	datac => \uart_rx_0|ALT_INV_Selector0~1_combout\,
	datad => \uart_rx_0|ALT_INV_Selector0~0_combout\,
	dataf => \uart_rx_0|ALT_INV_Selector2~0_combout\,
	combout => \uart_rx_0|Selector2~1_combout\);

-- Location: FF_X49_Y4_N13
\uart_rx_0|state.DATA~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Selector2~1_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.DATA~DUPLICATE_q\);

-- Location: LABCELL_X49_Y4_N36
\uart_rx_0|bit_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|bit_count[1]~1_combout\ = ( \uart_rx_0|Equal1~3_combout\ & ( (!\uart_rx_0|state.IDLE~DUPLICATE_q\) # (\uart_rx_0|state.DATA~DUPLICATE_q\) ) ) # ( !\uart_rx_0|Equal1~3_combout\ & ( !\uart_rx_0|state.IDLE~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\,
	datab => \uart_rx_0|ALT_INV_state.DATA~DUPLICATE_q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|bit_count[1]~1_combout\);

-- Location: FF_X49_Y4_N8
\uart_rx_0|bit_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|bit_count~3_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|bit_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|bit_count\(0));

-- Location: LABCELL_X49_Y4_N27
\uart_rx_0|bit_count~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|bit_count~2_combout\ = ( \uart_rx_0|state.IDLE~DUPLICATE_q\ & ( !\uart_rx_0|bit_count\(0) $ (!\uart_rx_0|bit_count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_bit_count\(0),
	datad => \uart_rx_0|ALT_INV_bit_count\(1),
	dataf => \uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\,
	combout => \uart_rx_0|bit_count~2_combout\);

-- Location: FF_X49_Y4_N29
\uart_rx_0|bit_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|bit_count~2_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|bit_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|bit_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X49_Y4_N48
\uart_rx_0|bit_count~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|bit_count~0_combout\ = ( \uart_rx_0|bit_count\(0) & ( (\uart_rx_0|state.IDLE~q\ & (!\uart_rx_0|bit_count[1]~DUPLICATE_q\ $ (!\uart_rx_0|bit_count\(2)))) ) ) # ( !\uart_rx_0|bit_count\(0) & ( (\uart_rx_0|state.IDLE~q\ & \uart_rx_0|bit_count\(2)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_state.IDLE~q\,
	datac => \uart_rx_0|ALT_INV_bit_count[1]~DUPLICATE_q\,
	datad => \uart_rx_0|ALT_INV_bit_count\(2),
	dataf => \uart_rx_0|ALT_INV_bit_count\(0),
	combout => \uart_rx_0|bit_count~0_combout\);

-- Location: FF_X49_Y4_N50
\uart_rx_0|bit_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|bit_count~0_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|bit_count[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|bit_count\(2));

-- Location: LABCELL_X49_Y4_N54
\uart_rx_0|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector3~2_combout\ = ( \uart_rx_0|state.STOP~q\ & ( \uart_rx_0|Equal1~3_combout\ & ( (\uart_rx_0|bit_count\(2) & (\uart_rx_0|bit_count\(0) & (\uart_rx_0|bit_count[1]~DUPLICATE_q\ & \uart_rx_0|state.DATA~q\))) ) ) ) # ( 
-- !\uart_rx_0|state.STOP~q\ & ( \uart_rx_0|Equal1~3_combout\ & ( (\uart_rx_0|bit_count\(2) & (\uart_rx_0|bit_count\(0) & (\uart_rx_0|bit_count[1]~DUPLICATE_q\ & \uart_rx_0|state.DATA~q\))) ) ) ) # ( \uart_rx_0|state.STOP~q\ & ( !\uart_rx_0|Equal1~3_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_bit_count\(2),
	datab => \uart_rx_0|ALT_INV_bit_count\(0),
	datac => \uart_rx_0|ALT_INV_bit_count[1]~DUPLICATE_q\,
	datad => \uart_rx_0|ALT_INV_state.DATA~q\,
	datae => \uart_rx_0|ALT_INV_state.STOP~q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|Selector3~2_combout\);

-- Location: FF_X49_Y4_N56
\uart_rx_0|state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Selector3~2_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.STOP~q\);

-- Location: LABCELL_X49_Y4_N21
\uart_rx_0|always3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|always3~0_combout\ = ( \uart_rx_0|Equal1~2_combout\ & ( \uart_rx_0|state.STOP~q\ & ( (\uart_rx_0|Equal1~1_combout\ & (\uart_rx_0|Equal0~0_combout\ & (\uart_rx_0|Equal1~0_combout\ & \uart_rx_0|Equal0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_Equal1~1_combout\,
	datab => \uart_rx_0|ALT_INV_Equal0~0_combout\,
	datac => \uart_rx_0|ALT_INV_Equal1~0_combout\,
	datad => \uart_rx_0|ALT_INV_Equal0~1_combout\,
	datae => \uart_rx_0|ALT_INV_Equal1~2_combout\,
	dataf => \uart_rx_0|ALT_INV_state.STOP~q\,
	combout => \uart_rx_0|always3~0_combout\);

-- Location: LABCELL_X49_Y4_N51
\uart_rx_0|state.IDLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|state.IDLE~0_combout\ = ( \uart_rx_0|Equal1~3_combout\ & ( (\uart_rx_0|state.IDLE~q\ & !\uart_rx_0|state.START~q\) ) ) # ( !\uart_rx_0|Equal1~3_combout\ & ( \uart_rx_0|state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_state.IDLE~q\,
	datad => \uart_rx_0|ALT_INV_state.START~q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|state.IDLE~0_combout\);

-- Location: LABCELL_X49_Y4_N45
\uart_rx_0|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Selector2~2_combout\ = ( \uart_rx_0|state.START~q\ & ( \uart_rx_0|Equal1~3_combout\ & ( \uart_rx_0|rx_sync_1~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_rx_sync_1~q\,
	datae => \uart_rx_0|ALT_INV_state.START~q\,
	dataf => \uart_rx_0|ALT_INV_Equal1~3_combout\,
	combout => \uart_rx_0|Selector2~2_combout\);

-- Location: LABCELL_X49_Y4_N30
\uart_rx_0|state.IDLE~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|state.IDLE~1_combout\ = ( \uart_rx_0|Selector2~2_combout\ & ( \uart_rx_0|Selector0~0_combout\ & ( !\uart_rx_0|always3~0_combout\ ) ) ) # ( !\uart_rx_0|Selector2~2_combout\ & ( \uart_rx_0|Selector0~0_combout\ & ( (!\uart_rx_0|always3~0_combout\ 
-- & ((!\uart_rx_0|state.DATA~q\) # ((\uart_rx_0|Selector0~1_combout\) # (\uart_rx_0|state.IDLE~0_combout\)))) ) ) ) # ( \uart_rx_0|Selector2~2_combout\ & ( !\uart_rx_0|Selector0~0_combout\ & ( !\uart_rx_0|always3~0_combout\ ) ) ) # ( 
-- !\uart_rx_0|Selector2~2_combout\ & ( !\uart_rx_0|Selector0~0_combout\ & ( (!\uart_rx_0|always3~0_combout\ & ((\uart_rx_0|Selector0~1_combout\) # (\uart_rx_0|state.IDLE~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010101010101010101010001010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_always3~0_combout\,
	datab => \uart_rx_0|ALT_INV_state.DATA~q\,
	datac => \uart_rx_0|ALT_INV_state.IDLE~0_combout\,
	datad => \uart_rx_0|ALT_INV_Selector0~1_combout\,
	datae => \uart_rx_0|ALT_INV_Selector2~2_combout\,
	dataf => \uart_rx_0|ALT_INV_Selector0~0_combout\,
	combout => \uart_rx_0|state.IDLE~1_combout\);

-- Location: FF_X49_Y4_N31
\uart_rx_0|state.IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|state.IDLE~1_combout\,
	clrn => \s2~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|state.IDLE~DUPLICATE_q\);

-- Location: FF_X50_Y3_N10
\uart_rx_0|tick_count[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~33_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count[13]~DUPLICATE_q\);

-- Location: MLABCELL_X50_Y4_N30
\uart_rx_0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal0~2_combout\ = ( !\uart_rx_0|tick_count[13]~DUPLICATE_q\ & ( !\uart_rx_0|tick_count\(10) & ( \uart_rx_0|tick_count\(9) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_tick_count\(9),
	datae => \uart_rx_0|ALT_INV_tick_count[13]~DUPLICATE_q\,
	dataf => \uart_rx_0|ALT_INV_tick_count\(10),
	combout => \uart_rx_0|Equal0~2_combout\);

-- Location: FF_X50_Y3_N23
\uart_rx_0|tick_count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~85_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(17));

-- Location: MLABCELL_X50_Y3_N48
\uart_rx_0|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal0~4_combout\ = ( \uart_rx_0|tick_count\(2) & ( !\uart_rx_0|tick_count\(21) & ( (\uart_rx_0|tick_count\(22) & (\uart_rx_0|tick_count\(19) & (!\uart_rx_0|tick_count\(17) & \uart_rx_0|tick_count[14]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_tick_count\(22),
	datab => \uart_rx_0|ALT_INV_tick_count\(19),
	datac => \uart_rx_0|ALT_INV_tick_count\(17),
	datad => \uart_rx_0|ALT_INV_tick_count[14]~DUPLICATE_q\,
	datae => \uart_rx_0|ALT_INV_tick_count\(2),
	dataf => \uart_rx_0|ALT_INV_tick_count\(21),
	combout => \uart_rx_0|Equal0~4_combout\);

-- Location: MLABCELL_X50_Y4_N42
\uart_rx_0|tick_count[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|tick_count[8]~0_combout\ = ( \uart_rx_0|Equal0~4_combout\ & ( \uart_rx_0|Equal0~1_combout\ & ( (!\uart_rx_0|state.IDLE~DUPLICATE_q\) # ((\uart_rx_0|Equal0~0_combout\ & (\uart_rx_0|Equal0~3_combout\ & \uart_rx_0|Equal0~2_combout\))) ) ) ) # ( 
-- !\uart_rx_0|Equal0~4_combout\ & ( \uart_rx_0|Equal0~1_combout\ & ( !\uart_rx_0|state.IDLE~DUPLICATE_q\ ) ) ) # ( \uart_rx_0|Equal0~4_combout\ & ( !\uart_rx_0|Equal0~1_combout\ & ( !\uart_rx_0|state.IDLE~DUPLICATE_q\ ) ) ) # ( !\uart_rx_0|Equal0~4_combout\ 
-- & ( !\uart_rx_0|Equal0~1_combout\ & ( !\uart_rx_0|state.IDLE~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_Equal0~0_combout\,
	datab => \uart_rx_0|ALT_INV_Equal0~3_combout\,
	datac => \uart_rx_0|ALT_INV_state.IDLE~DUPLICATE_q\,
	datad => \uart_rx_0|ALT_INV_Equal0~2_combout\,
	datae => \uart_rx_0|ALT_INV_Equal0~4_combout\,
	dataf => \uart_rx_0|ALT_INV_Equal0~1_combout\,
	combout => \uart_rx_0|tick_count[8]~0_combout\);

-- Location: FF_X50_Y4_N2
\uart_rx_0|tick_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~65_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(0));

-- Location: FF_X50_Y4_N5
\uart_rx_0|tick_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~61_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(1));

-- Location: FF_X50_Y4_N22
\uart_rx_0|tick_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|Add0~45_sumout\,
	clrn => \s2~input_o\,
	sclr => \uart_rx_0|tick_count[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|tick_count\(7));

-- Location: MLABCELL_X50_Y4_N36
\uart_rx_0|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|Equal1~1_combout\ = ( !\uart_rx_0|tick_count\(0) & ( !\uart_rx_0|tick_count\(4) & ( (!\uart_rx_0|tick_count\(1) & (\uart_rx_0|tick_count\(7) & (!\uart_rx_0|tick_count\(11) & !\uart_rx_0|tick_count\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_tick_count\(1),
	datab => \uart_rx_0|ALT_INV_tick_count\(7),
	datac => \uart_rx_0|ALT_INV_tick_count\(11),
	datad => \uart_rx_0|ALT_INV_tick_count\(3),
	datae => \uart_rx_0|ALT_INV_tick_count\(0),
	dataf => \uart_rx_0|ALT_INV_tick_count\(4),
	combout => \uart_rx_0|Equal1~1_combout\);

-- Location: LABCELL_X49_Y4_N18
\uart_rx_0|always3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|always3~1_combout\ = ( \uart_rx_0|Equal1~2_combout\ & ( \uart_rx_0|state.DATA~DUPLICATE_q\ & ( (\uart_rx_0|Equal1~1_combout\ & (\uart_rx_0|Equal0~0_combout\ & (\uart_rx_0|Equal0~1_combout\ & \uart_rx_0|Equal1~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_Equal1~1_combout\,
	datab => \uart_rx_0|ALT_INV_Equal0~0_combout\,
	datac => \uart_rx_0|ALT_INV_Equal0~1_combout\,
	datad => \uart_rx_0|ALT_INV_Equal1~0_combout\,
	datae => \uart_rx_0|ALT_INV_Equal1~2_combout\,
	dataf => \uart_rx_0|ALT_INV_state.DATA~DUPLICATE_q\,
	combout => \uart_rx_0|always3~1_combout\);

-- Location: FF_X48_Y4_N17
\uart_rx_0|rx_shift_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|rx_shift_reg[7]~feeder_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(7));

-- Location: FF_X48_Y4_N26
\uart_rx_0|rx_shift_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(7),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(6));

-- Location: FF_X48_Y4_N41
\uart_rx_0|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(6),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(6));

-- Location: LABCELL_X49_Y2_N42
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( clk_div_count(15) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(15),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\);

-- Location: FF_X49_Y2_N43
\clk_div_count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => clk_div_count(15));

-- Location: LABCELL_X48_Y4_N12
\uart_rx_0|rx_shift_reg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|rx_shift_reg[5]~feeder_combout\ = \uart_rx_0|rx_shift_reg\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_rx_shift_reg\(6),
	combout => \uart_rx_0|rx_shift_reg[5]~feeder_combout\);

-- Location: FF_X48_Y4_N13
\uart_rx_0|rx_shift_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|rx_shift_reg[5]~feeder_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(5));

-- Location: FF_X48_Y4_N28
\uart_rx_0|rx_shift_reg[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(5),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg[4]~DUPLICATE_q\);

-- Location: FF_X48_Y4_N23
\uart_rx_0|rx_shift_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg[4]~DUPLICATE_q\,
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(3));

-- Location: LABCELL_X48_Y4_N18
\uart_rx_0|rx_shift_reg[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|rx_shift_reg[2]~feeder_combout\ = \uart_rx_0|rx_shift_reg\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \uart_rx_0|ALT_INV_rx_shift_reg\(3),
	combout => \uart_rx_0|rx_shift_reg[2]~feeder_combout\);

-- Location: FF_X48_Y4_N20
\uart_rx_0|rx_shift_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|rx_shift_reg[2]~feeder_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(2));

-- Location: FF_X48_Y4_N32
\uart_rx_0|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(2),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(2));

-- Location: LABCELL_X48_Y4_N30
\Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = ( \uart_rx_0|data\(2) & ( (!clk_div_count(14) & (\uart_rx_0|data\(6) & clk_div_count(15))) # (clk_div_count(14) & ((!clk_div_count(15)))) ) ) # ( !\uart_rx_0|data\(2) & ( (!clk_div_count(14) & (\uart_rx_0|data\(6) & clk_div_count(15))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010010100100101001000000010000000100101001001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(14),
	datab => \uart_rx_0|ALT_INV_data\(6),
	datac => ALT_INV_clk_div_count(15),
	datae => \uart_rx_0|ALT_INV_data\(2),
	combout => \Mux1~0_combout\);

-- Location: LABCELL_X53_Y2_N0
\freqgen_0|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~117_sumout\ = SUM(( \freqgen_0|count\(2) ) + ( VCC ) + ( !VCC ))
-- \freqgen_0|Add0~118\ = CARRY(( \freqgen_0|count\(2) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(2),
	cin => GND,
	sumout => \freqgen_0|Add0~117_sumout\,
	cout => \freqgen_0|Add0~118\);

-- Location: IOIBUF_X59_Y0_N35
\s1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: LABCELL_X53_Y1_N48
\freqgen_0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~81_sumout\ = SUM(( \freqgen_0|count\(28) ) + ( GND ) + ( \freqgen_0|Add0~90\ ))
-- \freqgen_0|Add0~82\ = CARRY(( \freqgen_0|count\(28) ) + ( GND ) + ( \freqgen_0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(28),
	cin => \freqgen_0|Add0~90\,
	sumout => \freqgen_0|Add0~81_sumout\,
	cout => \freqgen_0|Add0~82\);

-- Location: LABCELL_X53_Y1_N51
\freqgen_0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~93_sumout\ = SUM(( \freqgen_0|count\(29) ) + ( GND ) + ( \freqgen_0|Add0~82\ ))
-- \freqgen_0|Add0~94\ = CARRY(( \freqgen_0|count\(29) ) + ( GND ) + ( \freqgen_0|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(29),
	cin => \freqgen_0|Add0~82\,
	sumout => \freqgen_0|Add0~93_sumout\,
	cout => \freqgen_0|Add0~94\);

-- Location: FF_X53_Y1_N53
\freqgen_0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~93_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(29));

-- Location: LABCELL_X53_Y1_N54
\freqgen_0|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~97_sumout\ = SUM(( \freqgen_0|count\(30) ) + ( GND ) + ( \freqgen_0|Add0~94\ ))
-- \freqgen_0|Add0~98\ = CARRY(( \freqgen_0|count\(30) ) + ( GND ) + ( \freqgen_0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(30),
	cin => \freqgen_0|Add0~94\,
	sumout => \freqgen_0|Add0~97_sumout\,
	cout => \freqgen_0|Add0~98\);

-- Location: FF_X53_Y1_N55
\freqgen_0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~97_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(30));

-- Location: LABCELL_X53_Y1_N57
\freqgen_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~1_sumout\ = SUM(( \freqgen_0|count\(31) ) + ( GND ) + ( \freqgen_0|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(31),
	cin => \freqgen_0|Add0~98\,
	sumout => \freqgen_0|Add0~1_sumout\);

-- Location: FF_X53_Y1_N59
\freqgen_0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~1_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(31));

-- Location: FF_X53_Y2_N49
\freqgen_0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~21_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(18));

-- Location: FF_X53_Y1_N5
\freqgen_0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~17_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(17));

-- Location: FF_X53_Y1_N14
\freqgen_0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~29_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(20));

-- Location: FF_X53_Y1_N31
\freqgen_0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~37_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(22));

-- Location: LABCELL_X53_Y1_N6
\freqgen_0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~0_combout\ = ( \freqgen_0|count\(19) & ( (\freqgen_0|count\(20) & (\freqgen_0|count\(22) & \freqgen_0|count\(21))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(20),
	datac => \freqgen_0|ALT_INV_count\(22),
	datad => \freqgen_0|ALT_INV_count\(21),
	dataf => \freqgen_0|ALT_INV_count\(19),
	combout => \freqgen_0|LessThan0~0_combout\);

-- Location: LABCELL_X53_Y1_N18
\freqgen_0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~1_combout\ = ( \freqgen_0|LessThan0~0_combout\ & ( (!\freqgen_0|count\(24) & ((!\freqgen_0|count\(23)) # ((!\freqgen_0|count\(18) & !\freqgen_0|count\(17))))) ) ) # ( !\freqgen_0|LessThan0~0_combout\ & ( !\freqgen_0|count\(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101000101000001010100010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(24),
	datab => \freqgen_0|ALT_INV_count\(18),
	datac => \freqgen_0|ALT_INV_count\(23),
	datad => \freqgen_0|ALT_INV_count\(17),
	dataf => \freqgen_0|ALT_INV_LessThan0~0_combout\,
	combout => \freqgen_0|LessThan0~1_combout\);

-- Location: FF_X53_Y2_N25
\freqgen_0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~49_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(10));

-- Location: FF_X53_Y2_N16
\freqgen_0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~61_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(7));

-- Location: LABCELL_X54_Y2_N24
\freqgen_0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~2_combout\ = ( !\freqgen_0|count\(11) & ( !\freqgen_0|count\(7) & ( (!\freqgen_0|count\(9) & (!\freqgen_0|count\(8) & !\freqgen_0|count\(10))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(9),
	datac => \freqgen_0|ALT_INV_count\(8),
	datad => \freqgen_0|ALT_INV_count\(10),
	datae => \freqgen_0|ALT_INV_count\(11),
	dataf => \freqgen_0|ALT_INV_count\(7),
	combout => \freqgen_0|LessThan0~2_combout\);

-- Location: FF_X53_Y2_N38
\freqgen_0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~69_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(14));

-- Location: FF_X53_Y2_N40
\freqgen_0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~65_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(15));

-- Location: LABCELL_X53_Y1_N9
\freqgen_0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~3_combout\ = ( \freqgen_0|count\(13) & ( (\freqgen_0|count\(14) & (\freqgen_0|count\(12) & \freqgen_0|count\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(14),
	datac => \freqgen_0|ALT_INV_count\(12),
	datad => \freqgen_0|ALT_INV_count\(15),
	dataf => \freqgen_0|ALT_INV_count\(13),
	combout => \freqgen_0|LessThan0~3_combout\);

-- Location: LABCELL_X53_Y1_N21
\freqgen_0|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~4_combout\ = ( \freqgen_0|LessThan0~3_combout\ & ( (!\freqgen_0|count\(24) & (!\freqgen_0|count\(18) & (!\freqgen_0|count\(16) & \freqgen_0|LessThan0~2_combout\))) ) ) # ( !\freqgen_0|LessThan0~3_combout\ & ( (!\freqgen_0|count\(24) & 
-- (!\freqgen_0|count\(18) & !\freqgen_0|count\(16))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(24),
	datab => \freqgen_0|ALT_INV_count\(18),
	datac => \freqgen_0|ALT_INV_count\(16),
	datad => \freqgen_0|ALT_INV_LessThan0~2_combout\,
	dataf => \freqgen_0|ALT_INV_LessThan0~3_combout\,
	combout => \freqgen_0|LessThan0~4_combout\);

-- Location: LABCELL_X53_Y1_N24
\freqgen_0|LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~6_combout\ = ( \freqgen_0|LessThan0~1_combout\ & ( \freqgen_0|LessThan0~4_combout\ & ( (!\freqgen_0|LessThan0~5_combout\) # (\freqgen_0|count\(31)) ) ) ) # ( !\freqgen_0|LessThan0~1_combout\ & ( \freqgen_0|LessThan0~4_combout\ & ( 
-- (!\freqgen_0|LessThan0~5_combout\) # (\freqgen_0|count\(31)) ) ) ) # ( \freqgen_0|LessThan0~1_combout\ & ( !\freqgen_0|LessThan0~4_combout\ & ( (!\freqgen_0|LessThan0~5_combout\) # (\freqgen_0|count\(31)) ) ) ) # ( !\freqgen_0|LessThan0~1_combout\ & ( 
-- !\freqgen_0|LessThan0~4_combout\ & ( ((!\freqgen_0|LessThan0~5_combout\) # (\freqgen_0|count\(31))) # (\freqgen_0|count\(25)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(25),
	datac => \freqgen_0|ALT_INV_LessThan0~5_combout\,
	datad => \freqgen_0|ALT_INV_count\(31),
	datae => \freqgen_0|ALT_INV_LessThan0~1_combout\,
	dataf => \freqgen_0|ALT_INV_LessThan0~4_combout\,
	combout => \freqgen_0|LessThan0~6_combout\);

-- Location: FF_X53_Y2_N2
\freqgen_0|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~117_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(2));

-- Location: LABCELL_X53_Y2_N3
\freqgen_0|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~113_sumout\ = SUM(( \freqgen_0|count\(3) ) + ( GND ) + ( \freqgen_0|Add0~118\ ))
-- \freqgen_0|Add0~114\ = CARRY(( \freqgen_0|count\(3) ) + ( GND ) + ( \freqgen_0|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(3),
	cin => \freqgen_0|Add0~118\,
	sumout => \freqgen_0|Add0~113_sumout\,
	cout => \freqgen_0|Add0~114\);

-- Location: FF_X53_Y2_N5
\freqgen_0|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~113_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(3));

-- Location: LABCELL_X53_Y2_N6
\freqgen_0|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~109_sumout\ = SUM(( \freqgen_0|count\(4) ) + ( VCC ) + ( \freqgen_0|Add0~114\ ))
-- \freqgen_0|Add0~110\ = CARRY(( \freqgen_0|count\(4) ) + ( VCC ) + ( \freqgen_0|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(4),
	cin => \freqgen_0|Add0~114\,
	sumout => \freqgen_0|Add0~109_sumout\,
	cout => \freqgen_0|Add0~110\);

-- Location: FF_X53_Y2_N7
\freqgen_0|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~109_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(4));

-- Location: LABCELL_X53_Y2_N9
\freqgen_0|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~105_sumout\ = SUM(( \freqgen_0|count\(5) ) + ( GND ) + ( \freqgen_0|Add0~110\ ))
-- \freqgen_0|Add0~106\ = CARRY(( \freqgen_0|count\(5) ) + ( GND ) + ( \freqgen_0|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(5),
	cin => \freqgen_0|Add0~110\,
	sumout => \freqgen_0|Add0~105_sumout\,
	cout => \freqgen_0|Add0~106\);

-- Location: FF_X53_Y2_N11
\freqgen_0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~105_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(5));

-- Location: LABCELL_X53_Y2_N12
\freqgen_0|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~101_sumout\ = SUM(( \freqgen_0|count\(6) ) + ( GND ) + ( \freqgen_0|Add0~106\ ))
-- \freqgen_0|Add0~102\ = CARRY(( \freqgen_0|count\(6) ) + ( GND ) + ( \freqgen_0|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(6),
	cin => \freqgen_0|Add0~106\,
	sumout => \freqgen_0|Add0~101_sumout\,
	cout => \freqgen_0|Add0~102\);

-- Location: FF_X53_Y2_N14
\freqgen_0|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~101_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(6));

-- Location: LABCELL_X53_Y2_N15
\freqgen_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~61_sumout\ = SUM(( \freqgen_0|count[7]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~102\ ))
-- \freqgen_0|Add0~62\ = CARRY(( \freqgen_0|count[7]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[7]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~102\,
	sumout => \freqgen_0|Add0~61_sumout\,
	cout => \freqgen_0|Add0~62\);

-- Location: FF_X53_Y2_N17
\freqgen_0|count[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~61_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[7]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N18
\freqgen_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~57_sumout\ = SUM(( \freqgen_0|count\(8) ) + ( GND ) + ( \freqgen_0|Add0~62\ ))
-- \freqgen_0|Add0~58\ = CARRY(( \freqgen_0|count\(8) ) + ( GND ) + ( \freqgen_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(8),
	cin => \freqgen_0|Add0~62\,
	sumout => \freqgen_0|Add0~57_sumout\,
	cout => \freqgen_0|Add0~58\);

-- Location: LABCELL_X54_Y2_N0
\freqgen_0|count[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|count[8]~feeder_combout\ = ( \freqgen_0|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \freqgen_0|ALT_INV_Add0~57_sumout\,
	combout => \freqgen_0|count[8]~feeder_combout\);

-- Location: FF_X54_Y2_N2
\freqgen_0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|count[8]~feeder_combout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(8));

-- Location: LABCELL_X53_Y2_N21
\freqgen_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~53_sumout\ = SUM(( \freqgen_0|count\(9) ) + ( GND ) + ( \freqgen_0|Add0~58\ ))
-- \freqgen_0|Add0~54\ = CARRY(( \freqgen_0|count\(9) ) + ( GND ) + ( \freqgen_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(9),
	cin => \freqgen_0|Add0~58\,
	sumout => \freqgen_0|Add0~53_sumout\,
	cout => \freqgen_0|Add0~54\);

-- Location: FF_X54_Y2_N23
\freqgen_0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~53_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(9));

-- Location: LABCELL_X53_Y2_N24
\freqgen_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~49_sumout\ = SUM(( \freqgen_0|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~54\ ))
-- \freqgen_0|Add0~50\ = CARRY(( \freqgen_0|count[10]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[10]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~54\,
	sumout => \freqgen_0|Add0~49_sumout\,
	cout => \freqgen_0|Add0~50\);

-- Location: FF_X53_Y2_N26
\freqgen_0|count[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~49_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[10]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N27
\freqgen_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~45_sumout\ = SUM(( \freqgen_0|count\(11) ) + ( GND ) + ( \freqgen_0|Add0~50\ ))
-- \freqgen_0|Add0~46\ = CARRY(( \freqgen_0|count\(11) ) + ( GND ) + ( \freqgen_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(11),
	cin => \freqgen_0|Add0~50\,
	sumout => \freqgen_0|Add0~45_sumout\,
	cout => \freqgen_0|Add0~46\);

-- Location: FF_X53_Y2_N28
\freqgen_0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~45_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(11));

-- Location: LABCELL_X53_Y2_N30
\freqgen_0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~77_sumout\ = SUM(( \freqgen_0|count\(12) ) + ( GND ) + ( \freqgen_0|Add0~46\ ))
-- \freqgen_0|Add0~78\ = CARRY(( \freqgen_0|count\(12) ) + ( GND ) + ( \freqgen_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(12),
	cin => \freqgen_0|Add0~46\,
	sumout => \freqgen_0|Add0~77_sumout\,
	cout => \freqgen_0|Add0~78\);

-- Location: FF_X53_Y2_N31
\freqgen_0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~77_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(12));

-- Location: LABCELL_X53_Y2_N33
\freqgen_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~73_sumout\ = SUM(( \freqgen_0|count\(13) ) + ( GND ) + ( \freqgen_0|Add0~78\ ))
-- \freqgen_0|Add0~74\ = CARRY(( \freqgen_0|count\(13) ) + ( GND ) + ( \freqgen_0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(13),
	cin => \freqgen_0|Add0~78\,
	sumout => \freqgen_0|Add0~73_sumout\,
	cout => \freqgen_0|Add0~74\);

-- Location: FF_X53_Y2_N35
\freqgen_0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~73_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(13));

-- Location: LABCELL_X53_Y2_N36
\freqgen_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~69_sumout\ = SUM(( \freqgen_0|count[14]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~74\ ))
-- \freqgen_0|Add0~70\ = CARRY(( \freqgen_0|count[14]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count[14]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~74\,
	sumout => \freqgen_0|Add0~69_sumout\,
	cout => \freqgen_0|Add0~70\);

-- Location: FF_X53_Y2_N37
\freqgen_0|count[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~69_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[14]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N39
\freqgen_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~65_sumout\ = SUM(( \freqgen_0|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~70\ ))
-- \freqgen_0|Add0~66\ = CARRY(( \freqgen_0|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[15]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~70\,
	sumout => \freqgen_0|Add0~65_sumout\,
	cout => \freqgen_0|Add0~66\);

-- Location: FF_X53_Y2_N41
\freqgen_0|count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~65_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[15]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N42
\freqgen_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~41_sumout\ = SUM(( \freqgen_0|count\(16) ) + ( GND ) + ( \freqgen_0|Add0~66\ ))
-- \freqgen_0|Add0~42\ = CARRY(( \freqgen_0|count\(16) ) + ( GND ) + ( \freqgen_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(16),
	cin => \freqgen_0|Add0~66\,
	sumout => \freqgen_0|Add0~41_sumout\,
	cout => \freqgen_0|Add0~42\);

-- Location: FF_X53_Y2_N43
\freqgen_0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~41_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(16));

-- Location: LABCELL_X53_Y2_N45
\freqgen_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~17_sumout\ = SUM(( \freqgen_0|count[17]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~42\ ))
-- \freqgen_0|Add0~18\ = CARRY(( \freqgen_0|count[17]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count[17]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~42\,
	sumout => \freqgen_0|Add0~17_sumout\,
	cout => \freqgen_0|Add0~18\);

-- Location: FF_X53_Y1_N4
\freqgen_0|count[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~17_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[17]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N48
\freqgen_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~21_sumout\ = SUM(( \freqgen_0|count[18]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~18\ ))
-- \freqgen_0|Add0~22\ = CARRY(( \freqgen_0|count[18]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[18]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~18\,
	sumout => \freqgen_0|Add0~21_sumout\,
	cout => \freqgen_0|Add0~22\);

-- Location: FF_X53_Y2_N50
\freqgen_0|count[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~21_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[18]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N51
\freqgen_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~25_sumout\ = SUM(( \freqgen_0|count\(19) ) + ( GND ) + ( \freqgen_0|Add0~22\ ))
-- \freqgen_0|Add0~26\ = CARRY(( \freqgen_0|count\(19) ) + ( GND ) + ( \freqgen_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(19),
	cin => \freqgen_0|Add0~22\,
	sumout => \freqgen_0|Add0~25_sumout\,
	cout => \freqgen_0|Add0~26\);

-- Location: FF_X53_Y2_N52
\freqgen_0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~25_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(19));

-- Location: LABCELL_X53_Y2_N54
\freqgen_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~29_sumout\ = SUM(( \freqgen_0|count[20]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~26\ ))
-- \freqgen_0|Add0~30\ = CARRY(( \freqgen_0|count[20]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[20]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~26\,
	sumout => \freqgen_0|Add0~29_sumout\,
	cout => \freqgen_0|Add0~30\);

-- Location: FF_X53_Y1_N13
\freqgen_0|count[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~29_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[20]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y2_N57
\freqgen_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~33_sumout\ = SUM(( \freqgen_0|count\(21) ) + ( GND ) + ( \freqgen_0|Add0~30\ ))
-- \freqgen_0|Add0~34\ = CARRY(( \freqgen_0|count\(21) ) + ( GND ) + ( \freqgen_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(21),
	cin => \freqgen_0|Add0~30\,
	sumout => \freqgen_0|Add0~33_sumout\,
	cout => \freqgen_0|Add0~34\);

-- Location: FF_X53_Y2_N59
\freqgen_0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~33_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(21));

-- Location: LABCELL_X53_Y1_N30
\freqgen_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~37_sumout\ = SUM(( \freqgen_0|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~34\ ))
-- \freqgen_0|Add0~38\ = CARRY(( \freqgen_0|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count[22]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~34\,
	sumout => \freqgen_0|Add0~37_sumout\,
	cout => \freqgen_0|Add0~38\);

-- Location: FF_X53_Y1_N32
\freqgen_0|count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~37_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[22]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y1_N33
\freqgen_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~13_sumout\ = SUM(( \freqgen_0|count\(23) ) + ( GND ) + ( \freqgen_0|Add0~38\ ))
-- \freqgen_0|Add0~14\ = CARRY(( \freqgen_0|count\(23) ) + ( GND ) + ( \freqgen_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(23),
	cin => \freqgen_0|Add0~38\,
	sumout => \freqgen_0|Add0~13_sumout\,
	cout => \freqgen_0|Add0~14\);

-- Location: FF_X53_Y1_N34
\freqgen_0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~13_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(23));

-- Location: LABCELL_X53_Y1_N36
\freqgen_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~9_sumout\ = SUM(( \freqgen_0|count\(24) ) + ( GND ) + ( \freqgen_0|Add0~14\ ))
-- \freqgen_0|Add0~10\ = CARRY(( \freqgen_0|count\(24) ) + ( GND ) + ( \freqgen_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(24),
	cin => \freqgen_0|Add0~14\,
	sumout => \freqgen_0|Add0~9_sumout\,
	cout => \freqgen_0|Add0~10\);

-- Location: FF_X53_Y1_N38
\freqgen_0|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~9_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(24));

-- Location: LABCELL_X53_Y1_N39
\freqgen_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~5_sumout\ = SUM(( \freqgen_0|count\(25) ) + ( GND ) + ( \freqgen_0|Add0~10\ ))
-- \freqgen_0|Add0~6\ = CARRY(( \freqgen_0|count\(25) ) + ( GND ) + ( \freqgen_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(25),
	cin => \freqgen_0|Add0~10\,
	sumout => \freqgen_0|Add0~5_sumout\,
	cout => \freqgen_0|Add0~6\);

-- Location: FF_X53_Y1_N40
\freqgen_0|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~5_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(25));

-- Location: LABCELL_X53_Y1_N42
\freqgen_0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~85_sumout\ = SUM(( \freqgen_0|count[26]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~6\ ))
-- \freqgen_0|Add0~86\ = CARRY(( \freqgen_0|count[26]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count[26]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~6\,
	sumout => \freqgen_0|Add0~85_sumout\,
	cout => \freqgen_0|Add0~86\);

-- Location: FF_X53_Y1_N43
\freqgen_0|count[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~85_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[26]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y1_N45
\freqgen_0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~89_sumout\ = SUM(( \freqgen_0|count\(27) ) + ( GND ) + ( \freqgen_0|Add0~86\ ))
-- \freqgen_0|Add0~90\ = CARRY(( \freqgen_0|count\(27) ) + ( GND ) + ( \freqgen_0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(27),
	cin => \freqgen_0|Add0~86\,
	sumout => \freqgen_0|Add0~89_sumout\,
	cout => \freqgen_0|Add0~90\);

-- Location: FF_X53_Y1_N47
\freqgen_0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~89_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(27));

-- Location: FF_X53_Y1_N50
\freqgen_0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~81_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(28));

-- Location: FF_X53_Y1_N44
\freqgen_0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~85_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(26));

-- Location: LABCELL_X53_Y1_N0
\freqgen_0|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~5_combout\ = ( !\freqgen_0|count\(27) & ( !\freqgen_0|count\(26) & ( (!\freqgen_0|count\(28) & (!\freqgen_0|count\(29) & !\freqgen_0|count\(30))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(28),
	datac => \freqgen_0|ALT_INV_count\(29),
	datad => \freqgen_0|ALT_INV_count\(30),
	datae => \freqgen_0|ALT_INV_count\(27),
	dataf => \freqgen_0|ALT_INV_count\(26),
	combout => \freqgen_0|LessThan0~5_combout\);

-- Location: LABCELL_X53_Y1_N15
\freqgen_0|new_freq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|new_freq~0_combout\ = ( \freqgen_0|LessThan0~4_combout\ & ( \freqgen_0|new_freq~q\ & ( (\freqgen_0|LessThan0~5_combout\ & !\freqgen_0|count\(31)) ) ) ) # ( !\freqgen_0|LessThan0~4_combout\ & ( \freqgen_0|new_freq~q\ & ( 
-- (\freqgen_0|LessThan0~5_combout\ & (!\freqgen_0|count\(31) & ((!\freqgen_0|count\(25)) # (\freqgen_0|LessThan0~1_combout\)))) ) ) ) # ( \freqgen_0|LessThan0~4_combout\ & ( !\freqgen_0|new_freq~q\ & ( (!\freqgen_0|LessThan0~5_combout\) # 
-- (\freqgen_0|count\(31)) ) ) ) # ( !\freqgen_0|LessThan0~4_combout\ & ( !\freqgen_0|new_freq~q\ & ( (!\freqgen_0|LessThan0~5_combout\) # (((\freqgen_0|count\(25) & !\freqgen_0|LessThan0~1_combout\)) # (\freqgen_0|count\(31))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011111110111011101110111011101101000000010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_LessThan0~5_combout\,
	datab => \freqgen_0|ALT_INV_count\(31),
	datac => \freqgen_0|ALT_INV_count\(25),
	datad => \freqgen_0|ALT_INV_LessThan0~1_combout\,
	datae => \freqgen_0|ALT_INV_LessThan0~4_combout\,
	dataf => \freqgen_0|ALT_INV_new_freq~q\,
	combout => \freqgen_0|new_freq~0_combout\);

-- Location: FF_X53_Y4_N53
\freqgen_0|new_freq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \freqgen_0|new_freq~0_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|new_freq~q\);

-- Location: LABCELL_X53_Y4_N54
\siggen_0|Selector0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Selector0~1_combout\ = ( \siggen_0|state.DATA~q\ & ( !\siggen_0|index\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \siggen_0|ALT_INV_index\(0),
	dataf => \siggen_0|ALT_INV_state.DATA~q\,
	combout => \siggen_0|Selector0~1_combout\);

-- Location: FF_X53_Y4_N20
\siggen_0|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|Selector0~1_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(0));

-- Location: LABCELL_X53_Y4_N48
\siggen_0|index~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index~2_combout\ = ( \siggen_0|index\(0) & ( (!\siggen_0|index\(1) & \siggen_0|state.DATA~q\) ) ) # ( !\siggen_0|index\(0) & ( (\siggen_0|index\(1) & \siggen_0|state.DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \siggen_0|ALT_INV_index\(1),
	datad => \siggen_0|ALT_INV_state.DATA~q\,
	dataf => \siggen_0|ALT_INV_index\(0),
	combout => \siggen_0|index~2_combout\);

-- Location: FF_X53_Y4_N26
\siggen_0|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|index~2_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(1));

-- Location: FF_X53_Y4_N16
\siggen_0|index[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|index~3_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index[2]~DUPLICATE_q\);

-- Location: LABCELL_X53_Y4_N36
\siggen_0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Selector1~0_combout\ = ( \siggen_0|index[2]~DUPLICATE_q\ & ( \siggen_0|state.IDLE~q\ ) ) # ( !\siggen_0|index[2]~DUPLICATE_q\ & ( ((!\siggen_0|index\(1) & !\siggen_0|index\(0))) # (\siggen_0|state.IDLE~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011111111101000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \siggen_0|ALT_INV_index\(1),
	datac => \siggen_0|ALT_INV_index\(0),
	datad => \siggen_0|ALT_INV_state.IDLE~q\,
	dataf => \siggen_0|ALT_INV_index[2]~DUPLICATE_q\,
	combout => \siggen_0|Selector1~0_combout\);

-- Location: FF_X53_Y4_N31
\siggen_0|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|Selector1~0_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|state.IDLE~q\);

-- Location: LABCELL_X53_Y4_N39
\siggen_0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Selector2~0_combout\ = ( !\siggen_0|index\(1) & ( (!\siggen_0|index\(2) & (!\siggen_0|index\(0) & !\siggen_0|state.IDLE~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \siggen_0|ALT_INV_index\(2),
	datac => \siggen_0|ALT_INV_index\(0),
	datad => \siggen_0|ALT_INV_state.IDLE~q\,
	dataf => \siggen_0|ALT_INV_index\(1),
	combout => \siggen_0|Selector2~0_combout\);

-- Location: FF_X53_Y4_N40
\siggen_0|state.START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|Selector2~0_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|state.START~q\);

-- Location: LABCELL_X53_Y4_N45
\siggen_0|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Selector3~0_combout\ = ( \siggen_0|state.START~q\ & ( \siggen_0|index\(1) ) ) # ( !\siggen_0|state.START~q\ & ( \siggen_0|index\(1) & ( (\siggen_0|state.DATA~q\ & ((!\siggen_0|index\(2)) # (!\siggen_0|index\(0)))) ) ) ) # ( 
-- \siggen_0|state.START~q\ & ( !\siggen_0|index\(1) ) ) # ( !\siggen_0|state.START~q\ & ( !\siggen_0|index\(1) & ( \siggen_0|state.DATA~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111111111111100110011001100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \siggen_0|ALT_INV_state.DATA~q\,
	datac => \siggen_0|ALT_INV_index\(2),
	datad => \siggen_0|ALT_INV_index\(0),
	datae => \siggen_0|ALT_INV_state.START~q\,
	dataf => \siggen_0|ALT_INV_index\(1),
	combout => \siggen_0|Selector3~0_combout\);

-- Location: FF_X53_Y4_N11
\siggen_0|state.DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|Selector3~0_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|state.DATA~q\);

-- Location: LABCELL_X53_Y4_N3
\siggen_0|index~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index~3_combout\ = ( \siggen_0|index\(0) & ( (\siggen_0|state.DATA~q\ & (!\siggen_0|index\(2) $ (!\siggen_0|index\(1)))) ) ) # ( !\siggen_0|index\(0) & ( (\siggen_0|index\(2) & \siggen_0|state.DATA~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \siggen_0|ALT_INV_index\(2),
	datac => \siggen_0|ALT_INV_state.DATA~q\,
	datad => \siggen_0|ALT_INV_index\(1),
	dataf => \siggen_0|ALT_INV_index\(0),
	combout => \siggen_0|index~3_combout\);

-- Location: FF_X53_Y4_N17
\siggen_0|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	asdata => \siggen_0|index~3_combout\,
	clrn => \s1~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(2));

-- Location: FF_X53_Y4_N41
\siggen_0|state.START~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|Selector2~0_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|state.START~DUPLICATE_q\);

-- Location: LABCELL_X53_Y4_N18
\siggen_0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Selector0~0_combout\ = ( \siggen_0|index\(0) & ( \siggen_0|state.DATA~q\ & ( (!\siggen_0|index\(2)) # (\siggen_0|state.START~DUPLICATE_q\) ) ) ) # ( !\siggen_0|index\(0) & ( \siggen_0|state.DATA~q\ & ( (!\siggen_0|index\(2)) # 
-- ((\siggen_0|state.START~DUPLICATE_q\) # (\siggen_0|index\(1))) ) ) ) # ( \siggen_0|index\(0) & ( !\siggen_0|state.DATA~q\ & ( \siggen_0|state.START~DUPLICATE_q\ ) ) ) # ( !\siggen_0|index\(0) & ( !\siggen_0|state.DATA~q\ & ( 
-- \siggen_0|state.START~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111001111111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \siggen_0|ALT_INV_index\(2),
	datac => \siggen_0|ALT_INV_index\(1),
	datad => \siggen_0|ALT_INV_state.START~DUPLICATE_q\,
	datae => \siggen_0|ALT_INV_index\(0),
	dataf => \siggen_0|ALT_INV_state.DATA~q\,
	combout => \siggen_0|Selector0~0_combout\);

-- Location: FF_X48_Y4_N29
\uart_rx_0|rx_shift_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(5),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(4));

-- Location: FF_X49_Y4_N46
\uart_rx_0|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(4),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(4));

-- Location: LABCELL_X48_Y4_N9
\uart_rx_0|rx_shift_reg[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|rx_shift_reg[1]~feeder_combout\ = \uart_rx_0|rx_shift_reg\(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_rx_shift_reg\(2),
	combout => \uart_rx_0|rx_shift_reg[1]~feeder_combout\);

-- Location: FF_X48_Y4_N11
\uart_rx_0|rx_shift_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|rx_shift_reg[1]~feeder_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(1));

-- Location: LABCELL_X48_Y4_N6
\uart_rx_0|rx_shift_reg[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \uart_rx_0|rx_shift_reg[0]~feeder_combout\ = \uart_rx_0|rx_shift_reg\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_0|ALT_INV_rx_shift_reg\(1),
	combout => \uart_rx_0|rx_shift_reg[0]~feeder_combout\);

-- Location: FF_X48_Y4_N7
\uart_rx_0|rx_shift_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \uart_rx_0|rx_shift_reg[0]~feeder_combout\,
	clrn => \s2~input_o\,
	ena => \uart_rx_0|always3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|rx_shift_reg\(0));

-- Location: FF_X48_Y4_N4
\uart_rx_0|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(0),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(0));

-- Location: LABCELL_X48_Y4_N3
\Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = ( \uart_rx_0|data\(0) & ( clk_div_count(14) & ( (!clk_div_count(15)) # (\data_input~input_o\) ) ) ) # ( !\uart_rx_0|data\(0) & ( clk_div_count(14) & ( (\data_input~input_o\ & clk_div_count(15)) ) ) ) # ( \uart_rx_0|data\(0) & ( 
-- !clk_div_count(14) & ( (!clk_div_count(15) & (\siggen_0|Selector0~0_combout\)) # (clk_div_count(15) & ((\uart_rx_0|data\(4)))) ) ) ) # ( !\uart_rx_0|data\(0) & ( !clk_div_count(14) & ( (!clk_div_count(15) & (\siggen_0|Selector0~0_combout\)) # 
-- (clk_div_count(15) & ((\uart_rx_0|data\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000010101011111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_data_input~input_o\,
	datab => \siggen_0|ALT_INV_Selector0~0_combout\,
	datac => \uart_rx_0|ALT_INV_data\(4),
	datad => ALT_INV_clk_div_count(15),
	datae => \uart_rx_0|ALT_INV_data\(0),
	dataf => ALT_INV_clk_div_count(14),
	combout => \Mux3~0_combout\);

-- Location: FF_X48_Y4_N44
\uart_rx_0|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(7),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(7));

-- Location: FF_X48_Y4_N47
\uart_rx_0|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(3),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(3));

-- Location: LABCELL_X48_Y4_N45
\Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = ( \uart_rx_0|data\(3) & ( (!clk_div_count(15) & ((clk_div_count(14)))) # (clk_div_count(15) & (\uart_rx_0|data\(7) & !clk_div_count(14))) ) ) # ( !\uart_rx_0|data\(3) & ( (clk_div_count(15) & (\uart_rx_0|data\(7) & !clk_div_count(14))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001011010101000000101000000000000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(15),
	datac => \uart_rx_0|ALT_INV_data\(7),
	datad => ALT_INV_clk_div_count(14),
	datae => \uart_rx_0|ALT_INV_data\(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X48_Y4_N35
\uart_rx_0|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(5),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(5));

-- Location: FF_X48_Y4_N38
\uart_rx_0|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \uart_rx_0|rx_shift_reg\(1),
	clrn => \s2~input_o\,
	sload => VCC,
	ena => \uart_rx_0|always3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uart_rx_0|data\(1));

-- Location: LABCELL_X48_Y4_N36
\Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = ( \uart_rx_0|data\(1) & ( (!clk_div_count(15) & ((clk_div_count(14)))) # (clk_div_count(15) & (\uart_rx_0|data\(5) & !clk_div_count(14))) ) ) # ( !\uart_rx_0|data\(1) & ( (\uart_rx_0|data\(5) & (clk_div_count(15) & !clk_div_count(14))) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000111000001110000010000000100000001110000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_0|ALT_INV_data\(5),
	datab => ALT_INV_clk_div_count(15),
	datac => ALT_INV_clk_div_count(14),
	datae => \uart_rx_0|ALT_INV_data\(1),
	combout => \Mux2~0_combout\);

-- Location: LABCELL_X53_Y4_N12
\decode7_0|WideOr6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr6~0_combout\ = ( \Mux2~0_combout\ & ( (!\Mux1~0_combout\ & (\Mux3~0_combout\ & \Mux0~0_combout\)) ) ) # ( !\Mux2~0_combout\ & ( (!\Mux1~0_combout\ & (\Mux3~0_combout\ & !\Mux0~0_combout\)) # (\Mux1~0_combout\ & (!\Mux3~0_combout\ $ 
-- (\Mux0~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001000000100000001001100001011000010000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	datae => \ALT_INV_Mux2~0_combout\,
	combout => \decode7_0|WideOr6~0_combout\);

-- Location: LABCELL_X53_Y4_N27
\decode7_0|WideOr5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr5~0_combout\ = (!\Mux2~0_combout\ & (\Mux1~0_combout\ & (!\Mux3~0_combout\ $ (!\Mux0~0_combout\)))) # (\Mux2~0_combout\ & ((!\Mux3~0_combout\ & (\Mux1~0_combout\)) # (\Mux3~0_combout\ & ((\Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001100010100010100110001010001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_Mux0~0_combout\,
	combout => \decode7_0|WideOr5~0_combout\);

-- Location: LABCELL_X53_Y4_N57
\decode7_0|WideOr4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr4~0_combout\ = ( \Mux0~0_combout\ & ( (\Mux1~0_combout\ & ((!\Mux3~0_combout\) # (\Mux2~0_combout\))) ) ) # ( !\Mux0~0_combout\ & ( (!\Mux1~0_combout\ & (\Mux2~0_combout\ & !\Mux3~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \decode7_0|WideOr4~0_combout\);

-- Location: LABCELL_X53_Y4_N6
\decode7_0|WideOr3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr3~0_combout\ = (!\Mux3~0_combout\ & ((!\Mux0~0_combout\ & (\Mux1~0_combout\ & !\Mux2~0_combout\)) # (\Mux0~0_combout\ & (!\Mux1~0_combout\ & \Mux2~0_combout\)))) # (\Mux3~0_combout\ & ((!\Mux1~0_combout\ $ (\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100001000011001110000100001100111000010000110011100001000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_Mux2~0_combout\,
	combout => \decode7_0|WideOr3~0_combout\);

-- Location: LABCELL_X53_Y4_N24
\decode7_0|WideOr2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr2~0_combout\ = ( \Mux3~0_combout\ & ( (!\Mux0~0_combout\) # ((!\Mux1~0_combout\ & !\Mux2~0_combout\)) ) ) # ( !\Mux3~0_combout\ & ( (\Mux1~0_combout\ & (!\Mux2~0_combout\ & !\Mux0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_Mux0~0_combout\,
	dataf => \ALT_INV_Mux3~0_combout\,
	combout => \decode7_0|WideOr2~0_combout\);

-- Location: LABCELL_X53_Y4_N33
\decode7_0|WideOr1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr1~0_combout\ = ( !\Mux2~0_combout\ & ( \Mux0~0_combout\ & ( (\Mux1~0_combout\ & \Mux3~0_combout\) ) ) ) # ( \Mux2~0_combout\ & ( !\Mux0~0_combout\ & ( (!\Mux1~0_combout\) # (\Mux3~0_combout\) ) ) ) # ( !\Mux2~0_combout\ & ( 
-- !\Mux0~0_combout\ & ( (!\Mux1~0_combout\ & \Mux3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_Mux3~0_combout\,
	datae => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux0~0_combout\,
	combout => \decode7_0|WideOr1~0_combout\);

-- Location: LABCELL_X53_Y4_N9
\decode7_0|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode7_0|WideOr0~0_combout\ = ( \Mux1~0_combout\ & ( (!\Mux0~0_combout\ & ((!\Mux3~0_combout\) # (!\Mux2~0_combout\))) # (\Mux0~0_combout\ & ((\Mux2~0_combout\) # (\Mux3~0_combout\))) ) ) # ( !\Mux1~0_combout\ & ( (\Mux2~0_combout\) # (\Mux0~0_combout\) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111110111101101111011011110110111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_Mux3~0_combout\,
	datac => \ALT_INV_Mux2~0_combout\,
	dataf => \ALT_INV_Mux1~0_combout\,
	combout => \decode7_0|WideOr0~0_combout\);

-- Location: LABCELL_X49_Y2_N51
\decode2_0|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~0_combout\ = ( clk_div_count(15) & ( clk_div_count(14) ) ) # ( !clk_div_count(15) & ( clk_div_count(14) ) ) # ( clk_div_count(15) & ( !clk_div_count(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~0_combout\);

-- Location: LABCELL_X48_Y4_N48
\decode2_0|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~1_combout\ = ( clk_div_count(14) & ( !clk_div_count(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~1_combout\);

-- Location: LABCELL_X48_Y4_N57
\decode2_0|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~2_combout\ = ( !clk_div_count(14) & ( clk_div_count(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~2_combout\);

-- Location: LABCELL_X48_Y4_N24
\decode2_0|Decoder0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~3_combout\ = (clk_div_count(14) & clk_div_count(15))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(14),
	datac => ALT_INV_clk_div_count(15),
	combout => \decode2_0|Decoder0~3_combout\);

-- Location: LABCELL_X17_Y9_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


