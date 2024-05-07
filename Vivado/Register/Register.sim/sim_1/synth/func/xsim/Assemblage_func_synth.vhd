-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May  7 14:45:22 2024
-- Host        : insa-20925 running 64-bit Linux Mint 21.1
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/tgauther/Bureau/4A/Projet Systeme
--               Informatique/Register/Register.sim/sim_1/synth/func/xsim/Assemblage_func_synth.vhd}
-- Design      : Registre
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registre is
  port (
    A_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    W_addr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RST : in STD_LOGIC;
    CLK : in STD_LOGIC;
    W : in STD_LOGIC;
    QA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    QB : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Registre : entity is true;
end Registre;

architecture STRUCTURE of Registre is
  signal A_addr_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal B_addr_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DATA_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal QA_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \QA_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QA_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal QB_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \QB_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[0]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[1]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[2]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[3]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[4]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[5]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[6]_inst_i_7_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_4_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_5_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_6_n_0\ : STD_LOGIC;
  signal \QB_OBUF[7]_inst_i_7_n_0\ : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal W_IBUF : STD_LOGIC;
  signal W_addr_IBUF : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC;
  signal \reg[0]\ : STD_LOGIC;
  signal \reg[10]\ : STD_LOGIC;
  signal \reg[11]\ : STD_LOGIC;
  signal \reg[12]\ : STD_LOGIC;
  signal \reg[13]\ : STD_LOGIC;
  signal \reg[14]\ : STD_LOGIC;
  signal \reg[15]\ : STD_LOGIC;
  signal \reg[1]\ : STD_LOGIC;
  signal \reg[2]\ : STD_LOGIC;
  signal \reg[3]\ : STD_LOGIC;
  signal \reg[4]\ : STD_LOGIC;
  signal \reg[5]\ : STD_LOGIC;
  signal \reg[6]\ : STD_LOGIC;
  signal \reg[7]\ : STD_LOGIC;
  signal \reg[8]\ : STD_LOGIC;
  signal \reg[9]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[10][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[11][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[12][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[13][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[14][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[15][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[4][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[5][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[6][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[7][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[8][7]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[9][7]\ : STD_LOGIC;
begin
\A_addr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_addr(0),
      O => A_addr_IBUF(0)
    );
\A_addr_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_addr(1),
      O => A_addr_IBUF(1)
    );
\A_addr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_addr(2),
      O => A_addr_IBUF(2)
    );
\A_addr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => A_addr(3),
      O => A_addr_IBUF(3)
    );
\B_addr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_addr(0),
      O => B_addr_IBUF(0)
    );
\B_addr_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_addr(1),
      O => B_addr_IBUF(1)
    );
\B_addr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_addr(2),
      O => B_addr_IBUF(2)
    );
\B_addr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => B_addr(3),
      O => B_addr_IBUF(3)
    );
CLK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CLK_IBUF,
      O => CLK_IBUF_BUFG
    );
CLK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CLK,
      O => CLK_IBUF
    );
\DATA_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(0),
      O => DATA_IBUF(0)
    );
\DATA_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(1),
      O => DATA_IBUF(1)
    );
\DATA_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(2),
      O => DATA_IBUF(2)
    );
\DATA_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(3),
      O => DATA_IBUF(3)
    );
\DATA_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(4),
      O => DATA_IBUF(4)
    );
\DATA_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(5),
      O => DATA_IBUF(5)
    );
\DATA_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(6),
      O => DATA_IBUF(6)
    );
\DATA_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => DATA(7),
      O => DATA_IBUF(7)
    );
\QA_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(0),
      O => QA(0)
    );
\QA_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[0]_inst_i_2_n_0\,
      I1 => \QA_OBUF[0]_inst_i_3_n_0\,
      O => QA_OBUF(0),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[0]_inst_i_4_n_0\,
      I1 => \QA_OBUF[0]_inst_i_5_n_0\,
      O => \QA_OBUF[0]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[0]_inst_i_6_n_0\,
      I1 => \QA_OBUF[0]_inst_i_7_n_0\,
      O => \QA_OBUF[0]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][0]\,
      I1 => \reg_reg_n_0_[2][0]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][0]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][0]\,
      O => \QA_OBUF[0]_inst_i_4_n_0\
    );
\QA_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][0]\,
      I1 => \reg_reg_n_0_[6][0]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][0]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][0]\,
      O => \QA_OBUF[0]_inst_i_5_n_0\
    );
\QA_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][0]\,
      I1 => \reg_reg_n_0_[10][0]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][0]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][0]\,
      O => \QA_OBUF[0]_inst_i_6_n_0\
    );
