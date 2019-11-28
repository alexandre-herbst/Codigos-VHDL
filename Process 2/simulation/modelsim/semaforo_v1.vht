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
-- Generated on "05/27/2019 20:03:29"
                                                            
-- Vhdl Test Bench template for design  :  semaforo_v1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY semaforo_v1_vhd_tst IS
END semaforo_v1_vhd_tst;
ARCHITECTURE semaforo_v1_arch OF semaforo_v1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL l1_am : STD_LOGIC;
SIGNAL l1_vd : STD_LOGIC;
SIGNAL l1_vm : STD_LOGIC;
SIGNAL l2_am : STD_LOGIC;
SIGNAL l2_vd : STD_LOGIC;
SIGNAL l2_vm : STD_LOGIC;
SIGNAL rst : STD_LOGIC;
COMPONENT semaforo_v1
	PORT (
	clk : IN STD_LOGIC;
	G : IN STD_LOGIC;
	l1_am : OUT STD_LOGIC;
	l1_vd : OUT STD_LOGIC;
	l1_vm : OUT STD_LOGIC;
	l2_am : OUT STD_LOGIC;
	l2_vd : OUT STD_LOGIC;
	l2_vm : OUT STD_LOGIC;
	rst : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : semaforo_v1
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	G => G,
	l1_am => l1_am,
	l1_vd => l1_vd,
	l1_vm => l1_vm,
	l2_am => l2_am,
	l2_vd => l2_vd,
	l2_vm => l2_vm,
	rst => rst
	);

	
rst_p : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
   rst <= '1'; wait for 0.01 sec;
	rst <= '0';-- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
clk_p : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	clk <= '1'; wait for 0.5 sec;
	clk <= '0'; wait for 0.5 sec;-- code executes for every event on sensitivity list  
WAIT;      
guarda_p : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
	G <= '0'; wait for 0.3 min;
	
	G <= '1'; wait for 3 sec;
	G <= '0'; wait for 2 min;
	
	G <= '1'; wait for 3 sec; 
	G <= '0'; wait for 5 min;

	G <= '1'; wait for 3 sec;
	G <= '0'; wait for 7 sec;
	
	G <= '1'; wait for 3 sec;
	G <= '0'; wait for 1 min;
	
	G <= '1'; wait for 3 sec; 
	G <= '0'; wait for 4 min;
	
	G <= '1'; wait for 3 sec;
	G <= '0'; wait for 7 sec;
	
	
	
	WAIT;                                                    
END PROCESS always;                                          
END semaforo_v1_arch;
