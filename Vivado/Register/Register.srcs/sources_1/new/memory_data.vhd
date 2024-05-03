
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;


entity memory_data is
     Port (
        addr : in std_logic_vector(7 downto 0);
        input : in std_logic_vector(7 downto 0); 
        RW,RST,CLK : in std_logic;
        output : out std_logic_vector(7 downto 0));
end memory_data;


architecture Behavioral of memory_data is

type memtab is array (255 downto 0) of std_logic_vector (7 downto 0);
signal reg : memtab;
signal sout : std_logic_vector(7 downto 0);

begin

    process(addr,input,RST,RW,CLK)
    begin
        if (CLK = '1' and CLK'event) then
        
            if(RST = '1') then
                reg <= (others => (others => '0'));
            else
                if(RW = '1') then
                    sout <= reg(to_integer(unsigned(addr)));
                else
                    reg(to_integer(unsigned(addr))) <= input;
                end if;
            end if; 
        end if;
    end process;
        


end Behavioral;
