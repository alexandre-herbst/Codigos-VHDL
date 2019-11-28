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
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END questao_02_arch;
