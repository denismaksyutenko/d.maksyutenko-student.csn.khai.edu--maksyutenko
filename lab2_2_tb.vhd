library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; 
use work.package2_2.all; 
 
entity lab2_2_tb is 
 end entity; 
 
------------------------------------------------------ 
 architecture rtl of lab2_2_tb is    
 component lab2_2 is 
       port( 
         x1, x2, x3, x4, x5  : in    my_logic;
			y                   : out   my_logic 
      );     
end component; 
   signal x1,x2,x3,x4,x5,y   : my_logic:='0'; 
    begin  
   inst1: lab2_2 port 
	map(       
	x1=>x1,      
	x2=>x2,      
	x3=>x3,       
	x4=>x4,      
	x5=>x5,      
	y =>y    );   
	process     
	begin      
	x1 <= '0';  
	wait for 50 ps; 
	x1 <= '1';      
	wait for 50 ps; 
   end process; 
   process  
	begin      
	x2 <= '0';   
	wait for 100 ps;  
	x2 <= '1';     
	wait for 100 ps;
	end process;      
	process    
	begin      
	x3 <= '0'; 
	wait for 200 ps; 
	x3 <= '1';     
	wait for 200 ps;
	end process;      
	process  
	begin     
	x4 <= '0';
	wait for 400 ps; 
	x4 <= '1';      
	wait for 400 ps;
	end process;    
	process    
	begin      
	x5 <= '0'; 
      wait for 800 ps; 
      x5 <= '1';     
		wait for 800 ps; 
		end process; 
 end rtl;
