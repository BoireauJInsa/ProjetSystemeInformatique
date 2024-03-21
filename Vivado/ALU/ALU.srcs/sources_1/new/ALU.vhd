----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2024 08:45:01 PM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity ALU is
      port(
      A,B : in std_logic_vector(0 to 7);
      S : out std_logic_vector(0 to 7);
      Alu_Control : in std_logic_vector(0 to 2);
      carry, overflow, negative: out std_logic
    );
end ALU;

architecture beh of ALU is
      signal result, a_ext,b_ext : std_logic_vector(0 to 15);
begin
  process (A,B,Alu_Control)
  begin
      a_ext <= X"00" & A;
      b_ext <= X"00" & B;
    case Alu_Control is
      -- "000" = Addition
      when "000" =>
            result <= a_ext + b_ext;
      -- "001" = Soustraction
      when "001" =>
            result <= a_ext - b_ext;
      -- "010" = Multiplication
      when "010" =>
            result <= A * B;
      -- "011" = AND
      when "011" =>
            result <= a_ext and b_ext;
      -- "100" = OR
      when "100" =>
            result <= a_ext or b_ext;
      -- "101" = XOR
      when "101" =>
            result <= a_ext xor b_ext;
      -- "110" = NOT
      when "110" =>
            result <= not a_ext;
      when "111" =>
            result <= not b_ext;
      when others =>
            result <= (others => '0');
      end case;
      
   end process;
      S <= result(0 to 7);
      carry <= '1' when (result(8) = '1') else '0';
      overflow <= '1' when (result(8 to 15) /= X"00") else '0';
      negative <= result(7);
end beh;