\QA_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][0]\,
      I1 => \reg_reg_n_0_[14][0]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][0]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][0]\,
      O => \QA_OBUF[0]_inst_i_7_n_0\
    );
\QA_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(1),
      O => QA(1)
    );
\QA_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[1]_inst_i_2_n_0\,
      I1 => \QA_OBUF[1]_inst_i_3_n_0\,
      O => QA_OBUF(1),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[1]_inst_i_4_n_0\,
      I1 => \QA_OBUF[1]_inst_i_5_n_0\,
      O => \QA_OBUF[1]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[1]_inst_i_6_n_0\,
      I1 => \QA_OBUF[1]_inst_i_7_n_0\,
      O => \QA_OBUF[1]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][1]\,
      I1 => \reg_reg_n_0_[2][1]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][1]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][1]\,
      O => \QA_OBUF[1]_inst_i_4_n_0\
    );
\QA_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][1]\,
      I1 => \reg_reg_n_0_[6][1]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][1]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][1]\,
      O => \QA_OBUF[1]_inst_i_5_n_0\
    );
\QA_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][1]\,
      I1 => \reg_reg_n_0_[10][1]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][1]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][1]\,
      O => \QA_OBUF[1]_inst_i_6_n_0\
    );
\QA_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][1]\,
      I1 => \reg_reg_n_0_[14][1]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][1]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][1]\,
      O => \QA_OBUF[1]_inst_i_7_n_0\
    );
\QA_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(2),
      O => QA(2)
    );
\QA_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[2]_inst_i_2_n_0\,
      I1 => \QA_OBUF[2]_inst_i_3_n_0\,
      O => QA_OBUF(2),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[2]_inst_i_4_n_0\,
      I1 => \QA_OBUF[2]_inst_i_5_n_0\,
      O => \QA_OBUF[2]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[2]_inst_i_6_n_0\,
      I1 => \QA_OBUF[2]_inst_i_7_n_0\,
      O => \QA_OBUF[2]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][2]\,
      I1 => \reg_reg_n_0_[2][2]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][2]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][2]\,
      O => \QA_OBUF[2]_inst_i_4_n_0\
    );
\QA_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][2]\,
      I1 => \reg_reg_n_0_[6][2]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][2]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][2]\,
      O => \QA_OBUF[2]_inst_i_5_n_0\
    );
\QA_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][2]\,
      I1 => \reg_reg_n_0_[10][2]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][2]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][2]\,
      O => \QA_OBUF[2]_inst_i_6_n_0\
    );
\QA_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][2]\,
      I1 => \reg_reg_n_0_[14][2]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][2]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][2]\,
      O => \QA_OBUF[2]_inst_i_7_n_0\
    );
\QA_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(3),
      O => QA(3)
    );
\QA_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[3]_inst_i_2_n_0\,
      I1 => \QA_OBUF[3]_inst_i_3_n_0\,
      O => QA_OBUF(3),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[3]_inst_i_4_n_0\,
      I1 => \QA_OBUF[3]_inst_i_5_n_0\,
      O => \QA_OBUF[3]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[3]_inst_i_6_n_0\,
      I1 => \QA_OBUF[3]_inst_i_7_n_0\,
      O => \QA_OBUF[3]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][3]\,
      I1 => \reg_reg_n_0_[2][3]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][3]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][3]\,
      O => \QA_OBUF[3]_inst_i_4_n_0\
    );
\QA_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][3]\,
      I1 => \reg_reg_n_0_[6][3]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][3]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][3]\,
      O => \QA_OBUF[3]_inst_i_5_n_0\
    );
\QA_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][3]\,
      I1 => \reg_reg_n_0_[10][3]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][3]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][3]\,
      O => \QA_OBUF[3]_inst_i_6_n_0\
    );
\QA_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][3]\,
      I1 => \reg_reg_n_0_[14][3]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][3]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][3]\,
      O => \QA_OBUF[3]_inst_i_7_n_0\
    );
\QA_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(4),
      O => QA(4)
    );
\QA_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[4]_inst_i_2_n_0\,
      I1 => \QA_OBUF[4]_inst_i_3_n_0\,
      O => QA_OBUF(4),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[4]_inst_i_4_n_0\,
      I1 => \QA_OBUF[4]_inst_i_5_n_0\,
      O => \QA_OBUF[4]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[4]_inst_i_6_n_0\,
      I1 => \QA_OBUF[4]_inst_i_7_n_0\,
      O => \QA_OBUF[4]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][4]\,
      I1 => \reg_reg_n_0_[2][4]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][4]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][4]\,
      O => \QA_OBUF[4]_inst_i_4_n_0\
    );
