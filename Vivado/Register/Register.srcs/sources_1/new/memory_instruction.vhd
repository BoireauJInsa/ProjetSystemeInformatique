
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity memory_instruction is
    Port (
            addr : in std_logic_vector(7 downto 0);
            CLK : in std_logic;
            output : out std_logic_vector(31 downto 0));
end memory_instruction;

architecture Behavioral of memory_instruction is

type memtab is array (255 downto 0) of std_logic_vector (31 downto 0);
signal reg : memtab;
signal sout : std_logic_vector(31 downto 0);

begin

    process(addr,CLK)
    begin
        if (CLK = '1' and CLK'event) then
            sout <= reg(to_integer(unsigned(addr)));
        end if;
    end process;

end Behavioral;
