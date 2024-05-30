-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
-- Date        : Tue May 28 16:29:35 2024
-- Host        : insa-20933 running 64-bit Linux Mint 21.1
-- Command     : write_vhdl -mode funcsim -nolib -force -file {/home/tgauther/Bureau/4A/Projet Systeme
--               Informatique/Register/Register.sim/sim_1/impl/func/xsim/Assemblage_func_impl.vhd}
-- Design      : Processeur
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ALU is
  port (
    \Out_B_reg[6]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \Out_C_reg[7]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \Out_B_reg[4]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[2]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    O : out STD_LOGIC_VECTOR ( 3 downto 0 );
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_C_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__3_i_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_C_reg[2]\ : out STD_LOGIC;
    \Out_C_reg[3]\ : out STD_LOGIC;
    \Out_B_reg[1]\ : out STD_LOGIC;
    sPip2_b : in STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B[0]_i_3\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[4]_i_2__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[0]_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B[0]_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__35_carry_i_4\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \multOp__35_carry_i_4_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__35_carry_i_5_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__35_carry__0_i_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B[3]_i_2__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B[3]_i_2__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B[7]_i_2__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B[7]_i_162\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[7]_i_162_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[7]_i_156\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[0]_i_5\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \ARG0__728_carry__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ARG0__728_carry__0_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__1_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__1_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__2_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__3_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[0]_i_5_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B_reg[2]_1\ : in STD_LOGIC;
    \Out_B_reg[3]\ : in STD_LOGIC;
    \Out_B_reg[1]_0\ : in STD_LOGIC
  );
end ALU;

architecture STRUCTURE of ALU is
  signal \ARG0__728_carry__0_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__2_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_n_0\ : STD_LOGIC;
  signal ARG0_carry_n_0 : STD_LOGIC;
  signal \^out_b_reg[4]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal data1 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_n_4\ : STD_LOGIC;
  signal \multOp__22_carry_n_0\ : STD_LOGIC;
  signal \multOp__22_carry_n_7\ : STD_LOGIC;
  signal \multOp__35_carry_i_5_n_0\ : STD_LOGIC;
  signal \multOp__35_carry_n_0\ : STD_LOGIC;
  signal \NLW_ARG0__728_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ARG0__728_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ARG0_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__0_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__22_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__22_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__22_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_multOp__35_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_multOp__35_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_multOp__35_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of ARG0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__0/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__0/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__0_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \multOp__0_carry\ : label is "PROPCONST";
  attribute METHODOLOGY_DRC_VIOS of \multOp__0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__22_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute OPT_MODIFIED of \multOp__22_carry\ : label is "PROPCONST";
  attribute METHODOLOGY_DRC_VIOS of \multOp__22_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__35_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \multOp__35_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \Out_B_reg[4]\(3 downto 0) <= \^out_b_reg[4]\(3 downto 0);
\ARG0__728_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B[0]_i_5\(0),
      DI(3 downto 1) => \ARG0__728_carry__0_0\(2 downto 0),
      DI(0) => sPip2_b(0),
      O(3 downto 0) => \NLW_ARG0__728_carry_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ARG0__728_carry__0_1\(3 downto 0)
    );
\ARG0__728_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_n_0\,
      CO(3) => \ARG0__728_carry__0_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => \ARG0__728_carry__1_0\(3 downto 0),
      O(3 downto 0) => \NLW_ARG0__728_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ARG0__728_carry__1_1\(3 downto 0)
    );
\ARG0__728_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_n_0\,
      CO(3) => \ARG0__728_carry__1_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B[0]_i_5\(0),
      DI(2) => \Out_B[0]_i_5\(0),
      DI(1) => \Out_B[0]_i_5\(0),
      DI(0) => \Out_B[0]_i_5\(0),
      O(3 downto 0) => \NLW_ARG0__728_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ARG0__728_carry__2_0\(3 downto 0)
    );
\ARG0__728_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__1_n_0\,
      CO(3) => \ARG0__728_carry__2_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B[0]_i_5\(0),
      DI(2) => \Out_B[0]_i_5\(0),
      DI(1) => \Out_B[0]_i_5\(0),
      DI(0) => \Out_B[0]_i_5\(0),
      O(3 downto 0) => \NLW_ARG0__728_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => \ARG0__728_carry__3_0\(3 downto 0)
    );
\ARG0__728_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__2_n_0\,
      CO(3 downto 1) => \NLW_ARG0__728_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ARG0__728_carry__3_i_1\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Out_B[0]_i_5\(0),
      O(3 downto 0) => \NLW_ARG0__728_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \Out_B[0]_i_5_0\(0)
    );
ARG0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ARG0_carry_n_0,
      CO(2 downto 0) => NLW_ARG0_carry_CO_UNCONNECTED(2 downto 0),
      CYINIT => '1',
      DI(3 downto 0) => \Out_B[7]_i_162\(3 downto 0),
      O(3 downto 0) => O(3 downto 0),
      S(3 downto 0) => \Out_B[7]_i_162_0\(3 downto 0)
    );
\ARG0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ARG0_carry_n_0,
      CO(3) => CO(0),
      CO(2 downto 0) => \NLW_ARG0_carry__0_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => DI(3 downto 0),
      O(3 downto 0) => \Out_C_reg[7]_0\(3 downto 0),
      S(3 downto 0) => \Out_B[7]_i_156\(3 downto 0)
    );
\Out_B[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FFF400"
    )
        port map (
      I0 => Q(0),
      I1 => data1(1),
      I2 => \Out_B_reg[1]_0\,
      I3 => Q(1),
      I4 => data0(1),
      I5 => Q(2),
      O => \Out_B_reg[1]\
    );
\Out_B[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4FFE400"
    )
        port map (
      I0 => Q(0),
      I1 => data1(2),
      I2 => \Out_B_reg[2]_1\,
      I3 => Q(1),
      I4 => data0(2),
      I5 => Q(2),
      O => \Out_C_reg[2]\
    );
\Out_B[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E4FFE400"
    )
        port map (
      I0 => Q(0),
      I1 => data1(3),
      I2 => \Out_B_reg[3]\,
      I3 => Q(1),
      I4 => data0(3),
      I5 => Q(2),
      O => \Out_C_reg[3]\
    );
\_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__0/i__carry_n_0\,
      CO(2 downto 0) => \NLW__inferred__0/i__carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => sPip2_b(0),
      DI(3 downto 1) => sPip2_b(3 downto 1),
      DI(0) => Q(0),
      O(3 downto 1) => data0(3 downto 1),
      O(0) => \Out_B_reg[6]\(0),
      S(3 downto 0) => \Out_B[0]_i_3\(3 downto 0)
    );
\_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__0/i__carry_n_0\,
      CO(3 downto 0) => \NLW__inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => sPip2_b(6 downto 4),
      O(3 downto 0) => \Out_B_reg[6]\(4 downto 1),
      S(3 downto 0) => \Out_B[4]_i_2__0\(3 downto 0)
    );
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2 downto 0) => \NLW_multOp__0_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \Out_B[0]_i_4\(2 downto 0),
      DI(0) => '0',
      O(3) => \multOp__0_carry_n_4\,
      O(2 downto 1) => data1(2 downto 1),
      O(0) => \Out_C_reg[7]\(0),
      S(3 downto 0) => \Out_B[0]_i_4_0\(3 downto 0)
    );
\multOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry_n_0\,
      CO(3 downto 0) => \NLW_multOp__0_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \multOp__35_carry_i_4\(2 downto 0),
      O(3 downto 0) => \^out_b_reg[4]\(3 downto 0),
      S(3 downto 0) => \multOp__35_carry_i_4_0\(3 downto 0)
    );
\multOp__22_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__22_carry_n_0\,
      CO(2 downto 0) => \NLW_multOp__22_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => \multOp__35_carry_i_5_0\(2 downto 0),
      DI(0) => '0',
      O(3 downto 1) => \Out_B_reg[2]\(2 downto 0),
      O(0) => \multOp__22_carry_n_7\,
      S(3 downto 0) => S(3 downto 0)
    );
\multOp__22_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__22_carry_n_0\,
      CO(3 downto 0) => \NLW_multOp__22_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp__22_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[2]_0\(0),
      S(3 downto 1) => B"000",
      S(0) => \multOp__35_carry__0_i_1\(0)
    );
\multOp__35_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__35_carry_n_0\,
      CO(2 downto 0) => \NLW_multOp__35_carry_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B[3]_i_2__0_0\(0),
      DI(2 downto 1) => \^out_b_reg[4]\(1 downto 0),
      DI(0) => \multOp__0_carry_n_4\,
      O(3 downto 1) => \Out_C_reg[7]\(3 downto 1),
      O(0) => data1(3),
      S(3 downto 1) => \Out_B[3]_i_2__0_1\(2 downto 0),
      S(0) => \multOp__35_carry_i_5_n_0\
    );
\multOp__35_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__35_carry_n_0\,
      CO(3 downto 0) => \NLW_multOp__35_carry__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_multOp__35_carry__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_C_reg[7]\(4),
      S(3 downto 1) => B"000",
      S(0) => \Out_B[7]_i_2__1\(0)
    );
\multOp__35_carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry_n_4\,
      I1 => \multOp__22_carry_n_7\,
      O => \multOp__35_carry_i_5_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipeline is
  port (
    \ARG0__728_carry_i_10_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[6]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    sAL1 : out STD_LOGIC;
    \Out_C_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[4]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[6]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \Out_C_reg[4]_0\ : out STD_LOGIC;
    \Out_C_reg[5]_0\ : out STD_LOGIC;
    \Out_A_reg[5]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_OP_reg[3]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Out_OP_reg[3]_1\ : out STD_LOGIC;
    sPip2_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_OP_reg[3]_2\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[3]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_C_reg[2]_0\ : out STD_LOGIC;
    \Out_B_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_C_reg[3]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[2]_1\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[1]_0\ : out STD_LOGIC;
    \Out_C_reg[3]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[7]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Out_C_reg[3]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[7]_2\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[0]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \multOp__22_carry\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_C_reg[3]_4\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_C_reg[7]_3\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry__1_i_5_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry_i_7_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \ARG0__728_carry_i_1_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B_reg[2]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_C_reg[7]_4\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[7]_i_147_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \count_reg[0]\ : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \count_reg[0]_1\ : in STD_LOGIC;
    \count_reg[0]_2\ : in STD_LOGIC;
    \count_reg[0]_3\ : in STD_LOGIC;
    \count_reg[0]_4\ : in STD_LOGIC;
    \count_reg[0]_5\ : in STD_LOGIC;
    \Out_B_reg[7]_0\ : in STD_LOGIC;
    \Out_B_reg[7]_1\ : in STD_LOGIC;
    \Out_B_reg[6]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[3]_1\ : in STD_LOGIC;
    \Out_B_reg[2]_3\ : in STD_LOGIC;
    \Out_B_reg[1]_1\ : in STD_LOGIC;
    Out_B : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \multOp__35_carry__0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__35_carry__0_i_1_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    data0 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    data1 : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \multOp__35_carry__0_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[5]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \Out_B_reg[7]_2\ : in STD_LOGIC;
    \Out_B_reg[6]_2\ : in STD_LOGIC;
    \Out_B_reg[5]_0\ : in STD_LOGIC;
    \Out_B_reg[4]_1\ : in STD_LOGIC;
    \Out_B_reg[3]_2\ : in STD_LOGIC;
    \Out_B_reg[2]_4\ : in STD_LOGIC;
    \Out_B_reg[1]_2\ : in STD_LOGIC;
    \Out_B_reg[0]_2\ : in STD_LOGIC;
    Qb_micro_OBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    sPip1_op : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end Pipeline;

architecture STRUCTURE of Pipeline is
  signal ARG00_in : STD_LOGIC_VECTOR ( 6 downto 2 );
  signal \ARG0__728_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_11_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_11_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_11_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_11_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_16_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_16_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_16_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_16_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_17_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_18_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_19_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_20_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_21_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_21_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_21_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_21_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_21_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_22_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_23_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_24_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_25_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_26_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_27_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_28_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_29_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_6_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_6_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_6_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_6_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_5_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_5_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_5_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_5_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \^arg0__728_carry_i_10_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \ARG0__728_carry_i_10_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_11_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_11_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_11_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_11_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_12_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_13_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_14_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_15_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_16_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_17_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_18_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_19_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_1_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_20_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_21_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_21_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_21_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_21_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_21_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_22_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_23_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_24_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_25_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_25_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_25_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_25_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_26_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_27_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_28_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_29_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_2_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_30_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_30_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_30_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_30_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_30_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_31_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_32_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_33_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_34_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_35_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_35_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_35_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_35_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_35_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_36_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_37_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_38_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_38_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_38_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_38_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_39_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_40_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_41_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_42_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_43_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_44_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_45_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_46_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_47_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_47_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_47_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_47_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_47_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_48_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_49_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_50_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_51_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_52_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_52_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_52_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_52_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_53_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_54_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_55_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_56_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_57_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_58_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_59_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_60_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_61_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_62_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_62_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_62_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_62_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_63_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_64_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_65_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_66_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_67_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_68_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_69_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_70_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_71_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_72_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_73_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_7_n_0\ : STD_LOGIC;
  signal \ARG0__728_carry_i_7_n_4\ : STD_LOGIC;
  signal \ARG0__728_carry_i_7_n_5\ : STD_LOGIC;
  signal \ARG0__728_carry_i_7_n_6\ : STD_LOGIC;
  signal \ARG0__728_carry_i_7_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_8_n_7\ : STD_LOGIC;
  signal \ARG0__728_carry_i_9_n_0\ : STD_LOGIC;
  signal \ARG0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ARG0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \^di\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_a_reg[5]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Out_B[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \Out_B[0]_i_3_n_0\ : STD_LOGIC;
  signal \Out_B[0]_i_4_n_0\ : STD_LOGIC;
  signal \Out_B[0]_i_5_n_0\ : STD_LOGIC;
  signal \Out_B[1]_i_3_n_0\ : STD_LOGIC;
  signal \Out_B[1]_i_5__0_n_0\ : STD_LOGIC;
  signal \Out_B[2]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[2]_i_4_n_0\ : STD_LOGIC;
  signal \Out_B[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[3]_i_4__0_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_11_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_12_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_13_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_14_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_15_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_16_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_17_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_18_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_2__0_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_4__0_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_6_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_8_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_9_n_0\ : STD_LOGIC;
  signal \Out_B[5]_i_2__0_n_0\ : STD_LOGIC;
  signal \Out_B[5]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[5]_i_4__0_n_0\ : STD_LOGIC;
  signal \Out_B[5]_i_5_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_11_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_12_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_14_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_15_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_16_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_17_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_18_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_19_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_20_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_21_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_2_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_4__0_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_5__0_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_6_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_8_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_9_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_100_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_101_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_102_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_103_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_104_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_105_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_106_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_107_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_110_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_113_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_114_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_115_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_116_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_117_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_118_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_119_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_11_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_120_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_121_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_122_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_123_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_124_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_128_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_129_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_130_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_131_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_133_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_134_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_135_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_136_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_137_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_138_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_139_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_13_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_140_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_143_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_144_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_145_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_146_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_148_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_149_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_14_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_150_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_151_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_152_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_153_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_154_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_155_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_156_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_157_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_158_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_160_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_161_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_162_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_163_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_164_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_165_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_16_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_17_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_18_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_19_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_22_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_23_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_24_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_25_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_28_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_29_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_2__1_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_30_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_31_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_34_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_35_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_36_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_37_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_39_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_3__1_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_3_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_40_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_41_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_42_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_45_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_46_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_47_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_48_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_4__1_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_4_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_51_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_52_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_53_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_54_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_55_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_56_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_57_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_58_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_5__1_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_61_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_62_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_63_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_64_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_65_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_66_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_67_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_68_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_69_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_70_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_71_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_72_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_73_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_74_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_75_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_78_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_79_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_80_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_81_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_82_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_83_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_84_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_85_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_86_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_87_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_88_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_89_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_8_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_92_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_93_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_96_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_97_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_98_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_99_n_0\ : STD_LOGIC;
  signal \^out_b_reg[4]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \Out_B_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_10_n_4\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_10_n_5\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_10_n_6\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_10_n_7\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_5_n_7\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_7_n_4\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_7_n_5\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_7_n_6\ : STD_LOGIC;
  signal \Out_B_reg[4]_i_7_n_7\ : STD_LOGIC;
  signal \^out_b_reg[6]_0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \Out_B_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_10_n_4\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_10_n_5\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_10_n_6\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_10_n_7\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_13_n_4\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_13_n_5\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_13_n_6\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_13_n_7\ : STD_LOGIC;
  signal \Out_B_reg[6]_i_7_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_108_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_108_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_108_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_108_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_108_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_109_n_3\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_10_n_3\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_111_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_111_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_111_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_111_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_111_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_112_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_112_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_112_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_112_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_125_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_125_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_125_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_125_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_125_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_126_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_126_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_126_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_126_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_126_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_127_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_127_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_127_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_127_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_12_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_12_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_12_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_12_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_132_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_132_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_132_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_132_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_141_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_141_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_141_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_141_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_141_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_142_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_142_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_142_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_142_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_147_n_1\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_147_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_147_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_159_n_3\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_15_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_15_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_15_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_15_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_15_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_20_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_20_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_20_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_20_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_20_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_21_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_21_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_21_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_21_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_21_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_26_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_26_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_26_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_26_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_26_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_27_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_27_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_27_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_27_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_27_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_32_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_32_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_32_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_32_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_32_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_33_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_33_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_33_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_33_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_38_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_38_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_38_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_38_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_38_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_43_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_43_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_43_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_43_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_44_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_44_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_44_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_44_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_49_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_49_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_49_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_49_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_49_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_50_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_50_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_50_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_50_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_59_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_59_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_59_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_59_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_59_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_60_n_1\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_60_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_60_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_6_n_2\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_6_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_76_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_76_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_76_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_76_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_76_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_77_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_77_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_77_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_77_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_7_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_90_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_90_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_90_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_90_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_90_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_91_n_2\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_91_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_94_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_94_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_94_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_94_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_94_n_7\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_95_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_95_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_95_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_95_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_9_n_4\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_9_n_5\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_9_n_6\ : STD_LOGIC;
  signal \Out_B_reg[7]_i_9_n_7\ : STD_LOGIC;
  signal \^out_c_reg[2]_0\ : STD_LOGIC;
  signal \^out_c_reg[3]_1\ : STD_LOGIC;
  signal \^out_c_reg[3]_3\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_c_reg[4]_0\ : STD_LOGIC;
  signal \^out_c_reg[5]_0\ : STD_LOGIC;
  signal \^out_c_reg[6]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_op_reg[3]_0\ : STD_LOGIC;
  signal \^out_op_reg[3]_1\ : STD_LOGIC;
  signal \count[7]_i_4_n_0\ : STD_LOGIC;
  signal \count[7]_i_6_n_0\ : STD_LOGIC;
  signal \count[7]_i_8_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \multOp__22_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \multOp__22_carry_i_8_n_0\ : STD_LOGIC;
  signal \multOp__35_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \^sal1\ : STD_LOGIC;
  signal sPip2_b : STD_LOGIC_VECTOR ( 7 to 7 );
  signal sPip2_c : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^spip2_op\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry__0_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__0_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__0_i_16_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__0_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__0_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry__1_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ARG0__728_carry_i_11_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_11_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_22_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry_i_22_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ARG0__728_carry_i_25_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_25_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_30_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_35_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_38_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_38_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_47_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_52_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_52_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_62_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_62_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_ARG0__728_carry_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_ARG0__728_carry_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ARG0__728_carry_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[4]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[4]_i_5_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[4]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[4]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[6]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[6]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[6]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[6]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_10_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_108_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_109_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_109_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_111_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_112_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_112_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_12_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_125_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_126_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_127_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_127_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_132_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_132_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Out_B_reg[7]_i_141_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_142_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_142_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_147_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_147_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Out_B_reg[7]_i_15_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_159_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_159_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_20_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_21_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_26_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_27_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_32_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Out_B_reg[7]_i_38_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_43_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_43_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_44_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_44_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_49_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_50_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_50_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_59_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_60_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_60_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_Out_B_reg[7]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_76_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_77_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_77_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_Out_B_reg[7]_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_90_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_91_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_Out_B_reg[7]_i_91_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_Out_B_reg[7]_i_94_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_95_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_Out_B_reg[7]_i_95_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0_i_11\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0_i_16\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0_i_21\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__0_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry__1_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_11\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_21\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_22\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_25\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_30\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_35\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_38\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_47\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_52\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_62\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \ARG0__728_carry_i_8\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[4]_i_10\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[4]_i_5\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[4]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[6]_i_10\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[6]_i_13\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[6]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_108\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_111\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_112\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_12\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_125\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_126\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_127\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_132\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_141\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_142\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_147\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_15\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_20\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_21\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_26\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_27\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_32\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_33\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_38\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_43\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_44\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_49\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_50\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_59\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_60\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_76\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_77\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_9\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_90\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_91\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_94\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \Out_B_reg[7]_i_95\ : label is "{SYNTH-8 {cell *THIS*}}";
begin
  \ARG0__728_carry_i_10_0\(0) <= \^arg0__728_carry_i_10_0\(0);
  DI(3 downto 0) <= \^di\(3 downto 0);
  \Out_A_reg[5]_0\(2 downto 0) <= \^out_a_reg[5]_0\(2 downto 0);
  \Out_B_reg[4]_0\(2 downto 0) <= \^out_b_reg[4]_0\(2 downto 0);
  \Out_B_reg[6]_0\(5 downto 0) <= \^out_b_reg[6]_0\(5 downto 0);
  \Out_C_reg[2]_0\ <= \^out_c_reg[2]_0\;
  \Out_C_reg[3]_1\ <= \^out_c_reg[3]_1\;
  \Out_C_reg[3]_3\(3 downto 1) <= \^out_c_reg[3]_3\(3 downto 1);
  \Out_C_reg[3]_3\(0) <= sPip2_c(0);
  \Out_C_reg[4]_0\ <= \^out_c_reg[4]_0\;
  \Out_C_reg[5]_0\ <= \^out_c_reg[5]_0\;
  \Out_C_reg[6]_0\(3 downto 0) <= \^out_c_reg[6]_0\(3 downto 0);
  \Out_OP_reg[3]_0\ <= \^out_op_reg[3]_0\;
  \Out_OP_reg[3]_1\ <= \^out_op_reg[3]_1\;
  sAL1 <= \^sal1\;
  sPip2_op(3 downto 0) <= \^spip2_op\(3 downto 0);
\ARG0__728_carry__0_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_2_n_0\,
      CO(3) => \ARG0__728_carry__0_i_1_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ARG0__728_carry__0_i_6_n_5\,
      DI(2) => \ARG0__728_carry__0_i_6_n_6\,
      DI(1) => \ARG0__728_carry__0_i_6_n_7\,
      DI(0) => \ARG0__728_carry_i_11_n_4\,
      O(3 downto 0) => \^out_c_reg[6]_0\(3 downto 0),
      S(3) => \ARG0__728_carry__0_i_7_n_0\,
      S(2) => \ARG0__728_carry__0_i_8_n_0\,
      S(1) => \ARG0__728_carry__0_i_9_n_0\,
      S(0) => \ARG0__728_carry__0_i_10_n_0\
    );
\ARG0__728_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => ARG00_in(2),
      I2 => \ARG0__728_carry_i_11_n_4\,
      O => \ARG0__728_carry__0_i_10_n_0\
    );
\ARG0__728_carry__0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_25_n_0\,
      CO(3) => \ARG0__728_carry__0_i_11_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ARG0__728_carry__0_i_16_n_5\,
      DI(2) => \ARG0__728_carry__0_i_16_n_6\,
      DI(1) => \ARG0__728_carry__0_i_16_n_7\,
      DI(0) => \ARG0__728_carry_i_38_n_4\,
      O(3) => \ARG0__728_carry__0_i_11_n_4\,
      O(2) => \ARG0__728_carry__0_i_11_n_5\,
      O(1) => \ARG0__728_carry__0_i_11_n_6\,
      O(0) => \ARG0__728_carry__0_i_11_n_7\,
      S(3) => \ARG0__728_carry__0_i_17_n_0\,
      S(2) => \ARG0__728_carry__0_i_18_n_0\,
      S(1) => \ARG0__728_carry__0_i_19_n_0\,
      S(0) => \ARG0__728_carry__0_i_20_n_0\
    );
\ARG0__728_carry__0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => ARG00_in(3),
      I4 => \ARG0__728_carry__0_i_11_n_5\,
      O => \ARG0__728_carry__0_i_12_n_0\
    );
\ARG0__728_carry__0_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => ARG00_in(3),
      I2 => \ARG0__728_carry__0_i_11_n_6\,
      O => \ARG0__728_carry__0_i_13_n_0\
    );
\ARG0__728_carry__0_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => ARG00_in(3),
      I2 => \ARG0__728_carry__0_i_11_n_7\,
      O => \ARG0__728_carry__0_i_14_n_0\
    );
\ARG0__728_carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => ARG00_in(3),
      I2 => \ARG0__728_carry_i_25_n_4\,
      O => \ARG0__728_carry__0_i_15_n_0\
    );
\ARG0__728_carry__0_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_38_n_0\,
      CO(3) => \ARG0__728_carry__0_i_16_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_i_16_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ARG0__728_carry__0_i_21_n_5\,
      DI(2) => \ARG0__728_carry__0_i_21_n_6\,
      DI(1) => \ARG0__728_carry__0_i_21_n_7\,
      DI(0) => \ARG0__728_carry_i_52_n_4\,
      O(3) => \ARG0__728_carry__0_i_16_n_4\,
      O(2) => \ARG0__728_carry__0_i_16_n_5\,
      O(1) => \ARG0__728_carry__0_i_16_n_6\,
      O(0) => \ARG0__728_carry__0_i_16_n_7\,
      S(3) => \ARG0__728_carry__0_i_22_n_0\,
      S(2) => \ARG0__728_carry__0_i_23_n_0\,
      S(1) => \ARG0__728_carry__0_i_24_n_0\,
      S(0) => \ARG0__728_carry__0_i_25_n_0\
    );
\ARG0__728_carry__0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => ARG00_in(4),
      I4 => \ARG0__728_carry__0_i_16_n_5\,
      O => \ARG0__728_carry__0_i_17_n_0\
    );
\ARG0__728_carry__0_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => ARG00_in(4),
      I2 => \ARG0__728_carry__0_i_16_n_6\,
      O => \ARG0__728_carry__0_i_18_n_0\
    );
\ARG0__728_carry__0_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => ARG00_in(4),
      I2 => \ARG0__728_carry__0_i_16_n_7\,
      O => \ARG0__728_carry__0_i_19_n_0\
    );
\ARG0__728_carry__0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \^arg0__728_carry_i_10_0\(0),
      I4 => \^out_c_reg[6]_0\(3),
      O => \Out_C_reg[7]_3\(3)
    );
\ARG0__728_carry__0_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => ARG00_in(4),
      I2 => \ARG0__728_carry_i_38_n_4\,
      O => \ARG0__728_carry__0_i_20_n_0\
    );
\ARG0__728_carry__0_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_52_n_0\,
      CO(3) => \ARG0__728_carry__0_i_21_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_i_21_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_38_n_5\,
      DI(2) => \Out_B_reg[7]_i_38_n_6\,
      DI(1) => \Out_B_reg[7]_i_38_n_7\,
      DI(0) => \ARG0__728_carry_i_62_n_4\,
      O(3) => \ARG0__728_carry__0_i_21_n_4\,
      O(2) => \ARG0__728_carry__0_i_21_n_5\,
      O(1) => \ARG0__728_carry__0_i_21_n_6\,
      O(0) => \ARG0__728_carry__0_i_21_n_7\,
      S(3) => \ARG0__728_carry__0_i_26_n_0\,
      S(2) => \ARG0__728_carry__0_i_27_n_0\,
      S(1) => \ARG0__728_carry__0_i_28_n_0\,
      S(0) => \ARG0__728_carry__0_i_29_n_0\
    );
\ARG0__728_carry__0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => ARG00_in(5),
      I4 => \ARG0__728_carry__0_i_21_n_5\,
      O => \ARG0__728_carry__0_i_22_n_0\
    );
\ARG0__728_carry__0_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => ARG00_in(5),
      I2 => \ARG0__728_carry__0_i_21_n_6\,
      O => \ARG0__728_carry__0_i_23_n_0\
    );
\ARG0__728_carry__0_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => ARG00_in(5),
      I2 => \ARG0__728_carry__0_i_21_n_7\,
      O => \ARG0__728_carry__0_i_24_n_0\
    );
\ARG0__728_carry__0_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => ARG00_in(5),
      I2 => \ARG0__728_carry_i_52_n_4\,
      O => \ARG0__728_carry__0_i_25_n_0\
    );
\ARG0__728_carry__0_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => ARG00_in(6),
      I4 => \Out_B_reg[7]_i_38_n_5\,
      O => \ARG0__728_carry__0_i_26_n_0\
    );
\ARG0__728_carry__0_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => ARG00_in(6),
      I2 => \Out_B_reg[7]_i_38_n_6\,
      O => \ARG0__728_carry__0_i_27_n_0\
    );
\ARG0__728_carry__0_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => ARG00_in(6),
      I2 => \Out_B_reg[7]_i_38_n_7\,
      O => \ARG0__728_carry__0_i_28_n_0\
    );
\ARG0__728_carry__0_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => ARG00_in(6),
      I2 => \ARG0__728_carry_i_62_n_4\,
      O => \ARG0__728_carry__0_i_29_n_0\
    );
\ARG0__728_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \^arg0__728_carry_i_10_0\(0),
      I4 => \^out_c_reg[6]_0\(2),
      O => \Out_C_reg[7]_3\(2)
    );
\ARG0__728_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \^arg0__728_carry_i_10_0\(0),
      I2 => \^out_c_reg[6]_0\(1),
      O => \Out_C_reg[7]_3\(1)
    );
