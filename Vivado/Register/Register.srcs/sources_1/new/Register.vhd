library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;



entity Registre is
     Port (
        A_addr : in std_logic_vector(3 downto 0);
        B_addr : in std_logic_vector(3 downto 0);
        DATA : in std_logic_vector(7 downto 0);
        W_addr : in std_logic_vector(3 downto 0); 
        RST, CLK, W : in std_logic;
        QA : out std_logic_vector(7 downto 0);
        QB : out std_logic_vector(7 downto 0));
end Registre;

architecture Behavioral of Registre is

type ttab is array (15 downto 0) of std_logic_vector (7 downto 0);
signal reg : ttab;

    begin
    
        process(CLK)
        begin
        if (CLK = '1' and CLK'event) then
            if (RST = '1') then
                reg <= (others => (others => '0'));
            else
                if(W = '1') then
                    reg(conv_integer(W_addr)) <= DATA;   
                end if;
            end if;
        end if;
        end process;
        
        QA <= reg(conv_integer(A_addr));
        QB <= reg(conv_integer(B_addr));

end Behavioral;