\QA_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][4]\,
      I1 => \reg_reg_n_0_[6][4]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][4]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][4]\,
      O => \QA_OBUF[4]_inst_i_5_n_0\
    );
\QA_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][4]\,
      I1 => \reg_reg_n_0_[10][4]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][4]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][4]\,
      O => \QA_OBUF[4]_inst_i_6_n_0\
    );
\QA_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][4]\,
      I1 => \reg_reg_n_0_[14][4]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][4]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][4]\,
      O => \QA_OBUF[4]_inst_i_7_n_0\
    );
\QA_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(5),
      O => QA(5)
    );
\QA_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[5]_inst_i_2_n_0\,
      I1 => \QA_OBUF[5]_inst_i_3_n_0\,
      O => QA_OBUF(5),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[5]_inst_i_4_n_0\,
      I1 => \QA_OBUF[5]_inst_i_5_n_0\,
      O => \QA_OBUF[5]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[5]_inst_i_6_n_0\,
      I1 => \QA_OBUF[5]_inst_i_7_n_0\,
      O => \QA_OBUF[5]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][5]\,
      I1 => \reg_reg_n_0_[2][5]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][5]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][5]\,
      O => \QA_OBUF[5]_inst_i_4_n_0\
    );
\QA_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][5]\,
      I1 => \reg_reg_n_0_[6][5]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][5]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][5]\,
      O => \QA_OBUF[5]_inst_i_5_n_0\
    );
\QA_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][5]\,
      I1 => \reg_reg_n_0_[10][5]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][5]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][5]\,
      O => \QA_OBUF[5]_inst_i_6_n_0\
    );
\QA_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][5]\,
      I1 => \reg_reg_n_0_[14][5]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][5]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][5]\,
      O => \QA_OBUF[5]_inst_i_7_n_0\
    );
\QA_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(6),
      O => QA(6)
    );
\QA_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[6]_inst_i_2_n_0\,
      I1 => \QA_OBUF[6]_inst_i_3_n_0\,
      O => QA_OBUF(6),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[6]_inst_i_4_n_0\,
      I1 => \QA_OBUF[6]_inst_i_5_n_0\,
      O => \QA_OBUF[6]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[6]_inst_i_6_n_0\,
      I1 => \QA_OBUF[6]_inst_i_7_n_0\,
      O => \QA_OBUF[6]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][6]\,
      I1 => \reg_reg_n_0_[2][6]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][6]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][6]\,
      O => \QA_OBUF[6]_inst_i_4_n_0\
    );
\QA_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][6]\,
      I1 => \reg_reg_n_0_[6][6]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][6]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][6]\,
      O => \QA_OBUF[6]_inst_i_5_n_0\
    );
\QA_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][6]\,
      I1 => \reg_reg_n_0_[10][6]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][6]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][6]\,
      O => \QA_OBUF[6]_inst_i_6_n_0\
    );
\QA_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][6]\,
      I1 => \reg_reg_n_0_[14][6]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][6]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][6]\,
      O => \QA_OBUF[6]_inst_i_7_n_0\
    );
\QA_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QA_OBUF(7),
      O => QA(7)
    );
\QA_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QA_OBUF[7]_inst_i_2_n_0\,
      I1 => \QA_OBUF[7]_inst_i_3_n_0\,
      O => QA_OBUF(7),
      S => A_addr_IBUF(3)
    );
\QA_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[7]_inst_i_4_n_0\,
      I1 => \QA_OBUF[7]_inst_i_5_n_0\,
      O => \QA_OBUF[7]_inst_i_2_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QA_OBUF[7]_inst_i_6_n_0\,
      I1 => \QA_OBUF[7]_inst_i_7_n_0\,
      O => \QA_OBUF[7]_inst_i_3_n_0\,
      S => A_addr_IBUF(2)
    );
\QA_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][7]\,
      I1 => \reg_reg_n_0_[2][7]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][7]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][7]\,
      O => \QA_OBUF[7]_inst_i_4_n_0\
    );
\QA_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][7]\,
      I1 => \reg_reg_n_0_[6][7]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][7]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][7]\,
      O => \QA_OBUF[7]_inst_i_5_n_0\
    );
\QA_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][7]\,
      I1 => \reg_reg_n_0_[10][7]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][7]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][7]\,
      O => \QA_OBUF[7]_inst_i_6_n_0\
    );
\QA_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][7]\,
      I1 => \reg_reg_n_0_[14][7]\,
      I2 => A_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][7]\,
      I4 => A_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][7]\,
      O => \QA_OBUF[7]_inst_i_7_n_0\
    );