\ARG0__728_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \^arg0__728_carry_i_10_0\(0),
      I2 => \^out_c_reg[6]_0\(0),
      O => \Out_C_reg[7]_3\(0)
    );
\ARG0__728_carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_11_n_0\,
      CO(3) => \ARG0__728_carry__0_i_6_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__0_i_6_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \ARG0__728_carry__0_i_11_n_5\,
      DI(2) => \ARG0__728_carry__0_i_11_n_6\,
      DI(1) => \ARG0__728_carry__0_i_11_n_7\,
      DI(0) => \ARG0__728_carry_i_25_n_4\,
      O(3) => \ARG0__728_carry__0_i_6_n_4\,
      O(2) => \ARG0__728_carry__0_i_6_n_5\,
      O(1) => \ARG0__728_carry__0_i_6_n_6\,
      O(0) => \ARG0__728_carry__0_i_6_n_7\,
      S(3) => \ARG0__728_carry__0_i_12_n_0\,
      S(2) => \ARG0__728_carry__0_i_13_n_0\,
      S(1) => \ARG0__728_carry__0_i_14_n_0\,
      S(0) => \ARG0__728_carry__0_i_15_n_0\
    );
\ARG0__728_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => ARG00_in(2),
      I4 => \ARG0__728_carry__0_i_6_n_5\,
      O => \ARG0__728_carry__0_i_7_n_0\
    );
\ARG0__728_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => ARG00_in(2),
      I2 => \ARG0__728_carry__0_i_6_n_6\,
      O => \ARG0__728_carry__0_i_8_n_0\
    );
\ARG0__728_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => ARG00_in(2),
      I2 => \ARG0__728_carry__0_i_6_n_7\,
      O => \ARG0__728_carry__0_i_9_n_0\
    );
\ARG0__728_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry__1_i_5_n_4\,
      O => \ARG0__728_carry__1_i_5_0\(3)
    );
\ARG0__728_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry__1_i_5_n_5\,
      O => \ARG0__728_carry__1_i_5_0\(2)
    );
\ARG0__728_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry__1_i_5_n_6\,
      O => \ARG0__728_carry__1_i_5_0\(1)
    );
\ARG0__728_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry__1_i_5_n_7\,
      O => \ARG0__728_carry__1_i_5_0\(0)
    );
\ARG0__728_carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_i_1_n_0\,
      CO(3) => \ARG0__728_carry__1_i_5_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry__1_i_5_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(2),
      DI(2) => ARG00_in(2),
      DI(1) => ARG00_in(2),
      DI(0) => \ARG0__728_carry__0_i_6_n_4\,
      O(3) => \ARG0__728_carry__1_i_5_n_4\,
      O(2) => \ARG0__728_carry__1_i_5_n_5\,
      O(1) => \ARG0__728_carry__1_i_5_n_6\,
      O(0) => \ARG0__728_carry__1_i_5_n_7\,
      S(3) => \ARG0__728_carry__1_i_6_n_0\,
      S(2) => \ARG0__728_carry__1_i_7_n_0\,
      S(1) => \ARG0__728_carry__1_i_8_n_0\,
      S(0) => \ARG0__728_carry__1_i_9_n_0\
    );
\ARG0__728_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_30_n_5\,
      O => \ARG0__728_carry__1_i_6_n_0\
    );
\ARG0__728_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_30_n_6\,
      O => \ARG0__728_carry__1_i_7_n_0\
    );
\ARG0__728_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_30_n_7\,
      O => \ARG0__728_carry__1_i_8_n_0\
    );
\ARG0__728_carry__1_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => ARG00_in(2),
      I4 => \ARG0__728_carry__0_i_6_n_4\,
      O => \ARG0__728_carry__1_i_9_n_0\
    );
\ARG0__728_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry_i_7_n_4\,
      O => \ARG0__728_carry_i_7_0\(3)
    );
\ARG0__728_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry_i_7_n_5\,
      O => \ARG0__728_carry_i_7_0\(2)
    );
\ARG0__728_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry_i_7_n_6\,
      O => \ARG0__728_carry_i_7_0\(1)
    );
\ARG0__728_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry_i_7_n_7\,
      O => \ARG0__728_carry_i_7_0\(0)
    );
\ARG0__728_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => \ARG0__728_carry_i_1_n_7\,
      O => \ARG0__728_carry_i_1_0\(0)
    );
\ARG0__728_carry_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_7_n_0\,
      CO(3 downto 2) => \NLW_ARG0__728_carry_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \^arg0__728_carry_i_10_0\(0),
      CO(0) => \NLW_ARG0__728_carry_i_1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ARG00_in(2),
      DI(0) => ARG00_in(2),
      O(3 downto 1) => \NLW_ARG0__728_carry_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \ARG0__728_carry_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \ARG0__728_carry_i_9_n_0\,
      S(0) => \ARG0__728_carry_i_10_n_0\
    );
\ARG0__728_carry_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_21_n_4\,
      O => \ARG0__728_carry_i_10_n_0\
    );
\ARG0__728_carry_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_11_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_11_CO_UNCONNECTED\(2 downto 0),
      CYINIT => ARG00_in(3),
      DI(3) => \ARG0__728_carry_i_25_n_5\,
      DI(2) => \ARG0__728_carry_i_25_n_6\,
      DI(1) => \ARG0__728_carry_i_26_n_0\,
      DI(0) => '0',
      O(3) => \ARG0__728_carry_i_11_n_4\,
      O(2) => \ARG0__728_carry_i_11_n_5\,
      O(1) => \ARG0__728_carry_i_11_n_6\,
      O(0) => \NLW_ARG0__728_carry_i_11_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_27_n_0\,
      S(2) => \ARG0__728_carry_i_28_n_0\,
      S(1) => \ARG0__728_carry_i_29_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => ARG00_in(2),
      O => \ARG0__728_carry_i_12_n_0\
    );
\ARG0__728_carry_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => ARG00_in(2),
      I5 => \ARG0__728_carry_i_11_n_5\,
      O => \ARG0__728_carry_i_13_n_0\
    );
\ARG0__728_carry_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => ARG00_in(2),
      I4 => \ARG0__728_carry_i_11_n_6\,
      O => \ARG0__728_carry_i_14_n_0\
    );
\ARG0__728_carry_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => sPip2_c(0),
      I2 => \^out_b_reg[6]_0\(0),
      I3 => sPip2_b(7),
      I4 => \^di\(0),
      O => \ARG0__728_carry_i_15_n_0\
    );
\ARG0__728_carry_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999995"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => sPip2_c(7),
      I2 => sPip2_c(0),
      I3 => sPip2_c(1),
      I4 => sPip2_c(2),
      O => \ARG0__728_carry_i_16_n_0\
    );
\ARG0__728_carry_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_21_n_5\,
      O => \ARG0__728_carry_i_17_n_0\
    );
\ARG0__728_carry_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_21_n_6\,
      O => \ARG0__728_carry_i_18_n_0\
    );
\ARG0__728_carry_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_21_n_7\,
      O => \ARG0__728_carry_i_19_n_0\
    );
\ARG0__728_carry_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_2_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_2_CO_UNCONNECTED\(2 downto 0),
      CYINIT => ARG00_in(2),
      DI(3) => \ARG0__728_carry_i_11_n_5\,
      DI(2) => \ARG0__728_carry_i_11_n_6\,
      DI(1) => \ARG0__728_carry_i_12_n_0\,
      DI(0) => '0',
      O(3 downto 1) => \^di\(3 downto 1),
      O(0) => \NLW_ARG0__728_carry_i_2_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_13_n_0\,
      S(2) => \ARG0__728_carry_i_14_n_0\,
      S(1) => \ARG0__728_carry_i_15_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_30_n_4\,
      O => \ARG0__728_carry_i_20_n_0\
    );
\ARG0__728_carry_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_30_n_0\,
      CO(3) => \ARG0__728_carry_i_21_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_21_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(3),
      DI(2) => ARG00_in(3),
      DI(1) => ARG00_in(3),
      DI(0) => ARG00_in(3),
      O(3) => \ARG0__728_carry_i_21_n_4\,
      O(2) => \ARG0__728_carry_i_21_n_5\,
      O(1) => \ARG0__728_carry_i_21_n_6\,
      O(0) => \ARG0__728_carry_i_21_n_7\,
      S(3) => \ARG0__728_carry_i_31_n_0\,
      S(2) => \ARG0__728_carry_i_32_n_0\,
      S(1) => \ARG0__728_carry_i_33_n_0\,
      S(0) => \ARG0__728_carry_i_34_n_0\
    );
\ARG0__728_carry_i_22\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_35_n_0\,
      CO(3 downto 2) => \NLW_ARG0__728_carry_i_22_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ARG00_in(3),
      CO(0) => \NLW_ARG0__728_carry_i_22_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ARG00_in(4),
      DI(0) => ARG00_in(4),
      O(3 downto 1) => \NLW_ARG0__728_carry_i_22_O_UNCONNECTED\(3 downto 1),
      O(0) => \ARG0__728_carry_i_22_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \ARG0__728_carry_i_36_n_0\,
      S(0) => \ARG0__728_carry_i_37_n_0\
    );
\ARG0__728_carry_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_22_n_7\,
      O => \ARG0__728_carry_i_23_n_0\
    );
\ARG0__728_carry_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_35_n_4\,
      O => \ARG0__728_carry_i_24_n_0\
    );
\ARG0__728_carry_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_25_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_25_CO_UNCONNECTED\(2 downto 0),
      CYINIT => ARG00_in(4),
      DI(3) => \ARG0__728_carry_i_38_n_5\,
      DI(2) => \ARG0__728_carry_i_38_n_6\,
      DI(1) => \ARG0__728_carry_i_39_n_0\,
      DI(0) => '0',
      O(3) => \ARG0__728_carry_i_25_n_4\,
      O(2) => \ARG0__728_carry_i_25_n_5\,
      O(1) => \ARG0__728_carry_i_25_n_6\,
      O(0) => \NLW_ARG0__728_carry_i_25_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_40_n_0\,
      S(2) => \ARG0__728_carry_i_41_n_0\,
      S(1) => \ARG0__728_carry_i_42_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => ARG00_in(3),
      O => \ARG0__728_carry_i_26_n_0\
    );
\ARG0__728_carry_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => ARG00_in(3),
      I5 => \ARG0__728_carry_i_25_n_5\,
      O => \ARG0__728_carry_i_27_n_0\
    );
\ARG0__728_carry_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => ARG00_in(3),
      I4 => \ARG0__728_carry_i_25_n_6\,
      O => \ARG0__728_carry_i_28_n_0\
    );
\ARG0__728_carry_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699996969666"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => sPip2_c(0),
      I2 => sPip2_b(7),
      I3 => \^di\(0),
      I4 => \^out_b_reg[6]_0\(0),
      I5 => \^out_b_reg[6]_0\(1),
      O => \ARG0__728_carry_i_29_n_0\
    );
\ARG0__728_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \^arg0__728_carry_i_10_0\(0),
      I2 => \^di\(3),
      O => \Out_C_reg[3]_4\(3)
    );
\ARG0__728_carry_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_i_6_n_0\,
      CO(3) => \ARG0__728_carry_i_30_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_30_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(3),
      DI(2) => ARG00_in(3),
      DI(1) => ARG00_in(3),
      DI(0) => \ARG0__728_carry__0_i_11_n_4\,
      O(3) => \ARG0__728_carry_i_30_n_4\,
      O(2) => \ARG0__728_carry_i_30_n_5\,
      O(1) => \ARG0__728_carry_i_30_n_6\,
      O(0) => \ARG0__728_carry_i_30_n_7\,
      S(3) => \ARG0__728_carry_i_43_n_0\,
      S(2) => \ARG0__728_carry_i_44_n_0\,
      S(1) => \ARG0__728_carry_i_45_n_0\,
      S(0) => \ARG0__728_carry_i_46_n_0\
    );
\ARG0__728_carry_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_35_n_5\,
      O => \ARG0__728_carry_i_31_n_0\
    );
\ARG0__728_carry_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_35_n_6\,
      O => \ARG0__728_carry_i_32_n_0\
    );
\ARG0__728_carry_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_35_n_7\,
      O => \ARG0__728_carry_i_33_n_0\
    );
\ARG0__728_carry_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_47_n_4\,
      O => \ARG0__728_carry_i_34_n_0\
    );
\ARG0__728_carry_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_47_n_0\,
      CO(3) => \ARG0__728_carry_i_35_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_35_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(4),
      DI(2) => ARG00_in(4),
      DI(1) => ARG00_in(4),
      DI(0) => ARG00_in(4),
      O(3) => \ARG0__728_carry_i_35_n_4\,
      O(2) => \ARG0__728_carry_i_35_n_5\,
      O(1) => \ARG0__728_carry_i_35_n_6\,
      O(0) => \ARG0__728_carry_i_35_n_7\,
      S(3) => \ARG0__728_carry_i_48_n_0\,
      S(2) => \ARG0__728_carry_i_49_n_0\,
      S(1) => \ARG0__728_carry_i_50_n_0\,
      S(0) => \ARG0__728_carry_i_51_n_0\
    );
\ARG0__728_carry_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_5_n_7\,
      O => \ARG0__728_carry_i_36_n_0\
    );
\ARG0__728_carry_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_7_n_4\,
      O => \ARG0__728_carry_i_37_n_0\
    );
\ARG0__728_carry_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_38_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_38_CO_UNCONNECTED\(2 downto 0),
      CYINIT => ARG00_in(5),
      DI(3) => \ARG0__728_carry_i_52_n_5\,
      DI(2) => \ARG0__728_carry_i_52_n_6\,
      DI(1) => \ARG0__728_carry_i_53_n_0\,
      DI(0) => '0',
      O(3) => \ARG0__728_carry_i_38_n_4\,
      O(2) => \ARG0__728_carry_i_38_n_5\,
      O(1) => \ARG0__728_carry_i_38_n_6\,
      O(0) => \NLW_ARG0__728_carry_i_38_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_54_n_0\,
      S(2) => \ARG0__728_carry_i_55_n_0\,
      S(1) => \ARG0__728_carry_i_56_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => ARG00_in(4),
      O => \ARG0__728_carry_i_39_n_0\
    );
\ARG0__728_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \^arg0__728_carry_i_10_0\(0),
      I5 => \^di\(2),
      O => \Out_C_reg[3]_4\(2)
    );
\ARG0__728_carry_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => ARG00_in(4),
      I5 => \ARG0__728_carry_i_38_n_5\,
      O => \ARG0__728_carry_i_40_n_0\
    );
\ARG0__728_carry_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => ARG00_in(4),
      I4 => \ARG0__728_carry_i_38_n_6\,
      O => \ARG0__728_carry_i_41_n_0\
    );
\ARG0__728_carry_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => sPip2_c(0),
      I2 => sPip2_b(7),
      I3 => \ARG0__728_carry_i_57_n_0\,
      I4 => \^out_b_reg[6]_0\(2),
      O => \ARG0__728_carry_i_42_n_0\
    );
\ARG0__728_carry_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_47_n_5\,
      O => \ARG0__728_carry_i_43_n_0\
    );
\ARG0__728_carry_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_47_n_6\,
      O => \ARG0__728_carry_i_44_n_0\
    );
\ARG0__728_carry_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => \ARG0__728_carry_i_47_n_7\,
      O => \ARG0__728_carry_i_45_n_0\
    );
\ARG0__728_carry_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => ARG00_in(3),
      I4 => \ARG0__728_carry__0_i_11_n_4\,
      O => \ARG0__728_carry_i_46_n_0\
    );
\ARG0__728_carry_i_47\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_i_11_n_0\,
      CO(3) => \ARG0__728_carry_i_47_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_47_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(4),
      DI(2) => ARG00_in(4),
      DI(1) => ARG00_in(4),
      DI(0) => \ARG0__728_carry__0_i_16_n_4\,
      O(3) => \ARG0__728_carry_i_47_n_4\,
      O(2) => \ARG0__728_carry_i_47_n_5\,
      O(1) => \ARG0__728_carry_i_47_n_6\,
      O(0) => \ARG0__728_carry_i_47_n_7\,
      S(3) => \ARG0__728_carry_i_58_n_0\,
      S(2) => \ARG0__728_carry_i_59_n_0\,
      S(1) => \ARG0__728_carry_i_60_n_0\,
      S(0) => \ARG0__728_carry_i_61_n_0\
    );
\ARG0__728_carry_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_7_n_5\,
      O => \ARG0__728_carry_i_48_n_0\
    );
\ARG0__728_carry_i_49\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_7_n_6\,
      O => \ARG0__728_carry_i_49_n_0\
    );
\ARG0__728_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \^arg0__728_carry_i_10_0\(0),
      I4 => \^di\(1),
      O => \Out_C_reg[3]_4\(1)
    );
\ARG0__728_carry_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_7_n_7\,
      O => \ARG0__728_carry_i_50_n_0\
    );
\ARG0__728_carry_i_51\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_10_n_4\,
      O => \ARG0__728_carry_i_51_n_0\
    );
\ARG0__728_carry_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_52_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_52_CO_UNCONNECTED\(2 downto 0),
      CYINIT => ARG00_in(6),
      DI(3) => \ARG0__728_carry_i_62_n_5\,
      DI(2) => \ARG0__728_carry_i_62_n_6\,
      DI(1) => \ARG0__728_carry_i_63_n_0\,
      DI(0) => '0',
      O(3) => \ARG0__728_carry_i_52_n_4\,
      O(2) => \ARG0__728_carry_i_52_n_5\,
      O(1) => \ARG0__728_carry_i_52_n_6\,
      O(0) => \NLW_ARG0__728_carry_i_52_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_64_n_0\,
      S(2) => \ARG0__728_carry_i_65_n_0\,
      S(1) => \ARG0__728_carry_i_66_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => ARG00_in(5),
      O => \ARG0__728_carry_i_53_n_0\
    );
\ARG0__728_carry_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => ARG00_in(5),
      I5 => \ARG0__728_carry_i_52_n_5\,
      O => \ARG0__728_carry_i_54_n_0\
    );
\ARG0__728_carry_i_55\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => ARG00_in(5),
      I4 => \ARG0__728_carry_i_52_n_6\,
      O => \ARG0__728_carry_i_55_n_0\
    );
\ARG0__728_carry_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => sPip2_c(0),
      I2 => sPip2_b(7),
      I3 => \ARG0__728_carry_i_67_n_0\,
      I4 => \^out_b_reg[6]_0\(3),
      O => \ARG0__728_carry_i_56_n_0\
    );
\ARG0__728_carry_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^di\(0),
      I1 => \^out_b_reg[6]_0\(0),
      I2 => \^out_b_reg[6]_0\(1),
      O => \ARG0__728_carry_i_57_n_0\
    );
\ARG0__728_carry_i_58\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_10_n_5\,
      O => \ARG0__728_carry_i_58_n_0\
    );
\ARG0__728_carry_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_10_n_6\,
      O => \ARG0__728_carry_i_59_n_0\
    );
\ARG0__728_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^arg0__728_carry_i_10_0\(0),
      I2 => \^di\(0),
      O => \Out_C_reg[3]_4\(0)
    );
\ARG0__728_carry_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B_reg[4]_i_10_n_7\,
      O => \ARG0__728_carry_i_60_n_0\
    );
\ARG0__728_carry_i_61\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => ARG00_in(4),
      I4 => \ARG0__728_carry__0_i_16_n_4\,
      O => \ARG0__728_carry_i_61_n_0\
    );
\ARG0__728_carry_i_62\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ARG0__728_carry_i_62_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_62_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_6_n_2\,
      DI(3) => \Out_B_reg[7]_i_43_n_5\,
      DI(2) => \Out_B_reg[7]_i_43_n_6\,
      DI(1) => \ARG0__728_carry_i_68_n_0\,
      DI(0) => '0',
      O(3) => \ARG0__728_carry_i_62_n_4\,
      O(2) => \ARG0__728_carry_i_62_n_5\,
      O(1) => \ARG0__728_carry_i_62_n_6\,
      O(0) => \NLW_ARG0__728_carry_i_62_O_UNCONNECTED\(0),
      S(3) => \ARG0__728_carry_i_69_n_0\,
      S(2) => \ARG0__728_carry_i_70_n_0\,
      S(1) => \ARG0__728_carry_i_71_n_0\,
      S(0) => '1'
    );
\ARG0__728_carry_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => ARG00_in(6),
      O => \ARG0__728_carry_i_63_n_0\
    );
\ARG0__728_carry_i_64\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => ARG00_in(6),
      I5 => \ARG0__728_carry_i_62_n_5\,
      O => \ARG0__728_carry_i_64_n_0\
    );
\ARG0__728_carry_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => ARG00_in(6),
      I4 => \ARG0__728_carry_i_62_n_6\,
      O => \ARG0__728_carry_i_65_n_0\
    );
\ARG0__728_carry_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => sPip2_c(0),
      I2 => sPip2_b(7),
      I3 => \ARG0__728_carry_i_72_n_0\,
      I4 => \^out_b_reg[6]_0\(4),
      O => \ARG0__728_carry_i_66_n_0\
    );
\ARG0__728_carry_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(1),
      I1 => \^out_b_reg[6]_0\(0),
      I2 => \^di\(0),
      I3 => \^out_b_reg[6]_0\(2),
      O => \ARG0__728_carry_i_67_n_0\
    );
\ARG0__728_carry_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_6_n_2\,
      O => \ARG0__728_carry_i_68_n_0\
    );
\ARG0__728_carry_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_6_n_2\,
      I5 => \Out_B_reg[7]_i_43_n_5\,
      O => \ARG0__728_carry_i_69_n_0\
    );
\ARG0__728_carry_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__1_i_5_n_0\,
      CO(3) => \ARG0__728_carry_i_7_n_0\,
      CO(2 downto 0) => \NLW_ARG0__728_carry_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(2),
      DI(2) => ARG00_in(2),
      DI(1) => ARG00_in(2),
      DI(0) => ARG00_in(2),
      O(3) => \ARG0__728_carry_i_7_n_4\,
      O(2) => \ARG0__728_carry_i_7_n_5\,
      O(1) => \ARG0__728_carry_i_7_n_6\,
      O(0) => \ARG0__728_carry_i_7_n_7\,
      S(3) => \ARG0__728_carry_i_17_n_0\,
      S(2) => \ARG0__728_carry_i_18_n_0\,
      S(1) => \ARG0__728_carry_i_19_n_0\,
      S(0) => \ARG0__728_carry_i_20_n_0\
    );
\ARG0__728_carry_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_6_n_2\,
      I4 => \Out_B_reg[7]_i_43_n_6\,
      O => \ARG0__728_carry_i_70_n_0\
    );
\ARG0__728_carry_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99696696"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => sPip2_c(0),
      I2 => sPip2_b(7),
      I3 => \ARG0__728_carry_i_73_n_0\,
      I4 => \^out_b_reg[6]_0\(5),
      O => \ARG0__728_carry_i_71_n_0\
    );
\ARG0__728_carry_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(2),
      I1 => \^di\(0),
      I2 => \^out_b_reg[6]_0\(0),
      I3 => \^out_b_reg[6]_0\(1),
      I4 => \^out_b_reg[6]_0\(3),
      O => \ARG0__728_carry_i_72_n_0\
    );
\ARG0__728_carry_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(3),
      I1 => \^out_b_reg[6]_0\(1),
      I2 => \^out_b_reg[6]_0\(0),
      I3 => \^di\(0),
      I4 => \^out_b_reg[6]_0\(2),
      I5 => \^out_b_reg[6]_0\(4),
      O => \ARG0__728_carry_i_73_n_0\
    );
\ARG0__728_carry_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_21_n_0\,
      CO(3 downto 2) => \NLW_ARG0__728_carry_i_8_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ARG00_in(2),
      CO(0) => \NLW_ARG0__728_carry_i_8_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ARG00_in(3),
      DI(0) => ARG00_in(3),
      O(3 downto 1) => \NLW_ARG0__728_carry_i_8_O_UNCONNECTED\(3 downto 1),
      O(0) => \ARG0__728_carry_i_8_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \ARG0__728_carry_i_23_n_0\,
      S(0) => \ARG0__728_carry_i_24_n_0\
    );
\ARG0__728_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \ARG0__728_carry_i_8_n_7\,
      O => \ARG0__728_carry_i_9_n_0\
    );
\ARG0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      O => \Out_C_reg[7]_1\(1)
    );
\ARG0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sPip2_c(1),
      I1 => sPip2_c(0),
      O => \ARG0_carry__0_i_10_n_0\
    );
\ARG0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      O => \Out_C_reg[7]_1\(0)
    );
\ARG0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999599"
    )
        port map (
      I0 => sPip2_c(5),
      I1 => sPip2_c(7),
      I2 => sPip2_c(3),
      I3 => \ARG0_carry__0_i_10_n_0\,
      I4 => sPip2_c(2),
      I5 => sPip2_c(4),
      O => \^out_c_reg[5]_0\
    );
\ARG0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999995"
    )
        port map (
      I0 => sPip2_c(4),
      I1 => sPip2_c(7),
      I2 => sPip2_c(2),
      I3 => sPip2_c(1),
      I4 => sPip2_c(0),
      I5 => sPip2_c(3),
      O => \^out_c_reg[4]_0\
    );
\ARG0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      O => \Out_C_reg[7]_0\(3)
    );
\ARG0_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      O => \Out_C_reg[7]_0\(2)
    );
\ARG0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999599"
    )
        port map (
      I0 => sPip2_c(5),
      I1 => sPip2_c(7),
      I2 => sPip2_c(3),
      I3 => \ARG0_carry__0_i_10_n_0\,
      I4 => sPip2_c(2),
      I5 => sPip2_c(4),
      O => \Out_C_reg[7]_0\(1)
    );
\ARG0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9999999999999995"
    )
        port map (
      I0 => sPip2_c(4),
      I1 => sPip2_c(7),
      I2 => sPip2_c(2),
      I3 => sPip2_c(1),
      I4 => sPip2_c(0),
      I5 => sPip2_c(3),
      O => \Out_C_reg[7]_0\(0)
    );
\ARG0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => sPip2_c(4),
      I1 => sPip2_c(2),
      I2 => sPip2_c(1),
      I3 => sPip2_c(0),
      I4 => sPip2_c(3),
      I5 => sPip2_c(5),
      O => \ARG0_carry__0_i_9_n_0\
    );
ARG0_carry_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999995"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => sPip2_c(7),
      I2 => sPip2_c(0),
      I3 => sPip2_c(1),
      I4 => sPip2_c(2),
      O => \Out_C_reg[3]_0\(3)
    );
ARG0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => sPip2_c(7),
      I1 => sPip2_c(0),
      I2 => sPip2_c(1),
      I3 => sPip2_c(2),
      O => \Out_C_reg[3]_0\(2)
    );
ARG0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      O => \Out_C_reg[3]_0\(1)
    );
ARG0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sPip2_c(0),
      O => \Out_C_reg[3]_0\(0)
    );
ARG0_carry_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99999995"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => sPip2_c(7),
      I2 => sPip2_c(0),
      I3 => sPip2_c(1),
      I4 => sPip2_c(2),
      O => \Out_C_reg[3]_2\(3)
    );
ARG0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A857"
    )
        port map (
      I0 => sPip2_c(7),
      I1 => sPip2_c(0),
      I2 => sPip2_c(1),
      I3 => sPip2_c(2),
      O => \Out_C_reg[3]_2\(2)
    );
ARG0_carry_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"87"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      O => \Out_C_reg[3]_2\(1)
    );
ARG0_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sPip2_c(0),
      O => \Out_C_reg[3]_2\(0)
    );
\Out_A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_1\(0),
      Q => \^out_a_reg[5]_0\(0),
      R => '0'
    );
\Out_A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_1\(1),
      Q => \^out_a_reg[5]_0\(1),
      R => '0'
    );
\Out_A_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_1\(2),
      Q => \^out_a_reg[5]_0\(2),
      R => '0'
    );
\Out_B[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0CCD0CCD0CCDDCC"
    )
        port map (
      I0 => \Out_B[0]_i_2__0_n_0\,
      I1 => \^di\(0),
      I2 => \Out_B[0]_i_3_n_0\,
      I3 => \^out_op_reg[3]_1\,
      I4 => \Out_B[0]_i_4_n_0\,
      I5 => \Out_B[0]_i_5_n_0\,
      O => D(0)
    );
\Out_B[0]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(1),
      I1 => \Out_B_reg[6]_1\(2),
      I2 => sPip2_c(0),
      O => \Out_B[0]_i_2__0_n_0\
    );
\Out_B[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF7F00"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => \^di\(0),
      I2 => sPip2_c(0),
      I3 => \Out_B_reg[6]_1\(2),
      I4 => data0(0),
      I5 => \Out_B_reg[6]_1\(1),
      O => \Out_B[0]_i_3_n_0\
    );
\Out_B[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000770F"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^di\(0),
      I2 => data1(0),
      I3 => \Out_B_reg[6]_1\(0),
      I4 => \Out_B_reg[6]_1\(2),
      O => \Out_B[0]_i_4_n_0\
    );
\Out_B[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7040FFFF"
    )
        port map (
      I0 => \Out_B_reg[0]_1\(0),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \Out_B_reg[6]_1\(2),
      I3 => \^di\(0),
      I4 => \Out_B_reg[6]_1\(1),
      O => \Out_B[0]_i_5_n_0\
    );
\Out_B[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAFA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => \Out_B_reg[1]_1\,
      I2 => \^out_op_reg[3]_1\,
      I3 => \Out_B[1]_i_3_n_0\,
      O => D(1)
    );
\Out_B[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555D757FFFFD757"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(2),
      I1 => sPip2_c(1),
      I2 => \^out_b_reg[6]_0\(0),
      I3 => \Out_B_reg[6]_1\(0),
      I4 => \Out_B_reg[6]_1\(1),
      I5 => \Out_B[1]_i_5__0_n_0\,
      O => \Out_B[1]_i_3_n_0\
    );
