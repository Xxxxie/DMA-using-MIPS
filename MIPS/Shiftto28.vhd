LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Shiftto28 is
port(	 A : in	std_logic_vector(25 downto 0);    
		 Z	 :	out	std_logic_vector(27 downto 0) );
end Shiftto28;
architecture one of Shiftto28 is
	begin
		process(A)
			begin
				Z<="00" & A(25 downto 0) ;
		end process;
	end one ;
