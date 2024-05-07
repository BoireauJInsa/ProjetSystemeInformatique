----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 09:41:03 AM
-- Design Name: 
-- Module Name: test_pipeline - Behavioral
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

entity test_pipeline is
--  Port ( );
end test_pipeline;


architecture Behavioral of test_pipeline is

component Pipeline is
    Port (
            A : in std_logic_vector(7 downto 0);
            B : in std_logic_vector(7 downto 0);
            C : in std_logic_vector(7 downto 0);
            OP : in std_logic_vector(3 downto 0);
            Out_A : out std_logic_vector(7 downto 0);
            Out_B : out std_logic_vector(7 downto 0);
            Out_C : out std_logic_vector(7 downto 0);
            Out_OP : out std_logic_vector(3 downto 0);
            CLK : in std_logic);
    
end component;
    signal sA,sB,sC,sOA,sOB,sOC :  std_logic_vector(7 downto 0);
    signal sOP,sOOP : std_logic_vector(3 downto 0);
    signal sCLK : std_logic;

begin
    pip : Pipeline PORT MAP (sA,sB,sC,sOP,sOA,sOB,sOC,sOOP,sCLK);

    first_test:process
        begin
        sA <= "10010001";
        wait for 20 ns;
        sB <= "11111111";
        wait for 20 ns;
        sC <= "00010001";
        wait for 20 ns;
        sOP <= "1111";
        wait for 10000 ns;
            
    end process;

   pclk: process
    begin
        sCLK <= '0';
        wait for 10 ns;
        sCLK <= '1';
        wait for 10 ns;
     end process;

end Behavioral;
