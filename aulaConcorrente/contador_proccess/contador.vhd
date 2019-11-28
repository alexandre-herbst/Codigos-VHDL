LIBRARY IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity contador is
	port(
		-- Input ports
		clk, rst_a	: in  std_logic;
		-- Output ports
		conta_s	: out std_logic_vector(2 downto 0)
	);
end entity;
architecture andre of contador is

begin
L01:
	process(clk, rst_a) is 
		variable contar : integer range 0 to 7 := 0; 
	begin 
		if(rst_a = '1') then
			contar := 0;
			-- Asynchronous Sequential Statement(s) 
		elsif(rising_edge(clk)) then
			-- Synchronous Sequential Statement(s)
			contar := contar + 1;
		end if;
		conta_s <= std_logic_vector(to_unsigned(contar, 3));
	end process; 

end architecture;
