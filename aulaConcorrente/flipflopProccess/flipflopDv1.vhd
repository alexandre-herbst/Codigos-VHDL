library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- use <library_name>.<entity_name>;
    use ieee.VITAL_Primitives.all;
    --use lpm.lpm_components.all;
    --use altera_mf.altera_mf_components.all;
    
entity flipflopDv1 is
    port
    (    
    clk, rst, d    : in std_LOGIC;
    q: out std_LOGIC

    );
end flipflopDv1;
-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture andre of flipflopDv1 is


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
