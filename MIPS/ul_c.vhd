LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY ul_c IS

  PORT ( CLK: IN STD_LOGIC;
         RST: IN STD_LOGIC;
         T1: IN STD_LOGIC;
         T2: IN STD_LOGIC;
         T3: IN STD_LOGIC;
         T4: IN STD_LOGIC;
         T5: IN STD_LOGIC;
         T6: IN STD_LOGIC;
         OP:   IN STD_LOGIC_VECTOR(5 DOWNTO 0);
         Q:   OUT STD_LOGIC_VECTOR(18 DOWNTO 0));
END ul_c;
ARCHITECTURE behave OF ul_c IS
BEGIN
 PROCESS(T1,T2,T3,T4,T5,T6,OP,RST,CLK)
 BEGIN
  IF RST='1'
    THEN
        Q<="0000000000000000000";
    ELSE
    IF clk'event and clk='1'
    THEN
        IF  T1='1'
        THEN
			Q<="0001000110000000100";
			
		ELSE IF   T2='1'
		THEN
			Q<="0110000000001000000";
			
		ELSE IF  T3='1'
		THEN
			Q<="0110000000001000000";
			
		ELSE IF T4='1'
		THEN 
			CASE OP IS
		    WHEN "000010" =>
		     Q<="0010000000000001000";
						
			WHEN "000011" =>
			 Q<="0010000000000001000";
			
			WHEN "000001" =>
			 Q<="0010000000000100000";
			
			WHEN "000110" =>
			 Q<="0010000001000010001";
			
			WHEN "000111" =>
			 Q<="0000000010000000010";
			 
			WHEN OTHERS  => 
			Q<= "0000000000000000000";
			END CASE;
					
		ELSE IF T5='1'
		THEN 
			CASE OP IS
			WHEN "000010" =>
			 Q<="0001001000000000000";
						
			WHEN "000011" =>
			 Q<="0000101000000000000";
						
			WHEN "000101" =>
			 Q<="0000000000100000000";
			 
			WHEN "001000" =>
			 Q<="0000000000100000000";
						
			
			 
			WHEN OTHERS  => 
			 Q<="0000000000000000000";
			END CASE;			
				
		ELSE IF  T6='1'
		THEN
			CASE OP IS
			WHEN "000010" =>
			 Q<="0000010000001000000";
			WHEN "000001" =>
			 Q<="1000000000001000000";
			 WHEN "000100" =>
			 Q<="0000000000011000000";
			 WHEN OTHERS  => 
			 Q<="0000000000000000000";
			END CASE;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
		END IF;
			
    END IF;
  END IF;
 END PROCESS;
END behave;
               
        