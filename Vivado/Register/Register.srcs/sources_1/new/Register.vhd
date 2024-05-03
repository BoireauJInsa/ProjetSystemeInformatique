library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;



entity Registre is
     Port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        DATA : in std_logic_vector(7 downto 0);
        W_addr : in std_logic_vector(3 downto 0); 
        RST, CLK, W : in std_logic;
        QA : out std_logic_vector(7 downto 0);
        QB : out std_logic_vector(7 downto 0));
end Registre;

architecture Behavioral of Registre is

type ttab is array (15 downto 0) of std_logic_vector (7 downto 0);
signal reg : ttab;
signal sqa,sqb : std_logic_vector(7 downto 0);

    begin
        process(A,B,DATA,CLK,RST,W,W_addr)
            begin
           if (CLK = '0')then
            if(W_addr = A and W = '1')then
                    sqa <= DATA;
                elsif(W_addr = B and W = '1')then
                    sqb <= DATA;
                else 
                    sqa <= reg(to_integer(unsigned(A)));
                    sqb <= reg(to_integer(unsigned(B)));
            end if;  
            end if;

           if (CLK = '1' and CLK'event) then
                if(RST = '1') then
                    sqa <= (others => '0');
                    sqb <= (others => '0');
                    reg <= (others => (others => '0'));
                    
                elsif(W = '1') then
                    reg(to_integer(unsigned(W_addr))) <= DATA; 
                end if;    
             end if;
        end process;
        
        QA <= sqa;
        QB <= sqb;
end Behavioral;
