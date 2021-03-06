LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY DMAControl IS

  PORT ( 
         OP: IN STD_LOGIC_VECTOR(5 DOWNTO 0);
         DMARead : OUT STD_LOGIC;
         DMAWrite : OUT STD_LOGIC
        );
END DMAControl;
ARCHITECTURE behave OF DMAControl IS
BEGIN
 PROCESS(OP)
 BEGIN
 CASE OP IS 
	when "000101" =>DMAWrite <='1' ; DMARead <='0';
	WHEN "001000" =>DMAWrite <='0' ; DMARead <='1';
	WHEN OTHERS =>DMAWrite <='0' ; DMARead <='0';
 end case;
 END PROCESS;
END behave;
               
        