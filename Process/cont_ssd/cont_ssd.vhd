library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity div_clk is 
--generic (MAX: natural := 25000000);
generic (MAX: natural := 25);

port (clk_in, rst: in std_logic;
		clk_out: out std_logic);
		
		end entity;
		
architecture ifsc of div_clk is 
signal clk_t : std_logic := '0';
begin

	process(clk_in, rst) is
	variable cnt: integer range MAX-1 downto 0;
	
	begin
		if(rst = '1') then
			cnt := 0;
			clk_t <= '1';
		elsif (rising_edge(clk_in)) then
		if (cnt = MAX-1) then
				cnt :=0;
				clk_t <= not clk_t;
			else 
			cnt := cnt + 1;
			end if;
			
		end if;
		clk_out <= clk_t;
	end process;
	
end architecture;