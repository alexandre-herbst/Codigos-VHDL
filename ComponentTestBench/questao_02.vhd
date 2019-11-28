library ieee;
use ieee.std_logic_1164.all;

entity questao_02 is
	generic(N_in : natural := 4);
	port
	(
		-- Input ports
		a_in, b_in, c_in, d_in	: in  std_logic_vector(N_in-1 downto 0);
		sel_in : in std_logic_vector(1 downto 0); 
		rst_in, clk_in : in  std_logic;
		reg_out, mux_out	: out std_logic_vector(N_in-1 downto 0)
	);
end questao_02;

architecture andre01 of questao_02 is

	-- component mux_4x1 is
	-- component reg_4 is
	signal y_aux : std_logic_vector(N_in - 1 downto 0);
-------componente mux---------------------------------------------------------------
	component mux_41 is
		generic(N : natural := 4);
		port(
			-- Input ports
			a, b, c, d	: in  std_logic_vector(N-1 downto 0);
			sel : in  std_logic_vector(1 downto 0);
			y	: out std_logic_vector(N-1 downto 0)
		);
	end component;
	
-------------Componente flipflop----------------------------------------------------
	component reg_4 is
		generic(N : natural := 4);
		port 	(
			-- Input ports
			x	: in  std_logic_vector(N-1 downto 0);
			clk, rst : in  std_logic;
			y	: out std_logic_vector(N-1 downto 0)
		);
	end component;
------------------------------------------------------------------------------------
begin

	c_mux: component mux_41 
		generic map(N => N_in)
		port map(
			-- Input ports
			a => a_in, b => b_in, c => c_in, d => d_in, 
			sel => sel_in, y => y_aux
		);	
		
	c_reg : component reg_4
		generic map (N => N_in)
		port map (
			-- Input ports
			x	=> y_aux , y => reg_out, clk => clk_in, rst => rst_in
		);
		
end architecture;