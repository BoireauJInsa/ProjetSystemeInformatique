
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity memory_instruction is
    Port (
            addr : in std_logic_vector(7 downto 0);
            output : out std_logic_vector(31 downto 0));
end memory_instruction;

architecture Behavioral of memory_instruction is

type memtab is array (255 downto 0) of std_logic_vector (31 downto 0);
signal reg : memtab;
signal sout : std_logic_vector(31 downto 0);

begin

    process(addr,reg)
    begin
        
        sout <= reg(to_integer(unsigned(addr)));
       
    end process;
    
    output <= sout;
    
    
    --on remplit la mémoire à la main pour des tests
    reg(0) <= x"06000600";
    reg(1) <= x"0fff0000";
    reg(2) <= x"0e01ff00";
    reg(3) <= x"05010000";
    reg(4) <= x"0f010000";
    reg(5) <= x"06000800";
    reg(6) <= x"0fff0000";
    reg(7) <= x"0e01ff00";
    reg(8) <= x"05010000";
    reg(9) <= x"0f020000";
    reg(10) <= x"06000200";
    reg(11) <= x"0fff0000";
    reg(12) <= x"0e010200";
    reg(13) <= x"0e02ff00";
    reg(14) <= x"02000102";
    reg(15) <= x"0fff0000";
    reg(16) <= x"0e010100";
    reg(17) <= x"0e02ff00";
    reg(18) <= x"01000102";
    reg(19) <= x"0fff0000";
    reg(20) <= x"0e01ff00";
    reg(21) <= x"05010000";
    reg(22) <= x"0f000000";


end Behavioral;
