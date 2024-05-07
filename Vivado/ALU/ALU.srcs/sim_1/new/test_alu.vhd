----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/08/2024 11:26:33 AM
-- Design Name: 
-- Module Name: testBench_compteur - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test_alu is

end test_alu;

architecture bench of test_alu is

   component ALU is
      port(
      A,B : in std_logic_vector(0 to 7);
      S : out std_logic_vector(0 to 7);
      Alu_Control : in std_logic_vector(0 to 2);
      carry, overflow, negative: out std_logic
    );
end component ALU;
  
       signal sA : STD_LOGIC_VECTOR (7 downto 0);
       signal sB : STD_LOGIC_VECTOR (7 downto 0);
       signal sS: STD_LOGIC_VECTOR (7 downto 0);
       signal sControl : STD_LOGIC_VECTOR (2 downto 0);
       signal sCarry : STD_LOGIC;
       signal sOverflow : STD_LOGIC;
       signal sNegative : STD_LOGIC;
       
begin
    alu_test: ALU PORT MAP (sA,sB,sS,sControl,sCarry,sOverflow,sNegative);
    
    init: process
    begin
        sA <= "10000000";
        sB <= "10000000";
        sControl <= "000" after 10 ns;    
        wait for 10 ns;
        sControl <= "001" after 10 ns;
        wait for 10 ns;
        sControl <= "010" after 10 ns; 
        wait for 10 ns;
        sControl <= "011" after 10 ns; 
        wait for 10 ns;
        sControl <= "100" after 10 ns; 
        wait for 10 ns;
        sControl <= "101" after 10 ns; 
        wait for 10 ns;
        sControl <= "110" after 10 ns; 
        wait for 10 ns;
    end process;
    
    
end bench;