\QB_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(0),
      O => QB(0)
    );
\QB_OBUF[0]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[0]_inst_i_2_n_0\,
      I1 => \QB_OBUF[0]_inst_i_3_n_0\,
      O => QB_OBUF(0),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[0]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[0]_inst_i_4_n_0\,
      I1 => \QB_OBUF[0]_inst_i_5_n_0\,
      O => \QB_OBUF[0]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[0]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[0]_inst_i_6_n_0\,
      I1 => \QB_OBUF[0]_inst_i_7_n_0\,
      O => \QB_OBUF[0]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[0]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][0]\,
      I1 => \reg_reg_n_0_[2][0]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][0]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][0]\,
      O => \QB_OBUF[0]_inst_i_4_n_0\
    );
\QB_OBUF[0]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][0]\,
      I1 => \reg_reg_n_0_[6][0]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][0]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][0]\,
      O => \QB_OBUF[0]_inst_i_5_n_0\
    );
\QB_OBUF[0]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][0]\,
      I1 => \reg_reg_n_0_[10][0]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][0]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][0]\,
      O => \QB_OBUF[0]_inst_i_6_n_0\
    );
\QB_OBUF[0]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][0]\,
      I1 => \reg_reg_n_0_[14][0]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][0]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][0]\,
      O => \QB_OBUF[0]_inst_i_7_n_0\
    );
\QB_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(1),
      O => QB(1)
    );
\QB_OBUF[1]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[1]_inst_i_2_n_0\,
      I1 => \QB_OBUF[1]_inst_i_3_n_0\,
      O => QB_OBUF(1),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[1]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[1]_inst_i_4_n_0\,
      I1 => \QB_OBUF[1]_inst_i_5_n_0\,
      O => \QB_OBUF[1]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[1]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[1]_inst_i_6_n_0\,
      I1 => \QB_OBUF[1]_inst_i_7_n_0\,
      O => \QB_OBUF[1]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[1]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][1]\,
      I1 => \reg_reg_n_0_[2][1]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][1]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][1]\,
      O => \QB_OBUF[1]_inst_i_4_n_0\
    );
\QB_OBUF[1]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][1]\,
      I1 => \reg_reg_n_0_[6][1]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][1]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][1]\,
      O => \QB_OBUF[1]_inst_i_5_n_0\
    );
\QB_OBUF[1]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][1]\,
      I1 => \reg_reg_n_0_[10][1]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][1]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][1]\,
      O => \QB_OBUF[1]_inst_i_6_n_0\
    );
\QB_OBUF[1]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][1]\,
      I1 => \reg_reg_n_0_[14][1]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][1]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][1]\,
      O => \QB_OBUF[1]_inst_i_7_n_0\
    );
\QB_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(2),
      O => QB(2)
    );
\QB_OBUF[2]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[2]_inst_i_2_n_0\,
      I1 => \QB_OBUF[2]_inst_i_3_n_0\,
      O => QB_OBUF(2),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[2]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[2]_inst_i_4_n_0\,
      I1 => \QB_OBUF[2]_inst_i_5_n_0\,
      O => \QB_OBUF[2]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[2]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[2]_inst_i_6_n_0\,
      I1 => \QB_OBUF[2]_inst_i_7_n_0\,
      O => \QB_OBUF[2]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[2]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][2]\,
      I1 => \reg_reg_n_0_[2][2]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][2]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][2]\,
      O => \QB_OBUF[2]_inst_i_4_n_0\
    );
\QB_OBUF[2]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][2]\,
      I1 => \reg_reg_n_0_[6][2]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][2]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][2]\,
      O => \QB_OBUF[2]_inst_i_5_n_0\
    );
\QB_OBUF[2]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][2]\,
      I1 => \reg_reg_n_0_[10][2]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][2]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][2]\,
      O => \QB_OBUF[2]_inst_i_6_n_0\
    );
\QB_OBUF[2]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][2]\,
      I1 => \reg_reg_n_0_[14][2]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][2]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][2]\,
      O => \QB_OBUF[2]_inst_i_7_n_0\
    );
\QB_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(3),
      O => QB(3)
    );
\QB_OBUF[3]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[3]_inst_i_2_n_0\,
      I1 => \QB_OBUF[3]_inst_i_3_n_0\,
      O => QB_OBUF(3),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[3]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[3]_inst_i_4_n_0\,
      I1 => \QB_OBUF[3]_inst_i_5_n_0\,
      O => \QB_OBUF[3]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[3]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[3]_inst_i_6_n_0\,
      I1 => \QB_OBUF[3]_inst_i_7_n_0\,
      O => \QB_OBUF[3]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[3]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][3]\,
      I1 => \reg_reg_n_0_[2][3]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][3]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][3]\,
      O => \QB_OBUF[3]_inst_i_4_n_0\
    );
