-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "10/16/2019 08:58:01"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	bin2ssd IS
    PORT (
	tipo : IN std_logic;
	bin : IN std_logic_vector(3 DOWNTO 0);
	ssd : OUT std_logic_vector(6 DOWNTO 0)
	);
END bin2ssd;

-- Design Ports Information
-- ssd[0]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[2]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[3]	=>  Location: PIN_L5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[5]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tipo	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[1]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[2]	=>  Location: PIN_N10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bin[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bin2ssd IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_tipo : std_logic;
SIGNAL ww_bin : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd : std_logic_vector(6 DOWNTO 0);
SIGNAL \ssd[0]~output_o\ : std_logic;
SIGNAL \ssd[1]~output_o\ : std_logic;
SIGNAL \ssd[2]~output_o\ : std_logic;
SIGNAL \ssd[3]~output_o\ : std_logic;
SIGNAL \ssd[4]~output_o\ : std_logic;
SIGNAL \ssd[5]~output_o\ : std_logic;
SIGNAL \ssd[6]~output_o\ : std_logic;
SIGNAL \bin[0]~input_o\ : std_logic;
SIGNAL \bin[3]~input_o\ : std_logic;
SIGNAL \bin[2]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \tipo~input_o\ : std_logic;
SIGNAL \ssd~0_combout\ : std_logic;
SIGNAL \bin[1]~input_o\ : std_logic;
SIGNAL \ssd~1_combout\ : std_logic;
SIGNAL \ssd~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \ssd~3_combout\ : std_logic;
SIGNAL \ssd~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \ssd~5_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ssd~6_combout\ : std_logic;
SIGNAL \ALT_INV_ssd~5_combout\ : std_logic;
SIGNAL \ALT_INV_ssd~4_combout\ : std_logic;
SIGNAL \ALT_INV_ssd~3_combout\ : std_logic;
SIGNAL \ALT_INV_ssd~2_combout\ : std_logic;
SIGNAL \ALT_INV_ssd~0_combout\ : std_logic;

BEGIN

ww_tipo <= tipo;
ww_bin <= bin;
ssd <= ww_ssd;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_ssd~5_combout\ <= NOT \ssd~5_combout\;
\ALT_INV_ssd~4_combout\ <= NOT \ssd~4_combout\;
\ALT_INV_ssd~3_combout\ <= NOT \ssd~3_combout\;
\ALT_INV_ssd~2_combout\ <= NOT \ssd~2_combout\;
\ALT_INV_ssd~0_combout\ <= NOT \ssd~0_combout\;

-- Location: IOOBUF_X22_Y0_N9
\ssd[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssd~0_combout\,
	devoe => ww_devoe,
	o => \ssd[0]~output_o\);

-- Location: IOOBUF_X12_Y0_N9
\ssd[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd~1_combout\,
	devoe => ww_devoe,
	o => \ssd[1]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\ssd[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssd~2_combout\,
	devoe => ww_devoe,
	o => \ssd[2]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\ssd[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssd~3_combout\,
	devoe => ww_devoe,
	o => \ssd[3]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\ssd[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssd~4_combout\,
	devoe => ww_devoe,
	o => \ssd[4]~output_o\);

-- Location: IOOBUF_X10_Y0_N9
\ssd[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_ssd~5_combout\,
	devoe => ww_devoe,
	o => \ssd[5]~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\ssd[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ssd~6_combout\,
	devoe => ww_devoe,
	o => \ssd[6]~output_o\);

-- Location: IOIBUF_X14_Y0_N1
\bin[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(0),
	o => \bin[0]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
\bin[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(3),
	o => \bin[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\bin[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(2),
	o => \bin[2]~input_o\);

-- Location: LCCOMB_X23_Y1_N24
\Mux6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\bin[1]~input_o\ & (!\bin[3]~input_o\ & (\bin[0]~input_o\ $ (\bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[3]~input_o\,
	datad => \bin[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: IOIBUF_X26_Y0_N1
\tipo~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tipo,
	o => \tipo~input_o\);

-- Location: LCCOMB_X23_Y1_N18
\ssd~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~0_combout\ = \Mux6~0_combout\ $ (\tipo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux6~0_combout\,
	datac => \tipo~input_o\,
	combout => \ssd~0_combout\);

-- Location: IOIBUF_X24_Y0_N8
\bin[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_bin(1),
	o => \bin[1]~input_o\);

-- Location: LCCOMB_X23_Y1_N28
\ssd~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~1_combout\ = \tipo~input_o\ $ (((\bin[1]~input_o\ $ (!\bin[0]~input_o\)) # (!\bin[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \tipo~input_o\,
	datad => \bin[2]~input_o\,
	combout => \ssd~1_combout\);

-- Location: LCCOMB_X23_Y1_N6
\ssd~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~2_combout\ = \tipo~input_o\ $ (((\bin[1]~input_o\ & (!\bin[0]~input_o\ & !\bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \tipo~input_o\,
	datad => \bin[2]~input_o\,
	combout => \ssd~2_combout\);

-- Location: LCCOMB_X23_Y1_N0
\Mux3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\bin[3]~input_o\ & ((\bin[1]~input_o\ & (\bin[0]~input_o\ & \bin[2]~input_o\)) # (!\bin[1]~input_o\ & (\bin[0]~input_o\ $ (\bin[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[3]~input_o\,
	datad => \bin[2]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X23_Y1_N26
\ssd~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~3_combout\ = \Mux3~0_combout\ $ (\tipo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~0_combout\,
	datac => \tipo~input_o\,
	combout => \ssd~3_combout\);

-- Location: LCCOMB_X23_Y1_N20
\ssd~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~4_combout\ = \tipo~input_o\ $ (((\bin[0]~input_o\) # ((!\bin[1]~input_o\ & \bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \tipo~input_o\,
	datad => \bin[2]~input_o\,
	combout => \ssd~4_combout\);

-- Location: LCCOMB_X23_Y1_N22
\Mux1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\bin[3]~input_o\ & ((\bin[1]~input_o\ & ((\bin[0]~input_o\) # (!\bin[2]~input_o\))) # (!\bin[1]~input_o\ & (\bin[0]~input_o\ & !\bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[3]~input_o\,
	datad => \bin[2]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X23_Y1_N16
\ssd~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~5_combout\ = \Mux1~0_combout\ $ (\tipo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datac => \tipo~input_o\,
	combout => \ssd~5_combout\);

-- Location: LCCOMB_X23_Y1_N2
\Mux0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\bin[3]~input_o\) # ((\bin[1]~input_o\ & ((!\bin[2]~input_o\) # (!\bin[0]~input_o\))) # (!\bin[1]~input_o\ & ((\bin[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bin[1]~input_o\,
	datab => \bin[0]~input_o\,
	datac => \bin[3]~input_o\,
	datad => \bin[2]~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X23_Y1_N4
\ssd~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ssd~6_combout\ = \Mux0~0_combout\ $ (\tipo~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux0~0_combout\,
	datac => \tipo~input_o\,
	combout => \ssd~6_combout\);

ww_ssd(0) <= \ssd[0]~output_o\;

ww_ssd(1) <= \ssd[1]~output_o\;

ww_ssd(2) <= \ssd[2]~output_o\;

ww_ssd(3) <= \ssd[3]~output_o\;

ww_ssd(4) <= \ssd[4]~output_o\;

ww_ssd(5) <= \ssd[5]~output_o\;

ww_ssd(6) <= \ssd[6]~output_o\;
END structure;


