
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;


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

begin

    process(CLK)
    begin
        if (CLK = '1' and CLK'event) then
            if(RST = '1') then
                reg <= (others => (others => '0'));
            else
                if(RW = '0') then
                    reg(conv_integer(addr)) <= input;
                end if;
            end if; 
        end if;
    end process;
    output <= reg(conv_integer(addr));
    

end Behavioral;
