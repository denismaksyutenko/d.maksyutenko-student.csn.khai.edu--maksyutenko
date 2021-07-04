library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
 
package package2_3 is 
 
   subtype my_logic is std_logic; 
   type my_array is array(integer range <>) of my_logic; 
 
end package2_3;