\QB_OBUF[3]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][3]\,
      I1 => \reg_reg_n_0_[6][3]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][3]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][3]\,
      O => \QB_OBUF[3]_inst_i_5_n_0\
    );
\QB_OBUF[3]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][3]\,
      I1 => \reg_reg_n_0_[10][3]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][3]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][3]\,
      O => \QB_OBUF[3]_inst_i_6_n_0\
    );
\QB_OBUF[3]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][3]\,
      I1 => \reg_reg_n_0_[14][3]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][3]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][3]\,
      O => \QB_OBUF[3]_inst_i_7_n_0\
    );
\QB_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(4),
      O => QB(4)
    );
\QB_OBUF[4]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[4]_inst_i_2_n_0\,
      I1 => \QB_OBUF[4]_inst_i_3_n_0\,
      O => QB_OBUF(4),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[4]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[4]_inst_i_4_n_0\,
      I1 => \QB_OBUF[4]_inst_i_5_n_0\,
      O => \QB_OBUF[4]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[4]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[4]_inst_i_6_n_0\,
      I1 => \QB_OBUF[4]_inst_i_7_n_0\,
      O => \QB_OBUF[4]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[4]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][4]\,
      I1 => \reg_reg_n_0_[2][4]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][4]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][4]\,
      O => \QB_OBUF[4]_inst_i_4_n_0\
    );
\QB_OBUF[4]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][4]\,
      I1 => \reg_reg_n_0_[6][4]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][4]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][4]\,
      O => \QB_OBUF[4]_inst_i_5_n_0\
    );
\QB_OBUF[4]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][4]\,
      I1 => \reg_reg_n_0_[10][4]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][4]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][4]\,
      O => \QB_OBUF[4]_inst_i_6_n_0\
    );
\QB_OBUF[4]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][4]\,
      I1 => \reg_reg_n_0_[14][4]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][4]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][4]\,
      O => \QB_OBUF[4]_inst_i_7_n_0\
    );
\QB_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(5),
      O => QB(5)
    );
\QB_OBUF[5]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[5]_inst_i_2_n_0\,
      I1 => \QB_OBUF[5]_inst_i_3_n_0\,
      O => QB_OBUF(5),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[5]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[5]_inst_i_4_n_0\,
      I1 => \QB_OBUF[5]_inst_i_5_n_0\,
      O => \QB_OBUF[5]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[5]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[5]_inst_i_6_n_0\,
      I1 => \QB_OBUF[5]_inst_i_7_n_0\,
      O => \QB_OBUF[5]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[5]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][5]\,
      I1 => \reg_reg_n_0_[2][5]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][5]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][5]\,
      O => \QB_OBUF[5]_inst_i_4_n_0\
    );
\QB_OBUF[5]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][5]\,
      I1 => \reg_reg_n_0_[6][5]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][5]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][5]\,
      O => \QB_OBUF[5]_inst_i_5_n_0\
    );
\QB_OBUF[5]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][5]\,
      I1 => \reg_reg_n_0_[10][5]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][5]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][5]\,
      O => \QB_OBUF[5]_inst_i_6_n_0\
    );
\QB_OBUF[5]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][5]\,
      I1 => \reg_reg_n_0_[14][5]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][5]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][5]\,
      O => \QB_OBUF[5]_inst_i_7_n_0\
    );
\QB_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(6),
      O => QB(6)
    );
\QB_OBUF[6]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[6]_inst_i_2_n_0\,
      I1 => \QB_OBUF[6]_inst_i_3_n_0\,
      O => QB_OBUF(6),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[6]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[6]_inst_i_4_n_0\,
      I1 => \QB_OBUF[6]_inst_i_5_n_0\,
      O => \QB_OBUF[6]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[6]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[6]_inst_i_6_n_0\,
      I1 => \QB_OBUF[6]_inst_i_7_n_0\,
      O => \QB_OBUF[6]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[6]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][6]\,
      I1 => \reg_reg_n_0_[2][6]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][6]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][6]\,
      O => \QB_OBUF[6]_inst_i_4_n_0\
    );
\QB_OBUF[6]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][6]\,
      I1 => \reg_reg_n_0_[6][6]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][6]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][6]\,
      O => \QB_OBUF[6]_inst_i_5_n_0\
    );
