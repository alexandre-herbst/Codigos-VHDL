library ieee;
use ieee.std_logic_1164.all;

entity reg_4 is
	generic(N : natural := 4);
	port
	(
		-- Input ports
		x	: in  std_logic_vector(N-1 downto 0);
		clk, rst : in  std_logic;
		y	: out std_logic_vector(N-1 downto 0)
	);
end reg_4;

architecture andre01 of reg_4 is

begin
	process(clk, rst)
	begin
			if rst = '1' then 
				y <= (others => '0');
			elsif rising_edge(clk) then
				y <= x;
		end if;
	end process;
end architecture;