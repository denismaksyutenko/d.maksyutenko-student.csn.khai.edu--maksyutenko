library ieee;
use ieee.std_logic_1164.all;
entity lab_3_1tpcs is 
	port(
	clk	: in std_logic;
	j		: in std_logic;
	k		: in std_logic;
	l		: in std_logic;
	reset	: in std_logic;
	q		: out std_logic
	);
end lab_3_1tpcs;
architecture struct_3_1 of lab_3_1tpcs is
	signal state: std_logic := '0';
	signal input: std_logic_vector (2 downto 0);
begin
	input <= j & k & l;
	process(clk, reset)
		begin
			if (reset = '1') then state <= '0';
			elsif (rising_edge(clk)) then
				case (input) is
				when "001" => state <= not state;
				when "101" => state <= '0';
				when "011" => state <= '1';
				when others => null;
				end case;
			end if;
	end process;
	q<= state;
end struct_3_1;