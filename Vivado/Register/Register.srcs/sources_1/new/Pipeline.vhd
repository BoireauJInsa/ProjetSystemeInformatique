----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/07/2024 09:08:27 AM
-- Design Name: 
-- Module Name: Pipeline - Behavioral
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
   
entity Pipeline is
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
    
end Pipeline;

architecture Behavioral of Pipeline is

begin
    process
    begin
        wait until falling_edge(CLK);
        Out_A <= A;
        Out_B <= B;
        Out_C <= C;
        Out_OP <= OP;
        
    end process;
    
end Behavioral;
