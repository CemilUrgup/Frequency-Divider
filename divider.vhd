library ieee;
use ieee.std_logic_1164.all;

entity divider is
port( clk: in std_logic;
      clk_new: out std_logic);
      
end divider;

architecture behavioral of divider is

signal clk_slow: std_logic := '0';

begin
process(clk)
begin

if rising_edge(clk) then 

clk_slow <= not clk_slow;

end if;

clk_new <= clk_slow;

end process;

end behavioral;