\Out_B[1]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(1),
      I2 => \Out_B_reg[6]_1\(0),
      O => \Out_B_reg[1]_0\
    );
\Out_B[1]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"96AA000096AAFFFF"
    )
        port map (
      I0 => \^arg0__728_carry_i_10_0\(0),
      I1 => sPip2_c(7),
      I2 => sPip2_b(7),
      I3 => \Out_B_reg[0]_1\(0),
      I4 => \Out_B_reg[6]_1\(0),
      I5 => \^out_b_reg[6]_0\(0),
      O => \Out_B[1]_i_5__0_n_0\
    );
\Out_B[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAFA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(1),
      I1 => \Out_B_reg[2]_3\,
      I2 => \^out_op_reg[3]_1\,
      I3 => \Out_B[2]_i_3__0_n_0\,
      O => D(2)
    );
\Out_B[2]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC910C91FFFFFFFF"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \^out_b_reg[6]_0\(1),
      I2 => \Out_B_reg[6]_1\(0),
      I3 => \Out_B_reg[6]_1\(1),
      I4 => \Out_B[2]_i_4_n_0\,
      I5 => \Out_B_reg[6]_1\(2),
      O => \Out_B[2]_i_3__0_n_0\
    );
\Out_B[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55A9A955"
    )
        port map (
      I0 => ARG00_in(2),
      I1 => \^arg0__728_carry_i_10_0\(0),
      I2 => \Out_B_reg[0]_1\(0),
      I3 => sPip2_c(7),
      I4 => sPip2_b(7),
      O => \Out_B[2]_i_4_n_0\
    );
\Out_B[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CAFA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(2),
      I1 => \Out_B_reg[3]_1\,
      I2 => \^out_op_reg[3]_1\,
      I3 => \Out_B[3]_i_3__0_n_0\,
      O => D(3)
    );
\Out_B[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC910C91FFFFFFFF"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => \^out_b_reg[6]_0\(2),
      I2 => \Out_B_reg[6]_1\(0),
      I3 => \Out_B_reg[6]_1\(1),
      I4 => \Out_B[3]_i_4__0_n_0\,
      I5 => \Out_B_reg[6]_1\(2),
      O => \Out_B[3]_i_3__0_n_0\
    );
\Out_B[3]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555AAA9AAA95555"
    )
        port map (
      I0 => ARG00_in(3),
      I1 => ARG00_in(2),
      I2 => \Out_B_reg[0]_1\(0),
      I3 => \^arg0__728_carry_i_10_0\(0),
      I4 => sPip2_c(7),
      I5 => sPip2_b(7),
      O => \Out_B[3]_i_4__0_n_0\
    );
\Out_B[4]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_10_n_5\,
      O => \Out_B[4]_i_11_n_0\
    );
\Out_B[4]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_10_n_6\,
      O => \Out_B[4]_i_12_n_0\
    );
\Out_B[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_10_n_7\,
      O => \Out_B[4]_i_13_n_0\
    );
\Out_B[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_13_n_4\,
      O => \Out_B[4]_i_14_n_0\
    );
\Out_B[4]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_13_n_5\,
      O => \Out_B[4]_i_15_n_0\
    );
\Out_B[4]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_13_n_6\,
      O => \Out_B[4]_i_16_n_0\
    );
\Out_B[4]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_13_n_7\,
      O => \Out_B[4]_i_17_n_0\
    );
\Out_B[4]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => ARG00_in(5),
      I4 => \ARG0__728_carry__0_i_21_n_4\,
      O => \Out_B[4]_i_18_n_0\
    );
\Out_B[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACACA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(3),
      I1 => \Out_B[4]_i_2__0_n_0\,
      I2 => \^out_op_reg[3]_1\,
      I3 => \Out_B[4]_i_3__0_n_0\,
      I4 => \Out_B_reg[6]_1\(2),
      O => D(4)
    );
\Out_B[4]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FFF400"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => data1(1),
      I2 => \Out_B[4]_i_4__0_n_0\,
      I3 => \Out_B_reg[6]_1\(1),
      I4 => data0(1),
      I5 => \Out_B_reg[6]_1\(2),
      O => \Out_B[4]_i_2__0_n_0\
    );
\Out_B[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF0600060F06F0F"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => \Out_B[4]_i_6_n_0\,
      I2 => \Out_B_reg[6]_1\(1),
      I3 => \Out_B_reg[6]_1\(0),
      I4 => \^out_b_reg[6]_0\(3),
      I5 => sPip2_c(4),
      O => \Out_B[4]_i_3__0_n_0\
    );
\Out_B[4]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(3),
      I1 => sPip2_c(4),
      I2 => \Out_B_reg[6]_1\(0),
      O => \Out_B[4]_i_4__0_n_0\
    );
\Out_B[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999999999999999F"
    )
        port map (
      I0 => sPip2_b(7),
      I1 => sPip2_c(7),
      I2 => ARG00_in(2),
      I3 => \Out_B_reg[0]_1\(0),
      I4 => \^arg0__728_carry_i_10_0\(0),
      I5 => ARG00_in(3),
      O => \Out_B[4]_i_6_n_0\
    );
\Out_B[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_7_n_7\,
      O => \Out_B[4]_i_8_n_0\
    );
\Out_B[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B_reg[6]_i_10_n_4\,
      O => \Out_B[4]_i_9_n_0\
    );
\Out_B[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAFACACA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(4),
      I1 => \Out_B[5]_i_2__0_n_0\,
      I2 => \^out_op_reg[3]_1\,
      I3 => \Out_B[5]_i_3__0_n_0\,
      I4 => \Out_B_reg[6]_1\(2),
      O => D(5)
    );
\Out_B[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4FFF400"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => data1(2),
      I2 => \Out_B[5]_i_4__0_n_0\,
      I3 => \Out_B_reg[6]_1\(1),
      I4 => data0(2),
      I5 => \Out_B_reg[6]_1\(2),
      O => \Out_B[5]_i_2__0_n_0\
    );
\Out_B[5]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF0600060F06F0F"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => \Out_B[5]_i_5_n_0\,
      I2 => \Out_B_reg[6]_1\(1),
      I3 => \Out_B_reg[6]_1\(0),
      I4 => \^out_b_reg[6]_0\(4),
      I5 => sPip2_c(5),
      O => \Out_B[5]_i_3__0_n_0\
    );
\Out_B[5]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(4),
      I1 => sPip2_c(5),
      I2 => \Out_B_reg[6]_1\(0),
      O => \Out_B[5]_i_4__0_n_0\
    );
\Out_B[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555555557"
    )
        port map (
      I0 => \Out_B[6]_i_9_n_0\,
      I1 => ARG00_in(3),
      I2 => \^arg0__728_carry_i_10_0\(0),
      I3 => \Out_B_reg[0]_1\(0),
      I4 => ARG00_in(2),
      I5 => ARG00_in(4),
      O => \Out_B[5]_i_5_n_0\
    );
\Out_B[6]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_7_n_7\,
      O => \Out_B[6]_i_11_n_0\
    );
\Out_B[6]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_12_n_4\,
      O => \Out_B[6]_i_12_n_0\
    );
\Out_B[6]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_12_n_5\,
      O => \Out_B[6]_i_14_n_0\
    );
\Out_B[6]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_12_n_6\,
      O => \Out_B[6]_i_15_n_0\
    );
\Out_B[6]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_12_n_7\,
      O => \Out_B[6]_i_16_n_0\
    );
\Out_B[6]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_21_n_4\,
      O => \Out_B[6]_i_17_n_0\
    );
\Out_B[6]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_21_n_5\,
      O => \Out_B[6]_i_18_n_0\
    );
\Out_B[6]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_21_n_6\,
      O => \Out_B[6]_i_19_n_0\
    );
\Out_B[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888AAA8A88888888"
    )
        port map (
      I0 => \Out_B[6]_i_2_n_0\,
      I1 => \Out_B[6]_i_3__0_n_0\,
      I2 => \Out_B[6]_i_4__0_n_0\,
      I3 => \Out_B_reg[6]_1\(1),
      I4 => \Out_B[6]_i_5__0_n_0\,
      I5 => \Out_B_reg[6]_1\(2),
      O => D(6)
    );
\Out_B[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBFBBBA"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(5),
      I1 => \^spip2_op\(2),
      I2 => \^spip2_op\(0),
      I3 => \^spip2_op\(1),
      I4 => \^spip2_op\(3),
      O => \Out_B[6]_i_2_n_0\
    );
\Out_B[6]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => \Out_B_reg[7]_i_21_n_7\,
      O => \Out_B[6]_i_20_n_0\
    );
\Out_B[6]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => ARG00_in(6),
      I4 => \Out_B_reg[7]_i_38_n_4\,
      O => \Out_B[6]_i_21_n_0\
    );
\Out_B[6]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5400FFFF"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(2),
      I1 => data0(3),
      I2 => \Out_B_reg[6]_1\(1),
      I3 => \Out_B[6]_i_6_n_0\,
      I4 => \^out_op_reg[3]_1\,
      O => \Out_B[6]_i_3__0_n_0\
    );
\Out_B[6]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"83"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => \^out_b_reg[6]_0\(5),
      I2 => sPip2_c(6),
      O => \Out_B[6]_i_4__0_n_0\
    );
\Out_B[6]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A955FFFFA9550000"
    )
        port map (
      I0 => ARG00_in(6),
      I1 => ARG00_in(5),
      I2 => \Out_B[6]_i_8_n_0\,
      I3 => \Out_B[6]_i_9_n_0\,
      I4 => \Out_B_reg[6]_1\(0),
      I5 => \^out_b_reg[6]_0\(5),
      O => \Out_B[6]_i_5__0_n_0\
    );
\Out_B[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F8FFF0F"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => \^out_b_reg[6]_0\(5),
      I2 => \Out_B_reg[6]_1\(1),
      I3 => data1(3),
      I4 => \Out_B_reg[6]_1\(0),
      O => \Out_B[6]_i_6_n_0\
    );
\Out_B[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ARG00_in(4),
      I1 => ARG00_in(2),
      I2 => \Out_B_reg[0]_1\(0),
      I3 => \^arg0__728_carry_i_10_0\(0),
      I4 => ARG00_in(3),
      O => \Out_B[6]_i_8_n_0\
    );
\Out_B[6]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(7),
      I1 => sPip2_b(7),
      O => \Out_B[6]_i_9_n_0\
    );
\Out_B[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Out_B[7]_i_3_n_0\,
      I1 => \Out_B[7]_i_4_n_0\,
      O => \^sal1\
    );
\Out_B[7]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_91_n_2\,
      O => \Out_B[7]_i_100_n_0\
    );
\Out_B[7]_i_101\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_91_n_2\,
      I5 => \Out_B_reg[7]_i_95_n_5\,
      O => \Out_B[7]_i_101_n_0\
    );
\Out_B[7]_i_102\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_91_n_2\,
      I4 => \Out_B_reg[7]_i_95_n_6\,
      O => \Out_B[7]_i_102_n_0\
    );
\Out_B[7]_i_103\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_91_n_2\,
      O => \Out_B[7]_i_103_n_0\
    );
\Out_B[7]_i_104\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_91_n_2\,
      I1 => \Out_B_reg[7]_i_108_n_5\,
      O => \Out_B[7]_i_104_n_0\
    );
\Out_B[7]_i_105\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_91_n_2\,
      I1 => \Out_B_reg[7]_i_108_n_6\,
      O => \Out_B[7]_i_105_n_0\
    );
\Out_B[7]_i_106\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_91_n_2\,
      I1 => \Out_B_reg[7]_i_108_n_7\,
      O => \Out_B[7]_i_106_n_0\
    );
\Out_B[7]_i_107\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_91_n_2\,
      I4 => \Out_B_reg[7]_i_94_n_4\,
      O => \Out_B[7]_i_107_n_0\
    );
\Out_B[7]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_20_n_4\,
      O => \Out_B[7]_i_11_n_0\
    );
\Out_B[7]_i_110\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_109_n_3\,
      I1 => \Out_B_reg[7]_i_125_n_4\,
      O => \Out_B[7]_i_110_n_0\
    );
\Out_B[7]_i_113\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_109_n_3\,
      I4 => \Out_B_reg[7]_i_111_n_5\,
      O => \Out_B[7]_i_113_n_0\
    );
\Out_B[7]_i_114\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_109_n_3\,
      I2 => \Out_B_reg[7]_i_111_n_6\,
      O => \Out_B[7]_i_114_n_0\
    );
\Out_B[7]_i_115\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_109_n_3\,
      I2 => \Out_B_reg[7]_i_111_n_7\,
      O => \Out_B[7]_i_115_n_0\
    );
\Out_B[7]_i_116\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_109_n_3\,
      I2 => \Out_B_reg[7]_i_112_n_4\,
      O => \Out_B[7]_i_116_n_0\
    );
\Out_B[7]_i_117\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_109_n_3\,
      O => \Out_B[7]_i_117_n_0\
    );
\Out_B[7]_i_118\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_109_n_3\,
      I5 => \Out_B_reg[7]_i_112_n_5\,
      O => \Out_B[7]_i_118_n_0\
    );
\Out_B[7]_i_119\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_109_n_3\,
      I4 => \Out_B_reg[7]_i_112_n_6\,
      O => \Out_B[7]_i_119_n_0\
    );
\Out_B[7]_i_120\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_109_n_3\,
      O => \Out_B[7]_i_120_n_0\
    );
\Out_B[7]_i_121\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_109_n_3\,
      I1 => \Out_B_reg[7]_i_125_n_5\,
      O => \Out_B[7]_i_121_n_0\
    );
\Out_B[7]_i_122\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_109_n_3\,
      I1 => \Out_B_reg[7]_i_125_n_6\,
      O => \Out_B[7]_i_122_n_0\
    );
\Out_B[7]_i_123\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_109_n_3\,
      I1 => \Out_B_reg[7]_i_125_n_7\,
      O => \Out_B[7]_i_123_n_0\
    );
\Out_B[7]_i_124\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_109_n_3\,
      I4 => \Out_B_reg[7]_i_111_n_4\,
      O => \Out_B[7]_i_124_n_0\
    );
\Out_B[7]_i_128\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_132_n_0\,
      I4 => \Out_B_reg[7]_i_126_n_5\,
      O => \Out_B[7]_i_128_n_0\
    );
\Out_B[7]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_132_n_0\,
      I2 => \Out_B_reg[7]_i_126_n_6\,
      O => \Out_B[7]_i_129_n_0\
    );
\Out_B[7]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_6_n_7\,
      O => \Out_B[7]_i_13_n_0\
    );
\Out_B[7]_i_130\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_132_n_0\,
      I2 => \Out_B_reg[7]_i_126_n_7\,
      O => \Out_B[7]_i_130_n_0\
    );
\Out_B[7]_i_131\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_132_n_0\,
      I2 => \Out_B_reg[7]_i_127_n_4\,
      O => \Out_B[7]_i_131_n_0\
    );
\Out_B[7]_i_133\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_132_n_0\,
      O => \Out_B[7]_i_133_n_0\
    );
\Out_B[7]_i_134\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_132_n_0\,
      I5 => \Out_B_reg[7]_i_127_n_5\,
      O => \Out_B[7]_i_134_n_0\
    );
\Out_B[7]_i_135\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_132_n_0\,
      I4 => \Out_B_reg[7]_i_127_n_6\,
      O => \Out_B[7]_i_135_n_0\
    );
\Out_B[7]_i_136\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_132_n_0\,
      O => \Out_B[7]_i_136_n_0\
    );
\Out_B[7]_i_137\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_132_n_0\,
      I1 => \Out_B_reg[7]_i_132_n_5\,
      O => \Out_B[7]_i_137_n_0\
    );
\Out_B[7]_i_138\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_132_n_0\,
      I1 => \Out_B_reg[7]_i_132_n_6\,
      O => \Out_B[7]_i_138_n_0\
    );
\Out_B[7]_i_139\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_132_n_0\,
      I1 => \Out_B_reg[7]_i_132_n_7\,
      O => \Out_B[7]_i_139_n_0\
    );
\Out_B[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_9_n_4\,
      O => \Out_B[7]_i_14_n_0\
    );
\Out_B[7]_i_140\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_132_n_0\,
      I4 => \Out_B_reg[7]_i_126_n_4\,
      O => \Out_B[7]_i_140_n_0\
    );
\Out_B[7]_i_143\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_147_n_1\,
      I4 => \Out_B_reg[7]_i_141_n_5\,
      O => \Out_B[7]_i_143_n_0\
    );
\Out_B[7]_i_144\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_147_n_1\,
      I2 => \Out_B_reg[7]_i_141_n_6\,
      O => \Out_B[7]_i_144_n_0\
    );
\Out_B[7]_i_145\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_147_n_1\,
      I2 => \Out_B_reg[7]_i_141_n_7\,
      O => \Out_B[7]_i_145_n_0\
    );
\Out_B[7]_i_146\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_147_n_1\,
      I2 => \Out_B_reg[7]_i_142_n_4\,
      O => \Out_B[7]_i_146_n_0\
    );
\Out_B[7]_i_148\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_147_n_1\,
      O => \Out_B[7]_i_148_n_0\
    );
\Out_B[7]_i_149\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_147_n_1\,
      I5 => \Out_B_reg[7]_i_142_n_5\,
      O => \Out_B[7]_i_149_n_0\
    );
\Out_B[7]_i_150\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_147_n_1\,
      I4 => \Out_B_reg[7]_i_142_n_6\,
      O => \Out_B[7]_i_150_n_0\
    );
\Out_B[7]_i_151\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_147_n_1\,
      O => \Out_B[7]_i_151_n_0\
    );
\Out_B[7]_i_152\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_147_n_1\,
      I1 => \Out_B_reg[7]_i_147_n_6\,
      O => \Out_B[7]_i_152_n_0\
    );
\Out_B[7]_i_153\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_147_n_1\,
      I1 => \Out_B_reg[7]_i_147_n_7\,
      O => \Out_B[7]_i_153_n_0\
    );
\Out_B[7]_i_154\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_147_n_1\,
      I4 => \Out_B_reg[7]_i_141_n_4\,
      O => \Out_B[7]_i_154_n_0\
    );
\Out_B[7]_i_155\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_159_n_3\,
      I4 => \Out_B_reg[7]_i_147_0\(1),
      O => \Out_B[7]_i_155_n_0\
    );
\Out_B[7]_i_156\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_159_n_3\,
      I2 => \Out_B_reg[7]_i_147_0\(0),
      O => \Out_B[7]_i_156_n_0\
    );
\Out_B[7]_i_157\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_159_n_3\,
      I2 => O(3),
      O => \Out_B[7]_i_157_n_0\
    );
\Out_B[7]_i_158\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_159_n_3\,
      I2 => O(2),
      O => \Out_B[7]_i_158_n_0\
    );
\Out_B[7]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_20_n_5\,
      O => \Out_B[7]_i_16_n_0\
    );
\Out_B[7]_i_160\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_159_n_3\,
      O => \Out_B[7]_i_160_n_0\
    );
\Out_B[7]_i_161\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_159_n_3\,
      I5 => O(1),
      O => \Out_B[7]_i_161_n_0\
    );
\Out_B[7]_i_162\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_159_n_3\,
      I4 => O(0),
      O => \Out_B[7]_i_162_n_0\
    );
\Out_B[7]_i_163\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_159_n_3\,
      O => \Out_B[7]_i_163_n_0\
    );
\Out_B[7]_i_164\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_159_n_3\,
      I1 => \Out_B_reg[7]_i_147_0\(3),
      O => \Out_B[7]_i_164_n_0\
    );
\Out_B[7]_i_165\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_159_n_3\,
      I4 => \Out_B_reg[7]_i_147_0\(2),
      O => \Out_B[7]_i_165_n_0\
    );
\Out_B[7]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_20_n_6\,
      O => \Out_B[7]_i_17_n_0\
    );
\Out_B[7]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_20_n_7\,
      O => \Out_B[7]_i_18_n_0\
    );
\Out_B[7]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_32_n_4\,
      O => \Out_B[7]_i_19_n_0\
    );
\Out_B[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88FFFF8A880000"
    )
        port map (
      I0 => \Out_B[7]_i_2__1_n_0\,
      I1 => \Out_B[7]_i_3__1_n_0\,
      I2 => \Out_B[7]_i_4__1_n_0\,
      I3 => \Out_B_reg[6]_1\(1),
      I4 => \^out_op_reg[3]_1\,
      I5 => sPip2_b(7),
      O => D(7)
    );
\Out_B[7]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_9_n_5\,
      O => \Out_B[7]_i_22_n_0\
    );
\Out_B[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_9_n_6\,
      O => \Out_B[7]_i_23_n_0\
    );
\Out_B[7]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_9_n_7\,
      O => \Out_B[7]_i_24_n_0\
    );
\Out_B[7]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_15_n_4\,
      O => \Out_B[7]_i_25_n_0\
    );
\Out_B[7]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_32_n_5\,
      O => \Out_B[7]_i_28_n_0\
    );
\Out_B[7]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_32_n_6\,
      O => \Out_B[7]_i_29_n_0\
    );
\Out_B[7]_i_2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEAEAEAEFEAE"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(2),
      I1 => data0(4),
      I2 => \Out_B_reg[6]_1\(1),
      I3 => data1(4),
      I4 => \Out_B_reg[6]_1\(0),
      I5 => \Out_B[7]_i_5__1_n_0\,
      O => \Out_B[7]_i_2__1_n_0\
    );
\Out_B[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA28AAAA28"
    )
        port map (
      I0 => \^out_a_reg[5]_0\(2),
      I1 => Out_B(1),
      I2 => \^out_a_reg[5]_0\(1),
      I3 => \^out_a_reg[5]_0\(0),
      I4 => Out_B(0),
      I5 => \count_reg[0]_5\,
      O => \Out_B[7]_i_3_n_0\
    );
\Out_B[7]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => \Out_B_reg[7]_i_32_n_7\,
      O => \Out_B[7]_i_30_n_0\
    );
\Out_B[7]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_10_n_3\,
      I4 => \Out_B_reg[7]_i_27_n_4\,
      O => \Out_B[7]_i_31_n_0\
    );
\Out_B[7]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_33_n_5\,
      O => \Out_B[7]_i_34_n_0\
    );
\Out_B[7]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_33_n_6\,
      O => \Out_B[7]_i_35_n_0\
    );
\Out_B[7]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_33_n_7\,
      O => \Out_B[7]_i_36_n_0\
    );
\Out_B[7]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_59_n_4\,
      O => \Out_B[7]_i_37_n_0\
    );
\Out_B[7]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_15_n_5\,
      O => \Out_B[7]_i_39_n_0\
    );
\Out_B[7]_i_3__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007CFFFF"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => sPip2_b(7),
      I2 => sPip2_c(7),
      I3 => \Out_B_reg[6]_1\(1),
      I4 => \Out_B_reg[6]_1\(2),
      O => \Out_B[7]_i_3__1_n_0\
    );
\Out_B[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DCDD"
    )
        port map (
      I0 => \^out_a_reg[5]_0\(2),
      I1 => \^out_op_reg[3]_0\,
      I2 => \Out_B_reg[7]_0\,
      I3 => \Out_B_reg[7]_1\,
      O => \Out_B[7]_i_4_n_0\
    );
\Out_B[7]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_15_n_6\,
      O => \Out_B[7]_i_40_n_0\
    );
\Out_B[7]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => \Out_B_reg[7]_i_15_n_7\,
      O => \Out_B[7]_i_41_n_0\
    );
\Out_B[7]_i_42\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_6_n_2\,
      I4 => \Out_B_reg[7]_i_26_n_4\,
      O => \Out_B[7]_i_42_n_0\
    );
\Out_B[7]_i_45\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_10_n_3\,
      I4 => \Out_B_reg[7]_i_27_n_5\,
      O => \Out_B[7]_i_45_n_0\
    );
\Out_B[7]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_10_n_3\,
      I2 => \Out_B_reg[7]_i_27_n_6\,
      O => \Out_B[7]_i_46_n_0\
    );
\Out_B[7]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_10_n_3\,
      I2 => \Out_B_reg[7]_i_27_n_7\,
      O => \Out_B[7]_i_47_n_0\
    );
\Out_B[7]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_10_n_3\,
      I2 => \Out_B_reg[7]_i_44_n_4\,
      O => \Out_B[7]_i_48_n_0\
    );
\Out_B[7]_i_4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6665FFFF99950000"
    )
        port map (
      I0 => \Out_B_reg[7]_i_6_n_2\,
      I1 => sPip2_c(7),
      I2 => ARG00_in(6),
      I3 => \Out_B[7]_i_8_n_0\,
      I4 => \Out_B_reg[6]_1\(0),
      I5 => sPip2_b(7),
      O => \Out_B[7]_i_4__1_n_0\
    );
\Out_B[7]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_33_n_0\,
      I4 => \Out_B_reg[7]_i_49_n_5\,
      O => \Out_B[7]_i_51_n_0\
    );
\Out_B[7]_i_52\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_33_n_0\,
      I2 => \Out_B_reg[7]_i_49_n_6\,
      O => \Out_B[7]_i_52_n_0\
    );
\Out_B[7]_i_53\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_33_n_0\,
      I2 => \Out_B_reg[7]_i_49_n_7\,
      O => \Out_B[7]_i_53_n_0\
    );
\Out_B[7]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_33_n_0\,
      I2 => \Out_B_reg[7]_i_50_n_4\,
      O => \Out_B[7]_i_54_n_0\
    );
\Out_B[7]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_59_n_5\,
      O => \Out_B[7]_i_55_n_0\
    );
\Out_B[7]_i_56\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_59_n_6\,
      O => \Out_B[7]_i_56_n_0\
    );
\Out_B[7]_i_57\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_33_n_0\,
      I1 => \Out_B_reg[7]_i_59_n_7\,
      O => \Out_B[7]_i_57_n_0\
    );
\Out_B[7]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_33_n_0\,
      I4 => \Out_B_reg[7]_i_49_n_4\,
      O => \Out_B[7]_i_58_n_0\
    );
\Out_B[7]_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(7),
      I1 => sPip2_b(7),
      O => \Out_B[7]_i_5__1_n_0\
    );
\Out_B[7]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_60_n_6\,
      O => \Out_B[7]_i_61_n_0\
    );
\Out_B[7]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_60_n_7\,
      O => \Out_B[7]_i_62_n_0\
    );
\Out_B[7]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_90_n_4\,
      O => \Out_B[7]_i_63_n_0\
    );
\Out_B[7]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_6_n_2\,
      I4 => \Out_B_reg[7]_i_26_n_5\,
      O => \Out_B[7]_i_64_n_0\
    );
\Out_B[7]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_6_n_2\,
      I2 => \Out_B_reg[7]_i_26_n_6\,
      O => \Out_B[7]_i_65_n_0\
    );
\Out_B[7]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_6_n_2\,
      I2 => \Out_B_reg[7]_i_26_n_7\,
      O => \Out_B[7]_i_66_n_0\
    );
\Out_B[7]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_6_n_2\,
      I2 => \Out_B_reg[7]_i_43_n_4\,
      O => \Out_B[7]_i_67_n_0\
    );
\Out_B[7]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_10_n_3\,
      O => \Out_B[7]_i_68_n_0\
    );
\Out_B[7]_i_69\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_10_n_3\,
      I5 => \Out_B_reg[7]_i_44_n_5\,
      O => \Out_B[7]_i_69_n_0\
    );
\Out_B[7]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_10_n_3\,
      I4 => \Out_B_reg[7]_i_44_n_6\,
      O => \Out_B[7]_i_70_n_0\
    );
\Out_B[7]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69666666"
    )
        port map (
      I0 => \Out_B_reg[7]_i_10_n_3\,
      I1 => sPip2_c(0),
      I2 => \^out_b_reg[6]_0\(5),
      I3 => sPip2_b(7),
      I4 => \ARG0__728_carry_i_73_n_0\,
      O => \Out_B[7]_i_71_n_0\
    );
\Out_B[7]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_33_n_0\,
      O => \Out_B[7]_i_72_n_0\
    );
\Out_B[7]_i_73\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_33_n_0\,
      I5 => \Out_B_reg[7]_i_50_n_5\,
      O => \Out_B[7]_i_73_n_0\
    );
\Out_B[7]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_33_n_0\,
      I4 => \Out_B_reg[7]_i_50_n_6\,
      O => \Out_B[7]_i_74_n_0\
    );
\Out_B[7]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_33_n_0\,
      O => \Out_B[7]_i_75_n_0\
    );
\Out_B[7]_i_78\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_60_n_1\,
      I4 => \Out_B_reg[7]_i_76_n_5\,
      O => \Out_B[7]_i_78_n_0\
    );
\Out_B[7]_i_79\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_60_n_1\,
      I2 => \Out_B_reg[7]_i_76_n_6\,
      O => \Out_B[7]_i_79_n_0\
    );
\Out_B[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => ARG00_in(5),
      I1 => ARG00_in(3),
      I2 => \^arg0__728_carry_i_10_0\(0),
      I3 => \Out_B_reg[0]_1\(0),
      I4 => ARG00_in(2),
      I5 => ARG00_in(4),
      O => \Out_B[7]_i_8_n_0\
    );
\Out_B[7]_i_80\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_60_n_1\,
      I2 => \Out_B_reg[7]_i_76_n_7\,
      O => \Out_B[7]_i_80_n_0\
    );
\Out_B[7]_i_81\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_60_n_1\,
      I2 => \Out_B_reg[7]_i_77_n_4\,
      O => \Out_B[7]_i_81_n_0\
    );
\Out_B[7]_i_82\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_60_n_1\,
      O => \Out_B[7]_i_82_n_0\
    );
