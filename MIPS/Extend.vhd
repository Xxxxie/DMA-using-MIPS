LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Extend is
port(	 A  : in	std_logic_vector(15 downto 0);		     
		 Z	:	out	std_logic_vector(31 downto 0) );
end Extend;
architecture one of Extend is
	begin
		process(A)
			begin
				Z<="0000000000000000" &A(15 downto 0);
		end process;
	end one ;
