library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
use work.package2_3.all; 
 
entity lab2_3 is 
    port( 
	x	: in    my_array(5 downto 1);
	y   : out   my_logic 
   );  
end entity; 
 
------------------------------------------------------ 
 architecture rtl of lab2_3 is 
 begin  
y	<= x(1) or (not(x(1) and x(2) and x(3)) xor (not(x(4)) or (x(5)))); 
 end rtl;