\Out_B[7]_i_83\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56AAA955A95556AA"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => sPip2_c(1),
      I2 => sPip2_c(0),
      I3 => sPip2_c(7),
      I4 => \Out_B_reg[7]_i_60_n_1\,
      I5 => \Out_B_reg[7]_i_77_n_5\,
      O => \Out_B[7]_i_83_n_0\
    );
\Out_B[7]_i_84\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78878778"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => sPip2_c(7),
      I2 => sPip2_c(1),
      I3 => \Out_B_reg[7]_i_60_n_1\,
      I4 => \Out_B_reg[7]_i_77_n_6\,
      O => \Out_B[7]_i_84_n_0\
    );
\Out_B[7]_i_85\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \Out_B_reg[7]_i_60_n_1\,
      O => \Out_B[7]_i_85_n_0\
    );
\Out_B[7]_i_86\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_90_n_5\,
      O => \Out_B[7]_i_86_n_0\
    );
\Out_B[7]_i_87\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_90_n_6\,
      O => \Out_B[7]_i_87_n_0\
    );
\Out_B[7]_i_88\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_60_n_1\,
      I1 => \Out_B_reg[7]_i_90_n_7\,
      O => \Out_B[7]_i_88_n_0\
    );
\Out_B[7]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08F7F708"
    )
        port map (
      I0 => \ARG0_carry__0_i_9_n_0\,
      I1 => sPip2_c(7),
      I2 => sPip2_c(6),
      I3 => \Out_B_reg[7]_i_60_n_1\,
      I4 => \Out_B_reg[7]_i_76_n_4\,
      O => \Out_B[7]_i_89_n_0\
    );
\Out_B[7]_i_92\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_91_n_2\,
      I1 => \Out_B_reg[7]_i_91_n_7\,
      O => \Out_B[7]_i_92_n_0\
    );
\Out_B[7]_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Out_B_reg[7]_i_91_n_2\,
      I1 => \Out_B_reg[7]_i_108_n_4\,
      O => \Out_B[7]_i_93_n_0\
    );
\Out_B[7]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A65959A6"
    )
        port map (
      I0 => sPip2_c(6),
      I1 => sPip2_c(7),
      I2 => \ARG0_carry__0_i_9_n_0\,
      I3 => \Out_B_reg[7]_i_91_n_2\,
      I4 => \Out_B_reg[7]_i_94_n_5\,
      O => \Out_B[7]_i_96_n_0\
    );
\Out_B[7]_i_97\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[5]_0\,
      I1 => \Out_B_reg[7]_i_91_n_2\,
      I2 => \Out_B_reg[7]_i_94_n_6\,
      O => \Out_B[7]_i_97_n_0\
    );
\Out_B[7]_i_98\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \^out_c_reg[4]_0\,
      I1 => \Out_B_reg[7]_i_91_n_2\,
      I2 => \Out_B_reg[7]_i_94_n_7\,
      O => \Out_B[7]_i_98_n_0\
    );
\Out_B[7]_i_99\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \ARG0__728_carry_i_16_n_0\,
      I1 => \Out_B_reg[7]_i_91_n_2\,
      I2 => \Out_B_reg[7]_i_95_n_4\,
      O => \Out_B[7]_i_99_n_0\
    );
\Out_B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[0]_2\,
      Q => \^di\(0),
      R => \^sal1\
    );
\Out_B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[1]_2\,
      Q => \^out_b_reg[6]_0\(0),
      R => \^sal1\
    );
\Out_B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[2]_4\,
      Q => \^out_b_reg[6]_0\(1),
      R => \^sal1\
    );
\Out_B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[3]_2\,
      Q => \^out_b_reg[6]_0\(2),
      R => \^sal1\
    );
\Out_B_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[4]_1\,
      Q => \^out_b_reg[6]_0\(3),
      R => \^sal1\
    );
\Out_B_reg[4]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_i_16_n_0\,
      CO(3) => \Out_B_reg[4]_i_10_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[4]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(5),
      DI(2) => ARG00_in(5),
      DI(1) => ARG00_in(5),
      DI(0) => \ARG0__728_carry__0_i_21_n_4\,
      O(3) => \Out_B_reg[4]_i_10_n_4\,
      O(2) => \Out_B_reg[4]_i_10_n_5\,
      O(1) => \Out_B_reg[4]_i_10_n_6\,
      O(0) => \Out_B_reg[4]_i_10_n_7\,
      S(3) => \Out_B[4]_i_15_n_0\,
      S(2) => \Out_B[4]_i_16_n_0\,
      S(1) => \Out_B[4]_i_17_n_0\,
      S(0) => \Out_B[4]_i_18_n_0\
    );
\Out_B_reg[4]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[4]_i_7_n_0\,
      CO(3 downto 2) => \NLW_Out_B_reg[4]_i_5_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ARG00_in(4),
      CO(0) => \NLW_Out_B_reg[4]_i_5_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ARG00_in(5),
      DI(0) => ARG00_in(5),
      O(3 downto 1) => \NLW_Out_B_reg[4]_i_5_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[4]_i_5_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \Out_B[4]_i_8_n_0\,
      S(0) => \Out_B[4]_i_9_n_0\
    );
\Out_B_reg[4]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[4]_i_10_n_0\,
      CO(3) => \Out_B_reg[4]_i_7_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[4]_i_7_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(5),
      DI(2) => ARG00_in(5),
      DI(1) => ARG00_in(5),
      DI(0) => ARG00_in(5),
      O(3) => \Out_B_reg[4]_i_7_n_4\,
      O(2) => \Out_B_reg[4]_i_7_n_5\,
      O(1) => \Out_B_reg[4]_i_7_n_6\,
      O(0) => \Out_B_reg[4]_i_7_n_7\,
      S(3) => \Out_B[4]_i_11_n_0\,
      S(2) => \Out_B[4]_i_12_n_0\,
      S(1) => \Out_B[4]_i_13_n_0\,
      S(0) => \Out_B[4]_i_14_n_0\
    );
\Out_B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[5]_0\,
      Q => \^out_b_reg[6]_0\(4),
      R => \^sal1\
    );
\Out_B_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[6]_2\,
      Q => \^out_b_reg[6]_0\(5),
      R => \^sal1\
    );
\Out_B_reg[6]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[6]_i_13_n_0\,
      CO(3) => \Out_B_reg[6]_i_10_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[6]_i_10_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(6),
      DI(2) => ARG00_in(6),
      DI(1) => ARG00_in(6),
      DI(0) => ARG00_in(6),
      O(3) => \Out_B_reg[6]_i_10_n_4\,
      O(2) => \Out_B_reg[6]_i_10_n_5\,
      O(1) => \Out_B_reg[6]_i_10_n_6\,
      O(0) => \Out_B_reg[6]_i_10_n_7\,
      S(3) => \Out_B[6]_i_14_n_0\,
      S(2) => \Out_B[6]_i_15_n_0\,
      S(1) => \Out_B[6]_i_16_n_0\,
      S(0) => \Out_B[6]_i_17_n_0\
    );
\Out_B_reg[6]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry__0_i_21_n_0\,
      CO(3) => \Out_B_reg[6]_i_13_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[6]_i_13_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => ARG00_in(6),
      DI(2) => ARG00_in(6),
      DI(1) => ARG00_in(6),
      DI(0) => \Out_B_reg[7]_i_38_n_4\,
      O(3) => \Out_B_reg[6]_i_13_n_4\,
      O(2) => \Out_B_reg[6]_i_13_n_5\,
      O(1) => \Out_B_reg[6]_i_13_n_6\,
      O(0) => \Out_B_reg[6]_i_13_n_7\,
      S(3) => \Out_B[6]_i_18_n_0\,
      S(2) => \Out_B[6]_i_19_n_0\,
      S(1) => \Out_B[6]_i_20_n_0\,
      S(0) => \Out_B[6]_i_21_n_0\
    );
\Out_B_reg[6]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[6]_i_10_n_0\,
      CO(3 downto 2) => \NLW_Out_B_reg[6]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ARG00_in(5),
      CO(0) => \NLW_Out_B_reg[6]_i_7_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => ARG00_in(6),
      DI(0) => ARG00_in(6),
      O(3 downto 1) => \NLW_Out_B_reg[6]_i_7_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[6]_i_7_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \Out_B[6]_i_11_n_0\,
      S(0) => \Out_B[6]_i_12_n_0\
    );
\Out_B_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_2\,
      Q => sPip2_b(7),
      R => \^sal1\
    );
\Out_B_reg[7]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_20_n_0\,
      CO(3 downto 1) => \NLW_Out_B_reg[7]_i_10_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Out_B_reg[7]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Out_B_reg[7]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Out_B_reg[7]_i_108\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_94_n_0\,
      CO(3) => \Out_B_reg[7]_i_108_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_108_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_109_n_3\,
      DI(2) => \Out_B_reg[7]_i_109_n_3\,
      DI(1) => \Out_B_reg[7]_i_109_n_3\,
      DI(0) => \Out_B_reg[7]_i_111_n_4\,
      O(3) => \Out_B_reg[7]_i_108_n_4\,
      O(2) => \Out_B_reg[7]_i_108_n_5\,
      O(1) => \Out_B_reg[7]_i_108_n_6\,
      O(0) => \Out_B_reg[7]_i_108_n_7\,
      S(3) => \Out_B[7]_i_121_n_0\,
      S(2) => \Out_B[7]_i_122_n_0\,
      S(1) => \Out_B[7]_i_123_n_0\,
      S(0) => \Out_B[7]_i_124_n_0\
    );
\Out_B_reg[7]_i_109\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_125_n_0\,
      CO(3 downto 1) => \NLW_Out_B_reg[7]_i_109_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Out_B_reg[7]_i_109_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Out_B_reg[7]_i_109_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Out_B_reg[7]_i_111\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_112_n_0\,
      CO(3) => \Out_B_reg[7]_i_111_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_111_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_126_n_5\,
      DI(2) => \Out_B_reg[7]_i_126_n_6\,
      DI(1) => \Out_B_reg[7]_i_126_n_7\,
      DI(0) => \Out_B_reg[7]_i_127_n_4\,
      O(3) => \Out_B_reg[7]_i_111_n_4\,
      O(2) => \Out_B_reg[7]_i_111_n_5\,
      O(1) => \Out_B_reg[7]_i_111_n_6\,
      O(0) => \Out_B_reg[7]_i_111_n_7\,
      S(3) => \Out_B[7]_i_128_n_0\,
      S(2) => \Out_B[7]_i_129_n_0\,
      S(1) => \Out_B[7]_i_130_n_0\,
      S(0) => \Out_B[7]_i_131_n_0\
    );
\Out_B_reg[7]_i_112\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_112_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_112_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_132_n_0\,
      DI(3) => \Out_B_reg[7]_i_127_n_5\,
      DI(2) => \Out_B_reg[7]_i_127_n_6\,
      DI(1) => \Out_B[7]_i_133_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_112_n_4\,
      O(2) => \Out_B_reg[7]_i_112_n_5\,
      O(1) => \Out_B_reg[7]_i_112_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_112_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_134_n_0\,
      S(2) => \Out_B[7]_i_135_n_0\,
      S(1) => \Out_B[7]_i_136_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_21_n_0\,
      CO(3) => \Out_B_reg[7]_i_12_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_12_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_6_n_2\,
      DI(2) => \Out_B_reg[7]_i_6_n_2\,
      DI(1) => \Out_B_reg[7]_i_6_n_2\,
      DI(0) => \Out_B_reg[7]_i_6_n_2\,
      O(3) => \Out_B_reg[7]_i_12_n_4\,
      O(2) => \Out_B_reg[7]_i_12_n_5\,
      O(1) => \Out_B_reg[7]_i_12_n_6\,
      O(0) => \Out_B_reg[7]_i_12_n_7\,
      S(3) => \Out_B[7]_i_22_n_0\,
      S(2) => \Out_B[7]_i_23_n_0\,
      S(1) => \Out_B[7]_i_24_n_0\,
      S(0) => \Out_B[7]_i_25_n_0\
    );
\Out_B_reg[7]_i_125\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_111_n_0\,
      CO(3) => \Out_B_reg[7]_i_125_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_125_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_132_n_0\,
      DI(2) => \Out_B_reg[7]_i_132_n_0\,
      DI(1) => \Out_B_reg[7]_i_132_n_0\,
      DI(0) => \Out_B_reg[7]_i_126_n_4\,
      O(3) => \Out_B_reg[7]_i_125_n_4\,
      O(2) => \Out_B_reg[7]_i_125_n_5\,
      O(1) => \Out_B_reg[7]_i_125_n_6\,
      O(0) => \Out_B_reg[7]_i_125_n_7\,
      S(3) => \Out_B[7]_i_137_n_0\,
      S(2) => \Out_B[7]_i_138_n_0\,
      S(1) => \Out_B[7]_i_139_n_0\,
      S(0) => \Out_B[7]_i_140_n_0\
    );
\Out_B_reg[7]_i_126\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_127_n_0\,
      CO(3) => \Out_B_reg[7]_i_126_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_126_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_141_n_5\,
      DI(2) => \Out_B_reg[7]_i_141_n_6\,
      DI(1) => \Out_B_reg[7]_i_141_n_7\,
      DI(0) => \Out_B_reg[7]_i_142_n_4\,
      O(3) => \Out_B_reg[7]_i_126_n_4\,
      O(2) => \Out_B_reg[7]_i_126_n_5\,
      O(1) => \Out_B_reg[7]_i_126_n_6\,
      O(0) => \Out_B_reg[7]_i_126_n_7\,
      S(3) => \Out_B[7]_i_143_n_0\,
      S(2) => \Out_B[7]_i_144_n_0\,
      S(1) => \Out_B[7]_i_145_n_0\,
      S(0) => \Out_B[7]_i_146_n_0\
    );
\Out_B_reg[7]_i_127\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_127_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_127_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_147_n_1\,
      DI(3) => \Out_B_reg[7]_i_142_n_5\,
      DI(2) => \Out_B_reg[7]_i_142_n_6\,
      DI(1) => \Out_B[7]_i_148_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_127_n_4\,
      O(2) => \Out_B_reg[7]_i_127_n_5\,
      O(1) => \Out_B_reg[7]_i_127_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_127_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_149_n_0\,
      S(2) => \Out_B[7]_i_150_n_0\,
      S(1) => \Out_B[7]_i_151_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_132\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_126_n_0\,
      CO(3) => \Out_B_reg[7]_i_132_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_132_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Out_B_reg[7]_i_147_n_1\,
      DI(1) => \Out_B_reg[7]_i_147_n_1\,
      DI(0) => \Out_B_reg[7]_i_141_n_4\,
      O(3) => \NLW_Out_B_reg[7]_i_132_O_UNCONNECTED\(3),
      O(2) => \Out_B_reg[7]_i_132_n_5\,
      O(1) => \Out_B_reg[7]_i_132_n_6\,
      O(0) => \Out_B_reg[7]_i_132_n_7\,
      S(3) => '1',
      S(2) => \Out_B[7]_i_152_n_0\,
      S(1) => \Out_B[7]_i_153_n_0\,
      S(0) => \Out_B[7]_i_154_n_0\
    );
\Out_B_reg[7]_i_141\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_142_n_0\,
      CO(3) => \Out_B_reg[7]_i_141_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_141_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => \Out_B_reg[7]_i_147_0\(1 downto 0),
      DI(1 downto 0) => O(3 downto 2),
      O(3) => \Out_B_reg[7]_i_141_n_4\,
      O(2) => \Out_B_reg[7]_i_141_n_5\,
      O(1) => \Out_B_reg[7]_i_141_n_6\,
      O(0) => \Out_B_reg[7]_i_141_n_7\,
      S(3) => \Out_B[7]_i_155_n_0\,
      S(2) => \Out_B[7]_i_156_n_0\,
      S(1) => \Out_B[7]_i_157_n_0\,
      S(0) => \Out_B[7]_i_158_n_0\
    );
\Out_B_reg[7]_i_142\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_142_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_142_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_159_n_3\,
      DI(3 downto 2) => O(1 downto 0),
      DI(1) => \Out_B[7]_i_160_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_142_n_4\,
      O(2) => \Out_B_reg[7]_i_142_n_5\,
      O(1) => \Out_B_reg[7]_i_142_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_142_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_161_n_0\,
      S(2) => \Out_B[7]_i_162_n_0\,
      S(1) => \Out_B[7]_i_163_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_147\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_141_n_0\,
      CO(3) => \NLW_Out_B_reg[7]_i_147_CO_UNCONNECTED\(3),
      CO(2) => \Out_B_reg[7]_i_147_n_1\,
      CO(1 downto 0) => \NLW_Out_B_reg[7]_i_147_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Out_B_reg[7]_i_159_n_3\,
      DI(0) => \Out_B_reg[7]_i_147_0\(2),
      O(3 downto 2) => \NLW_Out_B_reg[7]_i_147_O_UNCONNECTED\(3 downto 2),
      O(1) => \Out_B_reg[7]_i_147_n_6\,
      O(0) => \Out_B_reg[7]_i_147_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \Out_B[7]_i_164_n_0\,
      S(0) => \Out_B[7]_i_165_n_0\
    );
\Out_B_reg[7]_i_15\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_26_n_0\,
      CO(3) => \Out_B_reg[7]_i_15_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_15_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_10_n_3\,
      DI(2) => \Out_B_reg[7]_i_10_n_3\,
      DI(1) => \Out_B_reg[7]_i_10_n_3\,
      DI(0) => \Out_B_reg[7]_i_27_n_4\,
      O(3) => \Out_B_reg[7]_i_15_n_4\,
      O(2) => \Out_B_reg[7]_i_15_n_5\,
      O(1) => \Out_B_reg[7]_i_15_n_6\,
      O(0) => \Out_B_reg[7]_i_15_n_7\,
      S(3) => \Out_B[7]_i_28_n_0\,
      S(2) => \Out_B[7]_i_29_n_0\,
      S(1) => \Out_B[7]_i_30_n_0\,
      S(0) => \Out_B[7]_i_31_n_0\
    );
\Out_B_reg[7]_i_159\: unisim.vcomponents.CARRY4
     port map (
      CI => CO(0),
      CO(3 downto 1) => \NLW_Out_B_reg[7]_i_159_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \Out_B_reg[7]_i_159_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_Out_B_reg[7]_i_159_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\Out_B_reg[7]_i_20\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_32_n_0\,
      CO(3) => \Out_B_reg[7]_i_20_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_20_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_33_n_0\,
      DI(2) => \Out_B_reg[7]_i_33_n_0\,
      DI(1) => \Out_B_reg[7]_i_33_n_0\,
      DI(0) => \Out_B_reg[7]_i_33_n_0\,
      O(3) => \Out_B_reg[7]_i_20_n_4\,
      O(2) => \Out_B_reg[7]_i_20_n_5\,
      O(1) => \Out_B_reg[7]_i_20_n_6\,
      O(0) => \Out_B_reg[7]_i_20_n_7\,
      S(3) => \Out_B[7]_i_34_n_0\,
      S(2) => \Out_B[7]_i_35_n_0\,
      S(1) => \Out_B[7]_i_36_n_0\,
      S(0) => \Out_B[7]_i_37_n_0\
    );
\Out_B_reg[7]_i_21\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_38_n_0\,
      CO(3) => \Out_B_reg[7]_i_21_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_21_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_6_n_2\,
      DI(2) => \Out_B_reg[7]_i_6_n_2\,
      DI(1) => \Out_B_reg[7]_i_6_n_2\,
      DI(0) => \Out_B_reg[7]_i_26_n_4\,
      O(3) => \Out_B_reg[7]_i_21_n_4\,
      O(2) => \Out_B_reg[7]_i_21_n_5\,
      O(1) => \Out_B_reg[7]_i_21_n_6\,
      O(0) => \Out_B_reg[7]_i_21_n_7\,
      S(3) => \Out_B[7]_i_39_n_0\,
      S(2) => \Out_B[7]_i_40_n_0\,
      S(1) => \Out_B[7]_i_41_n_0\,
      S(0) => \Out_B[7]_i_42_n_0\
    );
\Out_B_reg[7]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_43_n_0\,
      CO(3) => \Out_B_reg[7]_i_26_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_26_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_27_n_5\,
      DI(2) => \Out_B_reg[7]_i_27_n_6\,
      DI(1) => \Out_B_reg[7]_i_27_n_7\,
      DI(0) => \Out_B_reg[7]_i_44_n_4\,
      O(3) => \Out_B_reg[7]_i_26_n_4\,
      O(2) => \Out_B_reg[7]_i_26_n_5\,
      O(1) => \Out_B_reg[7]_i_26_n_6\,
      O(0) => \Out_B_reg[7]_i_26_n_7\,
      S(3) => \Out_B[7]_i_45_n_0\,
      S(2) => \Out_B[7]_i_46_n_0\,
      S(1) => \Out_B[7]_i_47_n_0\,
      S(0) => \Out_B[7]_i_48_n_0\
    );
\Out_B_reg[7]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_44_n_0\,
      CO(3) => \Out_B_reg[7]_i_27_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_27_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_49_n_5\,
      DI(2) => \Out_B_reg[7]_i_49_n_6\,
      DI(1) => \Out_B_reg[7]_i_49_n_7\,
      DI(0) => \Out_B_reg[7]_i_50_n_4\,
      O(3) => \Out_B_reg[7]_i_27_n_4\,
      O(2) => \Out_B_reg[7]_i_27_n_5\,
      O(1) => \Out_B_reg[7]_i_27_n_6\,
      O(0) => \Out_B_reg[7]_i_27_n_7\,
      S(3) => \Out_B[7]_i_51_n_0\,
      S(2) => \Out_B[7]_i_52_n_0\,
      S(1) => \Out_B[7]_i_53_n_0\,
      S(0) => \Out_B[7]_i_54_n_0\
    );
\Out_B_reg[7]_i_32\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_27_n_0\,
      CO(3) => \Out_B_reg[7]_i_32_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_32_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_33_n_0\,
      DI(2) => \Out_B_reg[7]_i_33_n_0\,
      DI(1) => \Out_B_reg[7]_i_33_n_0\,
      DI(0) => \Out_B_reg[7]_i_49_n_4\,
      O(3) => \Out_B_reg[7]_i_32_n_4\,
      O(2) => \Out_B_reg[7]_i_32_n_5\,
      O(1) => \Out_B_reg[7]_i_32_n_6\,
      O(0) => \Out_B_reg[7]_i_32_n_7\,
      S(3) => \Out_B[7]_i_55_n_0\,
      S(2) => \Out_B[7]_i_56_n_0\,
      S(1) => \Out_B[7]_i_57_n_0\,
      S(0) => \Out_B[7]_i_58_n_0\
    );
\Out_B_reg[7]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_59_n_0\,
      CO(3) => \Out_B_reg[7]_i_33_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_33_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Out_B_reg[7]_i_60_n_1\,
      DI(1) => \Out_B_reg[7]_i_60_n_1\,
      DI(0) => \Out_B_reg[7]_i_60_n_1\,
      O(3) => \NLW_Out_B_reg[7]_i_33_O_UNCONNECTED\(3),
      O(2) => \Out_B_reg[7]_i_33_n_5\,
      O(1) => \Out_B_reg[7]_i_33_n_6\,
      O(0) => \Out_B_reg[7]_i_33_n_7\,
      S(3) => '1',
      S(2) => \Out_B[7]_i_61_n_0\,
      S(1) => \Out_B[7]_i_62_n_0\,
      S(0) => \Out_B[7]_i_63_n_0\
    );
\Out_B_reg[7]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \ARG0__728_carry_i_62_n_0\,
      CO(3) => \Out_B_reg[7]_i_38_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_38_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_26_n_5\,
      DI(2) => \Out_B_reg[7]_i_26_n_6\,
      DI(1) => \Out_B_reg[7]_i_26_n_7\,
      DI(0) => \Out_B_reg[7]_i_43_n_4\,
      O(3) => \Out_B_reg[7]_i_38_n_4\,
      O(2) => \Out_B_reg[7]_i_38_n_5\,
      O(1) => \Out_B_reg[7]_i_38_n_6\,
      O(0) => \Out_B_reg[7]_i_38_n_7\,
      S(3) => \Out_B[7]_i_64_n_0\,
      S(2) => \Out_B[7]_i_65_n_0\,
      S(1) => \Out_B[7]_i_66_n_0\,
      S(0) => \Out_B[7]_i_67_n_0\
    );
\Out_B_reg[7]_i_43\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_43_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_43_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_10_n_3\,
      DI(3) => \Out_B_reg[7]_i_44_n_5\,
      DI(2) => \Out_B_reg[7]_i_44_n_6\,
      DI(1) => \Out_B[7]_i_68_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_43_n_4\,
      O(2) => \Out_B_reg[7]_i_43_n_5\,
      O(1) => \Out_B_reg[7]_i_43_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_43_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_69_n_0\,
      S(2) => \Out_B[7]_i_70_n_0\,
      S(1) => \Out_B[7]_i_71_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_44\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_44_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_44_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_33_n_0\,
      DI(3) => \Out_B_reg[7]_i_50_n_5\,
      DI(2) => \Out_B_reg[7]_i_50_n_6\,
      DI(1) => \Out_B[7]_i_72_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_44_n_4\,
      O(2) => \Out_B_reg[7]_i_44_n_5\,
      O(1) => \Out_B_reg[7]_i_44_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_44_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_73_n_0\,
      S(2) => \Out_B[7]_i_74_n_0\,
      S(1) => \Out_B[7]_i_75_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_49\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_50_n_0\,
      CO(3) => \Out_B_reg[7]_i_49_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_49_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_76_n_5\,
      DI(2) => \Out_B_reg[7]_i_76_n_6\,
      DI(1) => \Out_B_reg[7]_i_76_n_7\,
      DI(0) => \Out_B_reg[7]_i_77_n_4\,
      O(3) => \Out_B_reg[7]_i_49_n_4\,
      O(2) => \Out_B_reg[7]_i_49_n_5\,
      O(1) => \Out_B_reg[7]_i_49_n_6\,
      O(0) => \Out_B_reg[7]_i_49_n_7\,
      S(3) => \Out_B[7]_i_78_n_0\,
      S(2) => \Out_B[7]_i_79_n_0\,
      S(1) => \Out_B[7]_i_80_n_0\,
      S(0) => \Out_B[7]_i_81_n_0\
    );
\Out_B_reg[7]_i_50\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_50_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_50_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_60_n_1\,
      DI(3) => \Out_B_reg[7]_i_77_n_5\,
      DI(2) => \Out_B_reg[7]_i_77_n_6\,
      DI(1) => \Out_B[7]_i_82_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_50_n_4\,
      O(2) => \Out_B_reg[7]_i_50_n_5\,
      O(1) => \Out_B_reg[7]_i_50_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_50_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_83_n_0\,
      S(2) => \Out_B[7]_i_84_n_0\,
      S(1) => \Out_B[7]_i_85_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_49_n_0\,
      CO(3) => \Out_B_reg[7]_i_59_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_59_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_60_n_1\,
      DI(2) => \Out_B_reg[7]_i_60_n_1\,
      DI(1) => \Out_B_reg[7]_i_60_n_1\,
      DI(0) => \Out_B_reg[7]_i_76_n_4\,
      O(3) => \Out_B_reg[7]_i_59_n_4\,
      O(2) => \Out_B_reg[7]_i_59_n_5\,
      O(1) => \Out_B_reg[7]_i_59_n_6\,
      O(0) => \Out_B_reg[7]_i_59_n_7\,
      S(3) => \Out_B[7]_i_86_n_0\,
      S(2) => \Out_B[7]_i_87_n_0\,
      S(1) => \Out_B[7]_i_88_n_0\,
      S(0) => \Out_B[7]_i_89_n_0\
    );
\Out_B_reg[7]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_9_n_0\,
      CO(3 downto 2) => \NLW_Out_B_reg[7]_i_6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Out_B_reg[7]_i_6_n_2\,
      CO(0) => \NLW_Out_B_reg[7]_i_6_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Out_B_reg[7]_i_10_n_3\,
      O(3 downto 1) => \NLW_Out_B_reg[7]_i_6_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[7]_i_6_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \Out_B[7]_i_11_n_0\
    );
\Out_B_reg[7]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_90_n_0\,
      CO(3) => \NLW_Out_B_reg[7]_i_60_CO_UNCONNECTED\(3),
      CO(2) => \Out_B_reg[7]_i_60_n_1\,
      CO(1 downto 0) => \NLW_Out_B_reg[7]_i_60_CO_UNCONNECTED\(1 downto 0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Out_B_reg[7]_i_91_n_2\,
      DI(0) => \Out_B_reg[7]_i_91_n_2\,
      O(3 downto 2) => \NLW_Out_B_reg[7]_i_60_O_UNCONNECTED\(3 downto 2),
      O(1) => \Out_B_reg[7]_i_60_n_6\,
      O(0) => \Out_B_reg[7]_i_60_n_7\,
      S(3 downto 2) => B"01",
      S(1) => \Out_B[7]_i_92_n_0\,
      S(0) => \Out_B[7]_i_93_n_0\
    );
\Out_B_reg[7]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_12_n_0\,
      CO(3 downto 2) => \NLW_Out_B_reg[7]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => ARG00_in(6),
      CO(0) => \NLW_Out_B_reg[7]_i_7_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \Out_B_reg[7]_i_6_n_2\,
      DI(0) => \Out_B_reg[7]_i_6_n_2\,
      O(3 downto 1) => \NLW_Out_B_reg[7]_i_7_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[7]_i_7_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \Out_B[7]_i_13_n_0\,
      S(0) => \Out_B[7]_i_14_n_0\
    );
\Out_B_reg[7]_i_76\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_77_n_0\,
      CO(3) => \Out_B_reg[7]_i_76_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_76_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_94_n_5\,
      DI(2) => \Out_B_reg[7]_i_94_n_6\,
      DI(1) => \Out_B_reg[7]_i_94_n_7\,
      DI(0) => \Out_B_reg[7]_i_95_n_4\,
      O(3) => \Out_B_reg[7]_i_76_n_4\,
      O(2) => \Out_B_reg[7]_i_76_n_5\,
      O(1) => \Out_B_reg[7]_i_76_n_6\,
      O(0) => \Out_B_reg[7]_i_76_n_7\,
      S(3) => \Out_B[7]_i_96_n_0\,
      S(2) => \Out_B[7]_i_97_n_0\,
      S(1) => \Out_B[7]_i_98_n_0\,
      S(0) => \Out_B[7]_i_99_n_0\
    );
