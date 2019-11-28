LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY timer0_9H IS
	PORT (
		clk_1sec : IN std_logic;
		rst : IN std_logic;
		ssd_out : OUT std_logic_vector (6 DOWNTO 0)
	);
END ENTITY;

ARCHITECTURE ifsc_comp_v1 OF timer0_9H IS
	-- declaracao dos sinais
	SIGNAL bin0_9 : std_logic_vector (3 DOWNTO 0);
	SIGNAL tipo_s : std_logic;
	-- declaracao dos componentes
	COMPONENT bin2ssd IS
		PORT (
			tipo : IN std_logic;
			bin : IN std_logic_vector (3 DOWNTO 0);
			ssd : OUT std_logic_vector (6 DOWNTO 0)
		);
	END COMPONENT;
	COMPONENT conta_up IS
		GENERIC (
			Nbit : NATURAL := 4;
			Ncount : NATURAL := 10
		);
		PORT (
			rst : IN std_logic;
			clk : IN std_logic;
			q : OUT std_logic_vector (Nbit - 1 DOWNTO 0)
		);
	END COMPONENT;
BEGIN
	tipo_s <= '0';
	C1 : bin2ssd
	PORT MAP(tipo_s, bin0_9, ssd_out);
	-- C1: bin2ssd
	C2 : conta_up
		GENERIC MAP(Nbit => 4, Ncount => 10)
	PORT MAP(
		rst => rst, 
		clk => clk_1sec, 
		q => bin0_9
	);

		-- port map (
		-- tipo => tipo_s,
		-- bin => bin0_9,
		-- ssd => ssd_out);

END ARCHITECTURE;