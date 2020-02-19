LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity Combine is
port(	 A : in	std_logic_vector(27 downto 0);
		 B: in std_logic_vector(3 downto 0);    
		 Z	 :	out	std_logic_vector(31 downto 0) );
end Combine;
architecture one of Combine is
	begin
		process(A)
			begin
				Z<=B(3 downto 0) & A(27 downto 0) ;
		end process;
	end one ;
