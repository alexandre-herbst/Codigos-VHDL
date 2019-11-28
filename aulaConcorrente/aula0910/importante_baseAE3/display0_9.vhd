library IEEE;
use ieee.std_logic_1164.all; 

entity display0_9 is
	-- generic(<name>	: <type>  :=	<default_value>);
	port
	(	-- Input ports
		clk, rst	: in  std_logic;
		ssd_out	: out  std_logic_vector(6 downto 0)
	);
end display0_9;

-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture andre01 of display0_9 is

	signal count_sig : integer range 0 to 9;

begin
contar:
	process (rst, clk) is
	variable count : integer range 0 to 9;
	begin
	if (rst = '1') then
		count := 0; --variavel
	elsif (rising_edge(clk)) then	
		if count = 9 then	
		--if count > 8 then    -se quiser otimizar o circuito
			count := 0;
		else count := count + 1;
		end if;
	end if;
	count_sig <= count;
	end process;
	process (count_sig) is 
		begin
			case count_sig is
				when 0 =>
					-- Sequential Statement(s)
					ssd_out <= "0111111";
				when 1 =>
					-- Sequential Statement(s)
					ssd_out <= "0000110";
				when 9 =>
					ssd_out <= "1101111";
				when others =>
					-- Sequential Statement(s)
					ssd_out <= "0000000";
			end case;

	end process;
end architecture;
