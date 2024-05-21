library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_arith.all;

entity Assemblage is
end Assemblage;

architecture Behavioral of Assemblage is

    component compteur_8_bits is
        Port ( CLK : in STD_LOGIC;
               SENS : in STD_LOGIC;
               EN : in STD_LOGIC;
               RST : in STD_LOGIC;
               LOAD : in STD_LOGIC;
               Din : in STD_LOGIC_VECTOR (7 downto 0);
               Dout : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    component memory_instruction is
        Port (
                addr : in std_logic_vector(7 downto 0);
                CLK : in std_logic;
                output : out std_logic_vector(31 downto 0));
    end component;
    
    component Registre is
     Port (
            A_addr : in std_logic_vector(3 downto 0);
            B_addr : in std_logic_vector(3 downto 0);
            DATA : in std_logic_vector(7 downto 0);
            W_addr : in std_logic_vector(3 downto 0); 
            RST, CLK, W : in std_logic;
            QA : out std_logic_vector(7 downto 0);
            QB : out std_logic_vector(7 downto 0));
    end component;
    
    component ALU is
      Port(
          A,B : in std_logic_vector(0 to 7);
          S : out std_logic_vector(0 to 7);
          Alu_Control : in std_logic_vector(0 to 2);
          carry, overflow, negative: out std_logic);
    end component;
    
    component memory_data is
     Port (
        addr : in std_logic_vector(7 downto 0);
        input : in std_logic_vector(7 downto 0); 
        RW,RST,CLK : in std_logic;
        output : out std_logic_vector(7 downto 0));
    end component;

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
    
    
-- signaux globaux

signal sCLK, sRST : std_logic;
signal Qa,Qb : std_logic_vector(7 downto 0);

-- signaux de l'IP
 
signal sIP_out : std_logic_vector(7 downto 0);

-- signaux de la mémoire d'instructions

signal sMI_out : std_logic_vector(31 downto 0);

-- signaux LI/DI

signal sPip1_a, sPip1_b, sPip1_c : std_logic_vector(7 downto 0);
signal sPip1_op : std_logic_vector(3 downto 0);

-- signaux banc de registre

signal sBR_Qa, sBR_Qb : std_logic_vector(7 downto 0);

-- signaux DI/EX

signal sPip2_a, sPip2_b, sPip2_c : std_logic_vector(7 downto 0);
signal sPip2_op : std_logic_vector(3 downto 0);

-- signaux ALU

signal sALU_out : std_logic_vector(7 downto 0);
signal sCarry, sOverflow, sNegative : std_logic;

-- signaux EX/ Mem

signal sPip3_a, sPip3_b, sPip3_c : std_logic_vector(7 downto 0);
signal sPip3_op : std_logic_vector(3 downto 0);

-- signaux mémoire de données

signal sMD_out : std_logic_vector(7 downto 0);

-- signaux Mem/RE

signal sPip4_a, sPip4_b, sPip4_c : std_logic_vector(7 downto 0);
signal sPip4_op : std_logic_vector(3 downto 0);
    
    
-- signaux LC

signal sLC_Write : std_logic;
signal sLC_ALU : std_logic_vector(2 downto 0);
signal sLC_MD : std_logic;

-- signaux mux
signal mux_register_bank : std_logic_vector(7 downto 0);
signal mux_ALU : std_logic_vector(7 downto 0);
signal mux_MD : std_logic_vector(7 downto 0);
signal mux_EXMem : std_logic_vector(7 downto 0);

begin

ip : compteur_8_bits PORT MAP (
   CLK => sCLK,
   SENS => '1',
   EN => '0',
   RST => sRST,
   LOAD => '0',
   Din => "00000000",
   Dout => sIP_out
);

instruction_memory : memory_instruction PORT MAP(
    addr => sIP_out,
    CLK => sCLK,
    output => sMI_out
);

LIDI : Pipeline PORT MAP( 
    A => sMI_out(23 downto 16),
    B => sMI_out(15 downto 8),
    C => sMI_out(7 downto 0),
    OP => sMI_out(27 downto 24),
    Out_A => sPip1_a,
    Out_B => sPip1_b,
    Out_C => sPip1_c,
    Out_OP => sPip1_op,
    CLK => sCLK
);

register_bank : Registre PORT MAP(
    A_addr => sPip1_b(3 downto 0),
    B_addr => sPip1_c(3 downto 0),
    DATA => sPip4_b,
    W_addr => sPip4_a(3 downto 0),
    RST => sRST,
    CLK => sCLK,
    W => sLC_Write,
    QA => sBR_Qa,
    QB => sBR_Qb
);


mux_register_bank <= sPip1_b when (sPip1_op = "0110" or
                                   sPip1_op = "1110") else sBR_Qa;

DIEX :  Pipeline PORT MAP( 
    A => sPip1_a,
    B => mux_register_bank,
    C => sBR_Qb,
    OP => sPip1_op,
    Out_A => sPip2_a,
    Out_B => sPip2_b,
    Out_C => sPip2_c,
    Out_OP => sPip2_op,
    CLK => sCLK
);

sLC_ALU <= "000" when (sPip2_op = "0001") else
           "001" when (sPip2_op = "0011") else
           "010" when (sPip2_op = "0010") else
           "011" when (sPip2_op = "1000") else
           "100" when (sPip2_op = "1001") else
           "101" when (sPip2_op = "1010") else
           "110" when (sPip2_op = "1011") else
           "111" when (sPip2_op = "1100");

UAL : ALU PORT MAP(
    A => sPip2_b,
    B => sPip2_c,
    S => sALU_out,
    Alu_Control => sLC_ALU,
    carry => sCarry,
    overflow => sOverflow,
    negative => sNegative
);

mux_ALU <= sALU_out when (sPip2_op = "0001" or
                          sPip2_op = "0011" or
                          sPip2_op = "0010" or
                          sPip2_op = "1000" or
                          sPip2_op = "1001" or
                          sPip2_op = "1010" or
                          sPip2_op = "1011" or
                          sPip2_op = "1100") else sPip2_b;

EXMem: Pipeline PORT MAP( 
    A => sPip2_a,
    B => mux_ALU,
    C => "00000000",
    OP => sPip2_op,
    Out_A => sPip3_a,
    Out_B => sPip3_b,
    Out_C => sPip3_c,
    Out_OP => sPip3_op,
    CLK => sCLK
);

sLC_MD <= '0' when (sPip3_op = "1111") else '1';
mux_EXMem <= sPip3_a when (sPip3_op = "1111") else sPip3_b;

data_memory : memory_data PORT MAP(
    addr => mux_EXMem,
    input => sPip3_b,
    RW => sLC_MD,
    RST => sRST,
    CLK => sCLK,
    output => sMD_out
);

mux_MD <= sMD_out when (sPip3_op = "1110") else sPip3_b;

MemRE: Pipeline PORT MAP( 
    A => sPip3_a,
    B => mux_MD,
    C => "00000000",
    OP => sPip3_op,
    Out_A => sPip4_a,
    Out_B => sPip4_b,
    Out_C => sPip4_c,
    Out_OP => sPip4_op,
    CLK => sCLK
);

sLC_Write <= '0' when (sPip4_op = "1000" or sPip4_op = "1111" or sPip4_op = "0000") else '1';


prst: process
    begin
        sRST <= '1';
        wait for 30 ns;
        sRST <= '0';
        wait for 10000000 ns;
        
    end process;

pclk: process
    begin
        sCLK <= '0';
        wait for 10 ns;
        sCLK <= '1';
        wait for 10 ns;
     end process;
     
end Behavioral;
