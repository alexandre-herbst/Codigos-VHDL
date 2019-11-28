library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity conta_up is
	generic(	Nbit	: natural :=	26; Ncount : natural := 50000);
	port(
		-- Input ports
		rst	: in  std_logic;
		clk	: in  std_logic;
		q : out std_logic_vector(Nbit-1 downto 0)
	);
end conta_up;

architecture andre01 of conta_up is

begin

	process (rst, clk) is
		variable count : integer range 0 to Ncount - 1;
	begin
		if (rst = '1') then
			count := 0;
		elsif (rising_edge(clk)) then
			if count = 9 then
				count := 0;
			else
				count := count + 1;
			end if;
		end if;
		q <= std_logic_vector(to_unsigned((count),Nbit));
	end process;
end architecture;
