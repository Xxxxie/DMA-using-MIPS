library ieee;
use ieee.std_logic_1164.all;
entity CounterReg is 
    port( clk : in std_logic;
         gate : in std_logic;
         aclr :in std_logic;
         data_in : in std_logic_vector(31 downto 0);
         data_out : out std_logic_vector(31 downto 0)
         );
end CounterReg;
architecture a of CounterReg is 
    signal q : std_logic_vector( 31 downto 0);
begin
  process(clk,gate,aclr)
   begin
	
    if clk 'event and clk = '1' then 
		if gate = '1' then
			q <= data_in;
		end if;
		if aclr= '1' then 
			q <= "00000000000000000000000000000000";
		end if;
	end if;
    
  end process;
  data_out<=q;
end a;

