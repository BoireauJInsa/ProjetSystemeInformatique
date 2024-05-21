
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
    
    output <= sout;
    
    
    --on remplit la mémoire à la main pour des tests
    
    reg(11) <= x"06000100";
    reg(12) <= x"00000000";
    reg(13) <= x"00000000";
    reg(14) <= x"06020300";
    reg(15) <= x"00000000";
    reg(16) <= x"00000000";
    reg(17) <= x"05040200";
    reg(18) <= x"00000000";
    reg(19) <= x"00000000";
    reg(20) <= x"01080002";
    reg(21) <= x"02050204";
    reg(22) <= x"03060400";
    reg(23) <= x"0f010200";
    
end Behavioral;