\QB_OBUF[6]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][6]\,
      I1 => \reg_reg_n_0_[10][6]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][6]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][6]\,
      O => \QB_OBUF[6]_inst_i_6_n_0\
    );
\QB_OBUF[6]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][6]\,
      I1 => \reg_reg_n_0_[14][6]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][6]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][6]\,
      O => \QB_OBUF[6]_inst_i_7_n_0\
    );
\QB_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => QB_OBUF(7),
      O => QB(7)
    );
\QB_OBUF[7]_inst_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \QB_OBUF[7]_inst_i_2_n_0\,
      I1 => \QB_OBUF[7]_inst_i_3_n_0\,
      O => QB_OBUF(7),
      S => B_addr_IBUF(3)
    );
\QB_OBUF[7]_inst_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[7]_inst_i_4_n_0\,
      I1 => \QB_OBUF[7]_inst_i_5_n_0\,
      O => \QB_OBUF[7]_inst_i_2_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[7]_inst_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \QB_OBUF[7]_inst_i_6_n_0\,
      I1 => \QB_OBUF[7]_inst_i_7_n_0\,
      O => \QB_OBUF[7]_inst_i_3_n_0\,
      S => B_addr_IBUF(2)
    );
\QB_OBUF[7]_inst_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][7]\,
      I1 => \reg_reg_n_0_[2][7]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[1][7]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[0][7]\,
      O => \QB_OBUF[7]_inst_i_4_n_0\
    );
\QB_OBUF[7]_inst_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[7][7]\,
      I1 => \reg_reg_n_0_[6][7]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[5][7]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[4][7]\,
      O => \QB_OBUF[7]_inst_i_5_n_0\
    );
\QB_OBUF[7]_inst_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[11][7]\,
      I1 => \reg_reg_n_0_[10][7]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[9][7]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[8][7]\,
      O => \QB_OBUF[7]_inst_i_6_n_0\
    );
\QB_OBUF[7]_inst_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[15][7]\,
      I1 => \reg_reg_n_0_[14][7]\,
      I2 => B_addr_IBUF(1),
      I3 => \reg_reg_n_0_[13][7]\,
      I4 => B_addr_IBUF(0),
      I5 => \reg_reg_n_0_[12][7]\,
      O => \QB_OBUF[7]_inst_i_7_n_0\
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
W_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => W,
      O => W_IBUF
    );
\W_addr_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_addr(0),
      O => W_addr_IBUF(0)
    );
\W_addr_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_addr(1),
      O => W_addr_IBUF(1)
    );
\W_addr_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_addr(2),
      O => W_addr_IBUF(2)
    );
\W_addr_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => W_addr(3),
      O => W_addr_IBUF(3)
    );
\reg[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(1),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(3),
      O => \reg[0]\
    );
\reg[10][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(3),
      I3 => W_addr_IBUF(1),
      I4 => W_addr_IBUF(0),
      O => \reg[10]\
    );
\reg[11][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(3),
      I3 => W_addr_IBUF(1),
      I4 => W_addr_IBUF(0),
      O => \reg[11]\
    );
\reg[12][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(1),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(3),
      I4 => W_addr_IBUF(0),
      O => \reg[12]\
    );
\reg[13][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(1),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(3),
      I4 => W_addr_IBUF(0),
      O => \reg[13]\
    );
\reg[14][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(0),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(3),
      I4 => W_addr_IBUF(1),
      O => \reg[14]\
    );
\reg[15][7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => p_0_in
    );
\reg[15][7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(3),
      I2 => W_addr_IBUF(1),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(2),
      O => \reg[15]\
    );
\reg[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(1),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(3),
      O => \reg[1]\
    );
\reg[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(0),
      I3 => W_addr_IBUF(1),
      I4 => W_addr_IBUF(3),
      O => \reg[2]\
    );
\reg[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(1),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(3),
      O => \reg[3]\
    );
\reg[4][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(3),
      I2 => W_addr_IBUF(0),
      I3 => W_addr_IBUF(2),
      I4 => W_addr_IBUF(1),
      O => \reg[4]\
    );
\reg[5][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(3),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(1),
      O => \reg[5]\
    );
\reg[6][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(3),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(1),
      I4 => W_addr_IBUF(0),
      O => \reg[6]\
    );
\reg[7][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(3),
      I2 => W_addr_IBUF(2),
      I3 => W_addr_IBUF(1),
      I4 => W_addr_IBUF(0),
      O => \reg[7]\
    );
\reg[8][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(0),
      I3 => W_addr_IBUF(3),
      I4 => W_addr_IBUF(1),
      O => \reg[8]\
    );
