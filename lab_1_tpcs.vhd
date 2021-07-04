library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity lab_1_tpcs is  
port(    x1,x2,x3,x4,x5     : in   std_logic;
		y1              : out std_logic  );
end entity;
----------------------------------------------------
architecture rtl of lab_1_tpcs is
begin  
y1 <= x1 or (not(x1 and x2 and x3) xor ((not x4) or x5)) ;
end rtl;