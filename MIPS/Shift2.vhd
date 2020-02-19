LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Shift2 is
port(	 A : in	std_logic_vector(31 downto 0);    
		 Z	 :	out	std_logic_vector(31 downto 0) );
end Shift2;
architecture one of Shift2 is
	begin
		process(A)
			begin
				Z<=A(29 downto 0) &"00";
		end process;
	end one ;
