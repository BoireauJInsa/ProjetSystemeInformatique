
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity alea_detector is
    Port (
            R_diex_a, R_exmd_a, R_lidi_b, R_lidi_c : in std_logic_vector(7 downto 0);
            W_diex : in std_logic;
            W_exmd : in std_logic;
            AL1,AL2,AL3 : out std_logic);
end alea_detector;

architecture Behavioral of alea_detector is

begin

    AL1 <= '1' when (W_diex ='1' and (R_lidi_b = R_diex_a or R_lidi_c = R_diex_a)) else '0';
    
    AL2 <= '1' when (W_exmd = '1' and (R_lidi_b = R_exmd_a or R_lidi_c = R_exmd_a)) else '0';
    
    AL3 <= '1' when ((W_diex ='1' and (R_lidi_b = R_diex_a or R_lidi_c = R_diex_a)) or (W_exmd = '1' and (R_lidi_b = R_exmd_a or R_lidi_c = R_exmd_a)))else '0' ;
    

end Behavioral;