\Out_B_reg[7]_i_77\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_77_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_77_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_91_n_2\,
      DI(3) => \Out_B_reg[7]_i_95_n_5\,
      DI(2) => \Out_B_reg[7]_i_95_n_6\,
      DI(1) => \Out_B[7]_i_100_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_77_n_4\,
      O(2) => \Out_B_reg[7]_i_77_n_5\,
      O(1) => \Out_B_reg[7]_i_77_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_77_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_101_n_0\,
      S(2) => \Out_B[7]_i_102_n_0\,
      S(1) => \Out_B[7]_i_103_n_0\,
      S(0) => '1'
    );
\Out_B_reg[7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_15_n_0\,
      CO(3) => \Out_B_reg[7]_i_9_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_9_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_10_n_3\,
      DI(2) => \Out_B_reg[7]_i_10_n_3\,
      DI(1) => \Out_B_reg[7]_i_10_n_3\,
      DI(0) => \Out_B_reg[7]_i_10_n_3\,
      O(3) => \Out_B_reg[7]_i_9_n_4\,
      O(2) => \Out_B_reg[7]_i_9_n_5\,
      O(1) => \Out_B_reg[7]_i_9_n_6\,
      O(0) => \Out_B_reg[7]_i_9_n_7\,
      S(3) => \Out_B[7]_i_16_n_0\,
      S(2) => \Out_B[7]_i_17_n_0\,
      S(1) => \Out_B[7]_i_18_n_0\,
      S(0) => \Out_B[7]_i_19_n_0\
    );
\Out_B_reg[7]_i_90\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_76_n_0\,
      CO(3) => \Out_B_reg[7]_i_90_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_90_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_91_n_2\,
      DI(2) => \Out_B_reg[7]_i_91_n_2\,
      DI(1) => \Out_B_reg[7]_i_91_n_2\,
      DI(0) => \Out_B_reg[7]_i_94_n_4\,
      O(3) => \Out_B_reg[7]_i_90_n_4\,
      O(2) => \Out_B_reg[7]_i_90_n_5\,
      O(1) => \Out_B_reg[7]_i_90_n_6\,
      O(0) => \Out_B_reg[7]_i_90_n_7\,
      S(3) => \Out_B[7]_i_104_n_0\,
      S(2) => \Out_B[7]_i_105_n_0\,
      S(1) => \Out_B[7]_i_106_n_0\,
      S(0) => \Out_B[7]_i_107_n_0\
    );
\Out_B_reg[7]_i_91\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_108_n_0\,
      CO(3 downto 2) => \NLW_Out_B_reg[7]_i_91_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \Out_B_reg[7]_i_91_n_2\,
      CO(0) => \NLW_Out_B_reg[7]_i_91_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \Out_B_reg[7]_i_109_n_3\,
      O(3 downto 1) => \NLW_Out_B_reg[7]_i_91_O_UNCONNECTED\(3 downto 1),
      O(0) => \Out_B_reg[7]_i_91_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \Out_B[7]_i_110_n_0\
    );
\Out_B_reg[7]_i_94\: unisim.vcomponents.CARRY4
     port map (
      CI => \Out_B_reg[7]_i_95_n_0\,
      CO(3) => \Out_B_reg[7]_i_94_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_94_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3) => \Out_B_reg[7]_i_111_n_5\,
      DI(2) => \Out_B_reg[7]_i_111_n_6\,
      DI(1) => \Out_B_reg[7]_i_111_n_7\,
      DI(0) => \Out_B_reg[7]_i_112_n_4\,
      O(3) => \Out_B_reg[7]_i_94_n_4\,
      O(2) => \Out_B_reg[7]_i_94_n_5\,
      O(1) => \Out_B_reg[7]_i_94_n_6\,
      O(0) => \Out_B_reg[7]_i_94_n_7\,
      S(3) => \Out_B[7]_i_113_n_0\,
      S(2) => \Out_B[7]_i_114_n_0\,
      S(1) => \Out_B[7]_i_115_n_0\,
      S(0) => \Out_B[7]_i_116_n_0\
    );
\Out_B_reg[7]_i_95\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \Out_B_reg[7]_i_95_n_0\,
      CO(2 downto 0) => \NLW_Out_B_reg[7]_i_95_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \Out_B_reg[7]_i_109_n_3\,
      DI(3) => \Out_B_reg[7]_i_112_n_5\,
      DI(2) => \Out_B_reg[7]_i_112_n_6\,
      DI(1) => \Out_B[7]_i_117_n_0\,
      DI(0) => '0',
      O(3) => \Out_B_reg[7]_i_95_n_4\,
      O(2) => \Out_B_reg[7]_i_95_n_5\,
      O(1) => \Out_B_reg[7]_i_95_n_6\,
      O(0) => \NLW_Out_B_reg[7]_i_95_O_UNCONNECTED\(0),
      S(3) => \Out_B[7]_i_118_n_0\,
      S(2) => \Out_B[7]_i_119_n_0\,
      S(1) => \Out_B[7]_i_120_n_0\,
      S(0) => '1'
    );
\Out_C_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(0),
      Q => sPip2_c(0),
      R => \^sal1\
    );
\Out_C_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(1),
      Q => sPip2_c(1),
      R => \^sal1\
    );
\Out_C_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(2),
      Q => sPip2_c(2),
      R => \^sal1\
    );
\Out_C_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(3),
      Q => sPip2_c(3),
      R => \^sal1\
    );
\Out_C_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(4),
      Q => sPip2_c(4),
      R => \^sal1\
    );
\Out_C_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(5),
      Q => sPip2_c(5),
      R => \^sal1\
    );
\Out_C_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(6),
      Q => sPip2_c(6),
      R => \^sal1\
    );
\Out_C_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => Qb_micro_OBUF(7),
      Q => sPip2_c(7),
      R => \^sal1\
    );
\Out_OP_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sPip1_op(0),
      Q => \^spip2_op\(0),
      R => \^sal1\
    );
\Out_OP_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sPip1_op(1),
      Q => \^spip2_op\(1),
      R => \^sal1\
    );
\Out_OP_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sPip1_op(2),
      Q => \^spip2_op\(2),
      R => \^sal1\
    );
\Out_OP_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sPip1_op(3),
      Q => \^spip2_op\(3),
      R => \^sal1\
    );
\count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474777744744444"
    )
        port map (
      I0 => \^sal1\,
      I1 => \count_reg[0]\,
      I2 => \count[7]_i_4_n_0\,
      I3 => \count_reg[0]_0\,
      I4 => Q(2),
      I5 => \count[7]_i_6_n_0\,
      O => E(0)
    );
\count[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => \^spip2_op\(3),
      I1 => \^spip2_op\(0),
      I2 => \^spip2_op\(1),
      I3 => \^spip2_op\(2),
      O => \^out_op_reg[3]_0\
    );
\count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBBBFBFAAAAAAAA"
    )
        port map (
      I0 => \Out_B[7]_i_4_n_0\,
      I1 => \count[7]_i_8_n_0\,
      I2 => \count_reg[0]_4\,
      I3 => \count_reg[0]_5\,
      I4 => Q(1),
      I5 => \^out_a_reg[5]_0\(2),
      O => \count[7]_i_4_n_0\
    );
\count[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF10FF1010"
    )
        port map (
      I0 => \count_reg[0]_1\,
      I1 => \^out_a_reg[5]_0\(2),
      I2 => \count_reg[0]_2\,
      I3 => \count_reg[0]_3\,
      I4 => \Out_B[7]_i_3_n_0\,
      I5 => \^out_op_reg[3]_0\,
      O => \count[7]_i_6_n_0\
    );
\count[7]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F28241F1FFFFFFFF"
    )
        port map (
      I0 => \^out_a_reg[5]_0\(0),
      I1 => \^out_a_reg[5]_0\(1),
      I2 => Out_B(1),
      I3 => Q(0),
      I4 => Out_B(0),
      I5 => Q(1),
      O => \count[7]_i_8_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(7),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => sPip2_b(7),
      O => \Out_C_reg[7]_2\(3)
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \Out_B_reg[6]_1\(0),
      I1 => sPip2_c(6),
      I2 => \^out_b_reg[6]_0\(5),
      O => \Out_C_reg[7]_2\(2)
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(5),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \^out_b_reg[6]_0\(4),
      O => \Out_C_reg[7]_2\(1)
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(4),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \^out_b_reg[6]_0\(3),
      O => \Out_C_reg[7]_2\(0)
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \^out_b_reg[6]_0\(2),
      O => \^out_c_reg[3]_3\(3)
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \^out_b_reg[6]_0\(1),
      O => \^out_c_reg[3]_3\(2)
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => sPip2_c(1),
      I1 => \Out_B_reg[6]_1\(0),
      I2 => \^out_b_reg[6]_0\(0),
      O => \^out_c_reg[3]_3\(1)
    );
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(3),
      I1 => sPip2_c(1),
      I2 => \^out_b_reg[6]_0\(4),
      I3 => sPip2_c(0),
      I4 => sPip2_c(2),
      I5 => \^out_b_reg[6]_0\(2),
      O => \^out_b_reg[4]_0\(2)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \^out_b_reg[6]_0\(3),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^out_b_reg[6]_0\(4),
      O => \multOp__0_carry__0_i_11_n_0\
    );
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \^out_b_reg[6]_0\(1),
      O => \^out_c_reg[2]_0\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^out_b_reg[6]_0\(3),
      I2 => \^out_b_reg[6]_0\(2),
      I3 => sPip2_c(1),
      I4 => \^out_b_reg[6]_0\(1),
      I5 => sPip2_c(2),
      O => \^out_b_reg[4]_0\(1)
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => sPip2_c(1),
      I1 => \^out_b_reg[6]_0\(1),
      I2 => \^out_b_reg[6]_0\(0),
      I3 => sPip2_c(2),
      I4 => \^out_b_reg[6]_0\(2),
      I5 => sPip2_c(0),
      O => \^out_b_reg[4]_0\(0)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__0_carry__0_i_8_n_0\,
      I1 => \multOp__0_carry__0_i_9_n_0\,
      O => \Out_C_reg[0]_0\(3)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^out_b_reg[4]_0\(2),
      I1 => \^out_b_reg[6]_0\(4),
      I2 => sPip2_c(1),
      I3 => \multOp__0_carry__0_i_10_n_0\,
      I4 => sPip2_c(0),
      I5 => \^out_b_reg[6]_0\(5),
      O => \Out_C_reg[0]_0\(2)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^out_b_reg[4]_0\(1),
      I1 => \^out_b_reg[6]_0\(3),
      I2 => sPip2_c(1),
      I3 => \multOp__0_carry__0_i_11_n_0\,
      I4 => sPip2_c(2),
      I5 => \^out_b_reg[6]_0\(2),
      O => \Out_C_reg[0]_0\(1)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A95956A956A956A"
    )
        port map (
      I0 => \^out_b_reg[4]_0\(0),
      I1 => \^out_b_reg[6]_0\(2),
      I2 => sPip2_c(1),
      I3 => \^out_c_reg[2]_0\,
      I4 => sPip2_c(0),
      I5 => \^out_b_reg[6]_0\(3),
      O => \Out_C_reg[0]_0\(0)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^out_b_reg[6]_0\(5),
      I2 => \^out_b_reg[6]_0\(4),
      I3 => sPip2_c(1),
      I4 => \^out_b_reg[6]_0\(3),
      I5 => sPip2_c(2),
      O => \multOp__0_carry__0_i_8_n_0\
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => sPip2_b(7),
      I1 => sPip2_c(0),
      I2 => sPip2_c(1),
      I3 => \^out_b_reg[6]_0\(5),
      I4 => sPip2_c(2),
      I5 => \^out_b_reg[6]_0\(4),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(2),
      I1 => sPip2_c(0),
      I2 => sPip2_c(1),
      I3 => \^out_b_reg[6]_0\(1),
      I4 => sPip2_c(2),
      I5 => \^out_b_reg[6]_0\(0),
      O => \Out_B_reg[3]_0\(2)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(1),
      I2 => \^di\(0),
      I3 => sPip2_c(2),
      O => \Out_B_reg[3]_0\(1)
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^out_b_reg[6]_0\(0),
      O => \Out_B_reg[3]_0\(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A3F953F6AC06AC0"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(1),
      I1 => sPip2_c(0),
      I2 => \^out_b_reg[6]_0\(2),
      I3 => sPip2_c(1),
      I4 => \^di\(0),
      I5 => \multOp__0_carry_i_8_n_0\,
      O => \Out_B_reg[2]_1\(3)
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \^di\(0),
      I2 => sPip2_c(1),
      I3 => \^out_b_reg[6]_0\(0),
      I4 => \^out_b_reg[6]_0\(1),
      I5 => sPip2_c(0),
      O => \Out_B_reg[2]_1\(2)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(0),
      I2 => \^di\(0),
      I3 => sPip2_c(1),
      O => \Out_B_reg[2]_1\(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(0),
      I1 => \^di\(0),
      O => \Out_B_reg[2]_1\(0)
    );
\multOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(2),
      I1 => \^out_b_reg[6]_0\(0),
      O => \multOp__0_carry_i_8_n_0\
    );
\multOp__22_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"077F7F7FF8808080"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(1),
      I1 => sPip2_c(4),
      I2 => \^out_c_reg[3]_1\,
      I3 => sPip2_c(5),
      I4 => \^out_b_reg[6]_0\(0),
      I5 => \multOp__22_carry__0_i_3_n_0\,
      O => \Out_B_reg[2]_2\(0)
    );
\multOp__22_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => \^out_b_reg[6]_0\(2),
      O => \^out_c_reg[3]_1\
    );
\multOp__22_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(3),
      I1 => sPip2_c(3),
      I2 => sPip2_c(4),
      I3 => \^out_b_reg[6]_0\(2),
      I4 => sPip2_c(5),
      I5 => \^out_b_reg[6]_0\(1),
      O => \multOp__22_carry__0_i_3_n_0\
    );
\multOp__22_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(1),
      I1 => sPip2_c(4),
      I2 => sPip2_c(3),
      I3 => \^out_b_reg[6]_0\(2),
      I4 => sPip2_c(5),
      I5 => \^out_b_reg[6]_0\(0),
      O => \Out_B_reg[2]_0\(2)
    );
\multOp__22_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(4),
      I2 => \^di\(0),
      I3 => sPip2_c(5),
      O => \Out_B_reg[2]_0\(1)
    );
\multOp__22_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => \^out_b_reg[6]_0\(0),
      O => \Out_B_reg[2]_0\(0)
    );
\multOp__22_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7877877778887888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(2),
      I1 => sPip2_c(3),
      I2 => \^out_b_reg[6]_0\(1),
      I3 => sPip2_c(4),
      I4 => \^di\(0),
      I5 => \multOp__22_carry_i_8_n_0\,
      O => S(3)
    );
\multOp__22_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => sPip2_c(5),
      I1 => \^di\(0),
      I2 => sPip2_c(4),
      I3 => \^out_b_reg[6]_0\(0),
      I4 => \^out_b_reg[6]_0\(1),
      I5 => sPip2_c(3),
      O => S(2)
    );
\multOp__22_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(3),
      I2 => \^di\(0),
      I3 => sPip2_c(4),
      O => S(1)
    );
\multOp__22_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(3),
      I1 => \^di\(0),
      O => S(0)
    );
\multOp__22_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sPip2_c(5),
      I1 => \^out_b_reg[6]_0\(0),
      O => \multOp__22_carry_i_8_n_0\
    );
\multOp__35_carry__0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999666"
    )
        port map (
      I0 => \multOp__35_carry__0_0\(0),
      I1 => \multOp__35_carry__0\(3),
      I2 => sPip2_c(7),
      I3 => \^di\(0),
      I4 => \multOp__35_carry__0_i_2_n_0\,
      O => \Out_C_reg[7]_4\(0)
    );
\multOp__35_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^out_b_reg[6]_0\(0),
      I1 => sPip2_c(6),
      I2 => \multOp__35_carry__0\(2),
      I3 => \multOp__35_carry__0_i_1_0\(2),
      O => \multOp__35_carry__0_i_2_n_0\
    );
\multOp__35_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__35_carry__0\(2),
      I1 => \multOp__35_carry__0_i_1_0\(2),
      O => \multOp__22_carry\(0)
    );
\multOp__35_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \multOp__35_carry__0_i_1_0\(2),
      I1 => \multOp__35_carry__0\(2),
      I2 => \^di\(0),
      I3 => sPip2_c(6),
      O => \Out_B_reg[0]_0\(2)
    );
\multOp__35_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__35_carry__0\(1),
      I1 => \multOp__35_carry__0_i_1_0\(1),
      O => \Out_B_reg[0]_0\(1)
    );
\multOp__35_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \multOp__35_carry__0\(0),
      I1 => \multOp__35_carry__0_i_1_0\(0),
      O => \Out_B_reg[0]_0\(0)
    );
\sLC_ALU_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFB"
    )
        port map (
      I0 => \^spip2_op\(2),
      I1 => \^spip2_op\(1),
      I2 => \^spip2_op\(3),
      I3 => \^spip2_op\(0),
      O => \Out_OP_reg[3]_2\(0)
    );
\sLC_ALU_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EABF"
    )
        port map (
      I0 => \^spip2_op\(2),
      I1 => \^spip2_op\(3),
      I2 => \^spip2_op\(1),
      I3 => \^spip2_op\(0),
      O => \Out_OP_reg[3]_2\(1)
    );
\sLC_ALU_reg[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA9"
    )
        port map (
      I0 => \^spip2_op\(3),
      I1 => \^spip2_op\(0),
      I2 => \^spip2_op\(1),
      I3 => \^spip2_op\(2),
      O => \Out_OP_reg[3]_2\(2)
    );
\sLC_ALU_reg[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02FE"
    )
        port map (
      I0 => \^spip2_op\(3),
      I1 => \^spip2_op\(1),
      I2 => \^spip2_op\(0),
      I3 => \^spip2_op\(2),
      O => \^out_op_reg[3]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipeline_0 is
  port (
    \Out_C_reg[1]\ : out STD_LOGIC;
    \Out_A_reg[0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Out_B_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Out_OP_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_OP_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_OP_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_OP_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_OP_reg[0]_3\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_OP_reg[3]_1\ : out STD_LOGIC;
    \count[7]_i_6\ : in STD_LOGIC;
    \count[7]_i_6_0\ : in STD_LOGIC;
    Out_C : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[5]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Out_B : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Out_B_reg[3]_0\ : in STD_LOGIC;
    \Out_B_reg[6]_0\ : in STD_LOGIC;
    \Out_B_reg[7]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B[7]_i_4__0_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B[7]_i_4__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[7]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[2]_0\ : in STD_LOGIC;
    \Out_B_reg[2]_1\ : in STD_LOGIC;
    \Out_B_reg[4]_0\ : in STD_LOGIC;
    \Out_B_reg[4]_1\ : in STD_LOGIC;
    \Out_B_reg[1]_0\ : in STD_LOGIC;
    \Out_B_reg[0]_0\ : in STD_LOGIC;
    \Out_B_reg[0]_1\ : in STD_LOGIC;
    \Out_B_reg[5]_0\ : in STD_LOGIC;
    \Out_B_reg[5]_1\ : in STD_LOGIC;
    \Out_B_reg[7]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_B_reg[7]_4\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B[7]_i_2__0_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Out_B[7]_i_2__0_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \Out_B_reg[7]_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \Out_OP_reg[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Pipeline_0 : entity is "Pipeline";
end Pipeline_0;

architecture STRUCTURE of Pipeline_0 is
  signal \Out_B[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[1]_i_2_n_0\ : STD_LOGIC;
  signal \Out_B[1]_i_4_n_0\ : STD_LOGIC;
  signal \Out_B[1]_i_5_n_0\ : STD_LOGIC;
  signal \Out_B[3]_i_2_n_0\ : STD_LOGIC;
  signal \Out_B[3]_i_3_n_0\ : STD_LOGIC;
  signal \Out_B[3]_i_5_n_0\ : STD_LOGIC;
  signal \Out_B[4]_i_3_n_0\ : STD_LOGIC;
  signal \Out_B[5]_i_2_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_4_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_5_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_6__0_n_0\ : STD_LOGIC;
  signal \Out_B[6]_i_7_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_3__0_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_4__0_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_5__0_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_6__0_n_0\ : STD_LOGIC;
  signal \Out_B[7]_i_7_n_0\ : STD_LOGIC;
  signal \^out_b_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^out_op_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \count[7]_i_17_n_0\ : STD_LOGIC;
  signal \count[7]_i_18_n_0\ : STD_LOGIC;
  signal \count[7]_i_19_n_0\ : STD_LOGIC;
  signal \reg[255][7]_i_2_n_0\ : STD_LOGIC;
begin
  \Out_B_reg[7]_0\(7 downto 0) <= \^out_b_reg[7]_0\(7 downto 0);
  \Out_OP_reg[3]_0\(3 downto 0) <= \^out_op_reg[3]_0\(3 downto 0);
  Q(2 downto 0) <= \^q\(2 downto 0);
\Out_A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\Out_A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\Out_A_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[5]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\Out_B[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDCCD0CCD0CCD0CC"
    )
        port map (
      I0 => \Out_B_reg[0]_0\,
      I1 => \^out_b_reg[7]_0\(0),
      I2 => \Out_B[0]_i_3__0_n_0\,
      I3 => \Out_B[7]_i_5__0_n_0\,
      I4 => \Out_B[4]_i_3_n_0\,
      I5 => \Out_B_reg[0]_1\,
      O => D(0)
    );
\Out_B[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA8A0A8A"
    )
        port map (
      I0 => \Out_B[7]_i_3__0_n_0\,
      I1 => \Out_B[7]_i_2__0_1\(0),
      I2 => \^out_b_reg[7]_0\(0),
      I3 => \^out_b_reg[7]_0\(1),
      I4 => \Out_B_reg[7]_4\(0),
      I5 => \^out_b_reg[7]_0\(5),
      O => \Out_B[0]_i_3__0_n_0\
    );
\Out_B[1]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2F2F300"
    )
        port map (
      I0 => \Out_B[1]_i_2_n_0\,
      I1 => \Out_B_reg[1]_0\,
      I2 => \^out_b_reg[7]_0\(5),
      I3 => \^out_b_reg[7]_0\(1),
      I4 => \Out_B[7]_i_5__0_n_0\,
      I5 => \Out_B[1]_i_4_n_0\,
      O => D(1)
    );
\Out_B[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA80AA"
    )
        port map (
      I0 => \Out_B[7]_i_3__0_n_0\,
      I1 => \Out_B_reg[7]_4\(1),
      I2 => \^out_b_reg[7]_0\(0),
      I3 => \^out_b_reg[7]_0\(1),
      I4 => \Out_B_reg[7]_3\(0),
      O => \Out_B[1]_i_2_n_0\
    );
\Out_B[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000220AAAAAAAAA"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(5),
      I1 => \Out_B[7]_i_4__0_0\(0),
      I2 => \Out_B[7]_i_4__0_1\(0),
      I3 => \^out_b_reg[7]_0\(0),
      I4 => \^out_b_reg[7]_0\(1),
      I5 => \Out_B[1]_i_5_n_0\,
      O => \Out_B[1]_i_4_n_0\
    );
\Out_B[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FB3BFFFFFFFF"
    )
        port map (
      I0 => \Out_B_reg[7]_2\(0),
      I1 => \^out_b_reg[7]_0\(1),
      I2 => \^out_b_reg[7]_0\(0),
      I3 => \Out_B_reg[7]_1\(0),
      I4 => \Out_B[5]_i_2_n_0\,
      I5 => \Out_B[7]_i_5__0_n_0\,
      O => \Out_B[1]_i_5_n_0\
    );
\Out_B[2]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22F2FFFF22F222F2"
    )
        port map (
      I0 => \Out_B[4]_i_3_n_0\,
      I1 => \Out_B_reg[2]_0\,
      I2 => \^out_b_reg[7]_0\(2),
      I3 => \Out_B[7]_i_5__0_n_0\,
      I4 => \Out_B_reg[2]_1\,
      I5 => \Out_B[6]_i_4_n_0\,
      O => D(2)
    );
\Out_B[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F4F4F44"
    )
        port map (
      I0 => \Out_B[7]_i_5__0_n_0\,
      I1 => \^out_b_reg[7]_0\(3),
      I2 => \Out_B[3]_i_2_n_0\,
      I3 => \^out_b_reg[7]_0\(5),
      I4 => \Out_B[3]_i_3_n_0\,
      O => D(3)
    );
\Out_B[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF8FFFAFFFAFFF"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(5),
      I1 => \Out_B[5]_i_2_n_0\,
      I2 => \^out_op_reg[3]_0\(2),
      I3 => \^out_op_reg[3]_0\(1),
      I4 => \^out_op_reg[3]_0\(0),
      I5 => \Out_B_reg[3]_0\,
      O => \Out_B[3]_i_2_n_0\
    );
\Out_B[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8AAA0A"
    )
        port map (
      I0 => \Out_B[3]_i_5_n_0\,
      I1 => \Out_B_reg[7]_4\(2),
      I2 => \^out_b_reg[7]_0\(1),
      I3 => \Out_B_reg[7]_3\(1),
      I4 => \^out_b_reg[7]_0\(0),
      I5 => \Out_B[6]_i_6__0_n_0\,
      O => \Out_B[3]_i_3_n_0\
    );
\Out_B[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111010111010"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(7),
      I1 => \^out_op_reg[3]_0\(0),
      I2 => \^out_b_reg[7]_0\(1),
      I3 => \^out_b_reg[7]_0\(0),
      I4 => \Out_B[7]_i_2__0_0\(0),
      I5 => \Out_B[7]_i_2__0_1\(1),
      O => \Out_B[3]_i_5_n_0\
    );
\Out_B[4]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF000"
    )
        port map (
      I0 => \Out_B_reg[4]_0\,
      I1 => \Out_B[4]_i_3_n_0\,
      I2 => \Out_B[6]_i_4_n_0\,
      I3 => \Out_B_reg[4]_1\,
      I4 => \^out_b_reg[7]_0\(4),
      I5 => \Out_B[7]_i_5__0_n_0\,
      O => D(4)
    );
\Out_B[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(5),
      I1 => \^out_b_reg[7]_0\(4),
      I2 => \^out_b_reg[7]_0\(2),
      I3 => \^out_b_reg[7]_0\(3),
      I4 => \^out_b_reg[7]_0\(7),
      I5 => \^out_b_reg[7]_0\(6),
      O => \Out_B[4]_i_3_n_0\
    );
\Out_B[5]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40F0F04040F0F0"
    )
        port map (
      I0 => \Out_B[5]_i_2_n_0\,
      I1 => \Out_B_reg[5]_0\,
      I2 => \^out_b_reg[7]_0\(5),
      I3 => \Out_B_reg[5]_1\,
      I4 => \Out_B[7]_i_5__0_n_0\,
      I5 => \Out_B[7]_i_3__0_n_0\,
      O => D(5)
    );
\Out_B[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(6),
      I1 => \^out_b_reg[7]_0\(7),
      I2 => \^out_b_reg[7]_0\(3),
      I3 => \^out_b_reg[7]_0\(2),
      I4 => \^out_b_reg[7]_0\(4),
      O => \Out_B[5]_i_2_n_0\
    );
\Out_B[6]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAEAFFEA"
    )
        port map (
      I0 => \Out_B[6]_i_2__0_n_0\,
      I1 => \Out_B_reg[6]_0\,
      I2 => \Out_B[6]_i_4_n_0\,
      I3 => \^out_b_reg[7]_0\(6),
      I4 => \Out_B[7]_i_5__0_n_0\,
      O => D(6)
    );
\Out_B[6]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022202222220022"
    )
        port map (
      I0 => \Out_B[4]_i_3_n_0\,
      I1 => \Out_B[6]_i_5_n_0\,
      I2 => \Out_B_reg[7]_1\(1),
      I3 => \^out_b_reg[7]_0\(0),
      I4 => \Out_B[7]_i_4__0_0\(1),
      I5 => \^out_b_reg[7]_0\(1),
      O => \Out_B[6]_i_2__0_n_0\
    );
\Out_B[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \Out_B[6]_i_6__0_n_0\,
      I1 => \^out_op_reg[3]_0\(0),
      I2 => \^out_b_reg[7]_0\(7),
      I3 => \^out_b_reg[7]_0\(5),
      I4 => \^out_op_reg[3]_0\(1),
      I5 => \^out_op_reg[3]_0\(2),
      O => \Out_B[6]_i_4_n_0\
    );
\Out_B[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0145"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(0),
      I1 => \^out_b_reg[7]_0\(1),
      I2 => \Out_B[7]_i_4__0_1\(1),
      I3 => \Out_B_reg[7]_2\(1),
      I4 => \Out_B[6]_i_7_n_0\,
      I5 => \^out_op_reg[3]_0\(0),
      O => \Out_B[6]_i_5_n_0\
    );
\Out_B[6]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(6),
      I1 => \^out_b_reg[7]_0\(2),
      I2 => \^out_b_reg[7]_0\(4),
      I3 => \^out_b_reg[7]_0\(3),
      I4 => \^out_op_reg[3]_0\(3),
      O => \Out_B[6]_i_6__0_n_0\
    );
\Out_B[6]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(2),
      I1 => \^out_op_reg[3]_0\(1),
      O => \Out_B[6]_i_7_n_0\
    );
\Out_B[7]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4F4FFF0"
    )
        port map (
      I0 => \Out_B[7]_i_2__0_n_0\,
      I1 => \Out_B[7]_i_3__0_n_0\,
      I2 => \Out_B[7]_i_4__0_n_0\,
      I3 => \^out_b_reg[7]_0\(7),
      I4 => \Out_B[7]_i_5__0_n_0\,
      O => D(7)
    );