\reg[9][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => W_IBUF,
      I1 => W_addr_IBUF(2),
      I2 => W_addr_IBUF(3),
      I3 => W_addr_IBUF(0),
      I4 => W_addr_IBUF(1),
      O => \reg[9]\
    );
\reg_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[0][0]\,
      R => p_0_in
    );
\reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[0][1]\,
      R => p_0_in
    );
\reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[0][2]\,
      R => p_0_in
    );
\reg_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[0][3]\,
      R => p_0_in
    );
\reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[0][4]\,
      R => p_0_in
    );
\reg_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[0][5]\,
      R => p_0_in
    );
\reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[0][6]\,
      R => p_0_in
    );
\reg_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[0]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[0][7]\,
      R => p_0_in
    );
\reg_reg[10][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[10][0]\,
      R => p_0_in
    );
\reg_reg[10][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[10][1]\,
      R => p_0_in
    );
\reg_reg[10][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[10][2]\,
      R => p_0_in
    );
\reg_reg[10][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[10][3]\,
      R => p_0_in
    );
\reg_reg[10][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[10][4]\,
      R => p_0_in
    );
\reg_reg[10][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[10][5]\,
      R => p_0_in
    );
\reg_reg[10][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[10][6]\,
      R => p_0_in
    );
\reg_reg[10][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[10]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[10][7]\,
      R => p_0_in
    );
\reg_reg[11][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[11][0]\,
      R => p_0_in
    );
\reg_reg[11][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[11][1]\,
      R => p_0_in
    );
\reg_reg[11][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[11][2]\,
      R => p_0_in
    );
\reg_reg[11][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[11][3]\,
      R => p_0_in
    );
\reg_reg[11][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[11][4]\,
      R => p_0_in
    );
\reg_reg[11][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[11][5]\,
      R => p_0_in
    );
\reg_reg[11][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[11][6]\,
      R => p_0_in
    );
\reg_reg[11][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[11]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[11][7]\,
      R => p_0_in
    );
\reg_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[12][0]\,
      R => p_0_in
    );
\reg_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[12][1]\,
      R => p_0_in
    );
\reg_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[12][2]\,
      R => p_0_in
    );
\reg_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[12][3]\,
      R => p_0_in
    );
\reg_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[12][4]\,
      R => p_0_in
    );
\reg_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[12][5]\,
      R => p_0_in
    );
\reg_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[12][6]\,
      R => p_0_in
    );
\reg_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[12]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[12][7]\,
      R => p_0_in
    );
\reg_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[13][0]\,
      R => p_0_in
    );
\reg_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[13][1]\,
      R => p_0_in
    );
\reg_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[13][2]\,
      R => p_0_in
    );
\reg_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[13][3]\,
      R => p_0_in
    );
\reg_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[13][4]\,
      R => p_0_in
    );
\reg_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[13][5]\,
      R => p_0_in
    );
\reg_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[13][6]\,
      R => p_0_in
    );
\reg_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[13]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[13][7]\,
      R => p_0_in
    );
\reg_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[14][0]\,
      R => p_0_in
    );
\reg_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[14][1]\,
      R => p_0_in
    );
\reg_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[14][2]\,
      R => p_0_in
    );
\reg_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[14][3]\,
      R => p_0_in
    );
\reg_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[14][4]\,
      R => p_0_in
    );
\reg_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[14][5]\,
      R => p_0_in
    );
\reg_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[14][6]\,
      R => p_0_in
    );
\reg_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[14]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[14][7]\,
      R => p_0_in
    );
\reg_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[15][0]\,
      R => p_0_in
    );
\reg_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[15][1]\,
      R => p_0_in
    );
\reg_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[15][2]\,
      R => p_0_in
    );
\reg_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[15][3]\,
      R => p_0_in
    );
\reg_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[15][4]\,
      R => p_0_in
    );
\reg_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[15][5]\,
      R => p_0_in
    );
\reg_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[15][6]\,
      R => p_0_in
    );
\reg_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[15]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[15][7]\,
      R => p_0_in
    );
\reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[1][0]\,
      R => p_0_in
    );
\reg_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[1][1]\,
      R => p_0_in
    );
\reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[1][2]\,
      R => p_0_in
    );
\reg_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[1][3]\,
      R => p_0_in
    );
\reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[1][4]\,
      R => p_0_in
    );
\reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[1][5]\,
      R => p_0_in
    );
\reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[1][6]\,
      R => p_0_in
    );
\reg_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[1]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[1][7]\,
      R => p_0_in
    );
\reg_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[2][0]\,
      R => p_0_in
    );
\reg_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[2][1]\,
      R => p_0_in
    );
