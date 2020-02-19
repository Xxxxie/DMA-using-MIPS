LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Combine32 is
port(	 A : in	std_logic_vector(15 downto 0);
		 B: in std_logic_vector(31 downto 16);    
		 Z	 :	out	std_logic_vector(31 downto 0) );
end Combine32;
architecture one of Combine32 is
	begin
		process(A)
			begin
				Z<=B(31 downto 16) & A(15 downto 0) ;
		end process;
	end one ;