\Out_B[7]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF10B0"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(0),
      I1 => \Out_B_reg[7]_3\(2),
      I2 => \^out_b_reg[7]_0\(1),
      I3 => \Out_B_reg[7]_4\(3),
      I4 => \Out_B[7]_i_6__0_n_0\,
      O => \Out_B[7]_i_2__0_n_0\
    );
\Out_B[7]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(7),
      I1 => \^out_b_reg[7]_0\(6),
      I2 => \^out_b_reg[7]_0\(2),
      I3 => \^out_b_reg[7]_0\(4),
      I4 => \^out_b_reg[7]_0\(3),
      O => \Out_B[7]_i_3__0_n_0\
    );
\Out_B[7]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2022202222220022"
    )
        port map (
      I0 => \Out_B[7]_i_7_n_0\,
      I1 => \Out_B[5]_i_2_n_0\,
      I2 => \Out_B_reg[7]_1\(2),
      I3 => \^out_b_reg[7]_0\(1),
      I4 => \Out_B_reg[7]_2\(2),
      I5 => \^out_b_reg[7]_0\(0),
      O => \Out_B[7]_i_4__0_n_0\
    );
\Out_B[7]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(2),
      I1 => \^out_op_reg[3]_0\(1),
      I2 => \^out_op_reg[3]_0\(3),
      I3 => \^out_op_reg[3]_0\(0),
      O => \Out_B[7]_i_5__0_n_0\
    );
\Out_B[7]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABBABB"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(5),
      I1 => \^out_b_reg[7]_0\(1),
      I2 => \^out_b_reg[7]_0\(0),
      I3 => \Out_B[7]_i_2__0_0\(1),
      I4 => \Out_B[7]_i_2__0_1\(2),
      O => \Out_B[7]_i_6__0_n_0\
    );
\Out_B[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8A80"
    )
        port map (
      I0 => \^out_b_reg[7]_0\(5),
      I1 => \Out_B[7]_i_4__0_0\(2),
      I2 => \^out_b_reg[7]_0\(0),
      I3 => \Out_B[7]_i_4__0_1\(2),
      I4 => \^out_b_reg[7]_0\(1),
      O => \Out_B[7]_i_7_n_0\
    );
\Out_B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(0),
      Q => \^out_b_reg[7]_0\(0),
      R => '0'
    );
\Out_B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(1),
      Q => \^out_b_reg[7]_0\(1),
      R => '0'
    );
\Out_B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(2),
      Q => \^out_b_reg[7]_0\(2),
      R => '0'
    );
\Out_B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(3),
      Q => \^out_b_reg[7]_0\(3),
      R => '0'
    );
\Out_B_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(4),
      Q => \^out_b_reg[7]_0\(4),
      R => '0'
    );
\Out_B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(5),
      Q => \^out_b_reg[7]_0\(5),
      R => '0'
    );
\Out_B_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(6),
      Q => \^out_b_reg[7]_0\(6),
      R => '0'
    );
\Out_B_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[7]_5\(7),
      Q => \^out_b_reg[7]_0\(7),
      R => '0'
    );
\Out_OP_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_2\(0),
      Q => \^out_op_reg[3]_0\(0),
      R => '0'
    );
\Out_OP_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_2\(1),
      Q => \^out_op_reg[3]_0\(1),
      R => '0'
    );
\Out_OP_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_2\(2),
      Q => \^out_op_reg[3]_0\(2),
      R => '0'
    );
\Out_OP_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_2\(3),
      Q => \^out_op_reg[3]_0\(3),
      R => '0'
    );
\count[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000004141F14F"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => Out_C(0),
      I3 => \Out_A_reg[5]_0\(1),
      I4 => \Out_A_reg[5]_0\(0),
      I5 => \count[7]_i_6\,
      O => \Out_A_reg[0]_0\
    );
\count[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4F4F4F0F0FFF0F"
    )
        port map (
      I0 => \count[7]_i_17_n_0\,
      I1 => \count[7]_i_18_n_0\,
      I2 => \count[7]_i_6\,
      I3 => \count[7]_i_19_n_0\,
      I4 => \count[7]_i_6_0\,
      I5 => Out_C(0),
      O => \Out_C_reg[1]\
    );
\count[7]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A0AAAAA8A8A8A2A"
    )
        port map (
      I0 => \^q\(1),
      I1 => Out_B(0),
      I2 => \^q\(0),
      I3 => Out_B(1),
      I4 => \Out_A_reg[5]_0\(0),
      I5 => \Out_A_reg[5]_0\(1),
      O => \count[7]_i_17_n_0\
    );
\count[7]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10E0CDEC"
    )
        port map (
      I0 => \^q\(0),
      I1 => Out_B(1),
      I2 => \Out_A_reg[5]_0\(0),
      I3 => Out_B(0),
      I4 => \Out_A_reg[5]_0\(1),
      I5 => \^q\(1),
      O => \count[7]_i_18_n_0\
    );
\count[7]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"37B373B3FFFF33F3"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \Out_A_reg[5]_0\(0),
      I3 => Out_B(0),
      I4 => \Out_A_reg[5]_0\(1),
      I5 => Out_B(1),
      O => \count[7]_i_19_n_0\
    );
\count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAB"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(3),
      I1 => \^out_op_reg[3]_0\(1),
      I2 => \^out_op_reg[3]_0\(2),
      I3 => \^out_op_reg[3]_0\(0),
      O => \Out_OP_reg[3]_1\
    );
\reg[0][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \reg[255][7]_i_2_n_0\,
      I3 => \^out_op_reg[3]_0\(0),
      I4 => \^q\(2),
      O => E(0)
    );
\reg[1][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \reg[255][7]_i_2_n_0\,
      I3 => \^out_op_reg[3]_0\(0),
      I4 => \^q\(2),
      O => \Out_A_reg[0]_1\(0)
    );
\reg[252][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \reg[255][7]_i_2_n_0\,
      O => \Out_OP_reg[0]_0\(0)
    );
\reg[253][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(0),
      I1 => \^q\(2),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \reg[255][7]_i_2_n_0\,
      O => \Out_OP_reg[0]_1\(0)
    );
\reg[254][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(0),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \reg[255][7]_i_2_n_0\,
      O => \Out_OP_reg[0]_2\(0)
    );
\reg[255][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(0),
      I1 => \^q\(2),
      I2 => \reg[255][7]_i_2_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(1),
      O => \Out_OP_reg[0]_3\(0)
    );
\reg[255][7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^out_op_reg[3]_0\(3),
      I1 => \^out_op_reg[3]_0\(1),
      I2 => \^out_op_reg[3]_0\(2),
      O => \reg[255][7]_i_2_n_0\
    );
\reg[2][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \reg[255][7]_i_2_n_0\,
      I3 => \^out_op_reg[3]_0\(0),
      I4 => \^q\(2),
      O => \Out_A_reg[1]_0\(0)
    );
\reg[3][7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \reg[255][7]_i_2_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^out_op_reg[3]_0\(0),
      I4 => \^q\(2),
      O => \Out_A_reg[0]_2\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipeline_1 is
  port (
    Out_C : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_B_reg[0]_0\ : out STD_LOGIC;
    \Out_B_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[2]_0\ : out STD_LOGIC;
    \Out_C_reg[1]_0\ : out STD_LOGIC;
    \Out_B_reg[5]_0\ : out STD_LOGIC;
    \Out_A_reg[1]_0\ : out STD_LOGIC;
    \Out_B_reg[0]_1\ : out STD_LOGIC;
    sPip1_op : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Out_B_reg[1]_0\ : out STD_LOGIC;
    \Out_B_reg[2]_1\ : out STD_LOGIC;
    \Out_B_reg[3]_1\ : out STD_LOGIC;
    \Out_B_reg[5]_1\ : out STD_LOGIC;
    \Out_B_reg[5]_2\ : out STD_LOGIC;
    \Out_B_reg[5]_3\ : out STD_LOGIC;
    \Out_B_reg[5]_4\ : out STD_LOGIC;
    \Out_A_reg[5]_0\ : out STD_LOGIC;
    \Out_B_reg[3]_2\ : out STD_LOGIC;
    \Out_A_reg[0]_0\ : out STD_LOGIC;
    \Out_A_reg[5]_1\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sMI_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \count_reg[0]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Qa_micro_OBUF : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[0]_0\ : in STD_LOGIC;
    sAL1 : in STD_LOGIC;
    \Out_A_reg[0]_1\ : in STD_LOGIC;
    \Out_B_reg[0]_2\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_OP_reg[2]_0\ : in STD_LOGIC;
    \Out_OP_reg[0]_0\ : in STD_LOGIC;
    \Out_B_reg[0]_3\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Pipeline_1 : entity is "Pipeline";
end Pipeline_1;

architecture STRUCTURE of Pipeline_1 is
  signal \Out_A[0]_i_1__0_n_0\ : STD_LOGIC;
  signal Out_B : STD_LOGIC_VECTOR ( 5 to 5 );
  signal \^out_b_reg[3]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^out_b_reg[3]_2\ : STD_LOGIC;
  signal \^out_b_reg[5]_0\ : STD_LOGIC;
  signal \^out_c\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \count[7]_i_12_n_0\ : STD_LOGIC;
  signal sPip1_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^spip1_op\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Out_A[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Out_A[1]_i_1\ : label is "soft_lutpair23";
begin
  \Out_B_reg[3]_0\(3 downto 0) <= \^out_b_reg[3]_0\(3 downto 0);
  \Out_B_reg[3]_2\ <= \^out_b_reg[3]_2\;
  \Out_B_reg[5]_0\ <= \^out_b_reg[5]_0\;
  Out_C(0) <= \^out_c\(0);
  sPip1_op(3 downto 0) <= \^spip1_op\(3 downto 0);
\Out_A[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sPip1_a(0),
      I1 => sAL1,
      O => \Out_A_reg[5]_1\(0)
    );
\Out_A[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \Out_B_reg[0]_2\(2),
      I1 => \Out_B_reg[0]_2\(0),
      I2 => \Out_B_reg[0]_2\(1),
      O => \Out_A[0]_i_1__0_n_0\
    );
\Out_A[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sPip1_a(1),
      I1 => sAL1,
      O => \Out_A_reg[5]_1\(1)
    );
\Out_A[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sPip1_a(5),
      I1 => sAL1,
      O => \Out_A_reg[5]_1\(2)
    );
\Out_A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[0]_1\,
      Q => sPip1_a(0),
      R => \Out_A[0]_i_1__0_n_0\
    );
\Out_A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(5),
      Q => sPip1_a(1),
      R => '0'
    );
\Out_A_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(6),
      Q => sPip1_a(5),
      R => '0'
    );
\Out_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(0),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(0),
      O => \Out_B_reg[0]_1\
    );
\Out_B[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(1),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(1),
      O => \Out_B_reg[1]_0\
    );
\Out_B[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(2),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(2),
      O => \Out_B_reg[2]_1\
    );
\Out_B[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(3),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(3),
      O => \Out_B_reg[3]_1\
    );
\Out_B[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => Out_B(5),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(4),
      O => \Out_B_reg[5]_1\
    );
\Out_B[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => Out_B(5),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(5),
      O => \Out_B_reg[5]_2\
    );
\Out_B[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => Out_B(5),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(6),
      O => \Out_B_reg[5]_3\
    );
\Out_B[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => Out_B(5),
      I1 => \^spip1_op\(1),
      I2 => \^spip1_op\(2),
      I3 => \^spip1_op\(0),
      I4 => Qa_micro_OBUF(7),
      O => \Out_B_reg[5]_4\
    );
\Out_B[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFE00FEFEFEFE00"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(2),
      I1 => \^out_b_reg[3]_0\(3),
      I2 => Out_B(5),
      I3 => \count_reg[0]\(1),
      I4 => \count_reg[0]\(0),
      I5 => \^out_c\(0),
      O => \Out_B_reg[2]_0\
    );
\Out_B[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5F57575D5DF75F"
    )
        port map (
      I0 => \^out_b_reg[5]_0\,
      I1 => \^out_c\(0),
      I2 => \count_reg[0]\(0),
      I3 => \^out_b_reg[3]_0\(0),
      I4 => \count_reg[0]\(1),
      I5 => \^out_b_reg[3]_0\(1),
      O => \Out_C_reg[1]_0\
    );
\Out_B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_B_reg[0]_3\,
      Q => \^out_b_reg[3]_0\(0),
      R => \Out_A[0]_i_1__0_n_0\
    );
\Out_B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(1),
      Q => \^out_b_reg[3]_0\(1),
      R => '0'
    );
\Out_B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(2),
      Q => \^out_b_reg[3]_0\(2),
      R => '0'
    );
\Out_B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(3),
      Q => \^out_b_reg[3]_0\(3),
      R => '0'
    );
\Out_B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(4),
      Q => Out_B(5),
      R => '0'
    );
\Out_C_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(0),
      Q => \^out_c\(0),
      R => '0'
    );
\Out_OP_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[0]_0\,
      Q => \^spip1_op\(0),
      R => \Out_A[0]_i_1__0_n_0\
    );
\Out_OP_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(7),
      Q => \^spip1_op\(1),
      R => '0'
    );
\Out_OP_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[2]_0\,
      Q => \^spip1_op\(2),
      R => \Out_A[0]_i_1__0_n_0\
    );
\Out_OP_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => sMI_out(8),
      Q => \^spip1_op\(3),
      R => '0'
    );
\count[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(3),
      I1 => \^out_b_reg[3]_0\(2),
      I2 => Out_B(5),
      O => \^out_b_reg[3]_2\
    );
\count[7]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(0),
      I1 => Q(0),
      O => \count[7]_i_12_n_0\
    );
\count[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A4B87450A0A0505"
    )
        port map (
      I0 => Q(1),
      I1 => \^out_b_reg[3]_0\(0),
      I2 => Q(0),
      I3 => \^out_b_reg[3]_0\(1),
      I4 => \^out_c\(0),
      I5 => \^out_b_reg[5]_0\,
      O => \Out_A_reg[1]_0\
    );
\count[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Out_B(5),
      I1 => \^out_b_reg[3]_0\(3),
      I2 => \^out_b_reg[3]_0\(2),
      O => \^out_b_reg[5]_0\
    );
\count[7]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BB3B7BFF"
    )
        port map (
      I0 => \^out_b_reg[3]_0\(0),
      I1 => Q(0),
      I2 => \^out_b_reg[3]_0\(1),
      I3 => \count_reg[0]\(1),
      I4 => \count_reg[0]\(0),
      I5 => Q(1),
      O => \Out_B_reg[0]_0\
    );
\count[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000D000000000D"
    )
        port map (
      I0 => \count_reg[0]\(2),
      I1 => \count_reg[0]_0\,
      I2 => \^out_b_reg[3]_2\,
      I3 => \^out_b_reg[3]_0\(1),
      I4 => \count[7]_i_12_n_0\,
      I5 => Q(1),
      O => \Out_A_reg[5]_0\
    );
\count[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4010401055010455"
    )
        port map (
      I0 => \^out_b_reg[3]_2\,
      I1 => \count_reg[0]\(0),
      I2 => \count_reg[0]\(1),
      I3 => \^out_b_reg[3]_0\(0),
      I4 => Q(0),
      I5 => \^out_b_reg[3]_0\(1),
      O => \Out_A_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pipeline_2 is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[0]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[0]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[3]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Out_A_reg[3]_2\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \Out_A_reg[3]_3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \Out_OP_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Pipeline_2 : entity is "Pipeline";
end Pipeline_2;

architecture STRUCTURE of Pipeline_2 is
  signal Out_OP : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \reg[15][7]_i_2_n_0\ : STD_LOGIC;
  signal sPip4_a : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
\Out_A_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[3]_3\(0),
      Q => sPip4_a(0),
      R => '0'
    );
\Out_A_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[3]_3\(1),
      Q => sPip4_a(1),
      R => '0'
    );
\Out_A_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_A_reg[3]_3\(2),
      Q => sPip4_a(3),
      R => '0'
    );
\Out_B_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\Out_B_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\Out_B_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\Out_B_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\Out_B_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(4),
      Q => Q(4),
      R => '0'
    );
\Out_B_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(5),
      Q => Q(5),
      R => '0'
    );
\Out_B_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(6),
      Q => Q(6),
      R => '0'
    );
\Out_B_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => D(7),
      Q => Q(7),
      R => '0'
    );
\Out_OP_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_0\(0),
      Q => Out_OP(0),
      R => '0'
    );
\Out_OP_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_0\(1),
      Q => Out_OP(1),
      R => '0'
    );
\Out_OP_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_0\(2),
      Q => Out_OP(2),
      R => '0'
    );
\Out_OP_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => '1',
      D => \Out_OP_reg[3]_0\(3),
      Q => Out_OP(3),
      R => '0'
    );
\reg[0][7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(0),
      I2 => sPip4_a(1),
      I3 => sPip4_a(3),
      O => \Out_A_reg[0]_1\(0)
    );
\reg[12][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(3),
      I2 => sPip4_a(0),
      I3 => sPip4_a(1),
      O => \Out_A_reg[3]_0\(0)
    );
\reg[13][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(3),
      I2 => sPip4_a(1),
      I3 => sPip4_a(0),
      O => \Out_A_reg[3]_1\(0)
    );
\reg[14][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(3),
      I2 => sPip4_a(0),
      I3 => sPip4_a(1),
      O => \Out_A_reg[3]_2\(0)
    );
\reg[15][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(3),
      I2 => sPip4_a(0),
      I3 => sPip4_a(1),
      O => E(0)
    );
\reg[15][7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFC"
    )
        port map (
      I0 => Out_OP(3),
      I1 => Out_OP(0),
      I2 => Out_OP(1),
      I3 => Out_OP(2),
      O => \reg[15][7]_i_2_n_0\
    );
\reg[1][7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(1),
      I2 => sPip4_a(0),
      I3 => sPip4_a(3),
      O => \Out_A_reg[1]_0\(0)
    );
\reg[2][7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(0),
      I2 => sPip4_a(1),
      I3 => sPip4_a(3),
      O => \Out_A_reg[0]_2\(0)
    );
\reg[3][7]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \reg[15][7]_i_2_n_0\,
      I1 => sPip4_a(0),
      I2 => sPip4_a(1),
      I3 => sPip4_a(3),
      O => \Out_A_reg[0]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Registre is
  port (
    Qa_micro_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Qb_micro_OBUF : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \Out_B_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Out_C : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 7 downto 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \reg_reg[14][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[13][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[12][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[3][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[2][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[1][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[0][7]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end Registre;

architecture STRUCTURE of Registre is
  signal \Qa_micro_OBUF[0]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[0]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[1]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[1]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[2]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[2]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[3]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[3]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[4]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[4]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[5]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[5]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[6]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[6]_inst_i_3_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[7]_inst_i_2_n_0\ : STD_LOGIC;
  signal \Qa_micro_OBUF[7]_inst_i_3_n_0\ : STD_LOGIC;
  signal \reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[12]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[13]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[14]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[15]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
\Qa_micro_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[0]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[0]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(0)
    );
\Qa_micro_OBUF[0]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(0),
      I1 => \reg[2]\(0),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(0),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(0),
      O => \Qa_micro_OBUF[0]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[0]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(0),
      I1 => \reg[14]\(0),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(0),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(0),
      O => \Qa_micro_OBUF[0]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[1]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[1]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(1)
    );
\Qa_micro_OBUF[1]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(1),
      I1 => \reg[2]\(1),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(1),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(1),
      O => \Qa_micro_OBUF[1]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[1]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(1),
      I1 => \reg[14]\(1),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(1),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(1),
      O => \Qa_micro_OBUF[1]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[2]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[2]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(2)
    );
\Qa_micro_OBUF[2]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(2),
      I1 => \reg[2]\(2),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(2),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(2),
      O => \Qa_micro_OBUF[2]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[2]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(2),
      I1 => \reg[14]\(2),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(2),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(2),
      O => \Qa_micro_OBUF[2]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[3]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[3]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(3)
    );
\Qa_micro_OBUF[3]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(3),
      I1 => \reg[2]\(3),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(3),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(3),
      O => \Qa_micro_OBUF[3]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[3]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(3),
      I1 => \reg[14]\(3),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(3),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(3),
      O => \Qa_micro_OBUF[3]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[4]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[4]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(4)
    );
\Qa_micro_OBUF[4]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(4),
      I1 => \reg[2]\(4),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(4),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(4),
      O => \Qa_micro_OBUF[4]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[4]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(4),
      I1 => \reg[14]\(4),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(4),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(4),
      O => \Qa_micro_OBUF[4]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[5]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[5]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(5)
    );
\Qa_micro_OBUF[5]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(5),
      I1 => \reg[2]\(5),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(5),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(5),
      O => \Qa_micro_OBUF[5]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[5]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(5),
      I1 => \reg[14]\(5),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(5),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(5),
      O => \Qa_micro_OBUF[5]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[6]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[6]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(6)
    );
\Qa_micro_OBUF[6]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(6),
      I1 => \reg[2]\(6),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(6),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(6),
      O => \Qa_micro_OBUF[6]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[6]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(6),
      I1 => \reg[14]\(6),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(6),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(6),
      O => \Qa_micro_OBUF[6]_inst_i_3_n_0\
    );
\Qa_micro_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C202"
    )
        port map (
      I0 => \Qa_micro_OBUF[7]_inst_i_2_n_0\,
      I1 => \Out_B_reg[0]\(2),
      I2 => \Out_B_reg[0]\(3),
      I3 => \Qa_micro_OBUF[7]_inst_i_3_n_0\,
      O => Qa_micro_OBUF(7)
    );
\Qa_micro_OBUF[7]_inst_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[3]\(7),
      I1 => \reg[2]\(7),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[1]\(7),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[0]\(7),
      O => \Qa_micro_OBUF[7]_inst_i_2_n_0\
    );
\Qa_micro_OBUF[7]_inst_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg[15]\(7),
      I1 => \reg[14]\(7),
      I2 => \Out_B_reg[0]\(1),
      I3 => \reg[13]\(7),
      I4 => \Out_B_reg[0]\(0),
      I5 => \reg[12]\(7),
      O => \Qa_micro_OBUF[7]_inst_i_3_n_0\
    );
\Qb_micro_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(0),
      I1 => Out_C(0),
      I2 => \reg[0]\(0),
      O => Qb_micro_OBUF(0)
    );
\Qb_micro_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(1),
      I1 => Out_C(0),
      I2 => \reg[0]\(1),
      O => Qb_micro_OBUF(1)
    );
\Qb_micro_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(2),
      I1 => Out_C(0),
      I2 => \reg[0]\(2),
      O => Qb_micro_OBUF(2)
    );
\Qb_micro_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(3),
      I1 => Out_C(0),
      I2 => \reg[0]\(3),
      O => Qb_micro_OBUF(3)
    );
\Qb_micro_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(4),
      I1 => Out_C(0),
      I2 => \reg[0]\(4),
      O => Qb_micro_OBUF(4)
    );
\Qb_micro_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(5),
      I1 => Out_C(0),
      I2 => \reg[0]\(5),
      O => Qb_micro_OBUF(5)
    );
\Qb_micro_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(6),
      I1 => Out_C(0),
      I2 => \reg[0]\(6),
      O => Qb_micro_OBUF(6)
    );
\Qb_micro_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \reg[2]\(7),
      I1 => Out_C(0),
      I2 => \reg[0]\(7),
      O => Qb_micro_OBUF(7)
    );
\reg_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(0),
      Q => \reg[0]\(0),
      R => SR(0)
    );
\reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(1),
      Q => \reg[0]\(1),
      R => SR(0)
    );
\reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(2),
      Q => \reg[0]\(2),
      R => SR(0)
    );
\reg_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(3),
      Q => \reg[0]\(3),
      R => SR(0)
    );
\reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(4),
      Q => \reg[0]\(4),
      R => SR(0)
    );
\reg_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(5),
      Q => \reg[0]\(5),
      R => SR(0)
    );
\reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(6),
      Q => \reg[0]\(6),
      R => SR(0)
    );
\reg_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_0\(0),
      D => D(7),
      Q => \reg[0]\(7),
      R => SR(0)
    );
\reg_reg[12][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(0),
      Q => \reg[12]\(0),
      R => SR(0)
    );
\reg_reg[12][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(1),
      Q => \reg[12]\(1),
      R => SR(0)
    );
\reg_reg[12][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(2),
      Q => \reg[12]\(2),
      R => SR(0)
    );
\reg_reg[12][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(3),
      Q => \reg[12]\(3),
      R => SR(0)
    );
\reg_reg[12][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(4),
      Q => \reg[12]\(4),
      R => SR(0)
    );
\reg_reg[12][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(5),
      Q => \reg[12]\(5),
      R => SR(0)
    );
\reg_reg[12][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(6),
      Q => \reg[12]\(6),
      R => SR(0)
    );
\reg_reg[12][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[12][7]_0\(0),
      D => D(7),
      Q => \reg[12]\(7),
      R => SR(0)
    );
\reg_reg[13][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(0),
      Q => \reg[13]\(0),
      R => SR(0)
    );
\reg_reg[13][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(1),
      Q => \reg[13]\(1),
      R => SR(0)
    );
\reg_reg[13][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(2),
      Q => \reg[13]\(2),
      R => SR(0)
    );
\reg_reg[13][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(3),
      Q => \reg[13]\(3),
      R => SR(0)
    );
\reg_reg[13][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(4),
      Q => \reg[13]\(4),
      R => SR(0)
    );
\reg_reg[13][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(5),
      Q => \reg[13]\(5),
      R => SR(0)
    );
\reg_reg[13][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(6),
      Q => \reg[13]\(6),
      R => SR(0)
    );
\reg_reg[13][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[13][7]_0\(0),
      D => D(7),
      Q => \reg[13]\(7),
      R => SR(0)
    );
\reg_reg[14][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(0),
      Q => \reg[14]\(0),
      R => SR(0)
    );
\reg_reg[14][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(1),
      Q => \reg[14]\(1),
      R => SR(0)
    );
\reg_reg[14][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(2),
      Q => \reg[14]\(2),
      R => SR(0)
    );
\reg_reg[14][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(3),
      Q => \reg[14]\(3),
      R => SR(0)
    );
\reg_reg[14][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(4),
      Q => \reg[14]\(4),
      R => SR(0)
    );
\reg_reg[14][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(5),
      Q => \reg[14]\(5),
      R => SR(0)
    );
\reg_reg[14][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(6),
      Q => \reg[14]\(6),
      R => SR(0)
    );
\reg_reg[14][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[14][7]_0\(0),
      D => D(7),
      Q => \reg[14]\(7),
      R => SR(0)
    );
\reg_reg[15][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \reg[15]\(0),
      R => SR(0)
    );
\reg_reg[15][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(1),
      Q => \reg[15]\(1),
      R => SR(0)
    );
\reg_reg[15][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(2),
      Q => \reg[15]\(2),
      R => SR(0)
    );
\reg_reg[15][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(3),
      Q => \reg[15]\(3),
      R => SR(0)
    );
\reg_reg[15][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(4),
      Q => \reg[15]\(4),
      R => SR(0)
    );
\reg_reg[15][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(5),
      Q => \reg[15]\(5),
      R => SR(0)
    );
\reg_reg[15][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(6),
      Q => \reg[15]\(6),
      R => SR(0)
    );
\reg_reg[15][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(7),
      Q => \reg[15]\(7),
      R => SR(0)
    );
\reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(0),
      Q => \reg[1]\(0),
      R => SR(0)
    );
\reg_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(1),
      Q => \reg[1]\(1),
      R => SR(0)
    );
\reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(2),
      Q => \reg[1]\(2),
      R => SR(0)
    );
\reg_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(3),
      Q => \reg[1]\(3),
      R => SR(0)
    );
\reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(4),
      Q => \reg[1]\(4),
      R => SR(0)
    );
\reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(5),
      Q => \reg[1]\(5),
      R => SR(0)
    );
\reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(6),
      Q => \reg[1]\(6),
      R => SR(0)
    );
\reg_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_0\(0),
      D => D(7),
      Q => \reg[1]\(7),
      R => SR(0)
    );
\reg_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(0),
      Q => \reg[2]\(0),
      R => SR(0)
    );
\reg_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(1),
      Q => \reg[2]\(1),
      R => SR(0)
    );
\reg_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(2),
      Q => \reg[2]\(2),
      R => SR(0)
    );
\reg_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(3),
      Q => \reg[2]\(3),
      R => SR(0)
    );
\reg_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(4),
      Q => \reg[2]\(4),
      R => SR(0)
    );
\reg_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(5),
      Q => \reg[2]\(5),
      R => SR(0)
    );
\reg_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(6),
      Q => \reg[2]\(6),
      R => SR(0)
    );
\reg_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_0\(0),
      D => D(7),
      Q => \reg[2]\(7),
      R => SR(0)
    );
\reg_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(0),
      Q => \reg[3]\(0),
      R => SR(0)
    );
\reg_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(1),
      Q => \reg[3]\(1),
      R => SR(0)
    );
\reg_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(2),
      Q => \reg[3]\(2),
      R => SR(0)
    );
\reg_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(3),
      Q => \reg[3]\(3),
      R => SR(0)
    );
\reg_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(4),
      Q => \reg[3]\(4),
      R => SR(0)
    );
\reg_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(5),
      Q => \reg[3]\(5),
      R => SR(0)
    );
\reg_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(6),
      Q => \reg[3]\(6),
      R => SR(0)
    );
\reg_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_0\(0),
      D => D(7),
      Q => \reg[3]\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity compteur_8_bits is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \count_reg[6]_0\ : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end compteur_8_bits;

