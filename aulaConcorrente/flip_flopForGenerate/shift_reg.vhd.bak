library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use <library_name>.<entity_name>;
    use ieee.VITAL_Primitives.all;
    --use lpm.lpm_components.all;
    --use altera_mf.altera_mf_components.all;
    
entity shift_reg is
    port
    (    
    clk, rst    : in std_LOGIC;
	 din : std_logic;
    dout: out std_LOGIC

    );
end shift_reg;

architecture andre of shift_reg is

begin
l1:
process (rst,clk) is
    begin
        if(rst = '1') then    
            q <= '0';
        elsif(rising_edge(clk)) then
            q <= d;
        end if;
    end process;


end architecture;
