library ieee;
use ieee.std_logic_1164.all;
entity Reg_n is 
    port( clk : in std_logic;
         isread: in std_logic;
         gate : in std_logic;
         data_in : in std_logic_vector(31 downto 0);
         data_out : out std_logic_vector(31 downto 0)
         );
end Reg_n;
architecture a of Reg_n is 
    signal q : std_logic_vector( 31 downto 0);
begin
  process(clk,isread,gate)
   begin
    if clk 'event and clk = '1' then
		if gate = '0' then
      q <= data_in;
      else if isread='1' then 
     data_out<=q;
    end if;
    end if;
    end if;
  end process;
 
end a;

