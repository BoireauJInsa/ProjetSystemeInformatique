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

entity test_register is
end test_register;

architecture Behavioral of test_register is
    component Registre is
     Port (
        A : in std_logic_vector(3 downto 0);
        B : in std_logic_vector(3 downto 0);
        DATA : in std_logic_vector(7 downto 0);
        W_addr : in std_logic_vector(3 downto 0); 
        RST, CLK, W : in std_logic;
        QA : out std_logic_vector(7 downto 0);
        QB : out std_logic_vector(7 downto 0));
    end component;
    
    signal sA, sB,sW_addr : std_logic_vector(3 downto 0);
    signal sRST, sCLK, sW : std_logic;
    signal sDATA,sQa,sQb : std_logic_vector(7 downto 0);
    
begin
    register_bank : Registre PORT MAP (sA,sB,sDATA,sW_addr,sRST,sCLK,sW,sQa,sQb);
    
    first_test:process
    begin
        sA <= "1100";
        sB <= "0011";
        sRST <='1';
        wait for 50 ns;
        sRST <= '0';
        sW <= '0';
        sW_addr <= "0011";
        sDATA <= "11111111";
        wait for 10 ns;
        sW <= '1';
        wait for 1000000 ns;
    end process;
    
    pclk: process
    begin
        sCLK <= '0';
        wait for 10 ns;
        sCLK <= '1';
        wait for 10 ns;
     end process;

end Behavioral;
