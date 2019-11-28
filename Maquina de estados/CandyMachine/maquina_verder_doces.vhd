library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;
----------------------------------------------------------
entity maquina_verder_doces is
	port( 
		clk  : in  std_logic;
		rst  : in  std_logic;
		pag5 : in  std_logic;
		pag10: in  std_logic;
		pag25: in  std_logic;
		prod : out std_logic;
		dev5 : out std_logic;
		dev10: out std_logic
	);
end maquina_verder_doces;
----------------------------------------------------------
architecture ifsc of maquina_verder_doces is
	type state is (ST0, ST5, ST10, ST15, ST20, ST25, ST30, ST35, ST40, ST45);
	signal pr_state, nx_state : state;
begin
	------Logica Sequencial da FSM:------------
	process (clk, rst)
	begin
		if (rst = '1') then
			pr_state <= ST0;
		elsif (clk'EVENT and clk = '1') then
			pr_state <= nx_state;
		end if;
	end process;
	------Logica Combinacional da FSM:------------
	process (pr_state, pag5, pag10, pag25)
	begin
			prod  <= '0';
			dev5  <= '0';
			dev10 <= '0';
			
			case pr_state is
				when ST0 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '0';
					if pag5 = '1' then
						nx_state <= ST5;
					elsif pag10 = '1' then
						nx_state <= ST10;
					elsif pag25 = '1' then
						nx_state <= ST25;
					else
						nx_state <= ST0; 
					end if;
				when ST5 => 
					prod <= '0';
					dev5 <= '0';
					dev10 <= '0';
					if pag5 = '1' then
						nx_state <= ST10;
					elsif pag10 = '1' then
						nx_state <= ST15;
					elsif pag25 = '1' then
						nx_state <= ST30;
					else
						nx_state <= ST5;
					end if;
				when ST10 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '0';
					if pag5 = '1' then
						nx_state <= ST15;
					elsif pag10 = '1' then 
						nx_state <= ST20;
					elsif pag25 = '1' then
						nx_state <= ST35;
					else
						nx_state <= ST10;
					end if;
				when ST15 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '0';
					if pag5 = '1' then
						nx_state <= ST20;
					elsif pag10 = '1' then 
						nx_state <= ST25;
					elsif pag25 = '1' then
						nx_state <= ST40;
					else
						nx_state <= ST15;
					end if;
				when ST20 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '0';
					if pag5 = '1' then
						nx_state <= ST25;
					elsif pag10 = '1' then 
						nx_state <= ST30;
					elsif pag25 = '1' then
						nx_state <= ST45;
					else
						nx_state <= ST20;
					end if;
				when ST25 =>
					prod <= '1';
					dev5 <= '0';
					dev10 <= '0';
					nx_state <= ST0;
				when ST30 =>
					prod <= '0';
					dev5 <= '1';
					dev10 <= '0';
					nx_state <= ST25;
				when ST35 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '1';
					nx_state <= ST25;
				when ST40 =>
					prod <= '0';
					dev5 <= '1';
					dev10 <= '0';
					nx_state <= ST35;
				when ST45 =>
					prod <= '0';
					dev5 <= '0';
					dev10 <= '1';
					nx_state <= ST35;
				end case;
		end process;
end ifsc ;