----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 11:04:55 AM
-- Design Name: 
-- Module Name: compteur_8_bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.ALL;
use IEEE.std_logic_arith.ALL;


entity compteur_8_bits is
    Port ( CLK : in STD_LOGIC;
           SENS : in STD_LOGIC;
           EN : in STD_LOGIC;
           RST : in STD_LOGIC;
           LOAD : in STD_LOGIC;
           Din : in STD_LOGIC_VECTOR (7 downto 0);
           Dout : out STD_LOGIC_VECTOR (7 downto 0));
end compteur_8_bits;

architecture Behavioral of compteur_8_bits is
    signal count : std_logic_vector(7 downto 0);
begin
    process (CLK,RST,LOAD,EN,Din,SENS,count)
        begin
        if (CLK = '1' and CLK'event) then
            if (RST = '1') then
                count <= (others => '0');
            elsif (LOAD = '1' and EN = '0') then
                count <= Din;
            elsif (EN = '0') then
                if (SENS = '1') then
                    count <= count + 1;  
                else 
                    count <= count - 1; 
                end if;
            end if;
        end if;
    end process;
    
    Dout <= count;
end Behavioral;
