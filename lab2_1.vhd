library ieee; 
use ieee.std_logic_1164.all; use ieee.numeric_std.all; 
 
entity lab2_1 is 
    port( 
      x   : in   std_logic_vector(5 downto 1);      
		y   : out  std_logic 
   );  
end entity; 
 
------------------------------------------------------ 
 architecture rtl of lab2_1 is 
begin     
 y <= x(1) or (not(x(1) and x(2) and x(3)) xor (not(x(4)) or x(5))); 
 end rtl;