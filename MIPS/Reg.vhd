library ieee;
use ieee.std_logic_1164.all;
entity Reg is 
    port( clk : in std_logic;
         gate : in std_logic;
         data_in : in std_logic_vector(31 downto 0);
         data_out : out std_logic_vector(31 downto 0)
         );
end Reg;
architecture a of Reg is 
    signal q : std_logic_vector( 31 downto 0);
begin
  process(clk,gate)
   begin
    if clk 'event and clk = '1' and gate = '0' then
      q <= data_in;
      
    end if;
  end process;
  data_out<=q;
end a;