architecture STRUCTURE of compteur_8_bits is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \count[1]_i_1_n_0\ : STD_LOGIC;
  signal \count[2]_i_1_n_0\ : STD_LOGIC;
  signal \count[3]_i_1_n_0\ : STD_LOGIC;
  signal \count[4]_i_1_n_0\ : STD_LOGIC;
  signal \count[5]_i_1_n_0\ : STD_LOGIC;
  signal \count[6]_i_1_n_0\ : STD_LOGIC;
  signal \count[7]_i_2_n_0\ : STD_LOGIC;
  signal \count[7]_i_7_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair31";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \count[1]_i_1_n_0\
    );
\count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => \count[2]_i_1_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => \count[3]_i_1_n_0\
    );
\count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => \count[4]_i_1_n_0\
    );
\count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \count[5]_i_1_n_0\
    );
\count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(2),
      I2 => \count_reg[6]_0\,
      I3 => \^q\(3),
      I4 => \^q\(5),
      I5 => \^q\(6),
      O => \count[6]_i_1_n_0\
    );
\count[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \count[7]_i_7_n_0\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      O => \count[7]_i_2_n_0\
    );
\count[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \^q\(4),
      O => \count[7]_i_7_n_0\
    );
\count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => D(0),
      Q => \^q\(0),
      R => SR(0)
    );
\count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[1]_i_1_n_0\,
      Q => \^q\(1),
      R => SR(0)
    );
\count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[2]_i_1_n_0\,
      Q => \^q\(2),
      R => SR(0)
    );
\count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[3]_i_1_n_0\,
      Q => \^q\(3),
      R => SR(0)
    );
\count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[4]_i_1_n_0\,
      Q => \^q\(4),
      R => SR(0)
    );
\count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[5]_i_1_n_0\,
      Q => \^q\(5),
      R => SR(0)
    );
\count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[6]_i_1_n_0\,
      Q => \^q\(6),
      R => SR(0)
    );
\count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \count[7]_i_2_n_0\,
      Q => \^q\(7),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory_data is
  port (
    \reg_reg[3][6]_0\ : out STD_LOGIC;
    \reg_reg[3][5]_0\ : out STD_LOGIC;
    \reg_reg[255][5]_0\ : out STD_LOGIC;
    \reg_reg[3][4]_0\ : out STD_LOGIC;
    \reg_reg[255][4]_0\ : out STD_LOGIC;
    \reg_reg[255][3]_0\ : out STD_LOGIC;
    \reg_reg[3][2]_0\ : out STD_LOGIC;
    \reg_reg[255][2]_0\ : out STD_LOGIC;
    \reg_reg[1][1]_0\ : out STD_LOGIC;
    \reg_reg[255][0]_0\ : out STD_LOGIC;
    \reg_reg[2][0]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[254][7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[253][7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[252][7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[3][7]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \reg_reg[2][7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[1][7]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \reg_reg[0][7]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \reg_reg[255][7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_IBUF_BUFG : in STD_LOGIC;
    \reg_reg[254][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[253][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[252][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[3][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[2][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[1][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \reg_reg[0][7]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end memory_data;

architecture STRUCTURE of memory_data is
  signal \reg_reg_n_0_[0][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][1]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[1][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[252][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[252][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[252][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[252][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[252][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[253][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[253][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[253][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[253][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[253][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[254][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[254][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[254][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[254][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[254][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[255][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[255][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[255][3]\ : STD_LOGIC;
  signal \reg_reg_n_0_[255][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[255][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][0]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[2][6]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][2]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][4]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][5]\ : STD_LOGIC;
  signal \reg_reg_n_0_[3][6]\ : STD_LOGIC;
begin
\Out_B[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \reg_reg_n_0_[2][0]\,
      I1 => \reg_reg_n_0_[0][0]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg[255][7]_0\(5),
      O => \reg_reg[2][0]_0\
    );
\Out_B[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[255][0]\,
      I1 => \reg_reg_n_0_[254][0]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[253][0]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[252][0]\,
      O => \reg_reg[255][0]_0\
    );
\Out_B[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0053"
    )
        port map (
      I0 => \reg_reg_n_0_[1][1]\,
      I1 => \reg_reg_n_0_[0][1]\,
      I2 => \reg_reg[255][7]_0\(0),
      I3 => \reg_reg[255][7]_0\(1),
      O => \reg_reg[1][1]_0\
    );
\Out_B[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_reg_n_0_[255][2]\,
      I1 => \reg_reg_n_0_[254][2]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[253][2]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[252][2]\,
      O => \reg_reg[255][2]_0\
    );
\Out_B[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505F3030505F3F3F"
    )
        port map (
      I0 => \reg_reg_n_0_[3][2]\,
      I1 => \reg_reg_n_0_[2][2]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[1][2]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[0][2]\,
      O => \reg_reg[3][2]_0\
    );
\Out_B[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[255][3]\,
      I1 => \reg_reg_n_0_[254][3]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[253][3]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[252][3]\,
      O => \reg_reg[255][3]_0\
    );
\Out_B[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[255][4]\,
      I1 => \reg_reg_n_0_[254][4]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[253][4]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[252][4]\,
      O => \reg_reg[255][4]_0\
    );
\Out_B[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][4]\,
      I1 => \reg_reg_n_0_[2][4]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[1][4]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[0][4]\,
      O => \reg_reg[3][4]_0\
    );
\Out_B[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[255][5]\,
      I1 => \reg_reg_n_0_[254][5]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[253][5]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[252][5]\,
      O => \reg_reg[255][5]_0\
    );
\Out_B[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][5]\,
      I1 => \reg_reg_n_0_[2][5]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[1][5]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[0][5]\,
      O => \reg_reg[3][5]_0\
    );
\Out_B[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \reg_reg_n_0_[3][6]\,
      I1 => \reg_reg_n_0_[2][6]\,
      I2 => \reg_reg[255][7]_0\(1),
      I3 => \reg_reg_n_0_[1][6]\,
      I4 => \reg_reg[255][7]_0\(0),
      I5 => \reg_reg_n_0_[0][6]\,
      O => \reg_reg[3][6]_0\
    );
\reg_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[0][0]\,
      R => SR(0)
    );
\reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg_n_0_[0][1]\,
      R => SR(0)
    );
\reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[0][2]\,
      R => SR(0)
    );
\reg_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg[0][7]_0\(0),
      R => SR(0)
    );
\reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[0][4]\,
      R => SR(0)
    );
\reg_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[0][5]\,
      R => SR(0)
    );
\reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg_n_0_[0][6]\,
      R => SR(0)
    );
\reg_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[0][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[0][7]_0\(1),
      R => SR(0)
    );
\reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg[1][7]_0\(0),
      R => SR(0)
    );
\reg_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg_n_0_[1][1]\,
      R => SR(0)
    );
\reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[1][2]\,
      R => SR(0)
    );
\reg_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg[1][7]_0\(1),
      R => SR(0)
    );
\reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[1][4]\,
      R => SR(0)
    );
\reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[1][5]\,
      R => SR(0)
    );
\reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg_n_0_[1][6]\,
      R => SR(0)
    );
\reg_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[1][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[1][7]_0\(2),
      R => SR(0)
    );
\reg_reg[252][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[252][0]\,
      R => SR(0)
    );
\reg_reg[252][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg[252][7]_0\(0),
      R => SR(0)
    );
\reg_reg[252][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[252][2]\,
      R => SR(0)
    );
\reg_reg[252][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg_n_0_[252][3]\,
      R => SR(0)
    );
\reg_reg[252][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[252][4]\,
      R => SR(0)
    );
\reg_reg[252][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[252][5]\,
      R => SR(0)
    );
\reg_reg[252][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg[252][7]_0\(1),
      R => SR(0)
    );
\reg_reg[252][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[252][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[252][7]_0\(2),
      R => SR(0)
    );
\reg_reg[253][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[253][0]\,
      R => SR(0)
    );
\reg_reg[253][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg[253][7]_0\(0),
      R => SR(0)
    );
\reg_reg[253][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[253][2]\,
      R => SR(0)
    );
\reg_reg[253][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg_n_0_[253][3]\,
      R => SR(0)
    );
\reg_reg[253][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[253][4]\,
      R => SR(0)
    );
\reg_reg[253][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[253][5]\,
      R => SR(0)
    );
\reg_reg[253][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg[253][7]_0\(1),
      R => SR(0)
    );
\reg_reg[253][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[253][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[253][7]_0\(2),
      R => SR(0)
    );
\reg_reg[254][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[254][0]\,
      R => SR(0)
    );
\reg_reg[254][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg[254][7]_0\(0),
      R => SR(0)
    );
\reg_reg[254][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[254][2]\,
      R => SR(0)
    );
\reg_reg[254][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg_n_0_[254][3]\,
      R => SR(0)
    );
\reg_reg[254][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[254][4]\,
      R => SR(0)
    );
\reg_reg[254][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[254][5]\,
      R => SR(0)
    );
\reg_reg[254][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg[254][7]_0\(1),
      R => SR(0)
    );
\reg_reg[254][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[254][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[254][7]_0\(2),
      R => SR(0)
    );
\reg_reg[255][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[255][0]\,
      R => SR(0)
    );
\reg_reg[255][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(1),
      Q => Q(0),
      R => SR(0)
    );
\reg_reg[255][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[255][2]\,
      R => SR(0)
    );
\reg_reg[255][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg_n_0_[255][3]\,
      R => SR(0)
    );
\reg_reg[255][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[255][4]\,
      R => SR(0)
    );
\reg_reg[255][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[255][5]\,
      R => SR(0)
    );
\reg_reg[255][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(6),
      Q => Q(1),
      R => SR(0)
    );
\reg_reg[255][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => E(0),
      D => \reg_reg[255][7]_0\(7),
      Q => Q(2),
      R => SR(0)
    );
\reg_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg_n_0_[2][0]\,
      R => SR(0)
    );
\reg_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg[2][7]_0\(0),
      R => SR(0)
    );
\reg_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[2][2]\,
      R => SR(0)
    );
\reg_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg[2][7]_0\(1),
      R => SR(0)
    );
\reg_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[2][4]\,
      R => SR(0)
    );
\reg_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[2][5]\,
      R => SR(0)
    );
\reg_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg_n_0_[2][6]\,
      R => SR(0)
    );
\reg_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[2][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[2][7]_0\(2),
      R => SR(0)
    );
\reg_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(0),
      Q => \reg_reg[3][7]_0\(0),
      R => SR(0)
    );
\reg_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(1),
      Q => \reg_reg[3][7]_0\(1),
      R => SR(0)
    );
\reg_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(2),
      Q => \reg_reg_n_0_[3][2]\,
      R => SR(0)
    );
\reg_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(3),
      Q => \reg_reg[3][7]_0\(2),
      R => SR(0)
    );
\reg_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(4),
      Q => \reg_reg_n_0_[3][4]\,
      R => SR(0)
    );
\reg_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(5),
      Q => \reg_reg_n_0_[3][5]\,
      R => SR(0)
    );
\reg_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(6),
      Q => \reg_reg_n_0_[3][6]\,
      R => SR(0)
    );
\reg_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK_IBUF_BUFG,
      CE => \reg_reg[3][7]_1\(0),
      D => \reg_reg[255][7]_0\(7),
      Q => \reg_reg[3][7]_0\(3),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity memory_instruction is
  port (
    sMI_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    \count_reg[3]\ : out STD_LOGIC;
    \count_reg[4]\ : out STD_LOGIC;
    \count_reg[0]\ : out STD_LOGIC;
    \count_reg[4]_0\ : out STD_LOGIC;
    \count_reg[0]_0\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end memory_instruction;

architecture STRUCTURE of memory_instruction is
  signal \Out_A[5]_i_2_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Out_A[0]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \Out_B[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Out_OP[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Out_OP[2]_i_1\ : label is "soft_lutpair29";
begin
\Out_A[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57211176"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => \count_reg[4]_0\
    );
\Out_A[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2200220000208A00"
    )
        port map (
      I0 => \Out_A[5]_i_2_n_0\,
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => sMI_out(5)
    );
\Out_A[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000200000208200"
    )
        port map (
      I0 => \Out_A[5]_i_2_n_0\,
      I1 => Q(4),
      I2 => Q(1),
      I3 => Q(0),
      I4 => Q(2),
      I5 => Q(3),
      O => sMI_out(6)
    );
\Out_A[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(7),
      O => \Out_A[5]_i_2_n_0\
    );
\Out_B[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10252444"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      O => \count_reg[3]\
    );
\Out_B[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020200802022082"
    )
        port map (
      I0 => \Out_A[5]_i_2_n_0\,
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => sMI_out(1)
    );
\Out_B[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400040040884"
    )
        port map (
      I0 => Q(4),
      I1 => \Out_A[5]_i_2_n_0\,
      I2 => Q(2),
      I3 => Q(0),
      I4 => Q(1),
      I5 => Q(3),
      O => sMI_out(2)
    );
\Out_B[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01022A0400000000"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(3),
      I3 => Q(2),
      I4 => Q(4),
      I5 => \Out_A[5]_i_2_n_0\,
      O => sMI_out(3)
    );
\Out_B[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000018004200"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(4),
      I3 => \Out_A[5]_i_2_n_0\,
      I4 => Q(2),
      I5 => Q(3),
      O => sMI_out(4)
    );
\Out_C[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020080000"
    )
        port map (
      I0 => \Out_A[5]_i_2_n_0\,
      I1 => Q(4),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(1),
      I5 => Q(0),
      O => sMI_out(0)
    );
\Out_OP[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47253214"
    )
        port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(2),
      I3 => Q(1),
      I4 => Q(0),
      O => \count_reg[4]\
    );
\Out_OP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"12130000EFFB0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      I4 => \Out_A[5]_i_2_n_0\,
      I5 => Q(4),
      O => sMI_out(7)
    );
\Out_OP[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007BBFFF"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => \count_reg[0]\
    );
\Out_OP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"11230000ED3A0000"
    )
        port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(1),
      I3 => Q(0),
      I4 => \Out_A[5]_i_2_n_0\,
      I5 => Q(4),
      O => sMI_out(8)
    );
\count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(0),
      O => D(0)
    );
\count[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \count_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Processeur is
  port (
    CLK : in STD_LOGIC;
    RST : in STD_LOGIC;
    Qa_micro : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Qb_micro : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Processeur : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of Processeur : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of Processeur : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of Processeur : entity is "4406ff80";
end Processeur;

architecture STRUCTURE of Processeur is
  signal ARG00_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal CLK_IBUF : STD_LOGIC;
  signal CLK_IBUF_BUFG : STD_LOGIC;
  signal DIEX_n_1 : STD_LOGIC;
  signal DIEX_n_100 : STD_LOGIC;
  signal DIEX_n_101 : STD_LOGIC;
  signal DIEX_n_102 : STD_LOGIC;
  signal DIEX_n_103 : STD_LOGIC;
  signal DIEX_n_104 : STD_LOGIC;
  signal DIEX_n_105 : STD_LOGIC;
  signal DIEX_n_106 : STD_LOGIC;
  signal DIEX_n_107 : STD_LOGIC;
  signal DIEX_n_11 : STD_LOGIC;
  signal DIEX_n_12 : STD_LOGIC;
  signal DIEX_n_13 : STD_LOGIC;
  signal DIEX_n_14 : STD_LOGIC;
  signal DIEX_n_15 : STD_LOGIC;
  signal DIEX_n_16 : STD_LOGIC;
  signal DIEX_n_17 : STD_LOGIC;
  signal DIEX_n_2 : STD_LOGIC;
  signal DIEX_n_24 : STD_LOGIC;
  signal DIEX_n_25 : STD_LOGIC;
  signal DIEX_n_29 : STD_LOGIC;
  signal DIEX_n_3 : STD_LOGIC;
  signal DIEX_n_30 : STD_LOGIC;
  signal DIEX_n_31 : STD_LOGIC;
  signal DIEX_n_32 : STD_LOGIC;
  signal DIEX_n_33 : STD_LOGIC;
  signal DIEX_n_34 : STD_LOGIC;
  signal DIEX_n_35 : STD_LOGIC;
  signal DIEX_n_36 : STD_LOGIC;
  signal DIEX_n_37 : STD_LOGIC;
  signal DIEX_n_38 : STD_LOGIC;
  signal DIEX_n_43 : STD_LOGIC;
  signal DIEX_n_44 : STD_LOGIC;
  signal DIEX_n_45 : STD_LOGIC;
  signal DIEX_n_46 : STD_LOGIC;
  signal DIEX_n_47 : STD_LOGIC;
  signal DIEX_n_48 : STD_LOGIC;
  signal DIEX_n_49 : STD_LOGIC;
  signal DIEX_n_5 : STD_LOGIC;
  signal DIEX_n_50 : STD_LOGIC;
  signal DIEX_n_51 : STD_LOGIC;
  signal DIEX_n_52 : STD_LOGIC;
  signal DIEX_n_53 : STD_LOGIC;
  signal DIEX_n_54 : STD_LOGIC;
  signal DIEX_n_55 : STD_LOGIC;
  signal DIEX_n_56 : STD_LOGIC;
  signal DIEX_n_57 : STD_LOGIC;
  signal DIEX_n_58 : STD_LOGIC;
  signal DIEX_n_59 : STD_LOGIC;
  signal DIEX_n_6 : STD_LOGIC;
  signal DIEX_n_60 : STD_LOGIC;
  signal DIEX_n_61 : STD_LOGIC;
  signal DIEX_n_62 : STD_LOGIC;
  signal DIEX_n_63 : STD_LOGIC;
  signal DIEX_n_64 : STD_LOGIC;
  signal DIEX_n_65 : STD_LOGIC;
  signal DIEX_n_66 : STD_LOGIC;
  signal DIEX_n_67 : STD_LOGIC;
  signal DIEX_n_68 : STD_LOGIC;
  signal DIEX_n_69 : STD_LOGIC;
  signal DIEX_n_7 : STD_LOGIC;
  signal DIEX_n_70 : STD_LOGIC;
  signal DIEX_n_71 : STD_LOGIC;
  signal DIEX_n_72 : STD_LOGIC;
  signal DIEX_n_73 : STD_LOGIC;
  signal DIEX_n_74 : STD_LOGIC;
  signal DIEX_n_75 : STD_LOGIC;
  signal DIEX_n_76 : STD_LOGIC;
  signal DIEX_n_77 : STD_LOGIC;
  signal DIEX_n_78 : STD_LOGIC;
  signal DIEX_n_79 : STD_LOGIC;
  signal DIEX_n_8 : STD_LOGIC;
  signal DIEX_n_80 : STD_LOGIC;
  signal DIEX_n_81 : STD_LOGIC;
  signal DIEX_n_82 : STD_LOGIC;
  signal DIEX_n_83 : STD_LOGIC;
  signal DIEX_n_84 : STD_LOGIC;
  signal DIEX_n_85 : STD_LOGIC;
  signal DIEX_n_86 : STD_LOGIC;
  signal DIEX_n_87 : STD_LOGIC;
  signal DIEX_n_88 : STD_LOGIC;
  signal DIEX_n_89 : STD_LOGIC;
  signal DIEX_n_9 : STD_LOGIC;
  signal DIEX_n_90 : STD_LOGIC;
  signal DIEX_n_91 : STD_LOGIC;
  signal DIEX_n_92 : STD_LOGIC;
  signal DIEX_n_93 : STD_LOGIC;
  signal DIEX_n_94 : STD_LOGIC;
  signal DIEX_n_95 : STD_LOGIC;
  signal DIEX_n_96 : STD_LOGIC;
  signal DIEX_n_97 : STD_LOGIC;
  signal DIEX_n_98 : STD_LOGIC;
  signal DIEX_n_99 : STD_LOGIC;
  signal EXMem_n_0 : STD_LOGIC;
  signal EXMem_n_1 : STD_LOGIC;
  signal EXMem_n_10 : STD_LOGIC;
  signal EXMem_n_11 : STD_LOGIC;
  signal EXMem_n_12 : STD_LOGIC;
  signal EXMem_n_33 : STD_LOGIC;
  signal EXMem_n_5 : STD_LOGIC;
  signal EXMem_n_6 : STD_LOGIC;
  signal EXMem_n_7 : STD_LOGIC;
  signal EXMem_n_8 : STD_LOGIC;
  signal EXMem_n_9 : STD_LOGIC;
  signal LIDI_n_1 : STD_LOGIC;
  signal LIDI_n_10 : STD_LOGIC;
  signal LIDI_n_15 : STD_LOGIC;
  signal LIDI_n_16 : STD_LOGIC;
  signal LIDI_n_17 : STD_LOGIC;
  signal LIDI_n_18 : STD_LOGIC;
  signal LIDI_n_19 : STD_LOGIC;
  signal LIDI_n_20 : STD_LOGIC;
  signal LIDI_n_21 : STD_LOGIC;
  signal LIDI_n_22 : STD_LOGIC;
  signal LIDI_n_23 : STD_LOGIC;
  signal LIDI_n_24 : STD_LOGIC;
  signal LIDI_n_25 : STD_LOGIC;
  signal LIDI_n_26 : STD_LOGIC;
  signal LIDI_n_27 : STD_LOGIC;
  signal LIDI_n_6 : STD_LOGIC;
  signal LIDI_n_7 : STD_LOGIC;
  signal LIDI_n_8 : STD_LOGIC;
  signal LIDI_n_9 : STD_LOGIC;
  signal MemRE_n_0 : STD_LOGIC;
  signal MemRE_n_1 : STD_LOGIC;
  signal MemRE_n_2 : STD_LOGIC;
  signal MemRE_n_3 : STD_LOGIC;
  signal MemRE_n_4 : STD_LOGIC;
  signal MemRE_n_5 : STD_LOGIC;
  signal MemRE_n_6 : STD_LOGIC;
  signal MemRE_n_7 : STD_LOGIC;
  signal Out_B : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal Out_C : STD_LOGIC_VECTOR ( 1 to 1 );
  signal Qa_micro_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal Qb_micro_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RST_IBUF : STD_LOGIC;
  signal UAL_n_10 : STD_LOGIC;
  signal UAL_n_11 : STD_LOGIC;
  signal UAL_n_12 : STD_LOGIC;
  signal UAL_n_13 : STD_LOGIC;
  signal UAL_n_14 : STD_LOGIC;
  signal UAL_n_15 : STD_LOGIC;
  signal UAL_n_16 : STD_LOGIC;
  signal UAL_n_17 : STD_LOGIC;
  signal UAL_n_18 : STD_LOGIC;
  signal UAL_n_19 : STD_LOGIC;
  signal UAL_n_20 : STD_LOGIC;
  signal UAL_n_21 : STD_LOGIC;
  signal UAL_n_22 : STD_LOGIC;
  signal UAL_n_23 : STD_LOGIC;
  signal UAL_n_24 : STD_LOGIC;
  signal UAL_n_25 : STD_LOGIC;
  signal UAL_n_26 : STD_LOGIC;
  signal UAL_n_28 : STD_LOGIC;
  signal UAL_n_29 : STD_LOGIC;
  signal UAL_n_30 : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_memory_n_0 : STD_LOGIC;
  signal data_memory_n_1 : STD_LOGIC;
  signal data_memory_n_10 : STD_LOGIC;
  signal data_memory_n_11 : STD_LOGIC;
  signal data_memory_n_12 : STD_LOGIC;
  signal data_memory_n_13 : STD_LOGIC;
  signal data_memory_n_14 : STD_LOGIC;
  signal data_memory_n_15 : STD_LOGIC;
  signal data_memory_n_16 : STD_LOGIC;
  signal data_memory_n_17 : STD_LOGIC;
  signal data_memory_n_18 : STD_LOGIC;
  signal data_memory_n_19 : STD_LOGIC;
  signal data_memory_n_2 : STD_LOGIC;
  signal data_memory_n_20 : STD_LOGIC;
  signal data_memory_n_21 : STD_LOGIC;
  signal data_memory_n_22 : STD_LOGIC;
  signal data_memory_n_23 : STD_LOGIC;
  signal data_memory_n_24 : STD_LOGIC;
  signal data_memory_n_25 : STD_LOGIC;
  signal data_memory_n_26 : STD_LOGIC;
  signal data_memory_n_27 : STD_LOGIC;
  signal data_memory_n_28 : STD_LOGIC;
  signal data_memory_n_29 : STD_LOGIC;
  signal data_memory_n_3 : STD_LOGIC;
  signal data_memory_n_30 : STD_LOGIC;
  signal data_memory_n_31 : STD_LOGIC;
  signal data_memory_n_32 : STD_LOGIC;
  signal data_memory_n_33 : STD_LOGIC;
  signal data_memory_n_34 : STD_LOGIC;
  signal data_memory_n_4 : STD_LOGIC;
  signal data_memory_n_5 : STD_LOGIC;
  signal data_memory_n_6 : STD_LOGIC;
  signal data_memory_n_7 : STD_LOGIC;
  signal data_memory_n_8 : STD_LOGIC;
  signal data_memory_n_9 : STD_LOGIC;
  signal instruction_memory_n_10 : STD_LOGIC;
  signal instruction_memory_n_11 : STD_LOGIC;
  signal instruction_memory_n_12 : STD_LOGIC;
  signal instruction_memory_n_13 : STD_LOGIC;
  signal instruction_memory_n_14 : STD_LOGIC;
  signal instruction_memory_n_9 : STD_LOGIC;
  signal \reg[0]_13\ : STD_LOGIC;
  signal \reg[0]_7\ : STD_LOGIC;
  signal \reg[12]_10\ : STD_LOGIC;
  signal \reg[13]_9\ : STD_LOGIC;
  signal \reg[14]_8\ : STD_LOGIC;
  signal \reg[15]_15\ : STD_LOGIC;
  signal \reg[1]_12\ : STD_LOGIC;
  signal \reg[1]_5\ : STD_LOGIC;
  signal \reg[252]_6\ : STD_LOGIC;
  signal \reg[253]_4\ : STD_LOGIC;
  signal \reg[254]_2\ : STD_LOGIC;
  signal \reg[255]_0\ : STD_LOGIC;
  signal \reg[2]_11\ : STD_LOGIC;
  signal \reg[2]_3\ : STD_LOGIC;
  signal \reg[3]_1\ : STD_LOGIC;
  signal \reg[3]_14\ : STD_LOGIC;
  signal sAL1 : STD_LOGIC;
  signal sIP_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sLC_ALU : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sMI_out : STD_LOGIC_VECTOR ( 27 downto 1 );
  signal sPip1_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sPip2_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sPip2_b : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal sPip2_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sPip3_a : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal sPip3_b : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sPip3_op : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \sLC_ALU_reg[0]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \sLC_ALU_reg[0]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sLC_ALU_reg[1]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sLC_ALU_reg[1]\ : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of \sLC_ALU_reg[2]\ : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of \sLC_ALU_reg[2]\ : label is "VCC:GE GND:CLR";
begin
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
DIEX: entity work.Pipeline
     port map (
      \ARG0__728_carry__1_i_5_0\(3) => DIEX_n_97,
      \ARG0__728_carry__1_i_5_0\(2) => DIEX_n_98,
      \ARG0__728_carry__1_i_5_0\(1) => DIEX_n_99,
      \ARG0__728_carry__1_i_5_0\(0) => DIEX_n_100,
      \ARG0__728_carry_i_10_0\(0) => ARG00_in(1),
      \ARG0__728_carry_i_1_0\(0) => DIEX_n_105,
      \ARG0__728_carry_i_7_0\(3) => DIEX_n_101,
      \ARG0__728_carry_i_7_0\(2) => DIEX_n_102,
      \ARG0__728_carry_i_7_0\(1) => DIEX_n_103,
      \ARG0__728_carry_i_7_0\(0) => DIEX_n_104,
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      CO(0) => UAL_n_22,
      D(7) => DIEX_n_30,
      D(6) => DIEX_n_31,
      D(5) => DIEX_n_32,
      D(4) => DIEX_n_33,
      D(3) => DIEX_n_34,
      D(2) => DIEX_n_35,
      D(1) => DIEX_n_36,
      D(0) => DIEX_n_37,
      DI(3) => DIEX_n_1,
      DI(2) => DIEX_n_2,
      DI(1) => DIEX_n_3,
      DI(0) => sPip2_b(0),
      E(0) => DIEX_n_9,
      O(3) => UAL_n_18,
      O(2) => UAL_n_19,
      O(1) => UAL_n_20,
      O(0) => UAL_n_21,
      \Out_A_reg[5]_0\(2) => sPip2_a(5),
      \Out_A_reg[5]_0\(1 downto 0) => sPip2_a(1 downto 0),
      \Out_A_reg[5]_1\(2) => LIDI_n_25,
      \Out_A_reg[5]_1\(1) => LIDI_n_26,
      \Out_A_reg[5]_1\(0) => LIDI_n_27,
      Out_B(1 downto 0) => Out_B(1 downto 0),
      \Out_B_reg[0]_0\(2) => DIEX_n_85,
      \Out_B_reg[0]_0\(1) => DIEX_n_86,
      \Out_B_reg[0]_0\(0) => DIEX_n_87,
      \Out_B_reg[0]_1\(0) => ARG00_in(0),
      \Out_B_reg[0]_2\ => LIDI_n_10,
      \Out_B_reg[1]_0\ => DIEX_n_62,
      \Out_B_reg[1]_1\ => UAL_n_30,
      \Out_B_reg[1]_2\ => LIDI_n_15,
      \Out_B_reg[2]_0\(2) => DIEX_n_50,
      \Out_B_reg[2]_0\(1) => DIEX_n_51,
      \Out_B_reg[2]_0\(0) => DIEX_n_52,
      \Out_B_reg[2]_1\(3) => DIEX_n_58,
      \Out_B_reg[2]_1\(2) => DIEX_n_59,
      \Out_B_reg[2]_1\(1) => DIEX_n_60,
      \Out_B_reg[2]_1\(0) => DIEX_n_61,
      \Out_B_reg[2]_2\(0) => DIEX_n_106,
      \Out_B_reg[2]_3\ => UAL_n_28,
      \Out_B_reg[2]_4\ => LIDI_n_16,
      \Out_B_reg[3]_0\(2) => DIEX_n_46,
      \Out_B_reg[3]_0\(1) => DIEX_n_47,
      \Out_B_reg[3]_0\(0) => DIEX_n_48,
      \Out_B_reg[3]_1\ => UAL_n_29,
      \Out_B_reg[3]_2\ => LIDI_n_17,
      \Out_B_reg[4]_0\(2) => DIEX_n_15,
      \Out_B_reg[4]_0\(1) => DIEX_n_16,
      \Out_B_reg[4]_0\(0) => DIEX_n_17,
      \Out_B_reg[4]_1\ => LIDI_n_18,
      \Out_B_reg[5]_0\ => LIDI_n_19,
      \Out_B_reg[6]_0\(5 downto 0) => sPip2_b(6 downto 1),
      \Out_B_reg[6]_1\(2 downto 0) => sLC_ALU(2 downto 0),
      \Out_B_reg[6]_2\ => LIDI_n_20,
      \Out_B_reg[7]_0\ => LIDI_n_6,
      \Out_B_reg[7]_1\ => LIDI_n_7,
      \Out_B_reg[7]_2\ => LIDI_n_21,
      \Out_B_reg[7]_i_147_0\(3) => UAL_n_23,
      \Out_B_reg[7]_i_147_0\(2) => UAL_n_24,
      \Out_B_reg[7]_i_147_0\(1) => UAL_n_25,
      \Out_B_reg[7]_i_147_0\(0) => UAL_n_26,
      \Out_C_reg[0]_0\(3) => DIEX_n_81,
      \Out_C_reg[0]_0\(2) => DIEX_n_82,
      \Out_C_reg[0]_0\(1) => DIEX_n_83,
      \Out_C_reg[0]_0\(0) => DIEX_n_84,
      \Out_C_reg[2]_0\ => DIEX_n_49,
      \Out_C_reg[3]_0\(3) => DIEX_n_11,
      \Out_C_reg[3]_0\(2) => DIEX_n_12,
      \Out_C_reg[3]_0\(1) => DIEX_n_13,
      \Out_C_reg[3]_0\(0) => DIEX_n_14,
      \Out_C_reg[3]_1\ => DIEX_n_53,
      \Out_C_reg[3]_2\(3) => DIEX_n_63,
      \Out_C_reg[3]_2\(2) => DIEX_n_64,
      \Out_C_reg[3]_2\(1) => DIEX_n_65,
      \Out_C_reg[3]_2\(0) => DIEX_n_66,
      \Out_C_reg[3]_3\(3) => DIEX_n_73,
      \Out_C_reg[3]_3\(2) => DIEX_n_74,
      \Out_C_reg[3]_3\(1) => DIEX_n_75,
      \Out_C_reg[3]_3\(0) => DIEX_n_76,
      \Out_C_reg[3]_4\(3) => DIEX_n_89,
      \Out_C_reg[3]_4\(2) => DIEX_n_90,
      \Out_C_reg[3]_4\(1) => DIEX_n_91,
      \Out_C_reg[3]_4\(0) => DIEX_n_92,
      \Out_C_reg[4]_0\ => DIEX_n_24,
      \Out_C_reg[5]_0\ => DIEX_n_25,
      \Out_C_reg[6]_0\(3) => DIEX_n_5,
      \Out_C_reg[6]_0\(2) => DIEX_n_6,
      \Out_C_reg[6]_0\(1) => DIEX_n_7,
      \Out_C_reg[6]_0\(0) => DIEX_n_8,
      \Out_C_reg[7]_0\(3) => DIEX_n_67,
      \Out_C_reg[7]_0\(2) => DIEX_n_68,
      \Out_C_reg[7]_0\(1) => DIEX_n_69,
      \Out_C_reg[7]_0\(0) => DIEX_n_70,
      \Out_C_reg[7]_1\(1) => DIEX_n_71,
      \Out_C_reg[7]_1\(0) => DIEX_n_72,
      \Out_C_reg[7]_2\(3) => DIEX_n_77,
      \Out_C_reg[7]_2\(2) => DIEX_n_78,
      \Out_C_reg[7]_2\(1) => DIEX_n_79,
      \Out_C_reg[7]_2\(0) => DIEX_n_80,
      \Out_C_reg[7]_3\(3) => DIEX_n_93,
      \Out_C_reg[7]_3\(2) => DIEX_n_94,
      \Out_C_reg[7]_3\(1) => DIEX_n_95,
      \Out_C_reg[7]_3\(0) => DIEX_n_96,
      \Out_C_reg[7]_4\(0) => DIEX_n_107,
      \Out_OP_reg[3]_0\ => DIEX_n_29,
      \Out_OP_reg[3]_1\ => DIEX_n_38,
      \Out_OP_reg[3]_2\(2) => DIEX_n_43,
      \Out_OP_reg[3]_2\(1) => DIEX_n_44,
      \Out_OP_reg[3]_2\(0) => DIEX_n_45,
      Q(2) => sPip3_a(5),
      Q(1 downto 0) => sPip3_a(1 downto 0),
      Qb_micro_OBUF(7 downto 0) => Qb_micro_OBUF(7 downto 0),
      S(3) => DIEX_n_54,
      S(2) => DIEX_n_55,
      S(1) => DIEX_n_56,
      S(0) => DIEX_n_57,
      \count_reg[0]\ => EXMem_n_33,
      \count_reg[0]_0\ => LIDI_n_22,
      \count_reg[0]_1\ => EXMem_n_1,
      \count_reg[0]_2\ => EXMem_n_0,
      \count_reg[0]_3\ => LIDI_n_9,
      \count_reg[0]_4\ => LIDI_n_24,
      \count_reg[0]_5\ => LIDI_n_23,
      data0(4 downto 1) => data0(7 downto 4),
      data0(0) => data0(0),
      data1(4 downto 1) => data1(7 downto 4),
      data1(0) => data1(0),
      \multOp__22_carry\(0) => DIEX_n_88,
      \multOp__35_carry__0\(3) => UAL_n_10,
      \multOp__35_carry__0\(2) => UAL_n_11,
      \multOp__35_carry__0\(1) => UAL_n_12,
      \multOp__35_carry__0\(0) => UAL_n_13,
      \multOp__35_carry__0_0\(0) => UAL_n_17,
      \multOp__35_carry__0_i_1_0\(2) => UAL_n_14,
      \multOp__35_carry__0_i_1_0\(1) => UAL_n_15,
      \multOp__35_carry__0_i_1_0\(0) => UAL_n_16,
      sAL1 => sAL1,
      sPip1_op(3 downto 0) => sPip1_op(3 downto 0),
      sPip2_op(3 downto 0) => sPip2_op(3 downto 0)
    );
EXMem: entity work.Pipeline_0
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(7) => EXMem_n_5,
      D(6) => EXMem_n_6,
      D(5) => EXMem_n_7,
      D(4) => EXMem_n_8,
      D(3) => EXMem_n_9,
      D(2) => EXMem_n_10,
      D(1) => EXMem_n_11,
      D(0) => EXMem_n_12,
      E(0) => \reg[0]_7\,
      \Out_A_reg[0]_0\ => EXMem_n_1,
      \Out_A_reg[0]_1\(0) => \reg[1]_5\,
      \Out_A_reg[0]_2\(0) => \reg[3]_1\,
      \Out_A_reg[1]_0\(0) => \reg[2]_3\,
      \Out_A_reg[5]_0\(2) => sPip2_a(5),
      \Out_A_reg[5]_0\(1 downto 0) => sPip2_a(1 downto 0),
      Out_B(1 downto 0) => Out_B(1 downto 0),
      \Out_B[7]_i_2__0_0\(1) => data_memory_n_33,
      \Out_B[7]_i_2__0_0\(0) => data_memory_n_34,
      \Out_B[7]_i_2__0_1\(2) => data_memory_n_30,
      \Out_B[7]_i_2__0_1\(1) => data_memory_n_31,
      \Out_B[7]_i_2__0_1\(0) => data_memory_n_32,
      \Out_B[7]_i_4__0_0\(2) => data_memory_n_17,
      \Out_B[7]_i_4__0_0\(1) => data_memory_n_18,
      \Out_B[7]_i_4__0_0\(0) => data_memory_n_19,
      \Out_B[7]_i_4__0_1\(2) => data_memory_n_20,
      \Out_B[7]_i_4__0_1\(1) => data_memory_n_21,
      \Out_B[7]_i_4__0_1\(0) => data_memory_n_22,
      \Out_B_reg[0]_0\ => data_memory_n_10,
      \Out_B_reg[0]_1\ => data_memory_n_9,
      \Out_B_reg[1]_0\ => data_memory_n_8,
      \Out_B_reg[2]_0\ => data_memory_n_7,
      \Out_B_reg[2]_1\ => data_memory_n_6,
      \Out_B_reg[3]_0\ => data_memory_n_5,
      \Out_B_reg[4]_0\ => data_memory_n_4,
      \Out_B_reg[4]_1\ => data_memory_n_3,
      \Out_B_reg[5]_0\ => data_memory_n_2,
      \Out_B_reg[5]_1\ => data_memory_n_1,
      \Out_B_reg[6]_0\ => data_memory_n_0,
      \Out_B_reg[7]_0\(7 downto 0) => sPip3_b(7 downto 0),
      \Out_B_reg[7]_1\(2) => data_memory_n_11,
      \Out_B_reg[7]_1\(1) => data_memory_n_12,
      \Out_B_reg[7]_1\(0) => data_memory_n_13,
      \Out_B_reg[7]_2\(2) => data_memory_n_14,
      \Out_B_reg[7]_2\(1) => data_memory_n_15,
      \Out_B_reg[7]_2\(0) => data_memory_n_16,
      \Out_B_reg[7]_3\(2) => data_memory_n_27,
      \Out_B_reg[7]_3\(1) => data_memory_n_28,
      \Out_B_reg[7]_3\(0) => data_memory_n_29,
      \Out_B_reg[7]_4\(3) => data_memory_n_23,
      \Out_B_reg[7]_4\(2) => data_memory_n_24,
      \Out_B_reg[7]_4\(1) => data_memory_n_25,
      \Out_B_reg[7]_4\(0) => data_memory_n_26,
      \Out_B_reg[7]_5\(7) => DIEX_n_30,
      \Out_B_reg[7]_5\(6) => DIEX_n_31,
      \Out_B_reg[7]_5\(5) => DIEX_n_32,
      \Out_B_reg[7]_5\(4) => DIEX_n_33,
      \Out_B_reg[7]_5\(3) => DIEX_n_34,
      \Out_B_reg[7]_5\(2) => DIEX_n_35,
      \Out_B_reg[7]_5\(1) => DIEX_n_36,
      \Out_B_reg[7]_5\(0) => DIEX_n_37,
      Out_C(0) => Out_C(1),
      \Out_C_reg[1]\ => EXMem_n_0,
      \Out_OP_reg[0]_0\(0) => \reg[252]_6\,
      \Out_OP_reg[0]_1\(0) => \reg[253]_4\,
      \Out_OP_reg[0]_2\(0) => \reg[254]_2\,
      \Out_OP_reg[0]_3\(0) => \reg[255]_0\,
      \Out_OP_reg[3]_0\(3 downto 0) => sPip3_op(3 downto 0),
      \Out_OP_reg[3]_1\ => EXMem_n_33,
      \Out_OP_reg[3]_2\(3 downto 0) => sPip2_op(3 downto 0),
      Q(2) => sPip3_a(5),
      Q(1 downto 0) => sPip3_a(1 downto 0),
      \count[7]_i_6\ => LIDI_n_8,
      \count[7]_i_6_0\ => LIDI_n_1
    );
LIDI: entity work.Pipeline_1
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      \Out_A_reg[0]_0\ => LIDI_n_24,
      \Out_A_reg[0]_1\ => instruction_memory_n_12,
      \Out_A_reg[1]_0\ => LIDI_n_9,
      \Out_A_reg[5]_0\ => LIDI_n_22,
      \Out_A_reg[5]_1\(2) => LIDI_n_25,
      \Out_A_reg[5]_1\(1) => LIDI_n_26,
      \Out_A_reg[5]_1\(0) => LIDI_n_27,
      \Out_B_reg[0]_0\ => LIDI_n_1,
      \Out_B_reg[0]_1\ => LIDI_n_10,
      \Out_B_reg[0]_2\(2 downto 0) => sIP_out(7 downto 5),
      \Out_B_reg[0]_3\ => instruction_memory_n_9,
      \Out_B_reg[1]_0\ => LIDI_n_15,
      \Out_B_reg[2]_0\ => LIDI_n_6,
      \Out_B_reg[2]_1\ => LIDI_n_16,
      \Out_B_reg[3]_0\(3 downto 0) => Out_B(3 downto 0),
      \Out_B_reg[3]_1\ => LIDI_n_17,
      \Out_B_reg[3]_2\ => LIDI_n_23,
      \Out_B_reg[5]_0\ => LIDI_n_8,
      \Out_B_reg[5]_1\ => LIDI_n_18,
      \Out_B_reg[5]_2\ => LIDI_n_19,
      \Out_B_reg[5]_3\ => LIDI_n_20,
      \Out_B_reg[5]_4\ => LIDI_n_21,
      Out_C(0) => Out_C(1),
      \Out_C_reg[1]_0\ => LIDI_n_7,
      \Out_OP_reg[0]_0\ => instruction_memory_n_10,
      \Out_OP_reg[2]_0\ => instruction_memory_n_11,
      Q(1 downto 0) => sPip3_a(1 downto 0),
      Qa_micro_OBUF(7 downto 0) => Qa_micro_OBUF(7 downto 0),
      \count_reg[0]\(2) => sPip2_a(5),
      \count_reg[0]\(1 downto 0) => sPip2_a(1 downto 0),
      \count_reg[0]_0\ => DIEX_n_29,
      sAL1 => sAL1,
      sMI_out(8) => sMI_out(27),
      sMI_out(7) => sMI_out(25),
      sMI_out(6) => sMI_out(21),
      sMI_out(5) => sMI_out(17),
      sMI_out(4) => sMI_out(13),
      sMI_out(3 downto 1) => sMI_out(11 downto 9),
      sMI_out(0) => sMI_out(1),
      sPip1_op(3 downto 0) => sPip1_op(3 downto 0)
    );
MemRE: entity work.Pipeline_2
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(7) => EXMem_n_5,
      D(6) => EXMem_n_6,
      D(5) => EXMem_n_7,
      D(4) => EXMem_n_8,
      D(3) => EXMem_n_9,
      D(2) => EXMem_n_10,
      D(1) => EXMem_n_11,
      D(0) => EXMem_n_12,
      E(0) => \reg[15]_15\,
      \Out_A_reg[0]_0\(0) => \reg[3]_14\,
      \Out_A_reg[0]_1\(0) => \reg[0]_13\,
      \Out_A_reg[0]_2\(0) => \reg[2]_11\,
      \Out_A_reg[1]_0\(0) => \reg[1]_12\,
      \Out_A_reg[3]_0\(0) => \reg[12]_10\,
      \Out_A_reg[3]_1\(0) => \reg[13]_9\,
      \Out_A_reg[3]_2\(0) => \reg[14]_8\,
      \Out_A_reg[3]_3\(2) => sPip3_a(5),
      \Out_A_reg[3]_3\(1 downto 0) => sPip3_a(1 downto 0),
      \Out_OP_reg[3]_0\(3 downto 0) => sPip3_op(3 downto 0),
      Q(7) => MemRE_n_0,
      Q(6) => MemRE_n_1,
      Q(5) => MemRE_n_2,
      Q(4) => MemRE_n_3,
      Q(3) => MemRE_n_4,
      Q(2) => MemRE_n_5,
      Q(1) => MemRE_n_6,
      Q(0) => MemRE_n_7
    );
\Qa_micro_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(0),
      O => Qa_micro(0)
    );
