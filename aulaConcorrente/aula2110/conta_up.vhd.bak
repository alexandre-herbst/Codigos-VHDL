LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY conta_up IS
	GENERIC (
		Nbit : NATURAL := 4;
	Ncount : NATURAL := 10); -- 4 EL C1
	-- generic (Nbit : natural := 26; Ncount : natural := 50000000); -- 47 EL C5; 60 EL C1
	PORT (
		rst : IN std_logic;
		clk : IN std_logic;
		clk_out : out std_logic;
		q : OUT std_logic_vector (Nbit - 1 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE ifsc_comp_v1 OF conta_up IS
	signal  count_sig : INTEGER RANGE 0 TO Ncount - 1;

BEGIN
	PROCESS (rst, clk) IS
	VARIABLE count : INTEGER RANGE 0 TO Ncount - 1;
	BEGIN
		IF (rst = '1') THEN
			count := 0;
		ELSIF (rising_edge(clk)) THEN
			IF count = Ncount - 1 THEN
				count := 0;
			ELSE
				count := count + 1;
			END IF;
		END IF;
		count_sig <= count;
	END PROCESS;
	clk_out <= '1' when count_sig = 0 else '0';
	q <= std_logic_vector(to_unsigned(count_sig, Nbit));
END ARCHITECTURE;
