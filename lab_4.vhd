library ieee;
use ieee.std_logic_1164.all;

entity lab_4 is

	port
	(
		clk		 : in	std_logic;
		a			 : in	std_logic;
		reset		 : in	std_logic;
		output	 : out	std_logic_vector(5 downto 0)
	);

end entity;

architecture rtl of lab_4 is

	-- Build an enumerated type for the state machine
	type state_type is (s1, s2, s3, s4, s5, s6, s7);

	-- Register to hold the current state
	signal state : state_type := s1;

begin

	process (clk, reset)
	begin

		if reset = '1' then
			state <= s1;

		elsif (rising_edge(clk)) then

			-- Determine the next state synchronously, based on
			-- the current state and the input
			case state is
				when s1=>
					if a = '1' then
						state <= s6;
					else
						state <= s2;
					end if;
				when s2=>
					state <= s7;
				when s3=>
					state <= s2;
				when s4=>
					state <= s7;
				when s5=>
					state <= s3;
				when s6=>
					if a = '1' then
						state <= s5;
					else
						state <= s4;
					end if;
				when s7=>
					state <= s1;
			end case;

		end if;
	end process;

	-- Determine the output based only on the current state
	-- and the input (do not wait for a clock edge).
	process (state)
	begin
			case state is
				when s1=>
					output <= "000001";
				when s2=>
					output <= "000011";
				when s3=>
					output <= "000100";
				when s4=>
					output <= "100001";
				when s5=>
					output <= "100010";
				when s6=>
					output <= "101101";
				when s7=>
					output <= "110111";
			end case;
	end process;

end rtl;
