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

entity testBench_compteur is

end testBench_compteur;

architecture bench of testBench_compteur is

    component compteur_8_bits is
        Port ( CLK : in STD_LOGIC;
               SENS : in STD_LOGIC;
               EN : in STD_LOGIC;
               RST : in STD_LOGIC;
               LOAD : in STD_LOGIC;
               Din : in STD_LOGIC_VECTOR (7 downto 0);
               Dout : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
  
       signal sclk : STD_LOGIC;
       signal ssens : STD_LOGIC;
       signal sen : STD_LOGIC;
       signal srst : STD_LOGIC;
       signal sload : STD_LOGIC;
       signal sdin : STD_LOGIC_VECTOR (7 downto 0);
       signal sdout : STD_LOGIC_VECTOR (7 downto 0);
       
begin
    compteur: compteur_8_bits PORT MAP (sclk,ssens,sen,srst,sload,sdin,sdout);
    
    prst: process
    begin
        sen <= '0';
        ssens <= '0';
        sdin <= (others => '1');    
        sload <= '1' after 0 ns;
        srst <= '1' after 0 ns;
        sload <= '0' after 100 ns;
        
        wait for 100000 ns;
    end process;
        
    pclk: process
    begin
        sclk <= '0';
        wait for 7 ns;
        sclk <= '1';
        wait for 7 ns;
     end process;
     
   
        
      

end bench;
