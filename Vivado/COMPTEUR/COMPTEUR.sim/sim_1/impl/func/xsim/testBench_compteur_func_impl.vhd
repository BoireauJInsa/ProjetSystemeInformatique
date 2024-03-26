-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Wed Mar 20 08:20:33 2024
-- Host        : insa-11281 running 64-bit Linux Mint 21.1
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/tgauther/Bureau/COMPTEUR/COMPTEUR.sim/sim_1/impl/func/xsim/testBench_compteur_func_impl.vhd
-- Design      : compteur_8_bits
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity compteur_8_bits is
  port (
    CK : in STD_LOGIC;
    SENS : in STD_LOGIC;
    EN : in STD_LOGIC;
    RST : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of compteur_8_bits : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of compteur_8_bits : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of compteur_8_bits : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of compteur_8_bits : entity is "56191cf2";
end compteur_8_bits;

architecture STRUCTURE of compteur_8_bits is
  signal CK_IBUF : STD_LOGIC;
  signal CK_IBUF_BUFG : STD_LOGIC;
  signal Din_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Dout_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Dout_OBUF[1]_repN\ : STD_LOGIC;
  signal EN_IBUF : STD_LOGIC;
  signal LOAD_IBUF : STD_LOGIC;
  signal RST_IBUF : STD_LOGIC;
  signal SENS_IBUF : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \count[4]_i_3_n_0\ : STD_LOGIC;
  signal \count[4]_i_4_n_0\ : STD_LOGIC;
  signal \count[4]_i_5_n_0\ : STD_LOGIC;
  signal \count[4]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_5_n_0\ : STD_LOGIC;
  signal \count[7]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_7_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_4\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_5\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_6\ : STD_LOGIC;
  signal \count_reg[4]_i_2_n_7\ : STD_LOGIC;
  signal \count_reg[7]_i_4_n_5\ : STD_LOGIC;
  signal \count_reg[7]_i_4_n_6\ : STD_LOGIC;
  signal \count_reg[7]_i_4_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_count_reg[4]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_count_reg[7]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_count_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute PHYS_OPT_MODIFIED : string;
  attribute PHYS_OPT_MODIFIED of \count[1]_i_1\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_MODIFIED of \count_reg[1]\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED : string;
  attribute PHYS_OPT_SKIPPED of \count_reg[1]\ : label is "CRITICAL_CELL_OPT";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \count_reg[1]_replica\ : label is "count_reg[1]";
  attribute PHYS_OPT_MODIFIED of \count_reg[1]_replica\ : label is "CRITICAL_CELL_OPT";
  attribute PHYS_OPT_SKIPPED of \count_reg[1]_replica\ : label is "CRITICAL_CELL_OPT";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \count_reg[4]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \count_reg[4]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \count_reg[7]_i_4\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \count_reg[7]_i_4\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
CK_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => CK_IBUF,
      O => CK_IBUF_BUFG
    );
CK_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => CK,
      O => CK_IBUF
    );
\Din_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(0),
      O => Din_IBUF(0)
    );
\Din_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(1),
      O => Din_IBUF(1)
    );
\Din_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(2),
      O => Din_IBUF(2)
    );
\Din_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(3),
      O => Din_IBUF(3)
    );
\Din_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(4),
      O => Din_IBUF(4)
    );
\Din_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(5),
      O => Din_IBUF(5)
    );
\Din_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(6),
      O => Din_IBUF(6)
    );
\Din_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => Din(7),
      O => Din_IBUF(7)
    );
\Dout_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(0),
      O => Dout(0)
    );
\Dout_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(1),
      O => Dout(1)
    );
\Dout_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(2),
      O => Dout(2)
    );
\Dout_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(3),
      O => Dout(3)
    );
\Dout_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(4),
      O => Dout(4)
    );
\Dout_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(5),
      O => Dout(5)
    );
\Dout_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(6),
      O => Dout(6)
    );
\Dout_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Dout_OBUF(7),
      O => Dout(7)
    );
EN_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => EN,
      O => EN_IBUF
    );
LOAD_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => LOAD,
      O => LOAD_IBUF
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
SENS_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => SENS,
      O => SENS_IBUF
    );
\count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8B"
    )
        port map (
      I0 => Din_IBUF(0),
      I1 => LOAD_IBUF,
      I2 => Dout_OBUF(0),
      O => p_0_in(0)
    );
