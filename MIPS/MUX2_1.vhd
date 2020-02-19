LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MUX2_1 is
port(	 A,B  : in	std_logic_vector(31 downto 0);
		      S	  : in	std_logic ;
		      Z	  :	out	std_logic_vector(31 downto 0) );
end MUX2_1;
architecture one of MUX2_1 is
	begin
		process(S,A,B)
			begin
				case S is 
					when '0'=>Z<=A;
					when '1'=>Z<=B;
					when others =>Z<=null;
				end case;
		end process;
	end one ;
