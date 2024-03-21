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
    
    p1: process
    begin
        sA <= x"00";
        sB <= x"00";
        sControl <= "000";    
        sCarry <= '0' after 0 ns;
        sOverflow<= '0' after 0 ns;
        sNegative <= '0' after 0 ns;
        wait for 100000 ns;
    end process;
    
    p2: process
    begin
        wait for 100 ns;
        sA <= x"0f";
        sB <= x"01";
        sControl <= (others => '0'); 
        wait for 100000 ns;
    end process;
    
end bench;
