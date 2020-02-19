library ieee;
use ieee.std_logic_1164.all;
entity Set0 is 
    port( CLK : in std_logic;
         A : in std_logic;
         
         Z : out std_logic
         );
end Set0;
architecture a of Set0 is 
   
begin
  process(CLK,A)
   begin
   Z<=A;
    if CLK ='1' then 
      Z <='0' ;
      End if;
    
  end process;
 
end a;

