library ieee;
use ieee.std_logic_1164.all;

entity tb_lab_4 is
end entity;

architecture tb_rtl of tb_lab_4 is
	signal clk	: std_logic := '0';
	signal a		: std_logic := '0';
	signal reset: std_logic := '0';
	signal output: std_logic_vector(5 downto 0);
	component lab_4
		port(
			clk	: in std_logic;
			a		: in std_logic;
			reset	: in std_logic;
			output: out std_logic_vector(5 downto 0));
	end component;
	begin i1 : lab_4
		port map (
			clk => clk,
			a => a,
			reset => reset,
			output => output);
	--Сигнал clk
	process
	begin
			wait for 50 ps;
			clk <= not clk;
	end process;
	--Сигнал а
	process
	begin
			wait for 100 ps;
			a <= '0';
			wait for 150 ps;
			a <= '1';			
	end process;
	--Сигнал сброса
	process
	begin
			wait for 100 ps;
			reset <= not reset;
			wait for 200 ps;
			reset <= not reset;
			wait for 325 ps;
			reset <= not reset;
			wait for 150 ps;
			reset <= not reset;
			wait for 400 ps;
			reset <= not reset;
			wait for 175 ps;
			reset <= not reset;
			wait for 225 ps;
			reset <= not reset;
			wait for 75 ps;
			reset <= not reset;
	end process;
end tb_rtl;