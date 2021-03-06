library ieee;                              
use ieee.std_logic_1164.all;

entity tb_lab_3_1tpcs is
end tb_lab_3_1tpcs;

architecture lab_3_1_arch of tb_lab_3_1tpcs is
	signal clk	: std_logic := '0';
	signal j		: std_logic := '0';
	signal k		: std_logic := '0';
	signal l		: std_logic := '0';
	signal reset: std_logic := '0';
	signal q		: std_logic;
	component lab_3_1tpcs
		port(
			clk	: in std_logic;
			j		: in std_logic;
			k		: in std_logic;
			l		: in std_logic;
			reset	: in std_logic;
			q		: out std_logic
		);
	end component;
	begin
		i1 : lab_3_1tpcs
		port map (
			clk => clk,
			j => j,
			k => k,
			l => l,
			reset => reset,
			q => q
		);
	process
	begin
		wait for 100 ps;
		clk <= not clk;
	end process;
	process
	begin
		wait for 200 ps;
		j <= not j;
	end process;
	process
	begin
		wait for 400 ps;
		k <= not k;
	end process;
	process
	begin
		wait for 800 ps;
		l <= not l;
	end process;
	process
	begin
		wait for 75 ps;
		reset <= not reset;
		wait for 120 ps;
		reset <= not reset;
		wait for 200 ps;
		reset <= not reset;
		wait for 160 ps;
		reset <= not reset;
		wait for 330 ps;
		reset <= not reset;
	end process;	
end lab_3_1_arch;