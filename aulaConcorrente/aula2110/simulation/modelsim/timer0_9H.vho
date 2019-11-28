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

-- DATE "10/21/2019 09:16:14"

-- 
-- Device: Altera EP1C3T100A8 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	timer0_9H IS
    PORT (
	clk_1sec : IN std_logic;
	rst : IN std_logic;
	ssd_out : OUT std_logic_vector(6 DOWNTO 0)
	);
END timer0_9H;

-- Design Ports Information
-- ssd_out[0]	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[1]	=>  Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[2]	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[3]	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[4]	=>  Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[5]	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ssd_out[6]	=>  Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_1sec	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF timer0_9H IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_1sec : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_ssd_out : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk_1sec~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \C1|Mux6~0_combout\ : std_logic;
SIGNAL \C1|Mux5~0_combout\ : std_logic;
SIGNAL \C1|Mux4~0_combout\ : std_logic;
SIGNAL \C1|Mux3~0_combout\ : std_logic;
SIGNAL \C1|Mux2~0_combout\ : std_logic;
SIGNAL \C1|Mux1~0_combout\ : std_logic;
SIGNAL \C1|Mux0~0_combout\ : std_logic;
SIGNAL \C2|count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_Mux6~0_combout\ : std_logic;

BEGIN

ww_clk_1sec <= clk_1sec;
ww_rst <= rst;
ssd_out <= ww_ssd_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C1|ALT_INV_Mux1~0_combout\ <= NOT \C1|Mux1~0_combout\;
\C1|ALT_INV_Mux2~0_combout\ <= NOT \C1|Mux2~0_combout\;
\C1|ALT_INV_Mux3~0_combout\ <= NOT \C1|Mux3~0_combout\;
\C1|ALT_INV_Mux4~0_combout\ <= NOT \C1|Mux4~0_combout\;
\C1|ALT_INV_Mux6~0_combout\ <= NOT \C1|Mux6~0_combout\;

-- Location: PIN_10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk_1sec~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk_1sec,
	combout => \clk_1sec~combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LC_X7_Y13_N8
\C2|count[0]\ : cyclone_lcell
-- Equation(s):
-- \C2|count\(0) = DFFEAS((((!\C2|count\(0)))), GLOBAL(\clk_1sec~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1sec~combout\,
	datac => \C2|count\(0),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|count\(0));

-- Location: LC_X7_Y13_N5
\C2|count[2]\ : cyclone_lcell
-- Equation(s):
-- \C2|count\(2) = DFFEAS((\C2|count\(2) $ (((\C2|count\(0) & \C2|count\(1))))), GLOBAL(\clk_1sec~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1sec~combout\,
	datab => \C2|count\(2),
	datac => \C2|count\(0),
	datad => \C2|count\(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|count\(2));

-- Location: LC_X7_Y13_N9
\C2|count[3]\ : cyclone_lcell
-- Equation(s):
-- \C2|count\(3) = DFFEAS((\C2|count\(3) & ((\C2|count\(1) $ (\C2|count\(2))) # (!\C2|count\(0)))) # (!\C2|count\(3) & (\C2|count\(1) & (\C2|count\(0) & \C2|count\(2)))), GLOBAL(\clk_1sec~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6a8a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1sec~combout\,
	dataa => \C2|count\(3),
	datab => \C2|count\(1),
	datac => \C2|count\(0),
	datad => \C2|count\(2),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|count\(3));

-- Location: LC_X7_Y13_N3
\C2|count[1]\ : cyclone_lcell
-- Equation(s):
-- \C2|count\(1) = DFFEAS((\C2|count\(0) & (!\C2|count\(1) & ((\C2|count\(2)) # (!\C2|count\(3))))) # (!\C2|count\(0) & (((\C2|count\(1))))), GLOBAL(\clk_1sec~combout\), !GLOBAL(\rst~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fd0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk_1sec~combout\,
	dataa => \C2|count\(3),
	datab => \C2|count\(2),
	datac => \C2|count\(0),
	datad => \C2|count\(1),
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|count\(1));

-- Location: LC_X7_Y13_N7
\C1|Mux6~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux6~0_combout\ = (!\C2|count\(1) & (!\C2|count\(3) & (\C2|count\(0) $ (\C2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(0),
	datac => \C2|count\(2),
	datad => \C2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux6~0_combout\);

-- Location: LC_X8_Y13_N5
\C1|Mux5~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux5~0_combout\ = (\C2|count\(1) $ ((!\C2|count\(0)))) # (!\C2|count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7b7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(2),
	datac => \C2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux5~0_combout\);

-- Location: LC_X8_Y13_N2
\C1|Mux4~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux4~0_combout\ = (\C2|count\(1) & (!\C2|count\(2) & (!\C2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0202",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(2),
	datac => \C2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux4~0_combout\);

-- Location: LC_X7_Y13_N2
\C1|Mux3~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux3~0_combout\ = (!\C2|count\(3) & ((\C2|count\(1) & (\C2|count\(0) & \C2|count\(2))) # (!\C2|count\(1) & (\C2|count\(0) $ (\C2|count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0094",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(0),
	datac => \C2|count\(2),
	datad => \C2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux3~0_combout\);

-- Location: LC_X8_Y13_N4
\C1|Mux2~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux2~0_combout\ = (\C2|count\(0)) # ((!\C2|count\(1) & (\C2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(2),
	datac => \C2|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux2~0_combout\);

-- Location: LC_X7_Y13_N4
\C1|Mux1~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux1~0_combout\ = (!\C2|count\(3) & ((\C2|count\(1) & ((\C2|count\(0)) # (!\C2|count\(2)))) # (!\C2|count\(1) & (\C2|count\(0) & !\C2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "008e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(0),
	datac => \C2|count\(2),
	datad => \C2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux1~0_combout\);

-- Location: LC_X7_Y13_N6
\C1|Mux0~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Mux0~0_combout\ = (\C2|count\(3)) # ((\C2|count\(1) & ((!\C2|count\(2)) # (!\C2|count\(0)))) # (!\C2|count\(1) & ((\C2|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|count\(1),
	datab => \C2|count\(0),
	datac => \C2|count\(2),
	datad => \C2|count\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Mux0~0_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[0]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[1]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(1));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[2]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(2));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[3]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(3));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[4]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(4));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[5]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(5));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ssd_out[6]~I\ : cyclone_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ssd_out(6));
END structure;


