library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity timer0_9H is
	port(
		-- Input ports
		clk_lseq, rst	: in std_logic;
		ssd_out	: out  std_logic_vector(3 downto 0)
	);
end timer0_9H;

architecture andre01 of timer0_9H is
	signal bin0_9 : std_logic_vector (3 downto 0);
	signal tipo : std_logic;
	component bin2ssd is
	port(
	tipo : in std_logic;
	bin : in std_logic_vector(3 downto 0);
	ssd : in std_logic_vector(6 downto 0);
	end component;
	component conta_up is
	generic (Nbit : natural := 4; Ncount : natural := 10);
	port(
	rst : in std_logic;
	clk : int std_logic;
	q : out std_logic_vector(Nbit -1 downto 0);
	end component;

begin
	tipo_s <= '0';
	C1 bin2ssd port map (tipo_s,bin0_9,ssd_out);
	C2: conta_up
	generic map (Nbit => 4, Ncount => 10)
	port map(
	rst => rst,
	clk => clk_lseq
	q => bin0_9
	);

end architecture;
