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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "11/25/2019 08:55:25"
                                                            
-- Vhdl Test Bench template for design  :  questao_02
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY questao_02_vhd_tst IS
END questao_02_vhd_tst;
ARCHITECTURE questao_02_arch OF questao_02_vhd_tst IS
-- constants  
constant tclk : time := 1 ns; 
constant treset : time := 100 ps;                                                
-- signals                                                   
SIGNAL a_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL b_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL c_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL clk_in : STD_LOGIC;
SIGNAL d_in : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL mux_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL reg_out : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL rst_in : STD_LOGIC;
SIGNAL sel_in : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT questao_02
	PORT (
	a_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	b_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	c_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	clk_in : IN STD_LOGIC;
	d_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mux_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	reg_out : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	rst_in : IN STD_LOGIC;
	sel_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : questao_02
	PORT MAP (
-- list connections between master ports and signals
	a_in => a_in,
	b_in => b_in,
	c_in => c_in,
	clk_in => clk_in,
	d_in => d_in,
	mux_out => mux_out,
	reg_out => reg_out,
	rst_in => rst_in,
	sel_in => sel_in
	);
	clk_in <= not clk_in after tclk;
	rst_in <= '1', '0' after treset;
	
	process
	begin
		a_in <= "0000"; 
		wait for 2 ns;
		a_in <= "1111";
		wait for 6 ns;
		a_in <= "0101";
		wait for 1 ns;
	end process;
	
	process
	begin
		b_in <= "1010"; 
		wait for 3 ns;
		b_in <= "1011";
		wait for 3 ns;
		b_in <= "0101";
		wait;
	end process;
	
	c_in <=  "1101", "0000" after 3 ns, "1111" after 6 ns, "1011" after 10 ns;

		 
	-- GERAÇÂO DO SINAL a = [0 1 2 3 4 ...] COM DURAÇÃO DE t_a em cada valor (COM CÓDIGO SEQUENCIAL)
		PROCESS                                              
		BEGIN  
			for i in 0 to 15 loop
				d_in <= std_logic_vector(to_unsigned(i,4));
				wait for 2 ns;
			end loop;
		END PROCESS;
		
end questao_02_arch;
