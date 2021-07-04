library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use work.package2_2.all; 

entity lab2_2 is 
    port( 
      x1, x2, x3, x4, x5    : in   my_logic;
		y                     : out  my_logic 
   );  
end entity; 
 
------------------------------------------------------ 
 
architecture rtl of lab2_2 is begin  
   y <= x1 or (not(x1 and x2 and x3) xor (not(x4) or x5)); 
 end rtl;