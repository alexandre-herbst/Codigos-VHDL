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

-- DATE "10/11/2019 11:20:00"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	display0_9 IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	LED : OUT std_logic_vector(3 DOWNTO 0);
	ssd_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END display0_9;

-- Design Ports Information
-- LED[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[0]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[1]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[2]	=>  Location: PIN_AG17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[3]	=>  Location: PIN_AH17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[4]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[5]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ssd_out[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF display0_9 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_LED : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ssd_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \ssd_out[0]~output_o\ : std_logic;
SIGNAL \ssd_out[1]~output_o\ : std_logic;
SIGNAL \ssd_out[2]~output_o\ : std_logic;
SIGNAL \ssd_out[3]~output_o\ : std_logic;
SIGNAL \ssd_out[4]~output_o\ : std_logic;
SIGNAL \ssd_out[5]~output_o\ : std_logic;
SIGNAL \ssd_out[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \contar:count[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \contar:count[0]~q\ : std_logic;
SIGNAL \contar:count[2]~0_combout\ : std_logic;
SIGNAL \contar:count[2]~q\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \contar:count[1]~q\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \contar:count[3]~q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
LED <= ww_LED;
ssd_out <= ww_ssd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\ALT_INV_Mux1~0_combout\ <= NOT \Mux1~0_combout\;
\ALT_INV_Mux2~0_combout\ <= NOT \Mux2~0_combout\;
\ALT_INV_Mux3~0_combout\ <= NOT \Mux3~0_combout\;
\ALT_INV_Mux4~0_combout\ <= NOT \Mux4~0_combout\;
\ALT_INV_Mux6~0_combout\ <= NOT \Mux6~0_combout\;

-- Location: IOOBUF_X69_Y73_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contar:count[0]~q\,
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contar:count[1]~q\,
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contar:count[2]~q\,
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \contar:count[3]~q\,
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X74_Y0_N16
\ssd_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[0]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\ssd_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[1]~output_o\);

-- Location: IOOBUF_X62_Y0_N23
\ssd_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux4~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[2]~output_o\);

-- Location: IOOBUF_X62_Y0_N16
\ssd_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux3~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\ssd_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[4]~output_o\);

-- Location: IOOBUF_X69_Y0_N9
\ssd_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[5]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\ssd_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~0_combout\,
	devoe => ww_devoe,
	o => \ssd_out[6]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LCCOMB_X87_Y40_N20
\contar:count[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar:count[0]~0_combout\ = !\contar:count[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \contar:count[0]~q\,
	combout => \contar:count[0]~0_combout\);

-- Location: IOIBUF_X115_Y17_N1
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X87_Y40_N21
\contar:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contar:count[0]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar:count[0]~q\);

-- Location: LCCOMB_X87_Y40_N24
\contar:count[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \contar:count[2]~0_combout\ = \contar:count[2]~q\ $ (((\contar:count[1]~q\ & \contar:count[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[1]~q\,
	datac => \contar:count[2]~q\,
	datad => \contar:count[0]~q\,
	combout => \contar:count[2]~0_combout\);

-- Location: FF_X87_Y40_N25
\contar:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \contar:count[2]~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar:count[2]~q\);

-- Location: LCCOMB_X87_Y40_N26
\count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\contar:count[1]~q\ & (((!\contar:count[0]~q\)))) # (!\contar:count[1]~q\ & (\contar:count[0]~q\ & ((\contar:count[2]~q\) # (!\contar:count[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[3]~q\,
	datab => \contar:count[2]~q\,
	datac => \contar:count[1]~q\,
	datad => \contar:count[0]~q\,
	combout => \count~0_combout\);

-- Location: FF_X87_Y40_N27
\contar:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar:count[1]~q\);

-- Location: LCCOMB_X87_Y40_N6
\count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (\contar:count[1]~q\ & (\contar:count[3]~q\ $ (((\contar:count[0]~q\ & \contar:count[2]~q\))))) # (!\contar:count[1]~q\ & (\contar:count[3]~q\ & ((\contar:count[2]~q\) # (!\contar:count[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[1]~q\,
	datab => \contar:count[0]~q\,
	datac => \contar:count[3]~q\,
	datad => \contar:count[2]~q\,
	combout => \count~1_combout\);

-- Location: FF_X87_Y40_N7
\contar:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \count~1_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \contar:count[3]~q\);

-- Location: LCCOMB_X87_Y40_N28
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\contar:count[1]~q\ & (!\contar:count[3]~q\ & (\contar:count[0]~q\ $ (\contar:count[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[0]~q\,
	datab => \contar:count[2]~q\,
	datac => \contar:count[1]~q\,
	datad => \contar:count[3]~q\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X87_Y40_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\contar:count[1]~q\ $ (!\contar:count[0]~q\)) # (!\contar:count[2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar:count[1]~q\,
	datac => \contar:count[0]~q\,
	datad => \contar:count[2]~q\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X87_Y40_N8
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\contar:count[1]~q\ & (!\contar:count[0]~q\ & !\contar:count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar:count[1]~q\,
	datac => \contar:count[0]~q\,
	datad => \contar:count[2]~q\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X87_Y40_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\contar:count[3]~q\ & ((\contar:count[0]~q\ & (\contar:count[2]~q\ $ (!\contar:count[1]~q\))) # (!\contar:count[0]~q\ & (\contar:count[2]~q\ & !\contar:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[0]~q\,
	datab => \contar:count[2]~q\,
	datac => \contar:count[1]~q\,
	datad => \contar:count[3]~q\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X87_Y40_N16
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\contar:count[0]~q\) # ((!\contar:count[1]~q\ & \contar:count[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \contar:count[1]~q\,
	datac => \contar:count[0]~q\,
	datad => \contar:count[2]~q\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X87_Y40_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\contar:count[3]~q\ & ((\contar:count[0]~q\ & ((\contar:count[1]~q\) # (!\contar:count[2]~q\))) # (!\contar:count[0]~q\ & (!\contar:count[2]~q\ & \contar:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[0]~q\,
	datab => \contar:count[2]~q\,
	datac => \contar:count[1]~q\,
	datad => \contar:count[3]~q\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X87_Y40_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\contar:count[3]~q\) # ((\contar:count[2]~q\ & ((!\contar:count[1]~q\) # (!\contar:count[0]~q\))) # (!\contar:count[2]~q\ & ((\contar:count[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \contar:count[0]~q\,
	datab => \contar:count[2]~q\,
	datac => \contar:count[1]~q\,
	datad => \contar:count[3]~q\,
	combout => \Mux0~0_combout\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_ssd_out(0) <= \ssd_out[0]~output_o\;

ww_ssd_out(1) <= \ssd_out[1]~output_o\;

ww_ssd_out(2) <= \ssd_out[2]~output_o\;

ww_ssd_out(3) <= \ssd_out[3]~output_o\;

ww_ssd_out(4) <= \ssd_out[4]~output_o\;

ww_ssd_out(5) <= \ssd_out[5]~output_o\;

ww_ssd_out(6) <= \ssd_out[6]~output_o\;
END structure;


