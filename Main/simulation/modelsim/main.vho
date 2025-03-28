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

-- DATE "03/26/2025 17:13:14"

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
-- s2	=>  Location: PIN_AE19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AH23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \freqgen_0|Add0~105_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~106\ : std_logic;
SIGNAL \freqgen_0|Add0~101_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~102\ : std_logic;
SIGNAL \freqgen_0|Add0~41_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~42\ : std_logic;
SIGNAL \freqgen_0|Add0~37_sumout\ : std_logic;
SIGNAL \freqgen_0|count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~38\ : std_logic;
SIGNAL \freqgen_0|Add0~33_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~34\ : std_logic;
SIGNAL \freqgen_0|Add0~29_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~30\ : std_logic;
SIGNAL \freqgen_0|Add0~25_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~26\ : std_logic;
SIGNAL \freqgen_0|Add0~57_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~58\ : std_logic;
SIGNAL \freqgen_0|Add0~53_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~54\ : std_logic;
SIGNAL \freqgen_0|Add0~49_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~50\ : std_logic;
SIGNAL \freqgen_0|Add0~45_sumout\ : std_logic;
SIGNAL \freqgen_0|count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~46\ : std_logic;
SIGNAL \freqgen_0|Add0~21_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~22\ : std_logic;
SIGNAL \freqgen_0|Add0~17_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~18\ : std_logic;
SIGNAL \freqgen_0|Add0~13_sumout\ : std_logic;
SIGNAL \freqgen_0|count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~14\ : std_logic;
SIGNAL \freqgen_0|Add0~77_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~78\ : std_logic;
SIGNAL \freqgen_0|Add0~73_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~74\ : std_logic;
SIGNAL \freqgen_0|Add0~69_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~70\ : std_logic;
SIGNAL \freqgen_0|Add0~65_sumout\ : std_logic;
SIGNAL \freqgen_0|count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|Add0~66\ : std_logic;
SIGNAL \freqgen_0|Add0~61_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~62\ : std_logic;
SIGNAL \freqgen_0|Add0~9_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~10\ : std_logic;
SIGNAL \freqgen_0|Add0~5_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~6\ : std_logic;
SIGNAL \freqgen_0|Add0~2\ : std_logic;
SIGNAL \freqgen_0|Add0~97_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~98\ : std_logic;
SIGNAL \freqgen_0|Add0~93_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~94\ : std_logic;
SIGNAL \freqgen_0|Add0~89_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~90\ : std_logic;
SIGNAL \freqgen_0|Add0~85_sumout\ : std_logic;
SIGNAL \freqgen_0|Add0~86\ : std_logic;
SIGNAL \freqgen_0|Add0~81_sumout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~4_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~0_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~1_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~2_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~3_combout\ : std_logic;
SIGNAL \freqgen_0|LessThan0~5_combout\ : std_logic;
SIGNAL \freqgen_0|Add0~1_sumout\ : std_logic;
SIGNAL \freqgen_0|count[26]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|new_freq~0_combout\ : std_logic;
SIGNAL \freqgen_0|new_freq~q\ : std_logic;
SIGNAL \siggen_0|index~2_combout\ : std_logic;
SIGNAL \siggen_0|index[0]~feeder_combout\ : std_logic;
SIGNAL \siggen_0|index[0]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|index~0_combout\ : std_logic;
SIGNAL \siggen_0|index[2]~feeder_combout\ : std_logic;
SIGNAL \siggen_0|index~1_combout\ : std_logic;
SIGNAL \siggen_0|index[1]~feeder_combout\ : std_logic;
SIGNAL \siggen_0|index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|Mux0~0_combout\ : std_logic;
SIGNAL \siggen_0|out_bit~q\ : std_logic;
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
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \disp_digit[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~0_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~1_combout\ : std_logic;
SIGNAL \decode2_0|Decoder0~2_combout\ : std_logic;
SIGNAL clk_div_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \freqgen_0|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \siggen_0|index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \siggen_0|ALT_INV_index[0]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index[1]~DUPLICATE_q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index[2]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[22]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[15]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[8]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[18]~DUPLICATE_q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count[26]~DUPLICATE_q\ : std_logic;
SIGNAL ALT_INV_clk_div_count : std_logic_vector(15 DOWNTO 0);
SIGNAL \freqgen_0|ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index~2_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index~1_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index~0_combout\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_new_freq~q\ : std_logic;
SIGNAL \siggen_0|ALT_INV_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \decode2_0|ALT_INV_Decoder0~2_combout\ : std_logic;
SIGNAL \decode2_0|ALT_INV_Decoder0~1_combout\ : std_logic;
SIGNAL \decode2_0|ALT_INV_Decoder0~0_combout\ : std_logic;
SIGNAL \ALT_INV_disp_digit[0]~0_combout\ : std_logic;
SIGNAL \siggen_0|ALT_INV_out_bit~q\ : std_logic;
SIGNAL \freqgen_0|ALT_INV_count\ : std_logic_vector(31 DOWNTO 5);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
leds <= ww_leds;
ct <= ww_ct;
GPIO_0 <= ww_GPIO_0;
ww_s1 <= s1;
ww_s2 <= s2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\siggen_0|ALT_INV_index[0]~DUPLICATE_q\ <= NOT \siggen_0|index[0]~DUPLICATE_q\;
\siggen_0|ALT_INV_index[1]~DUPLICATE_q\ <= NOT \siggen_0|index[1]~DUPLICATE_q\;
\siggen_0|ALT_INV_index[2]~DUPLICATE_q\ <= NOT \siggen_0|index[2]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[22]~DUPLICATE_q\ <= NOT \freqgen_0|count[22]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[15]~DUPLICATE_q\ <= NOT \freqgen_0|count[15]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[8]~DUPLICATE_q\ <= NOT \freqgen_0|count[8]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[18]~DUPLICATE_q\ <= NOT \freqgen_0|count[18]~DUPLICATE_q\;
\freqgen_0|ALT_INV_count[26]~DUPLICATE_q\ <= NOT \freqgen_0|count[26]~DUPLICATE_q\;
ALT_INV_clk_div_count(1) <= NOT clk_div_count(1);
ALT_INV_clk_div_count(0) <= NOT clk_div_count(0);
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
\freqgen_0|ALT_INV_LessThan0~4_combout\ <= NOT \freqgen_0|LessThan0~4_combout\;
\freqgen_0|ALT_INV_LessThan0~3_combout\ <= NOT \freqgen_0|LessThan0~3_combout\;
\freqgen_0|ALT_INV_LessThan0~2_combout\ <= NOT \freqgen_0|LessThan0~2_combout\;
\freqgen_0|ALT_INV_LessThan0~1_combout\ <= NOT \freqgen_0|LessThan0~1_combout\;
\freqgen_0|ALT_INV_LessThan0~0_combout\ <= NOT \freqgen_0|LessThan0~0_combout\;
\siggen_0|ALT_INV_index~2_combout\ <= NOT \siggen_0|index~2_combout\;
\siggen_0|ALT_INV_index~1_combout\ <= NOT \siggen_0|index~1_combout\;
\siggen_0|ALT_INV_index~0_combout\ <= NOT \siggen_0|index~0_combout\;
\freqgen_0|ALT_INV_new_freq~q\ <= NOT \freqgen_0|new_freq~q\;
\siggen_0|ALT_INV_index\(0) <= NOT \siggen_0|index\(0);
\siggen_0|ALT_INV_index\(1) <= NOT \siggen_0|index\(1);
\siggen_0|ALT_INV_index\(2) <= NOT \siggen_0|index\(2);
\decode2_0|ALT_INV_Decoder0~2_combout\ <= NOT \decode2_0|Decoder0~2_combout\;
\decode2_0|ALT_INV_Decoder0~1_combout\ <= NOT \decode2_0|Decoder0~1_combout\;
\decode2_0|ALT_INV_Decoder0~0_combout\ <= NOT \decode2_0|Decoder0~0_combout\;
\ALT_INV_disp_digit[0]~0_combout\ <= NOT \disp_digit[0]~0_combout\;
ALT_INV_clk_div_count(15) <= NOT clk_div_count(15);
ALT_INV_clk_div_count(14) <= NOT clk_div_count(14);
\siggen_0|ALT_INV_out_bit~q\ <= NOT \siggen_0|out_bit~q\;
\freqgen_0|ALT_INV_count\(5) <= NOT \freqgen_0|count\(5);
\freqgen_0|ALT_INV_count\(6) <= NOT \freqgen_0|count\(6);
\freqgen_0|ALT_INV_count\(27) <= NOT \freqgen_0|count\(27);
\freqgen_0|ALT_INV_count\(28) <= NOT \freqgen_0|count\(28);
\freqgen_0|ALT_INV_count\(29) <= NOT \freqgen_0|count\(29);
\freqgen_0|ALT_INV_count\(30) <= NOT \freqgen_0|count\(30);
\freqgen_0|ALT_INV_count\(31) <= NOT \freqgen_0|count\(31);
\freqgen_0|ALT_INV_count\(19) <= NOT \freqgen_0|count\(19);
\freqgen_0|ALT_INV_count\(20) <= NOT \freqgen_0|count\(20);
\freqgen_0|ALT_INV_count\(21) <= NOT \freqgen_0|count\(21);
\freqgen_0|ALT_INV_count\(22) <= NOT \freqgen_0|count\(22);
\freqgen_0|ALT_INV_count\(23) <= NOT \freqgen_0|count\(23);
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
\freqgen_0|ALT_INV_count\(17) <= NOT \freqgen_0|count\(17);
\freqgen_0|ALT_INV_count\(18) <= NOT \freqgen_0|count\(18);
\freqgen_0|ALT_INV_count\(24) <= NOT \freqgen_0|count\(24);
\freqgen_0|ALT_INV_count\(25) <= NOT \freqgen_0|count\(25);
\freqgen_0|ALT_INV_count\(26) <= NOT \freqgen_0|count\(26);

-- Location: IOOBUF_X53_Y0_N36
\leds[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_disp_digit[0]~0_combout\,
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
	i => VCC,
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
	i => VCC,
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
	i => \ALT_INV_disp_digit[0]~0_combout\,
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
	i => \ALT_INV_disp_digit[0]~0_combout\,
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
	i => \ALT_INV_disp_digit[0]~0_combout\,
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
	i => GND,
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
	i => \Decoder0~0_combout\,
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
	i => \decode2_0|ALT_INV_Decoder0~0_combout\,
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
	i => \decode2_0|ALT_INV_Decoder0~1_combout\,
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
	i => \decode2_0|ALT_INV_Decoder0~2_combout\,
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
	i => \siggen_0|out_bit~q\,
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

-- Location: LABCELL_X46_Y2_N30
\freqgen_0|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~105_sumout\ = SUM(( \freqgen_0|count\(5) ) + ( VCC ) + ( !VCC ))
-- \freqgen_0|Add0~106\ = CARRY(( \freqgen_0|count\(5) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(5),
	cin => GND,
	sumout => \freqgen_0|Add0~105_sumout\,
	cout => \freqgen_0|Add0~106\);

-- Location: FF_X46_Y2_N2
\freqgen_0|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~105_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(5));

-- Location: LABCELL_X46_Y2_N33
\freqgen_0|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~101_sumout\ = SUM(( \freqgen_0|count\(6) ) + ( GND ) + ( \freqgen_0|Add0~106\ ))
-- \freqgen_0|Add0~102\ = CARRY(( \freqgen_0|count\(6) ) + ( GND ) + ( \freqgen_0|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(6),
	cin => \freqgen_0|Add0~106\,
	sumout => \freqgen_0|Add0~101_sumout\,
	cout => \freqgen_0|Add0~102\);

-- Location: FF_X46_Y2_N35
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
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(6));

-- Location: LABCELL_X46_Y2_N36
\freqgen_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~41_sumout\ = SUM(( \freqgen_0|count\(7) ) + ( VCC ) + ( \freqgen_0|Add0~102\ ))
-- \freqgen_0|Add0~42\ = CARRY(( \freqgen_0|count\(7) ) + ( VCC ) + ( \freqgen_0|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(7),
	cin => \freqgen_0|Add0~102\,
	sumout => \freqgen_0|Add0~41_sumout\,
	cout => \freqgen_0|Add0~42\);

-- Location: FF_X46_Y2_N38
\freqgen_0|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~41_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(7));

-- Location: LABCELL_X46_Y2_N39
\freqgen_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~37_sumout\ = SUM(( \freqgen_0|count[8]~DUPLICATE_q\ ) + ( VCC ) + ( \freqgen_0|Add0~42\ ))
-- \freqgen_0|Add0~38\ = CARRY(( \freqgen_0|count[8]~DUPLICATE_q\ ) + ( VCC ) + ( \freqgen_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count[8]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~42\,
	sumout => \freqgen_0|Add0~37_sumout\,
	cout => \freqgen_0|Add0~38\);

-- Location: FF_X46_Y2_N41
\freqgen_0|count[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~37_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[8]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y2_N42
\freqgen_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~33_sumout\ = SUM(( \freqgen_0|count\(9) ) + ( VCC ) + ( \freqgen_0|Add0~38\ ))
-- \freqgen_0|Add0~34\ = CARRY(( \freqgen_0|count\(9) ) + ( VCC ) + ( \freqgen_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(9),
	cin => \freqgen_0|Add0~38\,
	sumout => \freqgen_0|Add0~33_sumout\,
	cout => \freqgen_0|Add0~34\);

-- Location: FF_X46_Y2_N44
\freqgen_0|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~33_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(9));

-- Location: LABCELL_X46_Y2_N45
\freqgen_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~29_sumout\ = SUM(( \freqgen_0|count\(10) ) + ( VCC ) + ( \freqgen_0|Add0~34\ ))
-- \freqgen_0|Add0~30\ = CARRY(( \freqgen_0|count\(10) ) + ( VCC ) + ( \freqgen_0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(10),
	cin => \freqgen_0|Add0~34\,
	sumout => \freqgen_0|Add0~29_sumout\,
	cout => \freqgen_0|Add0~30\);

-- Location: FF_X46_Y2_N47
\freqgen_0|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~29_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(10));

-- Location: LABCELL_X46_Y2_N48
\freqgen_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~25_sumout\ = SUM(( \freqgen_0|count\(11) ) + ( VCC ) + ( \freqgen_0|Add0~30\ ))
-- \freqgen_0|Add0~26\ = CARRY(( \freqgen_0|count\(11) ) + ( VCC ) + ( \freqgen_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(11),
	cin => \freqgen_0|Add0~30\,
	sumout => \freqgen_0|Add0~25_sumout\,
	cout => \freqgen_0|Add0~26\);

-- Location: FF_X46_Y2_N50
\freqgen_0|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~25_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(11));

-- Location: LABCELL_X46_Y2_N51
\freqgen_0|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~57_sumout\ = SUM(( \freqgen_0|count\(12) ) + ( GND ) + ( \freqgen_0|Add0~26\ ))
-- \freqgen_0|Add0~58\ = CARRY(( \freqgen_0|count\(12) ) + ( GND ) + ( \freqgen_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(12),
	cin => \freqgen_0|Add0~26\,
	sumout => \freqgen_0|Add0~57_sumout\,
	cout => \freqgen_0|Add0~58\);

-- Location: FF_X46_Y2_N52
\freqgen_0|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~57_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(12));

-- Location: LABCELL_X46_Y2_N54
\freqgen_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~53_sumout\ = SUM(( \freqgen_0|count\(13) ) + ( GND ) + ( \freqgen_0|Add0~58\ ))
-- \freqgen_0|Add0~54\ = CARRY(( \freqgen_0|count\(13) ) + ( GND ) + ( \freqgen_0|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(13),
	cin => \freqgen_0|Add0~58\,
	sumout => \freqgen_0|Add0~53_sumout\,
	cout => \freqgen_0|Add0~54\);

-- Location: FF_X46_Y2_N56
\freqgen_0|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~53_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(13));

-- Location: LABCELL_X46_Y2_N57
\freqgen_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~49_sumout\ = SUM(( \freqgen_0|count\(14) ) + ( GND ) + ( \freqgen_0|Add0~54\ ))
-- \freqgen_0|Add0~50\ = CARRY(( \freqgen_0|count\(14) ) + ( GND ) + ( \freqgen_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(14),
	cin => \freqgen_0|Add0~54\,
	sumout => \freqgen_0|Add0~49_sumout\,
	cout => \freqgen_0|Add0~50\);

-- Location: FF_X46_Y2_N59
\freqgen_0|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~49_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(14));

-- Location: LABCELL_X46_Y1_N0
\freqgen_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~45_sumout\ = SUM(( \freqgen_0|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~50\ ))
-- \freqgen_0|Add0~46\ = CARRY(( \freqgen_0|count[15]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count[15]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~50\,
	sumout => \freqgen_0|Add0~45_sumout\,
	cout => \freqgen_0|Add0~46\);

-- Location: FF_X46_Y1_N2
\freqgen_0|count[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~45_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[15]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N3
\freqgen_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~21_sumout\ = SUM(( \freqgen_0|count\(16) ) + ( GND ) + ( \freqgen_0|Add0~46\ ))
-- \freqgen_0|Add0~22\ = CARRY(( \freqgen_0|count\(16) ) + ( GND ) + ( \freqgen_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(16),
	cin => \freqgen_0|Add0~46\,
	sumout => \freqgen_0|Add0~21_sumout\,
	cout => \freqgen_0|Add0~22\);

-- Location: FF_X46_Y1_N5
\freqgen_0|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~21_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(16));

-- Location: LABCELL_X46_Y1_N6
\freqgen_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~17_sumout\ = SUM(( \freqgen_0|count\(17) ) + ( GND ) + ( \freqgen_0|Add0~22\ ))
-- \freqgen_0|Add0~18\ = CARRY(( \freqgen_0|count\(17) ) + ( GND ) + ( \freqgen_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(17),
	cin => \freqgen_0|Add0~22\,
	sumout => \freqgen_0|Add0~17_sumout\,
	cout => \freqgen_0|Add0~18\);

-- Location: FF_X46_Y1_N7
\freqgen_0|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~17_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(17));

-- Location: LABCELL_X46_Y1_N9
\freqgen_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~13_sumout\ = SUM(( \freqgen_0|count[18]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~18\ ))
-- \freqgen_0|Add0~14\ = CARRY(( \freqgen_0|count[18]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count[18]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~18\,
	sumout => \freqgen_0|Add0~13_sumout\,
	cout => \freqgen_0|Add0~14\);

-- Location: FF_X46_Y2_N25
\freqgen_0|count[18]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~13_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[18]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N12
\freqgen_0|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~77_sumout\ = SUM(( \freqgen_0|count\(19) ) + ( GND ) + ( \freqgen_0|Add0~14\ ))
-- \freqgen_0|Add0~78\ = CARRY(( \freqgen_0|count\(19) ) + ( GND ) + ( \freqgen_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(19),
	cin => \freqgen_0|Add0~14\,
	sumout => \freqgen_0|Add0~77_sumout\,
	cout => \freqgen_0|Add0~78\);

-- Location: FF_X46_Y2_N23
\freqgen_0|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~77_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(19));

-- Location: LABCELL_X46_Y1_N15
\freqgen_0|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~73_sumout\ = SUM(( \freqgen_0|count\(20) ) + ( GND ) + ( \freqgen_0|Add0~78\ ))
-- \freqgen_0|Add0~74\ = CARRY(( \freqgen_0|count\(20) ) + ( GND ) + ( \freqgen_0|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(20),
	cin => \freqgen_0|Add0~78\,
	sumout => \freqgen_0|Add0~73_sumout\,
	cout => \freqgen_0|Add0~74\);

-- Location: FF_X46_Y1_N17
\freqgen_0|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~73_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(20));

-- Location: LABCELL_X46_Y1_N18
\freqgen_0|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~69_sumout\ = SUM(( \freqgen_0|count\(21) ) + ( GND ) + ( \freqgen_0|Add0~74\ ))
-- \freqgen_0|Add0~70\ = CARRY(( \freqgen_0|count\(21) ) + ( GND ) + ( \freqgen_0|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(21),
	cin => \freqgen_0|Add0~74\,
	sumout => \freqgen_0|Add0~69_sumout\,
	cout => \freqgen_0|Add0~70\);

-- Location: FF_X46_Y1_N20
\freqgen_0|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~69_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(21));

-- Location: LABCELL_X46_Y1_N21
\freqgen_0|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~65_sumout\ = SUM(( \freqgen_0|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~70\ ))
-- \freqgen_0|Add0~66\ = CARRY(( \freqgen_0|count[22]~DUPLICATE_q\ ) + ( GND ) + ( \freqgen_0|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count[22]~DUPLICATE_q\,
	cin => \freqgen_0|Add0~70\,
	sumout => \freqgen_0|Add0~65_sumout\,
	cout => \freqgen_0|Add0~66\);

-- Location: FF_X46_Y1_N23
\freqgen_0|count[22]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~65_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[22]~DUPLICATE_q\);

-- Location: LABCELL_X46_Y1_N24
\freqgen_0|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~61_sumout\ = SUM(( \freqgen_0|count\(23) ) + ( GND ) + ( \freqgen_0|Add0~66\ ))
-- \freqgen_0|Add0~62\ = CARRY(( \freqgen_0|count\(23) ) + ( GND ) + ( \freqgen_0|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(23),
	cin => \freqgen_0|Add0~66\,
	sumout => \freqgen_0|Add0~61_sumout\,
	cout => \freqgen_0|Add0~62\);

-- Location: FF_X46_Y1_N26
\freqgen_0|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~61_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(23));

-- Location: LABCELL_X46_Y1_N27
\freqgen_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~9_sumout\ = SUM(( \freqgen_0|count\(24) ) + ( GND ) + ( \freqgen_0|Add0~62\ ))
-- \freqgen_0|Add0~10\ = CARRY(( \freqgen_0|count\(24) ) + ( GND ) + ( \freqgen_0|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(24),
	cin => \freqgen_0|Add0~62\,
	sumout => \freqgen_0|Add0~9_sumout\,
	cout => \freqgen_0|Add0~10\);

-- Location: FF_X46_Y1_N28
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
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(24));

-- Location: LABCELL_X46_Y1_N30
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

-- Location: FF_X46_Y1_N31
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
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(25));

-- Location: LABCELL_X46_Y1_N33
\freqgen_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~1_sumout\ = SUM(( \freqgen_0|count\(26) ) + ( GND ) + ( \freqgen_0|Add0~6\ ))
-- \freqgen_0|Add0~2\ = CARRY(( \freqgen_0|count\(26) ) + ( GND ) + ( \freqgen_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(26),
	cin => \freqgen_0|Add0~6\,
	sumout => \freqgen_0|Add0~1_sumout\,
	cout => \freqgen_0|Add0~2\);

-- Location: LABCELL_X46_Y1_N36
\freqgen_0|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~97_sumout\ = SUM(( \freqgen_0|count\(27) ) + ( GND ) + ( \freqgen_0|Add0~2\ ))
-- \freqgen_0|Add0~98\ = CARRY(( \freqgen_0|count\(27) ) + ( GND ) + ( \freqgen_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(27),
	cin => \freqgen_0|Add0~2\,
	sumout => \freqgen_0|Add0~97_sumout\,
	cout => \freqgen_0|Add0~98\);

-- Location: FF_X46_Y1_N38
\freqgen_0|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~97_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(27));

-- Location: LABCELL_X46_Y1_N39
\freqgen_0|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~93_sumout\ = SUM(( \freqgen_0|count\(28) ) + ( GND ) + ( \freqgen_0|Add0~98\ ))
-- \freqgen_0|Add0~94\ = CARRY(( \freqgen_0|count\(28) ) + ( GND ) + ( \freqgen_0|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(28),
	cin => \freqgen_0|Add0~98\,
	sumout => \freqgen_0|Add0~93_sumout\,
	cout => \freqgen_0|Add0~94\);

-- Location: FF_X46_Y1_N41
\freqgen_0|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~93_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(28));

-- Location: LABCELL_X46_Y1_N42
\freqgen_0|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~89_sumout\ = SUM(( \freqgen_0|count\(29) ) + ( GND ) + ( \freqgen_0|Add0~94\ ))
-- \freqgen_0|Add0~90\ = CARRY(( \freqgen_0|count\(29) ) + ( GND ) + ( \freqgen_0|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \freqgen_0|ALT_INV_count\(29),
	cin => \freqgen_0|Add0~94\,
	sumout => \freqgen_0|Add0~89_sumout\,
	cout => \freqgen_0|Add0~90\);

-- Location: FF_X46_Y1_N43
\freqgen_0|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~89_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(29));

-- Location: LABCELL_X46_Y1_N45
\freqgen_0|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~85_sumout\ = SUM(( \freqgen_0|count\(30) ) + ( GND ) + ( \freqgen_0|Add0~90\ ))
-- \freqgen_0|Add0~86\ = CARRY(( \freqgen_0|count\(30) ) + ( GND ) + ( \freqgen_0|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(30),
	cin => \freqgen_0|Add0~90\,
	sumout => \freqgen_0|Add0~85_sumout\,
	cout => \freqgen_0|Add0~86\);

-- Location: FF_X46_Y1_N47
\freqgen_0|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~85_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(30));

-- Location: LABCELL_X46_Y1_N48
\freqgen_0|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|Add0~81_sumout\ = SUM(( \freqgen_0|count\(31) ) + ( GND ) + ( \freqgen_0|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \freqgen_0|ALT_INV_count\(31),
	cin => \freqgen_0|Add0~86\,
	sumout => \freqgen_0|Add0~81_sumout\);

-- Location: FF_X46_Y1_N50
\freqgen_0|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~81_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(31));

-- Location: LABCELL_X46_Y1_N54
\freqgen_0|LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~4_combout\ = ( !\freqgen_0|count\(30) & ( !\freqgen_0|count\(31) & ( (!\freqgen_0|count\(28) & (!\freqgen_0|count\(27) & !\freqgen_0|count\(29))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(28),
	datac => \freqgen_0|ALT_INV_count\(27),
	datad => \freqgen_0|ALT_INV_count\(29),
	datae => \freqgen_0|ALT_INV_count\(30),
	dataf => \freqgen_0|ALT_INV_count\(31),
	combout => \freqgen_0|LessThan0~4_combout\);

-- Location: FF_X46_Y2_N26
\freqgen_0|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \freqgen_0|Add0~13_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(18));

-- Location: FF_X46_Y2_N40
\freqgen_0|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~37_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(8));

-- Location: LABCELL_X46_Y2_N18
\freqgen_0|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~0_combout\ = ( !\freqgen_0|count\(10) & ( !\freqgen_0|count\(11) & ( (!\freqgen_0|count\(9) & (!\freqgen_0|count\(7) & !\freqgen_0|count\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(9),
	datac => \freqgen_0|ALT_INV_count\(7),
	datad => \freqgen_0|ALT_INV_count\(8),
	datae => \freqgen_0|ALT_INV_count\(10),
	dataf => \freqgen_0|ALT_INV_count\(11),
	combout => \freqgen_0|LessThan0~0_combout\);

-- Location: FF_X46_Y1_N1
\freqgen_0|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~45_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(15));

-- Location: LABCELL_X46_Y2_N3
\freqgen_0|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~1_combout\ = ( \freqgen_0|count\(13) & ( \freqgen_0|count\(15) & ( (\freqgen_0|count\(14) & \freqgen_0|count\(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \freqgen_0|ALT_INV_count\(14),
	datac => \freqgen_0|ALT_INV_count\(12),
	datae => \freqgen_0|ALT_INV_count\(13),
	dataf => \freqgen_0|ALT_INV_count\(15),
	combout => \freqgen_0|LessThan0~1_combout\);

-- Location: FF_X46_Y1_N22
\freqgen_0|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~65_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(22));

-- Location: LABCELL_X46_Y2_N27
\freqgen_0|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~2_combout\ = ( \freqgen_0|count\(21) & ( \freqgen_0|count\(20) & ( (\freqgen_0|count\(19) & (\freqgen_0|count\(23) & \freqgen_0|count\(22))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(19),
	datab => \freqgen_0|ALT_INV_count\(23),
	datac => \freqgen_0|ALT_INV_count\(22),
	datae => \freqgen_0|ALT_INV_count\(21),
	dataf => \freqgen_0|ALT_INV_count\(20),
	combout => \freqgen_0|LessThan0~2_combout\);

-- Location: LABCELL_X46_Y2_N6
\freqgen_0|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~3_combout\ = ( \freqgen_0|LessThan0~1_combout\ & ( \freqgen_0|LessThan0~2_combout\ & ( ((\freqgen_0|count\(17) & ((!\freqgen_0|LessThan0~0_combout\) # (\freqgen_0|count\(16))))) # (\freqgen_0|count\(18)) ) ) ) # ( 
-- !\freqgen_0|LessThan0~1_combout\ & ( \freqgen_0|LessThan0~2_combout\ & ( ((\freqgen_0|count\(17) & \freqgen_0|count\(16))) # (\freqgen_0|count\(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101011101110111010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count\(18),
	datab => \freqgen_0|ALT_INV_count\(17),
	datac => \freqgen_0|ALT_INV_LessThan0~0_combout\,
	datad => \freqgen_0|ALT_INV_count\(16),
	datae => \freqgen_0|ALT_INV_LessThan0~1_combout\,
	dataf => \freqgen_0|ALT_INV_LessThan0~2_combout\,
	combout => \freqgen_0|LessThan0~3_combout\);

-- Location: LABCELL_X46_Y2_N12
\freqgen_0|LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|LessThan0~5_combout\ = ( \freqgen_0|LessThan0~4_combout\ & ( \freqgen_0|LessThan0~3_combout\ & ( (\freqgen_0|count\(25)) # (\freqgen_0|count[26]~DUPLICATE_q\) ) ) ) # ( !\freqgen_0|LessThan0~4_combout\ & ( \freqgen_0|LessThan0~3_combout\ ) ) # 
-- ( \freqgen_0|LessThan0~4_combout\ & ( !\freqgen_0|LessThan0~3_combout\ & ( ((\freqgen_0|count\(25) & \freqgen_0|count\(24))) # (\freqgen_0|count[26]~DUPLICATE_q\) ) ) ) # ( !\freqgen_0|LessThan0~4_combout\ & ( !\freqgen_0|LessThan0~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101110101011111111111111111110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count[26]~DUPLICATE_q\,
	datab => \freqgen_0|ALT_INV_count\(25),
	datac => \freqgen_0|ALT_INV_count\(24),
	datae => \freqgen_0|ALT_INV_LessThan0~4_combout\,
	dataf => \freqgen_0|ALT_INV_LessThan0~3_combout\,
	combout => \freqgen_0|LessThan0~5_combout\);

-- Location: FF_X46_Y1_N35
\freqgen_0|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~1_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count\(26));

-- Location: FF_X46_Y1_N34
\freqgen_0|count[26]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \freqgen_0|Add0~1_sumout\,
	clrn => \s1~input_o\,
	sclr => \freqgen_0|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \freqgen_0|count[26]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y2_N12
\freqgen_0|new_freq~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \freqgen_0|new_freq~0_combout\ = ( \freqgen_0|LessThan0~3_combout\ & ( \freqgen_0|new_freq~q\ & ( (!\freqgen_0|count[26]~DUPLICATE_q\ & (!\freqgen_0|count\(25) & \freqgen_0|LessThan0~4_combout\)) ) ) ) # ( !\freqgen_0|LessThan0~3_combout\ & ( 
-- \freqgen_0|new_freq~q\ & ( (!\freqgen_0|count[26]~DUPLICATE_q\ & (\freqgen_0|LessThan0~4_combout\ & ((!\freqgen_0|count\(24)) # (!\freqgen_0|count\(25))))) ) ) ) # ( \freqgen_0|LessThan0~3_combout\ & ( !\freqgen_0|new_freq~q\ & ( 
-- ((!\freqgen_0|LessThan0~4_combout\) # (\freqgen_0|count\(25))) # (\freqgen_0|count[26]~DUPLICATE_q\) ) ) ) # ( !\freqgen_0|LessThan0~3_combout\ & ( !\freqgen_0|new_freq~q\ & ( ((!\freqgen_0|LessThan0~4_combout\) # ((\freqgen_0|count\(24) & 
-- \freqgen_0|count\(25)))) # (\freqgen_0|count[26]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010111111111110101111100000000101010000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \freqgen_0|ALT_INV_count[26]~DUPLICATE_q\,
	datab => \freqgen_0|ALT_INV_count\(24),
	datac => \freqgen_0|ALT_INV_count\(25),
	datad => \freqgen_0|ALT_INV_LessThan0~4_combout\,
	datae => \freqgen_0|ALT_INV_LessThan0~3_combout\,
	dataf => \freqgen_0|ALT_INV_new_freq~q\,
	combout => \freqgen_0|new_freq~0_combout\);

-- Location: FF_X47_Y2_N53
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

-- Location: FF_X47_Y2_N38
\siggen_0|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[1]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(1));

-- Location: FF_X47_Y2_N32
\siggen_0|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[0]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(0));

-- Location: MLABCELL_X47_Y2_N24
\siggen_0|index~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index~2_combout\ = ( !\siggen_0|index[1]~DUPLICATE_q\ & ( \siggen_0|index\(2) & ( !\siggen_0|index\(0) ) ) ) # ( \siggen_0|index[1]~DUPLICATE_q\ & ( !\siggen_0|index\(2) & ( !\siggen_0|index\(0) ) ) ) # ( !\siggen_0|index[1]~DUPLICATE_q\ & ( 
-- !\siggen_0|index\(2) & ( !\siggen_0|index\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \siggen_0|ALT_INV_index\(0),
	datae => \siggen_0|ALT_INV_index[1]~DUPLICATE_q\,
	dataf => \siggen_0|ALT_INV_index\(2),
	combout => \siggen_0|index~2_combout\);

-- Location: MLABCELL_X47_Y2_N30
\siggen_0|index[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index[0]~feeder_combout\ = ( \siggen_0|index~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \siggen_0|ALT_INV_index~2_combout\,
	combout => \siggen_0|index[0]~feeder_combout\);

-- Location: FF_X47_Y2_N31
\siggen_0|index[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[0]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index[0]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y2_N42
\siggen_0|index~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index~0_combout\ = ( \siggen_0|index\(2) & ( \siggen_0|index[0]~DUPLICATE_q\ & ( !\siggen_0|index\(1) ) ) ) # ( !\siggen_0|index\(2) & ( \siggen_0|index[0]~DUPLICATE_q\ & ( \siggen_0|index\(1) ) ) ) # ( \siggen_0|index\(2) & ( 
-- !\siggen_0|index[0]~DUPLICATE_q\ & ( !\siggen_0|index\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \siggen_0|ALT_INV_index\(1),
	datae => \siggen_0|ALT_INV_index\(2),
	dataf => \siggen_0|ALT_INV_index[0]~DUPLICATE_q\,
	combout => \siggen_0|index~0_combout\);

-- Location: MLABCELL_X47_Y2_N3
\siggen_0|index[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index[2]~feeder_combout\ = ( \siggen_0|index~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \siggen_0|ALT_INV_index~0_combout\,
	combout => \siggen_0|index[2]~feeder_combout\);

-- Location: FF_X47_Y2_N5
\siggen_0|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[2]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index\(2));

-- Location: MLABCELL_X47_Y2_N9
\siggen_0|index~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index~1_combout\ = ( !\siggen_0|index\(1) & ( \siggen_0|index[0]~DUPLICATE_q\ ) ) # ( \siggen_0|index\(1) & ( !\siggen_0|index[0]~DUPLICATE_q\ & ( !\siggen_0|index\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \siggen_0|ALT_INV_index\(2),
	datae => \siggen_0|ALT_INV_index\(1),
	dataf => \siggen_0|ALT_INV_index[0]~DUPLICATE_q\,
	combout => \siggen_0|index~1_combout\);

-- Location: MLABCELL_X47_Y2_N36
\siggen_0|index[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|index[1]~feeder_combout\ = ( \siggen_0|index~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \siggen_0|ALT_INV_index~1_combout\,
	combout => \siggen_0|index[1]~feeder_combout\);

-- Location: FF_X47_Y2_N37
\siggen_0|index[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[1]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index[1]~DUPLICATE_q\);

-- Location: FF_X47_Y2_N4
\siggen_0|index[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|index[2]~feeder_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|index[2]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y2_N54
\siggen_0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \siggen_0|Mux0~0_combout\ = ( \siggen_0|index[0]~DUPLICATE_q\ & ( !\siggen_0|index[2]~DUPLICATE_q\ ) ) # ( !\siggen_0|index[0]~DUPLICATE_q\ & ( (\siggen_0|index[1]~DUPLICATE_q\ & \siggen_0|index[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \siggen_0|ALT_INV_index[1]~DUPLICATE_q\,
	datab => \siggen_0|ALT_INV_index[2]~DUPLICATE_q\,
	dataf => \siggen_0|ALT_INV_index[0]~DUPLICATE_q\,
	combout => \siggen_0|Mux0~0_combout\);

-- Location: FF_X47_Y2_N56
\siggen_0|out_bit\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \freqgen_0|new_freq~q\,
	d => \siggen_0|Mux0~0_combout\,
	clrn => \s1~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \siggen_0|out_bit~q\);

-- Location: LABCELL_X51_Y1_N54
\clk_div_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \clk_div_count[0]~0_combout\ = !clk_div_count(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_clk_div_count(0),
	combout => \clk_div_count[0]~0_combout\);

-- Location: FF_X51_Y1_N56
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

-- Location: LABCELL_X51_Y1_N0
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( clk_div_count(1) ) + ( clk_div_count(0) ) + ( !VCC ))
-- \Add0~58\ = CARRY(( clk_div_count(1) ) + ( clk_div_count(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(0),
	datad => ALT_INV_clk_div_count(1),
	cin => GND,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X51_Y1_N2
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

-- Location: LABCELL_X51_Y1_N3
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

-- Location: FF_X51_Y1_N5
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

-- Location: LABCELL_X51_Y1_N6
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

-- Location: FF_X51_Y1_N7
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

-- Location: LABCELL_X51_Y1_N9
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

-- Location: FF_X51_Y1_N11
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

-- Location: LABCELL_X51_Y1_N12
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

-- Location: FF_X51_Y1_N14
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

-- Location: LABCELL_X51_Y1_N15
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

-- Location: FF_X51_Y1_N17
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

-- Location: LABCELL_X51_Y1_N18
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

-- Location: FF_X51_Y1_N20
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

-- Location: LABCELL_X51_Y1_N21
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

-- Location: FF_X51_Y1_N23
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

-- Location: LABCELL_X51_Y1_N24
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

-- Location: FF_X51_Y1_N26
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

-- Location: LABCELL_X51_Y1_N27
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

-- Location: FF_X51_Y1_N29
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

-- Location: LABCELL_X51_Y1_N30
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

-- Location: FF_X51_Y1_N31
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

-- Location: LABCELL_X51_Y1_N33
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

-- Location: FF_X51_Y1_N35
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

-- Location: LABCELL_X51_Y1_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( clk_div_count(13) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~10\ = CARRY(( clk_div_count(13) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(13),
	cin => \Add0~14\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X51_Y1_N38
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

-- Location: LABCELL_X51_Y1_N39
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

-- Location: FF_X51_Y1_N41
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

-- Location: LABCELL_X51_Y1_N42
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

-- Location: FF_X51_Y1_N43
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

-- Location: LABCELL_X51_Y1_N57
\disp_digit[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \disp_digit[0]~0_combout\ = ( !clk_div_count(14) & ( (\siggen_0|out_bit~q\ & !clk_div_count(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \siggen_0|ALT_INV_out_bit~q\,
	datab => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \disp_digit[0]~0_combout\);

-- Location: MLABCELL_X55_Y1_N27
\Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = ( clk_div_count(14) ) # ( !clk_div_count(14) & ( clk_div_count(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \Decoder0~0_combout\);

-- Location: LABCELL_X51_Y1_N51
\decode2_0|Decoder0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~0_combout\ = ( !clk_div_count(15) & ( clk_div_count(14) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~0_combout\);

-- Location: MLABCELL_X55_Y1_N54
\decode2_0|Decoder0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~1_combout\ = ( !clk_div_count(14) & ( clk_div_count(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~1_combout\);

-- Location: MLABCELL_X55_Y1_N12
\decode2_0|Decoder0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decode2_0|Decoder0~2_combout\ = ( clk_div_count(14) & ( clk_div_count(15) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_clk_div_count(15),
	dataf => ALT_INV_clk_div_count(14),
	combout => \decode2_0|Decoder0~2_combout\);

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

-- Location: LABCELL_X2_Y55_N0
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


