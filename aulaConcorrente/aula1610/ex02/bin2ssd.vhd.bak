library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bin2ssd is
	generic(	Nbit	: natural := 0);
	port(
		-- Input ports
		bin	: in  std_logic(3 downto 0);
		ssd	: in  std_logic(6 downto 0);
		-- q : out std_logic_vector(Nbit-1 downto 0)
	);
end conta_up;

architecture andre01 of bin2ssd is

begin

	process (q) is
	begin
		case q is
		when 0 =>
			ssd_out <= "0111111";
		when 1 =>
			ssd_out <= "0000110";
		when 2 =>
			ssd_out <= "1011011";
		when 3 =>
			ssd_out <= "1001111";
		when 4 =>
			ssd_out <= "1100110";
		when 5 =>
			ssd_out <= "1101101";
		when 6 =>
			ssd_out <= "1111101";
		when 7 =>
			ssd_out <= "0000111";
		when 8 =>
			ssd_out <= "1111111";
		when 9 =>
			ssd_out <= "1101111";
		when others =>
			ssd_out <= "0000000";
		end case;
	end process;
end architecture;
