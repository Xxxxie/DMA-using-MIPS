LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MUX3_1 is
port(	 A,B,C  : in	std_logic_vector(31 downto 0);
		      S	  : in	std_logic_vector(1 downto 0);
		      Z	  :	out	std_logic_vector(31 downto 0) );
end MUX3_1;
architecture one of MUX3_1 is
	begin
		process(S,A,B,C)
			begin
				case S is 
					when "00"=>Z<=A;
					when "01"=>Z<=B;
					when "10"=>Z<=C;
					when others =>Z<=null;
				end case;
		end process;
	end one ;
