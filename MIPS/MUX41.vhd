LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity MUX41 is
port(	 A,B,C,D  : in	std_logic_vector(16 downto 0);
		      S	  : in	std_logic_vector(1 downto 0);
		      Z	  :	out	std_logic_vector(16 downto 0) );
end MUX41;
architecture one of MUX41 is
	begin
		process(S,A,B,C,D)
			begin
				case S is 
					when "00"=>Z<=A;
					when "01"=>Z<=B;
					when "10"=>Z<=C;
					when "11"=>Z<=D;
					when others =>Z<=null;
				end case;
		end process;
	end one ;
