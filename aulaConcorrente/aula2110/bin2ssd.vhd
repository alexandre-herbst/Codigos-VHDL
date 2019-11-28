LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

--ENTITY bin2ssd IS
--	PORT (
--		tipo : IN std_logic;
--		bin : IN std_logic_vector (3 DOWNTO 0);
--		ssd : OUT std_logic_vector (6 DOWNTO 0)
--	);
--END ENTITY;
--
--ARCHITECTURE ifsc_comp_v1 OF bin2ssd IS
--	SIGNAL ssd_aux : std_logic_vector (6 DOWNTO 0);
--	SIGNAL bin_int : INTEGER RANGE 0 TO 9;
--BEGIN
--	bin_int <= to_integer(unsigned(bin));
--	PROCESS (bin_int) IS
--	BEGIN
--		CASE bin_int IS
--			WHEN 0 => 
--				ssd_aux <= "0111111";
--			WHEN 1 => 
--				ssd_aux <= "0000110";
--			WHEN 2 => 
--				ssd_aux <= "1011011";
--			WHEN 3 => 
--				ssd_aux <= "1001111";
--			WHEN 4 => 
--				ssd_aux <= "1100110";
--			WHEN 5 => 
--				ssd_aux <= "1101101";
--			WHEN 6 => 
--				ssd_aux <= "1111101";
				ENTITY bin2ssd IS
					PORT (
					tipo : IN std_logic;
					bin : IN std_logic_vector (3 DOWNTO 0);
					ssd : OUT std_logic_vector (6 DOWNTO 0)
					);
				END ENTITY;

				ARCHITECTURE ifsc_comp_v1 OF bin2ssd IS
					SIGNAL ssd_aux : std_logic_vector (6 DOWNTO 0);
					SIGNAL bin_int : INTEGER RANGE 0 TO 9;
					BEGIN
					bin_int <= to_integer(unsigned(bin));
					PROCESS (bin_int) IS
					BEGIN
					CASE bin_int IS
						WHEN 0 => 
							ssd_aux <= "0111111";
						WHEN 1 => 
							ssd_aux <= "0000110";
						WHEN 2 => 
							ssd_aux <= "1011011";
						WHEN 3 => 
							ssd_aux <= "1001111";
						WHEN 4 => 
							ssd_aux <= "1100110";
						WHEN 5 => 
							ssd_aux <= "1101101";
						WHEN 6 => 
							ssd_aux <= "1111101";
						WHEN 7 => 
							ssd_aux <= "0000111";
						WHEN 8 => 
							ssd_aux <= "1111111";
						WHEN 9 => 
							ssd_aux <= "1101111";
						WHEN OTHERS => 
							ssd_aux <= "0000000";
					END CASE;
				END PROCESS;
				ssd <= ssd_aux WHEN tipo = '0' ELSE (NOT ssd_aux);

		END ARCHITECTURE;
--			WHEN 7 => 
--			ssd_aux <= "0000111";
--			WHEN 8 => 
--			ssd_aux <= "1111111";
--			WHEN 9 => 
--			ssd_aux <= "1101111";
--			WHEN OTHERS => 
--			ssd_aux <= "0000000";
--		END CASE;
--	END PROCESS;
--	ssd <= ssd_aux WHEN tipo = '0' ELSE (NOT ssd_aux);
--
--END ARCHITECTURE;