\reg_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[2][2]\,
      R => p_0_in
    );
\reg_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[2][3]\,
      R => p_0_in
    );
\reg_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[2][4]\,
      R => p_0_in
    );
\reg_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[2][5]\,
      R => p_0_in
    );
\reg_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[2][6]\,
      R => p_0_in
    );
\reg_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[2]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[2][7]\,
      R => p_0_in
    );
\reg_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[3][0]\,
      R => p_0_in
    );
\reg_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[3][1]\,
      R => p_0_in
    );
\reg_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[3][2]\,
      R => p_0_in
    );
\reg_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[3][3]\,
      R => p_0_in
    );
\reg_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[3][4]\,
      R => p_0_in
    );
\reg_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[3][5]\,
      R => p_0_in
    );
\reg_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[3][6]\,
      R => p_0_in
    );
\reg_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[3]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[3][7]\,
      R => p_0_in
    );
\reg_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[4][0]\,
      R => p_0_in
    );
\reg_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[4][1]\,
      R => p_0_in
    );
\reg_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[4][2]\,
      R => p_0_in
    );
\reg_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[4][3]\,
      R => p_0_in
    );
\reg_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[4][4]\,
      R => p_0_in
    );
\reg_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[4][5]\,
      R => p_0_in
    );
\reg_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[4][6]\,
      R => p_0_in
    );
\reg_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[4]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[4][7]\,
      R => p_0_in
    );
\reg_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[5][0]\,
      R => p_0_in
    );
\reg_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[5][1]\,
      R => p_0_in
    );
\reg_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[5][2]\,
      R => p_0_in
    );
\reg_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[5][3]\,
      R => p_0_in
    );
\reg_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[5][4]\,
      R => p_0_in
    );
\reg_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[5][5]\,
      R => p_0_in
    );
\reg_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[5][6]\,
      R => p_0_in
    );
\reg_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[5]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[5][7]\,
      R => p_0_in
    );
\reg_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[6][0]\,
      R => p_0_in
    );
\reg_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[6][1]\,
      R => p_0_in
    );
\reg_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[6][2]\,
      R => p_0_in
    );
\reg_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[6][3]\,
      R => p_0_in
    );
\reg_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[6][4]\,
      R => p_0_in
    );
\reg_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[6][5]\,
      R => p_0_in
    );
\reg_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[6][6]\,
      R => p_0_in
    );
\reg_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[6]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[6][7]\,
      R => p_0_in
    );
\reg_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[7][0]\,
      R => p_0_in
    );
\reg_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[7][1]\,
      R => p_0_in
    );
\reg_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[7][2]\,
      R => p_0_in
    );
\reg_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[7][3]\,
      R => p_0_in
    );
\reg_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[7][4]\,
      R => p_0_in
    );
\reg_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[7][5]\,
      R => p_0_in
    );
\reg_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[7][6]\,
      R => p_0_in
    );
\reg_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[7]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[7][7]\,
      R => p_0_in
    );
\reg_reg[8][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[8][0]\,
      R => p_0_in
    );
\reg_reg[8][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[8][1]\,
      R => p_0_in
    );
\reg_reg[8][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[8][2]\,
      R => p_0_in
    );
\reg_reg[8][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[8][3]\,
      R => p_0_in
    );
\reg_reg[8][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[8][4]\,
      R => p_0_in
    );
\reg_reg[8][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[8][5]\,
      R => p_0_in
    );
\reg_reg[8][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[8][6]\,
      R => p_0_in
    );
\reg_reg[8][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[8]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[8][7]\,
      R => p_0_in
    );
\reg_reg[9][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(0),
      Q => \reg_reg_n_0_[9][0]\,
      R => p_0_in
    );
\reg_reg[9][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(1),
      Q => \reg_reg_n_0_[9][1]\,
      R => p_0_in
    );
\reg_reg[9][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(2),
      Q => \reg_reg_n_0_[9][2]\,
      R => p_0_in
    );
\reg_reg[9][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(3),
      Q => \reg_reg_n_0_[9][3]\,
      R => p_0_in
    );
\reg_reg[9][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(4),
      Q => \reg_reg_n_0_[9][4]\,
      R => p_0_in
    );
\reg_reg[9][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(5),
      Q => \reg_reg_n_0_[9][5]\,
      R => p_0_in
    );
\reg_reg[9][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(6),
      Q => \reg_reg_n_0_[9][6]\,
      R => p_0_in
    );
\reg_reg[9][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg[9]\,
      D => DATA_IBUF(7),
      Q => \reg_reg_n_0_[9][7]\,
      R => p_0_in
    );
end STRUCTURE;
