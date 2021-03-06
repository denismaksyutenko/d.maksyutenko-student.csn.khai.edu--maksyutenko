library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all; 
 
entity lab2_1_tb is 

end entity; 
 
------------------------------------------------------ 
 
architecture rtl of lab2_1_tb is
component lab2_1 is 
       port( 
         x   : in   std_logic_vector(5 downto 1);
			y   : out  std_logic 
      );  
end component; 
signal x  :  std_logic_vector(5 downto 1);
signal y  :  std_logic; 
    begin inst1: lab2_1 port map(       
   x(1)=>x(1),  
   x(2)=>x(2),  
   x(3)=>x(3),  
   x(4)=>x(4),    
   x(5)=>x(5),    
   y =>y);
	process 
   begin      
    x(1) <= '0';   
    wait for 50 ps;   
    x(1) <= '1';   
    wait for 50 ps;  
  end process;
	process  
	begin     
    x(2) <= '0';   
    wait for 100 ps;
    x(2) <= '1';     
    wait for 100 ps; 
   end process; 
    
   process 
   begin   
    x(3) <= '0';   
    wait for 200 ps;   
    x(3) <= '1';       
    wait for 200 ps; 
  end process; 
   process 
  begin     
     x(4) <= '0'; 
     wait for 400 ps; 
     x(4) <= '1';   
     wait for 400 ps; 
  end process; 
   process 
  begin    
     x(5) <= '0'; 
     wait for 800 ps;    
     x(5) <= '1';   
     wait for 800 ps;  
  end process; 
 end rtl;