\Qa_micro_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(1),
      O => Qa_micro(1)
    );
\Qa_micro_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(2),
      O => Qa_micro(2)
    );
\Qa_micro_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(3),
      O => Qa_micro(3)
    );
\Qa_micro_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(4),
      O => Qa_micro(4)
    );
\Qa_micro_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(5),
      O => Qa_micro(5)
    );
\Qa_micro_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(6),
      O => Qa_micro(6)
    );
\Qa_micro_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qa_micro_OBUF(7),
      O => Qa_micro(7)
    );
\Qb_micro_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(0),
      O => Qb_micro(0)
    );
\Qb_micro_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(1),
      O => Qb_micro(1)
    );
\Qb_micro_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(2),
      O => Qb_micro(2)
    );
\Qb_micro_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(3),
      O => Qb_micro(3)
    );
\Qb_micro_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(4),
      O => Qb_micro(4)
    );
\Qb_micro_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(5),
      O => Qb_micro(5)
    );
\Qb_micro_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(6),
      O => Qb_micro(6)
    );
\Qb_micro_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => Qb_micro_OBUF(7),
      O => Qb_micro(7)
    );
RST_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => RST,
      O => RST_IBUF
    );
UAL: entity work.ALU
     port map (
      \ARG0__728_carry__0_0\(2) => DIEX_n_1,
      \ARG0__728_carry__0_0\(1) => DIEX_n_2,
      \ARG0__728_carry__0_0\(0) => DIEX_n_3,
      \ARG0__728_carry__0_1\(3) => DIEX_n_89,
      \ARG0__728_carry__0_1\(2) => DIEX_n_90,
      \ARG0__728_carry__0_1\(1) => DIEX_n_91,
      \ARG0__728_carry__0_1\(0) => DIEX_n_92,
      \ARG0__728_carry__1_0\(3) => DIEX_n_5,
      \ARG0__728_carry__1_0\(2) => DIEX_n_6,
      \ARG0__728_carry__1_0\(1) => DIEX_n_7,
      \ARG0__728_carry__1_0\(0) => DIEX_n_8,
      \ARG0__728_carry__1_1\(3) => DIEX_n_93,
      \ARG0__728_carry__1_1\(2) => DIEX_n_94,
      \ARG0__728_carry__1_1\(1) => DIEX_n_95,
      \ARG0__728_carry__1_1\(0) => DIEX_n_96,
      \ARG0__728_carry__2_0\(3) => DIEX_n_97,
      \ARG0__728_carry__2_0\(2) => DIEX_n_98,
      \ARG0__728_carry__2_0\(1) => DIEX_n_99,
      \ARG0__728_carry__2_0\(0) => DIEX_n_100,
      \ARG0__728_carry__3_0\(3) => DIEX_n_101,
      \ARG0__728_carry__3_0\(2) => DIEX_n_102,
      \ARG0__728_carry__3_0\(1) => DIEX_n_103,
      \ARG0__728_carry__3_0\(0) => DIEX_n_104,
      \ARG0__728_carry__3_i_1\(0) => ARG00_in(0),
      CO(0) => UAL_n_22,
      DI(3) => DIEX_n_71,
      DI(2) => DIEX_n_72,
      DI(1) => DIEX_n_25,
      DI(0) => DIEX_n_24,
      O(3) => UAL_n_18,
      O(2) => UAL_n_19,
      O(1) => UAL_n_20,
      O(0) => UAL_n_21,
      \Out_B[0]_i_3\(3) => DIEX_n_73,
      \Out_B[0]_i_3\(2) => DIEX_n_74,
      \Out_B[0]_i_3\(1) => DIEX_n_75,
      \Out_B[0]_i_3\(0) => DIEX_n_76,
      \Out_B[0]_i_4\(2) => DIEX_n_46,
      \Out_B[0]_i_4\(1) => DIEX_n_47,
      \Out_B[0]_i_4\(0) => DIEX_n_48,
      \Out_B[0]_i_4_0\(3) => DIEX_n_58,
      \Out_B[0]_i_4_0\(2) => DIEX_n_59,
      \Out_B[0]_i_4_0\(1) => DIEX_n_60,
      \Out_B[0]_i_4_0\(0) => DIEX_n_61,
      \Out_B[0]_i_5\(0) => ARG00_in(1),
      \Out_B[0]_i_5_0\(0) => DIEX_n_105,
      \Out_B[3]_i_2__0_0\(0) => DIEX_n_88,
      \Out_B[3]_i_2__0_1\(2) => DIEX_n_85,
      \Out_B[3]_i_2__0_1\(1) => DIEX_n_86,
      \Out_B[3]_i_2__0_1\(0) => DIEX_n_87,
      \Out_B[4]_i_2__0\(3) => DIEX_n_77,
      \Out_B[4]_i_2__0\(2) => DIEX_n_78,
      \Out_B[4]_i_2__0\(1) => DIEX_n_79,
      \Out_B[4]_i_2__0\(0) => DIEX_n_80,
      \Out_B[7]_i_156\(3) => DIEX_n_67,
      \Out_B[7]_i_156\(2) => DIEX_n_68,
      \Out_B[7]_i_156\(1) => DIEX_n_69,
      \Out_B[7]_i_156\(0) => DIEX_n_70,
      \Out_B[7]_i_162\(3) => DIEX_n_11,
      \Out_B[7]_i_162\(2) => DIEX_n_12,
      \Out_B[7]_i_162\(1) => DIEX_n_13,
      \Out_B[7]_i_162\(0) => DIEX_n_14,
      \Out_B[7]_i_162_0\(3) => DIEX_n_63,
      \Out_B[7]_i_162_0\(2) => DIEX_n_64,
      \Out_B[7]_i_162_0\(1) => DIEX_n_65,
      \Out_B[7]_i_162_0\(0) => DIEX_n_66,
      \Out_B[7]_i_2__1\(0) => DIEX_n_107,
      \Out_B_reg[1]\ => UAL_n_30,
      \Out_B_reg[1]_0\ => DIEX_n_62,
      \Out_B_reg[2]\(2) => UAL_n_14,
      \Out_B_reg[2]\(1) => UAL_n_15,
      \Out_B_reg[2]\(0) => UAL_n_16,
      \Out_B_reg[2]_0\(0) => UAL_n_17,
      \Out_B_reg[2]_1\ => DIEX_n_49,
      \Out_B_reg[3]\ => DIEX_n_53,
      \Out_B_reg[4]\(3) => UAL_n_10,
      \Out_B_reg[4]\(2) => UAL_n_11,
      \Out_B_reg[4]\(1) => UAL_n_12,
      \Out_B_reg[4]\(0) => UAL_n_13,
      \Out_B_reg[6]\(4 downto 1) => data0(7 downto 4),
      \Out_B_reg[6]\(0) => data0(0),
      \Out_C_reg[2]\ => UAL_n_28,
      \Out_C_reg[3]\ => UAL_n_29,
      \Out_C_reg[7]\(4 downto 1) => data1(7 downto 4),
      \Out_C_reg[7]\(0) => data1(0),
      \Out_C_reg[7]_0\(3) => UAL_n_23,
      \Out_C_reg[7]_0\(2) => UAL_n_24,
      \Out_C_reg[7]_0\(1) => UAL_n_25,
      \Out_C_reg[7]_0\(0) => UAL_n_26,
      Q(2 downto 0) => sLC_ALU(2 downto 0),
      S(3) => DIEX_n_54,
      S(2) => DIEX_n_55,
      S(1) => DIEX_n_56,
      S(0) => DIEX_n_57,
      \multOp__35_carry__0_i_1\(0) => DIEX_n_106,
      \multOp__35_carry_i_4\(2) => DIEX_n_15,
      \multOp__35_carry_i_4\(1) => DIEX_n_16,
      \multOp__35_carry_i_4\(0) => DIEX_n_17,
      \multOp__35_carry_i_4_0\(3) => DIEX_n_81,
      \multOp__35_carry_i_4_0\(2) => DIEX_n_82,
      \multOp__35_carry_i_4_0\(1) => DIEX_n_83,
      \multOp__35_carry_i_4_0\(0) => DIEX_n_84,
      \multOp__35_carry_i_5_0\(2) => DIEX_n_50,
      \multOp__35_carry_i_5_0\(1) => DIEX_n_51,
      \multOp__35_carry_i_5_0\(0) => DIEX_n_52,
      sPip2_b(6 downto 0) => sPip2_b(6 downto 0)
    );
data_memory: entity work.memory_data
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      E(0) => \reg[255]_0\,
      Q(2) => data_memory_n_11,
      Q(1) => data_memory_n_12,
      Q(0) => data_memory_n_13,
      SR(0) => RST_IBUF,
      \reg_reg[0][7]_0\(1) => data_memory_n_33,
      \reg_reg[0][7]_0\(0) => data_memory_n_34,
      \reg_reg[0][7]_1\(0) => \reg[0]_7\,
      \reg_reg[1][1]_0\ => data_memory_n_8,
      \reg_reg[1][7]_0\(2) => data_memory_n_30,
      \reg_reg[1][7]_0\(1) => data_memory_n_31,
      \reg_reg[1][7]_0\(0) => data_memory_n_32,
      \reg_reg[1][7]_1\(0) => \reg[1]_5\,
      \reg_reg[252][7]_0\(2) => data_memory_n_20,
      \reg_reg[252][7]_0\(1) => data_memory_n_21,
      \reg_reg[252][7]_0\(0) => data_memory_n_22,
      \reg_reg[252][7]_1\(0) => \reg[252]_6\,
      \reg_reg[253][7]_0\(2) => data_memory_n_17,
      \reg_reg[253][7]_0\(1) => data_memory_n_18,
      \reg_reg[253][7]_0\(0) => data_memory_n_19,
      \reg_reg[253][7]_1\(0) => \reg[253]_4\,
      \reg_reg[254][7]_0\(2) => data_memory_n_14,
      \reg_reg[254][7]_0\(1) => data_memory_n_15,
      \reg_reg[254][7]_0\(0) => data_memory_n_16,
      \reg_reg[254][7]_1\(0) => \reg[254]_2\,
      \reg_reg[255][0]_0\ => data_memory_n_9,
      \reg_reg[255][2]_0\ => data_memory_n_7,
      \reg_reg[255][3]_0\ => data_memory_n_5,
      \reg_reg[255][4]_0\ => data_memory_n_4,
      \reg_reg[255][5]_0\ => data_memory_n_2,
      \reg_reg[255][7]_0\(7 downto 0) => sPip3_b(7 downto 0),
      \reg_reg[2][0]_0\ => data_memory_n_10,
      \reg_reg[2][7]_0\(2) => data_memory_n_27,
      \reg_reg[2][7]_0\(1) => data_memory_n_28,
      \reg_reg[2][7]_0\(0) => data_memory_n_29,
      \reg_reg[2][7]_1\(0) => \reg[2]_3\,
      \reg_reg[3][2]_0\ => data_memory_n_6,
      \reg_reg[3][4]_0\ => data_memory_n_3,
      \reg_reg[3][5]_0\ => data_memory_n_1,
      \reg_reg[3][6]_0\ => data_memory_n_0,
      \reg_reg[3][7]_0\(3) => data_memory_n_23,
      \reg_reg[3][7]_0\(2) => data_memory_n_24,
      \reg_reg[3][7]_0\(1) => data_memory_n_25,
      \reg_reg[3][7]_0\(0) => data_memory_n_26,
      \reg_reg[3][7]_1\(0) => \reg[3]_1\
    );
instruction_memory: entity work.memory_instruction
     port map (
      D(0) => instruction_memory_n_14,
      Q(7 downto 0) => sIP_out(7 downto 0),
      \count_reg[0]\ => instruction_memory_n_11,
      \count_reg[0]_0\ => instruction_memory_n_13,
      \count_reg[3]\ => instruction_memory_n_9,
      \count_reg[4]\ => instruction_memory_n_10,
      \count_reg[4]_0\ => instruction_memory_n_12,
      sMI_out(8) => sMI_out(27),
      sMI_out(7) => sMI_out(25),
      sMI_out(6) => sMI_out(21),
      sMI_out(5) => sMI_out(17),
      sMI_out(4) => sMI_out(13),
      sMI_out(3 downto 1) => sMI_out(11 downto 9),
      sMI_out(0) => sMI_out(1)
    );
ip: entity work.compteur_8_bits
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(0) => instruction_memory_n_14,
      E(0) => DIEX_n_9,
      Q(7 downto 0) => sIP_out(7 downto 0),
      SR(0) => RST_IBUF,
      \count_reg[6]_0\ => instruction_memory_n_13
    );
register_bank: entity work.Registre
     port map (
      CLK_IBUF_BUFG => CLK_IBUF_BUFG,
      D(7) => MemRE_n_0,
      D(6) => MemRE_n_1,
      D(5) => MemRE_n_2,
      D(4) => MemRE_n_3,
      D(3) => MemRE_n_4,
      D(2) => MemRE_n_5,
      D(1) => MemRE_n_6,
      D(0) => MemRE_n_7,
      E(0) => \reg[15]_15\,
      \Out_B_reg[0]\(3 downto 0) => Out_B(3 downto 0),
      Out_C(0) => Out_C(1),
      Qa_micro_OBUF(7 downto 0) => Qa_micro_OBUF(7 downto 0),
      Qb_micro_OBUF(7 downto 0) => Qb_micro_OBUF(7 downto 0),
      SR(0) => RST_IBUF,
      \reg_reg[0][7]_0\(0) => \reg[0]_13\,
      \reg_reg[12][7]_0\(0) => \reg[12]_10\,
      \reg_reg[13][7]_0\(0) => \reg[13]_9\,
      \reg_reg[14][7]_0\(0) => \reg[14]_8\,
      \reg_reg[1][7]_0\(0) => \reg[1]_12\,
      \reg_reg[2][7]_0\(0) => \reg[2]_11\,
      \reg_reg[3][7]_0\(0) => \reg[3]_14\
    );
\sLC_ALU_reg[0]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => DIEX_n_45,
      G => DIEX_n_38,
      GE => '1',
      Q => sLC_ALU(0)
    );
\sLC_ALU_reg[1]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => DIEX_n_44,
      G => DIEX_n_38,
      GE => '1',
      Q => sLC_ALU(1)
    );
\sLC_ALU_reg[2]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => DIEX_n_43,
      G => DIEX_n_38,
      GE => '1',
      Q => sLC_ALU(2)
    );
end STRUCTURE;