\count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(1),
      I1 => LOAD_IBUF,
      I2 => \count_reg[4]_i_2_n_7\,
      O => p_0_in(1)
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(2),
      I1 => LOAD_IBUF,
      I2 => \count_reg[4]_i_2_n_6\,
      O => p_0_in(2)
    );
\count[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(3),
      I1 => LOAD_IBUF,
      I2 => \count_reg[4]_i_2_n_5\,
      O => p_0_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(4),
      I1 => LOAD_IBUF,
      I2 => \count_reg[4]_i_2_n_4\,
      O => p_0_in(4)
    );
\count[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Dout_OBUF(3),
      I1 => Dout_OBUF(4),
      O => \count[4]_i_3_n_0\
    );
\count[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Dout_OBUF(2),
      I1 => Dout_OBUF(3),
      O => \count[4]_i_4_n_0\
    );
\count[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Dout_OBUF[1]_repN\,
      I1 => Dout_OBUF(2),
      O => \count[4]_i_5_n_0\
    );
\count[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Dout_OBUF[1]_repN\,
      I1 => SENS_IBUF,
      O => \count[4]_i_6_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(5),
      I1 => LOAD_IBUF,
      I2 => \count_reg[7]_i_4_n_7\,
      O => p_0_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(6),
      I1 => LOAD_IBUF,
      I2 => \count_reg[7]_i_4_n_6\,
      O => p_0_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => RST_IBUF,
      O => clear
    );
\count[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => EN_IBUF,
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Din_IBUF(7),
      I1 => LOAD_IBUF,
      I2 => \count_reg[7]_i_4_n_5\,
      O => p_0_in(7)
    );
\count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Dout_OBUF(6),
      I1 => Dout_OBUF(7),
      O => \count[7]_i_5_n_0\
    );
\count[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Dout_OBUF(5),
      I1 => Dout_OBUF(6),
      O => \count[7]_i_6_n_0\
    );
\count[7]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Dout_OBUF(4),
      I1 => Dout_OBUF(5),
      O => \count[7]_i_7_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(0),
      Q => Dout_OBUF(0),
      R => clear
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => Dout_OBUF(1),
      R => clear
    );
\count_reg[1]_replica\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(1),
      Q => \Dout_OBUF[1]_repN\,
      R => clear
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(2),
      Q => Dout_OBUF(2),
      R => clear
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(3),
      Q => Dout_OBUF(3),
      R => clear
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(4),
      Q => Dout_OBUF(4),
      R => clear
    );
\count_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_reg[4]_i_2_n_0\,
      CO(2 downto 0) => \NLW_count_reg[4]_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => Dout_OBUF(0),
      DI(3 downto 2) => Dout_OBUF(3 downto 2),
      DI(1) => \Dout_OBUF[1]_repN\,
      DI(0) => SENS_IBUF,
      O(3) => \count_reg[4]_i_2_n_4\,
      O(2) => \count_reg[4]_i_2_n_5\,
      O(1) => \count_reg[4]_i_2_n_6\,
      O(0) => \count_reg[4]_i_2_n_7\,
      S(3) => \count[4]_i_3_n_0\,
      S(2) => \count[4]_i_4_n_0\,
      S(1) => \count[4]_i_5_n_0\,
      S(0) => \count[4]_i_6_n_0\
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(5),
      Q => Dout_OBUF(5),
      R => clear
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(6),
      Q => Dout_OBUF(6),
      R => clear
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CK_IBUF_BUFG,
      CE => \count[7]_i_2_n_0\,
      D => p_0_in(7),
      Q => Dout_OBUF(7),
      R => clear
    );
\count_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_reg[4]_i_2_n_0\,
      CO(3 downto 0) => \NLW_count_reg[7]_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => Dout_OBUF(5 downto 4),
      O(3) => \NLW_count_reg[7]_i_4_O_UNCONNECTED\(3),
      O(2) => \count_reg[7]_i_4_n_5\,
      O(1) => \count_reg[7]_i_4_n_6\,
      O(0) => \count_reg[7]_i_4_n_7\,
      S(3) => '0',
      S(2) => \count[7]_i_5_n_0\,
      S(1) => \count[7]_i_6_n_0\,
      S(0) => \count[7]_i_7_n_0\
    );
end STRUCTURE;
