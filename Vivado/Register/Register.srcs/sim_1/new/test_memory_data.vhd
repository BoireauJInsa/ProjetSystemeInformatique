----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/03/2024 01:40:02 PM
-- Design Name: 
-- Module Name: test_register - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_memory_data is
end test_memory_data;

architecture Behavioral of test_memory_data is
    component memory_data is
     Port (
        addr : in std_logic_vector(7 downto 0);
        input : in std_logic_vector(7 downto 0); 
        RW,RST,CLK : in std_logic;
        output : out std_logic_vector(7 downto 0));
    end component;
    
    signal sRW,sRST, sCLK: std_logic;
    signal saddr,sinput,soutput : std_logic_vector(7 downto 0);
    
begin
    data : memory_data PORT MAP (saddr,sinput,sRW,sRST,sCLK,soutput);
    
    first_test:process
    begin
        
        sRST <= '1';
        wait for 80 ns;
        sRST <= '0';
        sRW <= '0';
        sinput <= "11001100";
        saddr <= "00110011";
        wait for 50 ns;
        sRW <= '1';
        sinput <= "00000000";
        wait for 100000 ns;
        
    end process;
    
    pclk: process
    begin
        sCLK <= '0';
        wait for 10 ns;
        sCLK <= '1';
        wait for 10 ns;
     end process;

end Behavioral;
