-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Feb 13 11:53:08 2019
-- Host        : CEAT-ENDV-PC059 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               C:/Users/alexasu/Desktop/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.vhdl
-- Design      : design_1_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_MemControl is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    start : out STD_LOGIC;
    DRW : out STD_LOGIC;
    \q_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    MemWrite : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    \FSM_sequential_CURRENT_STATE_reg[2]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_MemControl : entity is "MemControl";
end design_1_top_0_0_MemControl;

architecture STRUCTURE of design_1_top_0_0_MemControl is
  signal CURRENT_STATE : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of CURRENT_STATE : signal is "yes";
  signal \FSM_sequential_CURRENT_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CURRENT_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_CURRENT_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \^out\ : signal is "yes";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_CURRENT_STATE_reg[0]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_CURRENT_STATE_reg[0]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_CURRENT_STATE_reg[0]\ : label is "FD_1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CURRENT_STATE_reg[1]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute KEEP of \FSM_sequential_CURRENT_STATE_reg[1]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_CURRENT_STATE_reg[1]\ : label is "FD_1";
  attribute FSM_ENCODED_STATES of \FSM_sequential_CURRENT_STATE_reg[2]\ : label is "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010";
  attribute KEEP of \FSM_sequential_CURRENT_STATE_reg[2]\ : label is "yes";
  attribute XILINX_LEGACY_PRIM of \FSM_sequential_CURRENT_STATE_reg[2]\ : label is "FD_1";
begin
  \out\(1 downto 0) <= \^out\(1 downto 0);
DRW_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \^out\(1),
      I1 => CURRENT_STATE(1),
      I2 => \^out\(0),
      O => DRW
    );
\FSM_sequential_CURRENT_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000222E2222"
    )
        port map (
      I0 => \FSM_sequential_CURRENT_STATE_reg[2]_0\,
      I1 => CURRENT_STATE(1),
      I2 => \^out\(1),
      I3 => \^out\(0),
      I4 => doneM,
      I5 => reset,
      O => \FSM_sequential_CURRENT_STATE[0]_i_1_n_0\
    );
\FSM_sequential_CURRENT_STATE[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001A12"
    )
        port map (
      I0 => \^out\(0),
      I1 => \^out\(1),
      I2 => CURRENT_STATE(1),
      I3 => doneM,
      I4 => reset,
      O => \FSM_sequential_CURRENT_STATE[1]_i_1_n_0\
    );
\FSM_sequential_CURRENT_STATE[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AABA"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => \q_reg[0]\(0),
      I3 => MemWrite,
      I4 => CURRENT_STATE(1),
      I5 => reset,
      O => \FSM_sequential_CURRENT_STATE[2]_i_1_n_0\
    );
\FSM_sequential_CURRENT_STATE_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CURRENT_STATE[0]_i_1_n_0\,
      Q => \^out\(0),
      R => '0'
    );
\FSM_sequential_CURRENT_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CURRENT_STATE[1]_i_1_n_0\,
      Q => CURRENT_STATE(1),
      R => '0'
    );
\FSM_sequential_CURRENT_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_CURRENT_STATE[2]_i_1_n_0\,
      Q => \^out\(1),
      R => '0'
    );
\q[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => CURRENT_STATE(1),
      I1 => \^out\(0),
      I2 => \^out\(1),
      O => E(0)
    );
start_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \^out\(1),
      I1 => \^out\(0),
      I2 => CURRENT_STATE(1),
      O => start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder is
  port (
    d1_0 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[19]\ : out STD_LOGIC;
    \q_reg[19]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[19]_1\ : out STD_LOGIC;
    \q_reg[4]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    writeDataM_27_sp_1 : out STD_LOGIC;
    \writeDataM[31]\ : out STD_LOGIC;
    writeDataM : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[19]_2\ : out STD_LOGIC;
    \q_reg[1]\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[0]_1\ : out STD_LOGIC;
    \q_reg[0]_2\ : out STD_LOGIC;
    \q_reg[0]_3\ : out STD_LOGIC;
    \q_reg[0]_4\ : out STD_LOGIC;
    \q_reg[0]_5\ : out STD_LOGIC;
    \q_reg[0]_6\ : out STD_LOGIC;
    \q_reg[0]_7\ : out STD_LOGIC;
    \q_reg[1]_2\ : out STD_LOGIC;
    \q_reg[1]_3\ : out STD_LOGIC;
    \q_reg[1]_4\ : out STD_LOGIC;
    \q_reg[1]_5\ : out STD_LOGIC;
    \q_reg[0]_8\ : out STD_LOGIC;
    \q_reg[0]_9\ : out STD_LOGIC;
    \q_reg[0]_10\ : out STD_LOGIC;
    \q_reg[1]_6\ : out STD_LOGIC;
    \q_reg[1]_7\ : out STD_LOGIC;
    \writeDataM[29]\ : out STD_LOGIC;
    \q_reg[1]_8\ : out STD_LOGIC;
    \q_reg[1]_9\ : out STD_LOGIC;
    \q_reg[1]_10\ : out STD_LOGIC;
    \q_reg[0]_11\ : out STD_LOGIC;
    \q_reg[0]_12\ : out STD_LOGIC;
    \q_reg[0]_13\ : out STD_LOGIC;
    \q_reg[1]_11\ : out STD_LOGIC;
    \q_reg[1]_12\ : out STD_LOGIC;
    \q_reg[1]_13\ : out STD_LOGIC;
    \q_reg[0]_14\ : out STD_LOGIC;
    \q_reg[0]_15\ : out STD_LOGIC;
    \q_reg[0]_16\ : out STD_LOGIC;
    \q_reg[1]_14\ : out STD_LOGIC;
    \q_reg[27]\ : out STD_LOGIC;
    \q_reg[0]_17\ : out STD_LOGIC;
    \q_reg[27]_0\ : out STD_LOGIC;
    \q_reg[26]\ : out STD_LOGIC;
    \q_reg[26]_0\ : out STD_LOGIC;
    \q_reg[25]\ : out STD_LOGIC;
    \q_reg[25]_0\ : out STD_LOGIC;
    \q_reg[24]\ : out STD_LOGIC;
    \q_reg[24]_0\ : out STD_LOGIC;
    \q_reg[1]_15\ : out STD_LOGIC;
    \q_reg[1]_16\ : out STD_LOGIC;
    \q_reg[27]_1\ : out STD_LOGIC;
    \q_reg[0]_18\ : out STD_LOGIC;
    \q_reg[27]_2\ : out STD_LOGIC;
    \q_reg[26]_1\ : out STD_LOGIC;
    \q_reg[26]_2\ : out STD_LOGIC;
    \q_reg[25]_1\ : out STD_LOGIC;
    \q_reg[0]_19\ : out STD_LOGIC;
    \q_reg[25]_2\ : out STD_LOGIC;
    \q_reg[0]_20\ : out STD_LOGIC;
    \q_reg[0]_21\ : out STD_LOGIC;
    \q_reg[0]_22\ : out STD_LOGIC;
    \q_reg[0]_23\ : out STD_LOGIC;
    y01_in : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]_24\ : out STD_LOGIC;
    \q_reg[0]_25\ : out STD_LOGIC;
    \q_reg[0]_26\ : out STD_LOGIC;
    SrcA : out STD_LOGIC_VECTOR ( 30 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 30 downto 0 );
    S : in STD_LOGIC_VECTOR ( 0 to 0 );
    Instr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[1]_17\ : in STD_LOGIC;
    r15 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    rd20 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[1]_18\ : in STD_LOGIC;
    \q_reg[0]_27\ : in STD_LOGIC;
    \q_reg[1]_19\ : in STD_LOGIC;
    \q_reg[1]_20\ : in STD_LOGIC;
    \q_reg[0]_28\ : in STD_LOGIC;
    \q_reg[0]_29\ : in STD_LOGIC;
    \q_reg[0]_30\ : in STD_LOGIC;
    \q_reg[1]_21\ : in STD_LOGIC;
    \q_reg[0]_31\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder : entity is "adder";
end design_1_top_0_0_adder;

architecture STRUCTURE of design_1_top_0_0_adder is
  signal \addressM[0]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_40_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_43_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_46_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_52_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_54_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_55_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_57_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_58_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_60_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \^d1_0\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \^q_reg[0]_10\ : STD_LOGIC;
  signal \^q_reg[0]_11\ : STD_LOGIC;
  signal \^q_reg[0]_12\ : STD_LOGIC;
  signal \^q_reg[0]_13\ : STD_LOGIC;
  signal \^q_reg[0]_14\ : STD_LOGIC;
  signal \^q_reg[0]_15\ : STD_LOGIC;
  signal \^q_reg[0]_16\ : STD_LOGIC;
  signal \^q_reg[0]_2\ : STD_LOGIC;
  signal \^q_reg[0]_21\ : STD_LOGIC;
  signal \^q_reg[0]_22\ : STD_LOGIC;
  signal \^q_reg[0]_23\ : STD_LOGIC;
  signal \^q_reg[0]_24\ : STD_LOGIC;
  signal \^q_reg[0]_25\ : STD_LOGIC;
  signal \^q_reg[0]_26\ : STD_LOGIC;
  signal \^q_reg[0]_3\ : STD_LOGIC;
  signal \^q_reg[0]_4\ : STD_LOGIC;
  signal \^q_reg[0]_5\ : STD_LOGIC;
  signal \^q_reg[0]_6\ : STD_LOGIC;
  signal \^q_reg[0]_7\ : STD_LOGIC;
  signal \^q_reg[0]_8\ : STD_LOGIC;
  signal \^q_reg[0]_9\ : STD_LOGIC;
  signal \^q_reg[19]\ : STD_LOGIC;
  signal \^q_reg[19]_0\ : STD_LOGIC;
  signal \^q_reg[19]_1\ : STD_LOGIC;
  signal \^q_reg[1]_0\ : STD_LOGIC;
  signal \^q_reg[1]_1\ : STD_LOGIC;
  signal \^q_reg[1]_10\ : STD_LOGIC;
  signal \^q_reg[1]_12\ : STD_LOGIC;
  signal \^q_reg[1]_3\ : STD_LOGIC;
  signal \^q_reg[1]_5\ : STD_LOGIC;
  signal \^q_reg[1]_7\ : STD_LOGIC;
  signal \^q_reg[1]_9\ : STD_LOGIC;
  signal \^writedatam\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^writedatam[29]\ : STD_LOGIC;
  signal \^writedatam[31]\ : STD_LOGIC;
  signal writeDataM_27_sn_1 : STD_LOGIC;
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addressM[10]_INST_0_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addressM[11]_INST_0_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \addressM[12]_INST_0_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \addressM[13]_INST_0_i_5\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \addressM[14]_INST_0_i_5\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \addressM[15]_INST_0_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \addressM[16]_INST_0_i_5\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \addressM[17]_INST_0_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \addressM[18]_INST_0_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_5\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \addressM[1]_INST_0_i_5\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \addressM[20]_INST_0_i_5\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \addressM[21]_INST_0_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \addressM[22]_INST_0_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \addressM[23]_INST_0_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addressM[24]_INST_0_i_5\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \addressM[25]_INST_0_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \addressM[26]_INST_0_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0_i_5\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0_i_5\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addressM[2]_INST_0_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \addressM[30]_INST_0_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0_i_7\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \addressM[3]_INST_0_i_5\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \addressM[4]_INST_0_i_5\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \addressM[5]_INST_0_i_5\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \addressM[6]_INST_0_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \addressM[7]_INST_0_i_5\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \addressM[8]_INST_0_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \addressM[9]_INST_0_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \writeDataM[10]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \writeDataM[11]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \writeDataM[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \writeDataM[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \writeDataM[14]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \writeDataM[15]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \writeDataM[16]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \writeDataM[17]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \writeDataM[18]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \writeDataM[19]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \writeDataM[1]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \writeDataM[20]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \writeDataM[21]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \writeDataM[22]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \writeDataM[23]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \writeDataM[24]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \writeDataM[25]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \writeDataM[26]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \writeDataM[27]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \writeDataM[28]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \writeDataM[29]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \writeDataM[2]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \writeDataM[30]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \writeDataM[31]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \writeDataM[3]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \writeDataM[4]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \writeDataM[5]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \writeDataM[6]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \writeDataM[7]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \writeDataM[8]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \writeDataM[9]_INST_0\ : label is "soft_lutpair22";
begin
  d1_0(30 downto 0) <= \^d1_0\(30 downto 0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[0]_10\ <= \^q_reg[0]_10\;
  \q_reg[0]_11\ <= \^q_reg[0]_11\;
  \q_reg[0]_12\ <= \^q_reg[0]_12\;
  \q_reg[0]_13\ <= \^q_reg[0]_13\;
  \q_reg[0]_14\ <= \^q_reg[0]_14\;
  \q_reg[0]_15\ <= \^q_reg[0]_15\;
  \q_reg[0]_16\ <= \^q_reg[0]_16\;
  \q_reg[0]_2\ <= \^q_reg[0]_2\;
  \q_reg[0]_21\ <= \^q_reg[0]_21\;
  \q_reg[0]_22\ <= \^q_reg[0]_22\;
  \q_reg[0]_23\ <= \^q_reg[0]_23\;
  \q_reg[0]_24\ <= \^q_reg[0]_24\;
  \q_reg[0]_25\ <= \^q_reg[0]_25\;
  \q_reg[0]_26\ <= \^q_reg[0]_26\;
  \q_reg[0]_3\ <= \^q_reg[0]_3\;
  \q_reg[0]_4\ <= \^q_reg[0]_4\;
  \q_reg[0]_5\ <= \^q_reg[0]_5\;
  \q_reg[0]_6\ <= \^q_reg[0]_6\;
  \q_reg[0]_7\ <= \^q_reg[0]_7\;
  \q_reg[0]_8\ <= \^q_reg[0]_8\;
  \q_reg[0]_9\ <= \^q_reg[0]_9\;
  \q_reg[19]\ <= \^q_reg[19]\;
  \q_reg[19]_0\ <= \^q_reg[19]_0\;
  \q_reg[19]_1\ <= \^q_reg[19]_1\;
  \q_reg[1]_0\ <= \^q_reg[1]_0\;
  \q_reg[1]_1\ <= \^q_reg[1]_1\;
  \q_reg[1]_10\ <= \^q_reg[1]_10\;
  \q_reg[1]_12\ <= \^q_reg[1]_12\;
  \q_reg[1]_3\ <= \^q_reg[1]_3\;
  \q_reg[1]_5\ <= \^q_reg[1]_5\;
  \q_reg[1]_7\ <= \^q_reg[1]_7\;
  \q_reg[1]_9\ <= \^q_reg[1]_9\;
  writeDataM(27 downto 0) <= \^writedatam\(27 downto 0);
  \writeDataM[29]\ <= \^writedatam[29]\;
  \writeDataM[31]\ <= \^writedatam[31]\;
  writeDataM_27_sp_1 <= writeDataM_27_sn_1;
\addressM[0]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_2\,
      I1 => \^q_reg[0]_3\,
      I2 => Instr(0),
      I3 => \^q_reg[0]_4\,
      I4 => Instr(1),
      I5 => \addressM[0]_INST_0_i_9_n_0\,
      O => \q_reg[0]_1\
    );
\addressM[0]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_14\,
      I1 => \^q_reg[0]_15\,
      I2 => Instr(2),
      I3 => \^q_reg[0]_16\,
      I4 => Instr(3),
      I5 => \q_reg[0]_28\,
      O => \addressM[0]_INST_0_i_9_n_0\
    );
\addressM[10]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(25),
      I1 => rd20(25),
      I2 => Instr(4),
      I3 => r15(9),
      I4 => \q_reg[1]_18\,
      I5 => rd20(9),
      O => \^q_reg[0]_10\
    );
\addressM[10]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(9),
      I1 => \q_reg[0]_31\,
      I2 => rd10(9),
      O => SrcA(9)
    );
\addressM[11]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(26),
      I1 => rd20(26),
      I2 => Instr(4),
      I3 => r15(10),
      I4 => \q_reg[1]_18\,
      I5 => rd20(10),
      O => \^q_reg[0]_7\
    );
\addressM[11]_INST_0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(10),
      I1 => \q_reg[0]_31\,
      I2 => rd10(10),
      O => SrcA(10)
    );
\addressM[12]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(4),
      I1 => \q_reg[0]_27\,
      I2 => \^writedatam\(0),
      I3 => \q_reg[1]_19\,
      I4 => \^writedatam\(8),
      I5 => \q_reg[1]_20\,
      O => \^q_reg[0]_21\
    );
\addressM[12]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(27),
      I1 => rd20(27),
      I2 => Instr(4),
      I3 => r15(11),
      I4 => \q_reg[1]_18\,
      I5 => rd20(11),
      O => \^q_reg[0]_14\
    );
\addressM[12]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(11),
      I1 => \q_reg[0]_31\,
      I2 => rd10(11),
      O => SrcA(11)
    );
\addressM[12]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_24\,
      I1 => \^q_reg[0]_25\,
      I2 => Instr(0),
      I3 => \^q_reg[0]_26\,
      I4 => Instr(1),
      I5 => \q_reg[1]_21\,
      O => y01_in(0)
    );
\addressM[12]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q_reg[0]_21\,
      I1 => \^q_reg[0]_22\,
      I2 => Instr(0),
      I3 => \^q_reg[0]_23\,
      I4 => Instr(1),
      I5 => \q_reg[0]_30\,
      O => \q_reg[0]_20\
    );
\addressM[12]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(4),
      I1 => Instr(2),
      I2 => \^writedatam\(0),
      I3 => Instr(3),
      I4 => \^writedatam\(8),
      I5 => Instr(4),
      O => \^q_reg[0]_24\
    );
\addressM[13]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(5),
      I1 => \q_reg[0]_27\,
      I2 => \^writedatam\(1),
      I3 => \q_reg[1]_19\,
      I4 => \^writedatam\(9),
      I5 => \q_reg[1]_20\,
      O => \^q_reg[0]_23\
    );
\addressM[13]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(28),
      I1 => rd20(28),
      I2 => Instr(4),
      I3 => r15(12),
      I4 => \q_reg[1]_18\,
      I5 => rd20(12),
      O => \^q_reg[0]_11\
    );
\addressM[13]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(12),
      I1 => \q_reg[0]_31\,
      I2 => rd10(12),
      O => SrcA(12)
    );
\addressM[13]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(5),
      I1 => Instr(2),
      I2 => \^writedatam\(1),
      I3 => Instr(3),
      I4 => \^writedatam\(9),
      I5 => Instr(4),
      O => \^q_reg[0]_26\
    );
\addressM[14]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(6),
      I1 => \q_reg[0]_27\,
      I2 => \^writedatam\(2),
      I3 => \q_reg[1]_19\,
      I4 => \^writedatam\(10),
      I5 => \q_reg[1]_20\,
      O => \^q_reg[0]_22\
    );
\addressM[14]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(29),
      I1 => rd20(29),
      I2 => Instr(4),
      I3 => r15(13),
      I4 => \q_reg[1]_18\,
      I5 => rd20(13),
      O => \^q_reg[0]_8\
    );
\addressM[14]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(13),
      I1 => \q_reg[0]_31\,
      I2 => rd10(13),
      O => SrcA(13)
    );
\addressM[14]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(6),
      I1 => Instr(2),
      I2 => \^writedatam\(2),
      I3 => Instr(3),
      I4 => \^writedatam\(10),
      I5 => Instr(4),
      O => \^q_reg[0]_25\
    );
\addressM[15]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(30),
      I1 => rd20(30),
      I2 => Instr(4),
      I3 => r15(14),
      I4 => \q_reg[1]_18\,
      I5 => rd20(14),
      O => \^q_reg[0]_5\
    );
\addressM[15]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(14),
      I1 => \q_reg[0]_31\,
      I2 => rd10(14),
      O => SrcA(14)
    );
\addressM[16]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(15),
      I1 => \q_reg[0]_31\,
      I2 => rd10(15),
      O => SrcA(15)
    );
\addressM[17]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(16),
      I1 => \q_reg[0]_31\,
      I2 => rd10(16),
      O => SrcA(16)
    );
\addressM[18]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(17),
      I1 => \q_reg[0]_31\,
      I2 => rd10(17),
      O => SrcA(17)
    );
\addressM[19]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[19]\,
      I1 => \^q_reg[19]_0\,
      I2 => Instr(0),
      I3 => \^q_reg[19]_1\,
      I4 => Instr(1),
      I5 => \q_reg[1]_17\,
      O => \q_reg[19]_2\
    );
\addressM[19]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(18),
      I1 => \q_reg[0]_31\,
      I2 => rd10(18),
      O => SrcA(18)
    );
\addressM[1]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_11\,
      I1 => \^q_reg[0]_12\,
      I2 => Instr(2),
      I3 => \^q_reg[0]_13\,
      I4 => Instr(3),
      I5 => \addressM[1]_INST_0_i_13_n_0\,
      O => \^q_reg[0]_3\
    );
\addressM[1]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(16),
      I1 => rd20(16),
      I2 => Instr(4),
      I3 => r15(0),
      I4 => \q_reg[1]_18\,
      I5 => rd20(0),
      O => \addressM[1]_INST_0_i_13_n_0\
    );
\addressM[1]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(0),
      I1 => \q_reg[0]_31\,
      I2 => rd10(0),
      O => SrcA(0)
    );
\addressM[20]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \^q_reg[19]\,
      I1 => Instr(1),
      I2 => \^q_reg[19]_0\,
      I3 => \^q_reg[0]_0\,
      I4 => \^q_reg[19]_1\,
      I5 => Instr(0),
      O => \q_reg[0]\
    );
\addressM[20]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(23),
      I1 => Instr(2),
      I2 => \^writedatam\(26),
      I3 => Instr(3),
      I4 => \^writedatam\(19),
      I5 => Instr(4),
      O => \^q_reg[19]_0\
    );
\addressM[20]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^writedatam\(8),
      I1 => \q_reg[1]_19\,
      I2 => \^writedatam\(0),
      I3 => \q_reg[1]_20\,
      I4 => \^writedatam\(16),
      O => \q_reg[0]_19\
    );
\addressM[20]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(19),
      I1 => \q_reg[0]_31\,
      I2 => rd10(19),
      O => SrcA(19)
    );
\addressM[21]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(24),
      I1 => Instr(2),
      I2 => \^writedatam[29]\,
      I3 => Instr(3),
      I4 => \^writedatam\(20),
      I5 => Instr(4),
      O => \^q_reg[19]_1\
    );
\addressM[21]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(20),
      I1 => \q_reg[0]_31\,
      I2 => rd10(20),
      O => SrcA(20)
    );
\addressM[22]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => \^writedatam\(25),
      I1 => Instr(2),
      I2 => \^writedatam\(27),
      I3 => Instr(3),
      I4 => \^writedatam\(21),
      I5 => Instr(4),
      O => \^q_reg[19]\
    );
\addressM[22]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^writedatam\(10),
      I1 => \q_reg[1]_19\,
      I2 => \^writedatam\(2),
      I3 => \q_reg[1]_20\,
      I4 => \^writedatam\(18),
      O => \q_reg[0]_18\
    );
\addressM[22]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(21),
      I1 => \q_reg[0]_31\,
      I2 => rd10(21),
      O => SrcA(21)
    );
\addressM[23]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => writeDataM_27_sn_1,
      I1 => Instr(2),
      I2 => \^writedatam[31]\,
      I3 => Instr(3),
      I4 => \^writedatam\(22),
      I5 => Instr(4),
      O => \^q_reg[0]_0\
    );
\addressM[23]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(22),
      I1 => \q_reg[0]_31\,
      I2 => rd10(22),
      O => SrcA(22)
    );
\addressM[24]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(23),
      I1 => \q_reg[0]_31\,
      I2 => rd10(23),
      O => SrcA(23)
    );
\addressM[25]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(24),
      I1 => \q_reg[0]_31\,
      I2 => rd10(24),
      O => SrcA(24)
    );
\addressM[26]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(25),
      I1 => \q_reg[0]_31\,
      I2 => rd10(25),
      O => SrcA(25)
    );
\addressM[27]_INST_0_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(7),
      I1 => rd20(7),
      I2 => Instr(4),
      I3 => r15(23),
      I4 => \q_reg[1]_18\,
      I5 => rd20(23),
      O => \q_reg[24]\
    );
\addressM[27]_INST_0_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(0),
      I1 => rd20(0),
      I2 => Instr(4),
      I3 => r15(16),
      I4 => \q_reg[1]_18\,
      I5 => rd20(16),
      O => \q_reg[25]_1\
    );
\addressM[27]_INST_0_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(8),
      I1 => rd20(8),
      I2 => Instr(4),
      I3 => r15(24),
      I4 => \q_reg[1]_18\,
      I5 => rd20(24),
      O => \q_reg[25]\
    );
\addressM[27]_INST_0_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(7),
      I1 => rd20(7),
      I2 => \q_reg[1]_20\,
      I3 => r15(23),
      I4 => \q_reg[1]_18\,
      I5 => rd20(23),
      O => \q_reg[24]_0\
    );
\addressM[27]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(0),
      I1 => rd20(0),
      I2 => \q_reg[1]_20\,
      I3 => r15(16),
      I4 => \q_reg[1]_18\,
      I5 => rd20(16),
      O => \q_reg[25]_2\
    );
\addressM[27]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(8),
      I1 => rd20(8),
      I2 => \q_reg[1]_20\,
      I3 => r15(24),
      I4 => \q_reg[1]_18\,
      I5 => rd20(24),
      O => \q_reg[25]_0\
    );
\addressM[27]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(26),
      I1 => \q_reg[0]_31\,
      I2 => rd10(26),
      O => SrcA(26)
    );
\addressM[28]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_15_n_0\,
      I1 => \addressM[31]_INST_0_i_55_n_0\,
      I2 => \q_reg[0]_29\,
      I3 => \addressM[28]_INST_0_i_17_n_0\,
      I4 => \q_reg[0]_27\,
      I5 => \addressM[31]_INST_0_i_58_n_0\,
      O => \q_reg[0]_17\
    );
\addressM[28]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^writedatam\(12),
      I1 => \q_reg[1]_19\,
      I2 => \^writedatam\(4),
      I3 => \q_reg[1]_20\,
      I4 => \^writedatam\(20),
      O => \addressM[28]_INST_0_i_15_n_0\
    );
\addressM[28]_INST_0_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^writedatam\(14),
      I1 => \q_reg[1]_19\,
      I2 => \^writedatam\(6),
      I3 => \q_reg[1]_20\,
      I4 => \^writedatam\(22),
      O => \addressM[28]_INST_0_i_17_n_0\
    );
\addressM[28]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(27),
      I1 => \q_reg[0]_31\,
      I2 => rd10(27),
      O => SrcA(27)
    );
\addressM[29]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(1),
      I1 => rd20(1),
      I2 => Instr(4),
      I3 => r15(17),
      I4 => \q_reg[1]_18\,
      I5 => rd20(17),
      O => \q_reg[26]_1\
    );
\addressM[29]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(9),
      I1 => rd20(9),
      I2 => Instr(4),
      I3 => r15(25),
      I4 => \q_reg[1]_18\,
      I5 => rd20(25),
      O => \q_reg[26]\
    );
\addressM[29]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(1),
      I1 => rd20(1),
      I2 => \q_reg[1]_20\,
      I3 => r15(17),
      I4 => \q_reg[1]_18\,
      I5 => rd20(17),
      O => \q_reg[26]_2\
    );
\addressM[29]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(9),
      I1 => rd20(9),
      I2 => \q_reg[1]_20\,
      I3 => r15(25),
      I4 => \q_reg[1]_18\,
      I5 => rd20(25),
      O => \q_reg[26]_0\
    );
\addressM[29]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(28),
      I1 => \q_reg[0]_31\,
      I2 => rd10(28),
      O => SrcA(28)
    );
\addressM[2]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_8\,
      I1 => \^q_reg[0]_9\,
      I2 => Instr(2),
      I3 => \^q_reg[0]_10\,
      I4 => Instr(3),
      I5 => \addressM[2]_INST_0_i_13_n_0\,
      O => \^q_reg[0]_4\
    );
\addressM[2]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(17),
      I1 => rd20(17),
      I2 => Instr(4),
      I3 => r15(1),
      I4 => \q_reg[1]_18\,
      I5 => rd20(1),
      O => \addressM[2]_INST_0_i_13_n_0\
    );
\addressM[2]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(1),
      I1 => \q_reg[0]_31\,
      I2 => rd10(1),
      O => SrcA(1)
    );
\addressM[30]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(2),
      I1 => rd20(2),
      I2 => Instr(4),
      I3 => r15(18),
      I4 => \q_reg[1]_18\,
      I5 => rd20(18),
      O => \q_reg[27]_1\
    );
\addressM[30]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(10),
      I1 => rd20(10),
      I2 => Instr(4),
      I3 => r15(26),
      I4 => \q_reg[1]_18\,
      I5 => rd20(26),
      O => \q_reg[27]\
    );
\addressM[30]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(2),
      I1 => rd20(2),
      I2 => \q_reg[1]_20\,
      I3 => r15(18),
      I4 => \q_reg[1]_18\,
      I5 => rd20(18),
      O => \q_reg[27]_2\
    );
\addressM[30]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(10),
      I1 => rd20(10),
      I2 => \q_reg[1]_20\,
      I3 => r15(26),
      I4 => \q_reg[1]_18\,
      I5 => rd20(26),
      O => \q_reg[27]_0\
    );
\addressM[30]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(29),
      I1 => \q_reg[0]_31\,
      I2 => rd10(29),
      O => SrcA(29)
    );
\addressM[31]_INST_0_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_38_n_0\,
      I1 => Instr(2),
      I2 => \^q_reg[1]_5\,
      I3 => Instr(3),
      I4 => \addressM[31]_INST_0_i_40_n_0\,
      O => \q_reg[1]_4\
    );
\addressM[31]_INST_0_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^q_reg[1]_9\,
      I1 => Instr(2),
      I2 => \^q_reg[1]_10\,
      I3 => Instr(3),
      I4 => \addressM[31]_INST_0_i_43_n_0\,
      O => \q_reg[1]_8\
    );
\addressM[31]_INST_0_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \^q_reg[1]_0\,
      I1 => Instr(2),
      I2 => \^q_reg[1]_1\,
      I3 => Instr(3),
      I4 => \addressM[31]_INST_0_i_46_n_0\,
      O => \q_reg[1]\
    );
\addressM[31]_INST_0_i_32\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_52_n_0\,
      I1 => \q_reg[0]_27\,
      I2 => \^q_reg[1]_7\,
      I3 => \q_reg[1]_19\,
      I4 => \addressM[31]_INST_0_i_54_n_0\,
      O => \q_reg[1]_6\
    );
\addressM[31]_INST_0_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_55_n_0\,
      I1 => \q_reg[0]_27\,
      I2 => \^q_reg[1]_12\,
      I3 => \q_reg[1]_19\,
      I4 => \addressM[31]_INST_0_i_57_n_0\,
      O => \q_reg[1]_11\
    );
\addressM[31]_INST_0_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_58_n_0\,
      I1 => \q_reg[0]_27\,
      I2 => \^q_reg[1]_3\,
      I3 => \q_reg[1]_19\,
      I4 => \addressM[31]_INST_0_i_60_n_0\,
      O => \q_reg[1]_2\
    );
\addressM[31]_INST_0_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(3),
      I1 => rd20(3),
      I2 => Instr(4),
      I3 => r15(19),
      I4 => \q_reg[1]_18\,
      I5 => rd20(19),
      O => \q_reg[1]_15\
    );
\addressM[31]_INST_0_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(11),
      I1 => rd20(11),
      I2 => Instr(4),
      I3 => r15(27),
      I4 => \q_reg[1]_18\,
      I5 => rd20(27),
      O => \q_reg[1]_13\
    );
\addressM[31]_INST_0_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(1),
      I1 => \^writedatam\(17),
      I2 => Instr(3),
      I3 => \^writedatam\(9),
      I4 => Instr(4),
      I5 => \^writedatam\(25),
      O => \addressM[31]_INST_0_i_38_n_0\
    );
\addressM[31]_INST_0_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(5),
      I1 => rd20(5),
      I2 => Instr(4),
      I3 => r15(21),
      I4 => \q_reg[1]_18\,
      I5 => rd20(21),
      O => \^q_reg[1]_5\
    );
\addressM[31]_INST_0_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(13),
      I1 => rd20(13),
      I2 => Instr(4),
      I3 => r15(29),
      I4 => \q_reg[1]_18\,
      I5 => rd20(29),
      O => \addressM[31]_INST_0_i_40_n_0\
    );
\addressM[31]_INST_0_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(0),
      I1 => \^writedatam\(16),
      I2 => Instr(3),
      I3 => \^writedatam\(8),
      I4 => Instr(4),
      I5 => \^writedatam\(24),
      O => \^q_reg[1]_9\
    );
\addressM[31]_INST_0_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(4),
      I1 => rd20(4),
      I2 => Instr(4),
      I3 => r15(20),
      I4 => \q_reg[1]_18\,
      I5 => rd20(20),
      O => \^q_reg[1]_10\
    );
\addressM[31]_INST_0_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(12),
      I1 => rd20(12),
      I2 => Instr(4),
      I3 => r15(28),
      I4 => \q_reg[1]_18\,
      I5 => rd20(28),
      O => \addressM[31]_INST_0_i_43_n_0\
    );
\addressM[31]_INST_0_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(2),
      I1 => \^writedatam\(18),
      I2 => Instr(3),
      I3 => \^writedatam\(10),
      I4 => Instr(4),
      I5 => writeDataM_27_sn_1,
      O => \^q_reg[1]_0\
    );
\addressM[31]_INST_0_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(6),
      I1 => rd20(6),
      I2 => Instr(4),
      I3 => r15(22),
      I4 => \q_reg[1]_18\,
      I5 => rd20(22),
      O => \^q_reg[1]_1\
    );
\addressM[31]_INST_0_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(14),
      I1 => rd20(14),
      I2 => Instr(4),
      I3 => r15(30),
      I4 => \q_reg[1]_18\,
      I5 => rd20(30),
      O => \addressM[31]_INST_0_i_46_n_0\
    );
\addressM[31]_INST_0_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(3),
      I1 => rd20(3),
      I2 => \q_reg[1]_20\,
      I3 => r15(19),
      I4 => \q_reg[1]_18\,
      I5 => rd20(19),
      O => \q_reg[1]_16\
    );
\addressM[31]_INST_0_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(11),
      I1 => rd20(11),
      I2 => \q_reg[1]_20\,
      I3 => r15(27),
      I4 => \q_reg[1]_18\,
      I5 => rd20(27),
      O => \q_reg[1]_14\
    );
\addressM[31]_INST_0_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(1),
      I1 => \^writedatam\(17),
      I2 => \q_reg[1]_19\,
      I3 => \^writedatam\(9),
      I4 => \q_reg[1]_20\,
      I5 => \^writedatam\(25),
      O => \addressM[31]_INST_0_i_52_n_0\
    );
\addressM[31]_INST_0_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(5),
      I1 => rd20(5),
      I2 => \q_reg[1]_20\,
      I3 => r15(21),
      I4 => \q_reg[1]_18\,
      I5 => rd20(21),
      O => \^q_reg[1]_7\
    );
\addressM[31]_INST_0_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(13),
      I1 => rd20(13),
      I2 => \q_reg[1]_20\,
      I3 => r15(29),
      I4 => \q_reg[1]_18\,
      I5 => rd20(29),
      O => \addressM[31]_INST_0_i_54_n_0\
    );
\addressM[31]_INST_0_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(0),
      I1 => \^writedatam\(16),
      I2 => \q_reg[1]_19\,
      I3 => \^writedatam\(8),
      I4 => \q_reg[1]_20\,
      I5 => \^writedatam\(24),
      O => \addressM[31]_INST_0_i_55_n_0\
    );
\addressM[31]_INST_0_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(4),
      I1 => rd20(4),
      I2 => \q_reg[1]_20\,
      I3 => r15(20),
      I4 => \q_reg[1]_18\,
      I5 => rd20(20),
      O => \^q_reg[1]_12\
    );
\addressM[31]_INST_0_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(12),
      I1 => rd20(12),
      I2 => \q_reg[1]_20\,
      I3 => r15(28),
      I4 => \q_reg[1]_18\,
      I5 => rd20(28),
      O => \addressM[31]_INST_0_i_57_n_0\
    );
\addressM[31]_INST_0_i_58\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^writedatam\(2),
      I1 => \^writedatam\(18),
      I2 => \q_reg[1]_19\,
      I3 => \^writedatam\(10),
      I4 => \q_reg[1]_20\,
      I5 => writeDataM_27_sn_1,
      O => \addressM[31]_INST_0_i_58_n_0\
    );
\addressM[31]_INST_0_i_59\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(6),
      I1 => rd20(6),
      I2 => \q_reg[1]_20\,
      I3 => r15(22),
      I4 => \q_reg[1]_18\,
      I5 => rd20(22),
      O => \^q_reg[1]_3\
    );
\addressM[31]_INST_0_i_60\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(14),
      I1 => rd20(14),
      I2 => \q_reg[1]_20\,
      I3 => r15(30),
      I4 => \q_reg[1]_18\,
      I5 => rd20(30),
      O => \addressM[31]_INST_0_i_60_n_0\
    );
\addressM[31]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(30),
      I1 => \q_reg[0]_31\,
      I2 => rd10(30),
      O => SrcA(30)
    );
\addressM[3]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_5\,
      I1 => \^q_reg[0]_6\,
      I2 => Instr(2),
      I3 => \^q_reg[0]_7\,
      I4 => Instr(3),
      I5 => \addressM[3]_INST_0_i_23_n_0\,
      O => \^q_reg[0]_2\
    );
\addressM[3]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(18),
      I1 => rd20(18),
      I2 => Instr(4),
      I3 => r15(2),
      I4 => \q_reg[1]_18\,
      I5 => rd20(2),
      O => \addressM[3]_INST_0_i_23_n_0\
    );
\addressM[3]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(2),
      I1 => \q_reg[0]_31\,
      I2 => rd10(2),
      O => SrcA(2)
    );
\addressM[4]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(19),
      I1 => rd20(19),
      I2 => Instr(4),
      I3 => r15(3),
      I4 => \q_reg[1]_18\,
      I5 => rd20(3),
      O => \^q_reg[0]_15\
    );
\addressM[4]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(3),
      I1 => \q_reg[0]_31\,
      I2 => rd10(3),
      O => SrcA(3)
    );
\addressM[5]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(20),
      I1 => rd20(20),
      I2 => Instr(4),
      I3 => r15(4),
      I4 => \q_reg[1]_18\,
      I5 => rd20(4),
      O => \^q_reg[0]_12\
    );
\addressM[5]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(4),
      I1 => \q_reg[0]_31\,
      I2 => rd10(4),
      O => SrcA(4)
    );
\addressM[6]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(21),
      I1 => rd20(21),
      I2 => Instr(4),
      I3 => r15(5),
      I4 => \q_reg[1]_18\,
      I5 => rd20(5),
      O => \^q_reg[0]_9\
    );
\addressM[6]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(5),
      I1 => \q_reg[0]_31\,
      I2 => rd10(5),
      O => SrcA(5)
    );
\addressM[7]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(22),
      I1 => rd20(22),
      I2 => Instr(4),
      I3 => r15(6),
      I4 => \q_reg[1]_18\,
      I5 => rd20(6),
      O => \^q_reg[0]_6\
    );
\addressM[7]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(6),
      I1 => \q_reg[0]_31\,
      I2 => rd10(6),
      O => SrcA(6)
    );
\addressM[8]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(23),
      I1 => rd20(23),
      I2 => Instr(4),
      I3 => r15(7),
      I4 => \q_reg[1]_18\,
      I5 => rd20(7),
      O => \^q_reg[0]_16\
    );
\addressM[8]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(7),
      I1 => \q_reg[0]_31\,
      I2 => rd10(7),
      O => SrcA(7)
    );
\addressM[9]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(24),
      I1 => rd20(24),
      I2 => Instr(4),
      I3 => r15(8),
      I4 => \q_reg[1]_18\,
      I5 => rd20(8),
      O => \^q_reg[0]_13\
    );
\addressM[9]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(8),
      I1 => \q_reg[0]_31\,
      I2 => rd10(8),
      O => SrcA(8)
    );
\writeDataM[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(9),
      I1 => \q_reg[1]_18\,
      I2 => rd20(9),
      O => \^writedatam\(9)
    );
\writeDataM[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(10),
      I1 => \q_reg[1]_18\,
      I2 => rd20(10),
      O => \^writedatam\(10)
    );
\writeDataM[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(11),
      I1 => \q_reg[1]_18\,
      I2 => rd20(11),
      O => \^writedatam\(11)
    );
\writeDataM[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(12),
      I1 => \q_reg[1]_18\,
      I2 => rd20(12),
      O => \^writedatam\(12)
    );
\writeDataM[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(13),
      I1 => \q_reg[1]_18\,
      I2 => rd20(13),
      O => \^writedatam\(13)
    );
\writeDataM[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(14),
      I1 => \q_reg[1]_18\,
      I2 => rd20(14),
      O => \^writedatam\(14)
    );
\writeDataM[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(15),
      I1 => \q_reg[1]_18\,
      I2 => rd20(15),
      O => \^writedatam\(15)
    );
\writeDataM[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(16),
      I1 => \q_reg[1]_18\,
      I2 => rd20(16),
      O => \^writedatam\(16)
    );
\writeDataM[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(17),
      I1 => \q_reg[1]_18\,
      I2 => rd20(17),
      O => \^writedatam\(17)
    );
\writeDataM[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(18),
      I1 => \q_reg[1]_18\,
      I2 => rd20(18),
      O => \^writedatam\(18)
    );
\writeDataM[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(0),
      I1 => \q_reg[1]_18\,
      I2 => rd20(0),
      O => \^writedatam\(0)
    );
\writeDataM[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(19),
      I1 => \q_reg[1]_18\,
      I2 => rd20(19),
      O => \^writedatam\(19)
    );
\writeDataM[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(20),
      I1 => \q_reg[1]_18\,
      I2 => rd20(20),
      O => \^writedatam\(20)
    );
\writeDataM[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(21),
      I1 => \q_reg[1]_18\,
      I2 => rd20(21),
      O => \^writedatam\(21)
    );
\writeDataM[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(22),
      I1 => \q_reg[1]_18\,
      I2 => rd20(22),
      O => \^writedatam\(22)
    );
\writeDataM[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(23),
      I1 => \q_reg[1]_18\,
      I2 => rd20(23),
      O => \^writedatam\(23)
    );
\writeDataM[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(24),
      I1 => \q_reg[1]_18\,
      I2 => rd20(24),
      O => \^writedatam\(24)
    );
\writeDataM[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(25),
      I1 => \q_reg[1]_18\,
      I2 => rd20(25),
      O => \^writedatam\(25)
    );
\writeDataM[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(26),
      I1 => \q_reg[1]_18\,
      I2 => rd20(26),
      O => writeDataM_27_sn_1
    );
\writeDataM[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(27),
      I1 => \q_reg[1]_18\,
      I2 => rd20(27),
      O => \^writedatam\(26)
    );
\writeDataM[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(28),
      I1 => \q_reg[1]_18\,
      I2 => rd20(28),
      O => \^writedatam[29]\
    );
\writeDataM[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(1),
      I1 => \q_reg[1]_18\,
      I2 => rd20(1),
      O => \^writedatam\(1)
    );
\writeDataM[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(29),
      I1 => \q_reg[1]_18\,
      I2 => rd20(29),
      O => \^writedatam\(27)
    );
\writeDataM[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(30),
      I1 => \q_reg[1]_18\,
      I2 => rd20(30),
      O => \^writedatam[31]\
    );
\writeDataM[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(2),
      I1 => \q_reg[1]_18\,
      I2 => rd20(2),
      O => \^writedatam\(2)
    );
\writeDataM[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(3),
      I1 => \q_reg[1]_18\,
      I2 => rd20(3),
      O => \^writedatam\(3)
    );
\writeDataM[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(4),
      I1 => \q_reg[1]_18\,
      I2 => rd20(4),
      O => \^writedatam\(4)
    );
\writeDataM[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(5),
      I1 => \q_reg[1]_18\,
      I2 => rd20(5),
      O => \^writedatam\(5)
    );
\writeDataM[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(6),
      I1 => \q_reg[1]_18\,
      I2 => rd20(6),
      O => \^writedatam\(6)
    );
\writeDataM[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(7),
      I1 => \q_reg[1]_18\,
      I2 => rd20(7),
      O => \^writedatam\(7)
    );
\writeDataM[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r15(8),
      I1 => \q_reg[1]_18\,
      I2 => rd20(8),
      O => \^writedatam\(8)
    );
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => Q(1),
      DI(0) => '0',
      O(3 downto 0) => \^d1_0\(3 downto 0),
      S(3 downto 2) => Q(3 downto 2),
      S(1) => S(0),
      S(0) => Q(0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(7 downto 4),
      S(3 downto 0) => Q(7 downto 4)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(11 downto 8),
      S(3 downto 0) => Q(11 downto 8)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(15 downto 12),
      S(3 downto 0) => Q(15 downto 12)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(19 downto 16),
      S(3 downto 0) => Q(19 downto 16)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(23 downto 20),
      S(3 downto 0) => Q(23 downto 20)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \^d1_0\(27 downto 24),
      S(3 downto 0) => Q(27 downto 24)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => \^d1_0\(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => Q(30 downto 28)
    );
\y_carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^d1_0\(1),
      O => \q_reg[4]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_adder_0 is
  port (
    r15 : out STD_LOGIC_VECTOR ( 30 downto 0 );
    d1_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \q_reg[2]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_adder_0 : entity is "adder";
end design_1_top_0_0_adder_0;

architecture STRUCTURE of design_1_top_0_0_adder_0 is
  signal \y_carry__0_n_0\ : STD_LOGIC;
  signal \y_carry__0_n_1\ : STD_LOGIC;
  signal \y_carry__0_n_2\ : STD_LOGIC;
  signal \y_carry__0_n_3\ : STD_LOGIC;
  signal \y_carry__1_n_0\ : STD_LOGIC;
  signal \y_carry__1_n_1\ : STD_LOGIC;
  signal \y_carry__1_n_2\ : STD_LOGIC;
  signal \y_carry__1_n_3\ : STD_LOGIC;
  signal \y_carry__2_n_0\ : STD_LOGIC;
  signal \y_carry__2_n_1\ : STD_LOGIC;
  signal \y_carry__2_n_2\ : STD_LOGIC;
  signal \y_carry__2_n_3\ : STD_LOGIC;
  signal \y_carry__3_n_0\ : STD_LOGIC;
  signal \y_carry__3_n_1\ : STD_LOGIC;
  signal \y_carry__3_n_2\ : STD_LOGIC;
  signal \y_carry__3_n_3\ : STD_LOGIC;
  signal \y_carry__4_n_0\ : STD_LOGIC;
  signal \y_carry__4_n_1\ : STD_LOGIC;
  signal \y_carry__4_n_2\ : STD_LOGIC;
  signal \y_carry__4_n_3\ : STD_LOGIC;
  signal \y_carry__5_n_0\ : STD_LOGIC;
  signal \y_carry__5_n_1\ : STD_LOGIC;
  signal \y_carry__5_n_2\ : STD_LOGIC;
  signal \y_carry__5_n_3\ : STD_LOGIC;
  signal \y_carry__6_n_2\ : STD_LOGIC;
  signal \y_carry__6_n_3\ : STD_LOGIC;
  signal y_carry_n_0 : STD_LOGIC;
  signal y_carry_n_1 : STD_LOGIC;
  signal y_carry_n_2 : STD_LOGIC;
  signal y_carry_n_3 : STD_LOGIC;
  signal \NLW_y_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_y_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
y_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y_carry_n_0,
      CO(2) => y_carry_n_1,
      CO(1) => y_carry_n_2,
      CO(0) => y_carry_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => d1_0(1),
      DI(0) => '0',
      O(3 downto 0) => r15(3 downto 0),
      S(3 downto 2) => d1_0(3 downto 2),
      S(1) => \q_reg[2]\(0),
      S(0) => d1_0(0)
    );
\y_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y_carry_n_0,
      CO(3) => \y_carry__0_n_0\,
      CO(2) => \y_carry__0_n_1\,
      CO(1) => \y_carry__0_n_2\,
      CO(0) => \y_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(7 downto 4),
      S(3 downto 0) => d1_0(7 downto 4)
    );
\y_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__0_n_0\,
      CO(3) => \y_carry__1_n_0\,
      CO(2) => \y_carry__1_n_1\,
      CO(1) => \y_carry__1_n_2\,
      CO(0) => \y_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(11 downto 8),
      S(3 downto 0) => d1_0(11 downto 8)
    );
\y_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__1_n_0\,
      CO(3) => \y_carry__2_n_0\,
      CO(2) => \y_carry__2_n_1\,
      CO(1) => \y_carry__2_n_2\,
      CO(0) => \y_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(15 downto 12),
      S(3 downto 0) => d1_0(15 downto 12)
    );
\y_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__2_n_0\,
      CO(3) => \y_carry__3_n_0\,
      CO(2) => \y_carry__3_n_1\,
      CO(1) => \y_carry__3_n_2\,
      CO(0) => \y_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(19 downto 16),
      S(3 downto 0) => d1_0(19 downto 16)
    );
\y_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__3_n_0\,
      CO(3) => \y_carry__4_n_0\,
      CO(2) => \y_carry__4_n_1\,
      CO(1) => \y_carry__4_n_2\,
      CO(0) => \y_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(23 downto 20),
      S(3 downto 0) => d1_0(23 downto 20)
    );
\y_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__4_n_0\,
      CO(3) => \y_carry__5_n_0\,
      CO(2) => \y_carry__5_n_1\,
      CO(1) => \y_carry__5_n_2\,
      CO(0) => \y_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => r15(27 downto 24),
      S(3 downto 0) => d1_0(27 downto 24)
    );
\y_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \y_carry__5_n_0\,
      CO(3 downto 2) => \NLW_y_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \y_carry__6_n_2\,
      CO(0) => \y_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_y_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => r15(30 downto 28),
      S(3) => '0',
      S(2 downto 0) => d1_0(30 downto 28)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_alu is
  port (
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    condinva : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[0]\ : in STD_LOGIC;
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : in STD_LOGIC_VECTOR ( 1 downto 0 );
    carry : in STD_LOGIC;
    r15 : in STD_LOGIC_VECTOR ( 30 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_alu : entity is "alu";
end design_1_top_0_0_alu;

architecture STRUCTURE of design_1_top_0_0_alu is
begin
\addressM[11]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(11),
      I2 => \q_reg[0]\,
      I3 => r15(10),
      O => condinva(11)
    );
\addressM[11]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(10),
      I2 => \q_reg[0]\,
      I3 => r15(9),
      O => condinva(10)
    );
\addressM[11]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(9),
      I2 => \q_reg[0]\,
      I3 => r15(8),
      O => condinva(9)
    );
\addressM[11]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(8),
      I2 => \q_reg[0]\,
      I3 => r15(7),
      O => condinva(8)
    );
\addressM[15]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(15),
      I2 => \q_reg[0]\,
      I3 => r15(14),
      O => condinva(15)
    );
\addressM[15]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(14),
      I2 => \q_reg[0]\,
      I3 => r15(13),
      O => condinva(14)
    );
\addressM[15]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(13),
      I2 => \q_reg[0]\,
      I3 => r15(12),
      O => condinva(13)
    );
\addressM[15]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(12),
      I2 => \q_reg[0]\,
      I3 => r15(11),
      O => condinva(12)
    );
\addressM[19]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(19),
      I2 => \q_reg[0]\,
      I3 => r15(18),
      O => condinva(19)
    );
\addressM[19]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(18),
      I2 => \q_reg[0]\,
      I3 => r15(17),
      O => condinva(18)
    );
\addressM[19]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(17),
      I2 => \q_reg[0]\,
      I3 => r15(16),
      O => condinva(17)
    );
\addressM[19]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(16),
      I2 => \q_reg[0]\,
      I3 => r15(15),
      O => condinva(16)
    );
\addressM[23]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(23),
      I2 => \q_reg[0]\,
      I3 => r15(22),
      O => condinva(23)
    );
\addressM[23]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(22),
      I2 => \q_reg[0]\,
      I3 => r15(21),
      O => condinva(22)
    );
\addressM[23]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(21),
      I2 => \q_reg[0]\,
      I3 => r15(20),
      O => condinva(21)
    );
\addressM[23]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(20),
      I2 => \q_reg[0]\,
      I3 => r15(19),
      O => condinva(20)
    );
\addressM[27]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(27),
      I2 => \q_reg[0]\,
      I3 => r15(26),
      O => condinva(27)
    );
\addressM[27]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(26),
      I2 => \q_reg[0]\,
      I3 => r15(25),
      O => condinva(26)
    );
\addressM[27]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(25),
      I2 => \q_reg[0]\,
      I3 => r15(24),
      O => condinva(25)
    );
\addressM[27]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(24),
      I2 => \q_reg[0]\,
      I3 => r15(23),
      O => condinva(24)
    );
\addressM[31]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(31),
      I2 => \q_reg[0]\,
      I3 => r15(30),
      O => condinva(31)
    );
\addressM[31]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(30),
      I2 => \q_reg[0]\,
      I3 => r15(29),
      O => condinva(30)
    );
\addressM[31]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(29),
      I2 => \q_reg[0]\,
      I3 => r15(28),
      O => condinva(29)
    );
\addressM[31]_INST_0_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(28),
      I2 => \q_reg[0]\,
      I3 => r15(27),
      O => condinva(28)
    );
\addressM[3]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(3),
      I2 => \q_reg[0]\,
      I3 => r15(2),
      O => condinva(3)
    );
\addressM[3]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(2),
      I2 => \q_reg[0]\,
      I3 => r15(1),
      O => condinva(2)
    );
\addressM[3]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(1),
      I2 => \q_reg[0]\,
      I3 => r15(0),
      O => condinva(1)
    );
\addressM[3]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(0),
      I2 => \q_reg[0]\,
      I3 => Q(0),
      O => condinva(0)
    );
\addressM[7]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(7),
      I2 => \q_reg[0]\,
      I3 => r15(6),
      O => condinva(7)
    );
\addressM[7]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(6),
      I2 => \q_reg[0]\,
      I3 => r15(5),
      O => condinva(6)
    );
\addressM[7]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(5),
      I2 => \q_reg[0]\,
      I3 => r15(4),
      O => condinva(5)
    );
\addressM[7]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => ALUControl(1),
      I1 => rd10(4),
      I2 => \q_reg[0]\,
      I3 => r15(3),
      O => condinva(4)
    );
sum: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B847B8474747B8"
    )
        port map (
      I0 => Q(0),
      I1 => \q_reg[0]\,
      I2 => rd10(0),
      I3 => ALUControl(0),
      I4 => ALUControl(1),
      I5 => carry,
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr is
  port (
    carry : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    CondEx : out STD_LOGIC;
    \q_reg[1]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[0]_2\ : in STD_LOGIC;
    data4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_flopenr : entity is "flopenr";
end design_1_top_0_0_flopenr;

architecture STRUCTURE of design_1_top_0_0_flopenr is
  signal \^carry\ : STD_LOGIC;
  signal \cc/ge__0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal rf_reg_r1_0_15_0_5_i_17_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_15_0_5_i_18_n_0 : STD_LOGIC;
  signal rf_reg_r1_0_15_0_5_i_19_n_0 : STD_LOGIC;
begin
  carry <= \^carry\;
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[0]_1\,
      Q => \^q_reg[0]_0\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_0\,
      Q => \^carry\
    );
rf_reg_r1_0_15_0_5_i_16: unisim.vcomponents.MUXF7
     port map (
      I0 => rf_reg_r1_0_15_0_5_i_17_n_0,
      I1 => rf_reg_r1_0_15_0_5_i_18_n_0,
      O => CondEx,
      S => \out\(3)
    );
rf_reg_r1_0_15_0_5_i_17: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B78FFFF4B780000"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => data4,
      I4 => \out\(2),
      I5 => rf_reg_r1_0_15_0_5_i_19_n_0,
      O => rf_reg_r1_0_15_0_5_i_17_n_0
    );
rf_reg_r1_0_15_0_5_i_18: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3CCC1FEFFC0FDC2"
    )
        port map (
      I0 => \^carry\,
      I1 => \out\(1),
      I2 => \out\(2),
      I3 => \out\(0),
      I4 => \q_reg[0]_2\,
      I5 => \cc/ge__0\,
      O => rf_reg_r1_0_15_0_5_i_18_n_0
    );
rf_reg_r1_0_15_0_5_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4B78"
    )
        port map (
      I0 => \^carry\,
      I1 => \out\(1),
      I2 => \out\(0),
      I3 => \q_reg[0]_2\,
      O => rf_reg_r1_0_15_0_5_i_19_n_0
    );
rf_reg_r1_0_15_0_5_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q_reg[0]_0\,
      I1 => data4,
      O => \cc/ge__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_flopenr_1 is
  port (
    data4 : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    \q_reg[1]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_flopenr_1 : entity is "flopenr";
end design_1_top_0_0_flopenr_1;

architecture STRUCTURE of design_1_top_0_0_flopenr_1 is
begin
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[0]_1\,
      Q => \q_reg[0]_0\
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => reset,
      D => \q_reg[1]_0\,
      Q => data4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \design_1_top_0_0_flopenr__parameterized0\ is
  port (
    wa3 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[1]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \q_reg[1]_1\ : out STD_LOGIC;
    \q_reg[1]_2\ : out STD_LOGIC;
    \q_reg[1]_3\ : out STD_LOGIC;
    \q_reg[1]_4\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM_0_sp_1 : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \out\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wd3 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ALUControl : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[0]_1\ : out STD_LOGIC;
    RegWrite : out STD_LOGIC;
    \FSM_sequential_CURRENT_STATE_reg[0]\ : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[18]_0\ : out STD_LOGIC;
    \q_reg[0]_2\ : out STD_LOGIC;
    \q_reg[0]_3\ : out STD_LOGIC;
    \q_reg[0]_4\ : out STD_LOGIC;
    ADDRA : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[0]_5\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \q_reg[1]_5\ : out STD_LOGIC;
    \q_reg[0]_6\ : out STD_LOGIC;
    \q_reg[1]_6\ : out STD_LOGIC;
    \q_reg[0]_7\ : out STD_LOGIC;
    \q_reg[31]_0\ : in STD_LOGIC;
    rd20 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    r15 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    d1_0 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    rd10 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[1]_7\ : in STD_LOGIC;
    \q_reg[1]_8\ : in STD_LOGIC;
    \q_reg[1]_9\ : in STD_LOGIC;
    \q_reg[0]_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \q_reg[31]_1\ : in STD_LOGIC_VECTOR ( 30 downto 0 );
    CondEx : in STD_LOGIC;
    doneM : in STD_LOGIC;
    \FSM_sequential_CURRENT_STATE_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[31]_2\ : in STD_LOGIC;
    \q_reg[28]_0\ : in STD_LOGIC;
    \q_reg[1]_10\ : in STD_LOGIC;
    \q_reg[0]_9\ : in STD_LOGIC;
    \q_reg[1]_11\ : in STD_LOGIC;
    \q_reg[1]_12\ : in STD_LOGIC;
    \q_reg[1]_13\ : in STD_LOGIC;
    \q_reg[1]_14\ : in STD_LOGIC;
    \q_reg[0]_10\ : in STD_LOGIC;
    \q_reg[1]_15\ : in STD_LOGIC;
    \q_reg[1]_16\ : in STD_LOGIC;
    \q_reg[1]_17\ : in STD_LOGIC;
    \q_reg[1]_18\ : in STD_LOGIC;
    \q_reg[1]_19\ : in STD_LOGIC;
    \q_reg[1]_20\ : in STD_LOGIC;
    \q_reg[0]_11\ : in STD_LOGIC;
    \q_reg[0]_12\ : in STD_LOGIC;
    \q_reg[0]_13\ : in STD_LOGIC;
    writeDataM : in STD_LOGIC_VECTOR ( 16 downto 0 );
    \q_reg[1]_21\ : in STD_LOGIC;
    \q_reg[1]_22\ : in STD_LOGIC;
    \q_reg[1]_23\ : in STD_LOGIC;
    \q_reg[1]_24\ : in STD_LOGIC;
    \q_reg[1]_25\ : in STD_LOGIC;
    \q_reg[1]_26\ : in STD_LOGIC;
    \q_reg[1]_27\ : in STD_LOGIC;
    \q_reg[1]_28\ : in STD_LOGIC;
    \q_reg[1]_29\ : in STD_LOGIC;
    \q_reg[1]_30\ : in STD_LOGIC;
    \q_reg[1]_31\ : in STD_LOGIC;
    \q_reg[0]_14\ : in STD_LOGIC;
    \q_reg[2]_0\ : in STD_LOGIC;
    \q_reg[12]_0\ : in STD_LOGIC;
    \q_reg[1]_32\ : in STD_LOGIC;
    \q_reg[1]_33\ : in STD_LOGIC;
    \q_reg[1]_34\ : in STD_LOGIC;
    \q_reg[1]_35\ : in STD_LOGIC;
    \q_reg[1]_36\ : in STD_LOGIC;
    \q_reg[8]_0\ : in STD_LOGIC;
    \q_reg[2]_1\ : in STD_LOGIC;
    \q_reg[12]_1\ : in STD_LOGIC;
    \q_reg[1]_37\ : in STD_LOGIC;
    \q_reg[1]_38\ : in STD_LOGIC;
    \q_reg[1]_39\ : in STD_LOGIC;
    \q_reg[8]_1\ : in STD_LOGIC;
    \q_reg[2]_2\ : in STD_LOGIC;
    \q_reg[12]_2\ : in STD_LOGIC;
    \q_reg[1]_40\ : in STD_LOGIC;
    \q_reg[1]_41\ : in STD_LOGIC;
    \q_reg[1]_42\ : in STD_LOGIC;
    \q_reg[8]_2\ : in STD_LOGIC;
    \q_reg[2]_3\ : in STD_LOGIC;
    \q_reg[12]_3\ : in STD_LOGIC;
    \q_reg[1]_43\ : in STD_LOGIC;
    \q_reg[8]_3\ : in STD_LOGIC;
    \q_reg[1]_44\ : in STD_LOGIC;
    \q_reg[1]_45\ : in STD_LOGIC;
    \q_reg[0]_15\ : in STD_LOGIC;
    \q_reg[1]_46\ : in STD_LOGIC;
    \q_reg[0]_16\ : in STD_LOGIC;
    \q_reg[1]_47\ : in STD_LOGIC;
    \q_reg[0]_17\ : in STD_LOGIC;
    \q_reg[1]_48\ : in STD_LOGIC;
    \q_reg[0]_18\ : in STD_LOGIC;
    condinva : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[0]_19\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    carry : in STD_LOGIC;
    \q_reg[0]_20\ : in STD_LOGIC;
    data4 : in STD_LOGIC;
    \q_reg[0]_21\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \design_1_top_0_0_flopenr__parameterized0\ : entity is "flopenr";
end \design_1_top_0_0_flopenr__parameterized0\;

architecture STRUCTURE of \design_1_top_0_0_flopenr__parameterized0\ is
  signal \^addra\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^alucontrol\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \ALUControl__0\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ALUFlags10_out : STD_LOGIC;
  signal ALUFlags2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ALUResult : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ALUSrc : STD_LOGIC;
  signal Instr : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal MVN : STD_LOGIC;
  signal PCS1 : STD_LOGIC;
  signal PCSrc : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal Shift : STD_LOGIC;
  signal SrcA : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SrcB2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \SrcB2__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^addressm\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \addressM[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[0]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[0]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[10]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_7_n_1\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_7_n_2\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_7_n_3\ : STD_LOGIC;
  signal \addressM[11]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[12]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[12]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[12]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[13]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[13]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[13]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[13]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[14]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[14]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[14]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[14]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[15]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[16]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[17]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[18]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_28_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_30_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_34_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_36_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_37_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_38_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[19]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[1]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[20]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[21]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[22]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[23]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[24]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[25]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[26]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_29_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_32_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_33_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[27]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[28]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[29]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[2]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[30]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_14_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_22_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_23_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_24_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_25_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_26_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_27_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_31_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_35_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_47_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_9_n_1\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_9_n_2\ : STD_LOGIC;
  signal \addressM[31]_INST_0_i_9_n_3\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[3]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_13_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[4]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[5]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[6]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[6]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[6]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \addressM[6]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[6]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_15_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_16_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_17_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_18_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_19_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_20_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_21_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_6_n_1\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_6_n_2\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_6_n_3\ : STD_LOGIC;
  signal \addressM[7]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[8]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \addressM[9]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal \alu/condinvb\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \alu/sum\ : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \c/cl/FlagWrite\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \c/dec/p_1_out__5\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal d : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal d0 : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal d1 : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \ext/Imm__7\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal \g0_b7_i_1__1_n_0\ : STD_LOGIC;
  signal g0_b7_i_1_n_0 : STD_LOGIC;
  signal \g0_b7_i_2__0_n_0\ : STD_LOGIC;
  signal g0_b7_i_2_n_0 : STD_LOGIC;
  signal g0_b7_i_3_n_0 : STD_LOGIC;
  signal g0_b7_i_4_n_0 : STD_LOGIC;
  signal g0_b7_i_5_n_0 : STD_LOGIC;
  signal \^out\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \q[0]_i_10_n_0\ : STD_LOGIC;
  signal \q[0]_i_11_n_0\ : STD_LOGIC;
  signal \q[0]_i_12_n_0\ : STD_LOGIC;
  signal \q[0]_i_13_n_0\ : STD_LOGIC;
  signal \q[0]_i_14_n_0\ : STD_LOGIC;
  signal \q[0]_i_15_n_0\ : STD_LOGIC;
  signal \q[0]_i_16_n_0\ : STD_LOGIC;
  signal \q[0]_i_17_n_0\ : STD_LOGIC;
  signal \q[0]_i_18_n_0\ : STD_LOGIC;
  signal \q[0]_i_19_n_0\ : STD_LOGIC;
  signal \q[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \q[0]_i_2_n_0\ : STD_LOGIC;
  signal \q[0]_i_3_n_0\ : STD_LOGIC;
  signal \q[0]_i_4_n_0\ : STD_LOGIC;
  signal \q[0]_i_6_n_0\ : STD_LOGIC;
  signal \q[0]_i_7_n_0\ : STD_LOGIC;
  signal \q[0]_i_8_n_0\ : STD_LOGIC;
  signal \q[0]_i_9_n_0\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
  signal \^q_reg[0]_1\ : STD_LOGIC;
  signal \^q_reg[0]_3\ : STD_LOGIC;
  signal \^q_reg[0]_4\ : STD_LOGIC;
  signal \^q_reg[18]_0\ : STD_LOGIC;
  signal \^q_reg[1]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q_reg[1]_1\ : STD_LOGIC;
  signal \^q_reg[1]_2\ : STD_LOGIC;
  signal \^q_reg[1]_3\ : STD_LOGIC;
  signal \^q_reg[1]_4\ : STD_LOGIC;
  signal sel : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal srcBshifted : STD_LOGIC_VECTOR ( 31 to 31 );
  signal writeDataM_0_sn_1 : STD_LOGIC;
  signal y01_in : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \NLW_q_reg[1]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_q_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_CURRENT_STATE[2]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \addressM[0]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \addressM[0]_INST_0_i_5\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \addressM[0]_INST_0_i_7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addressM[10]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \addressM[11]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \addressM[11]_INST_0_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \addressM[12]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \addressM[13]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \addressM[14]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \addressM[15]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \addressM[16]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \addressM[16]_INST_0_i_14\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \addressM[16]_INST_0_i_6\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addressM[17]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \addressM[17]_INST_0_i_15\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \addressM[17]_INST_0_i_6\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addressM[18]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \addressM[18]_INST_0_i_14\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \addressM[18]_INST_0_i_15\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \addressM[18]_INST_0_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_27\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_28\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_29\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_30\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_31\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_32\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_33\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_34\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \addressM[19]_INST_0_i_8\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addressM[1]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \addressM[1]_INST_0_i_11\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \addressM[20]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \addressM[20]_INST_0_i_7\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \addressM[21]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \addressM[21]_INST_0_i_14\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \addressM[21]_INST_0_i_15\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \addressM[21]_INST_0_i_7\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \addressM[22]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \addressM[23]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \addressM[24]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \addressM[24]_INST_0_i_13\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \addressM[24]_INST_0_i_14\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \addressM[25]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \addressM[25]_INST_0_i_13\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \addressM[25]_INST_0_i_14\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \addressM[26]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \addressM[26]_INST_0_i_14\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addressM[26]_INST_0_i_15\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \addressM[26]_INST_0_i_16\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0_i_26\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0_i_29\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0_i_32\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \addressM[27]_INST_0_i_35\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0_i_16\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0_i_6\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0_i_7\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \addressM[28]_INST_0_i_9\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0_i_13\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0_i_16\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0_i_6\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \addressM[29]_INST_0_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \addressM[2]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \addressM[2]_INST_0_i_11\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \addressM[2]_INST_0_i_6\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \addressM[30]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \addressM[30]_INST_0_i_15\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \addressM[30]_INST_0_i_18\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \addressM[30]_INST_0_i_9\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0_i_10\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0_i_12\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0_i_25\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \addressM[31]_INST_0_i_48\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \addressM[3]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \addressM[3]_INST_0_i_7\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \addressM[3]_INST_0_i_8\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \addressM[4]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \addressM[4]_INST_0_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \addressM[5]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \addressM[6]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \addressM[7]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \addressM[8]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \addressM[9]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of g0_b7_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \g0_b7_i_1__0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \g0_b7_i_1__1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of g0_b7_i_2 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \g0_b7_i_2__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \g0_b7_i_2__1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of g0_b7_i_3 : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \g0_b7_i_3__0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of g0_b7_i_4 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \g0_b7_i_4__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \q[1]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \q[1]_i_4\ : label is "soft_lutpair45";
begin
  ADDRA(3 downto 0) <= \^addra\(3 downto 0);
  ALUControl(1 downto 0) <= \^alucontrol\(1 downto 0);
  Q(31 downto 0) <= \^q\(31 downto 0);
  addressM(31 downto 0) <= \^addressm\(31 downto 0);
  \out\(4 downto 0) <= \^out\(4 downto 0);
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
  \q_reg[0]_1\ <= \^q_reg[0]_1\;
  \q_reg[0]_3\ <= \^q_reg[0]_3\;
  \q_reg[0]_4\ <= \^q_reg[0]_4\;
  \q_reg[18]_0\ <= \^q_reg[18]_0\;
  \q_reg[1]_0\(4 downto 0) <= \^q_reg[1]_0\(4 downto 0);
  \q_reg[1]_1\ <= \^q_reg[1]_1\;
  \q_reg[1]_2\ <= \^q_reg[1]_2\;
  \q_reg[1]_3\ <= \^q_reg[1]_3\;
  \q_reg[1]_4\ <= \^q_reg[1]_4\;
  writeDataM_0_sp_1 <= writeDataM_0_sn_1;
\FSM_sequential_CURRENT_STATE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444CFCCCCCC"
    )
        port map (
      I0 => doneM,
      I1 => \FSM_sequential_CURRENT_STATE_reg[2]\(1),
      I2 => Instr(20),
      I3 => \^out\(0),
      I4 => CondEx,
      I5 => \FSM_sequential_CURRENT_STATE_reg[2]\(0),
      O => \FSM_sequential_CURRENT_STATE_reg[0]\
    );
\FSM_sequential_CURRENT_STATE[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => Instr(20),
      I1 => \^out\(0),
      I2 => CondEx,
      O => MemWrite
    );
\addressM[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \SrcB2__0\(0),
      I1 => ALUResult(0),
      I2 => Shift,
      O => \^addressm\(0)
    );
\addressM[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCDDDF22232220"
    )
        port map (
      I0 => \addressM[0]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(0),
      I5 => MVN,
      O => \SrcB2__0\(0)
    );
\addressM[0]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => r15(15),
      I1 => rd20(16),
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q\(0),
      I4 => \^q_reg[1]_1\,
      I5 => rd20(0),
      O => \q_reg[0]_2\
    );
\addressM[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => \SrcB2__0\(0),
      I1 => SrcA(0),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(0),
      O => ALUResult(0)
    );
\addressM[0]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB888B888"
    )
        port map (
      I0 => Instr(0),
      I1 => \^out\(0),
      I2 => \addressM[0]_INST_0_i_6_n_0\,
      I3 => \addressM[3]_INST_0_i_8_n_0\,
      I4 => \addressM[31]_INST_0_i_12_n_0\,
      I5 => \addressM[16]_INST_0_i_6_n_0\,
      O => \addressM[0]_INST_0_i_3_n_0\
    );
\addressM[0]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0F0F044"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => \addressM[0]_INST_0_i_7_n_0\,
      I2 => \q_reg[0]_18\,
      I3 => Instr(6),
      I4 => Instr(5),
      O => d0(0)
    );
\addressM[0]_INST_0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q_reg[0]_1\,
      I2 => rd10(0),
      O => SrcA(0)
    );
\addressM[0]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(2),
      I2 => \^q_reg[1]_0\(1),
      I3 => Instr(4),
      I4 => \^q_reg[1]_0\(2),
      I5 => Instr(0),
      O => \addressM[0]_INST_0_i_6_n_0\
    );
\addressM[0]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => \^q_reg[1]_0\(4),
      I2 => writeDataM_0_sn_1,
      I3 => \^q_reg[1]_0\(3),
      I4 => \^q_reg[1]_0\(1),
      O => \addressM[0]_INST_0_i_7_n_0\
    );
\addressM[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(10),
      I1 => ALUResult(10),
      I2 => Shift,
      O => \^addressm\(10)
    );
\addressM[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => \^q_reg[1]_0\(1),
      I1 => Instr(27),
      I2 => \addressM[10]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(10),
      I5 => MVN,
      O => SrcB2(10)
    );
\addressM[10]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(2),
      I1 => \^q_reg[1]_4\,
      I2 => \^q_reg[1]_2\,
      I3 => writeDataM(6),
      I4 => \^q_reg[1]_3\,
      O => \addressM[10]_INST_0_i_10_n_0\
    );
\addressM[10]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_17_n_0\,
      I1 => \q_reg[1]_21\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[18]_INST_0_i_19_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_22\,
      O => \addressM[10]_INST_0_i_11_n_0\
    );
\addressM[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(10),
      I1 => \q_reg[31]_1\(9),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(10),
      O => ALUResult(10)
    );
\addressM[10]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEA40404004"
    )
        port map (
      I0 => \^out\(0),
      I1 => \addressM[26]_INST_0_i_6_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[10]_INST_0_i_3_n_0\
    );
\addressM[10]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(10),
      I1 => \addressM[10]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[10]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(10)
    );
\addressM[10]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[10]_INST_0_i_9_n_0\,
      I1 => \q_reg[1]_48\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[11]_INST_0_i_19_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_47\,
      O => y01_in(10)
    );
\addressM[10]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[10]_INST_0_i_10_n_0\,
      I1 => \q_reg[0]_17\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[11]_INST_0_i_20_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_16\,
      O => \addressM[10]_INST_0_i_7_n_0\
    );
\addressM[10]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[13]_INST_0_i_11_n_0\,
      I1 => \addressM[11]_INST_0_i_21_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[12]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[10]_INST_0_i_11_n_0\,
      O => \addressM[10]_INST_0_i_8_n_0\
    );
\addressM[10]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(2),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(6),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[10]_INST_0_i_9_n_0\
    );
\addressM[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(11),
      I1 => ALUResult(11),
      I2 => Shift,
      O => \^addressm\(11)
    );
\addressM[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => Instr(27),
      I2 => \addressM[11]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(11),
      I5 => MVN,
      O => SrcB2(11)
    );
\addressM[11]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[14]_INST_0_i_11_n_0\,
      I1 => \addressM[12]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[13]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[11]_INST_0_i_21_n_0\,
      O => \addressM[11]_INST_0_i_10_n_0\
    );
\addressM[11]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(11),
      I2 => r15(10),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(11),
      I5 => \^alucontrol\(1),
      O => \addressM[11]_INST_0_i_15_n_0\
    );
\addressM[11]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(10),
      I2 => r15(9),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(10),
      I5 => \^alucontrol\(1),
      O => \addressM[11]_INST_0_i_16_n_0\
    );
\addressM[11]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(9),
      I2 => r15(8),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(9),
      I5 => \^alucontrol\(1),
      O => \addressM[11]_INST_0_i_17_n_0\
    );
\addressM[11]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(8),
      I2 => r15(7),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(8),
      I5 => \^alucontrol\(1),
      O => \addressM[11]_INST_0_i_18_n_0\
    );
\addressM[11]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => writeDataM(3),
      I1 => \^q_reg[1]_0\(2),
      I2 => writeDataM_0_sn_1,
      I3 => \^q_reg[1]_0\(3),
      I4 => writeDataM(7),
      I5 => \^q_reg[1]_0\(4),
      O => \addressM[11]_INST_0_i_19_n_0\
    );
\addressM[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(11),
      I1 => \q_reg[31]_1\(10),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(11),
      O => ALUResult(11)
    );
\addressM[11]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000030BB3088"
    )
        port map (
      I0 => writeDataM(3),
      I1 => \^q_reg[1]_4\,
      I2 => writeDataM_0_sn_1,
      I3 => \^q_reg[1]_3\,
      I4 => writeDataM(7),
      I5 => \^q_reg[1]_2\,
      O => \addressM[11]_INST_0_i_20_n_0\
    );
\addressM[11]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_36_n_0\,
      I1 => \q_reg[1]_15\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_38_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_16\,
      O => \addressM[11]_INST_0_i_21_n_0\
    );
\addressM[11]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0E0E0A4"
    )
        port map (
      I0 => \^out\(0),
      I1 => \addressM[27]_INST_0_i_7_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[11]_INST_0_i_3_n_0\
    );
\addressM[11]_INST_0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(25),
      O => ALUSrc
    );
\addressM[11]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(11),
      I1 => \addressM[11]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[11]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(11)
    );
\addressM[11]_INST_0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[7]_INST_0_i_6_n_0\,
      CO(3) => \addressM[11]_INST_0_i_7_n_0\,
      CO(2) => \addressM[11]_INST_0_i_7_n_1\,
      CO(1) => \addressM[11]_INST_0_i_7_n_2\,
      CO(0) => \addressM[11]_INST_0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(11 downto 8),
      O(3 downto 0) => \alu/sum\(11 downto 8),
      S(3) => \addressM[11]_INST_0_i_15_n_0\,
      S(2) => \addressM[11]_INST_0_i_16_n_0\,
      S(1) => \addressM[11]_INST_0_i_17_n_0\,
      S(0) => \addressM[11]_INST_0_i_18_n_0\
    );
\addressM[11]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[11]_INST_0_i_19_n_0\,
      I1 => \q_reg[1]_47\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[1]_48\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_46\,
      O => y01_in(11)
    );
\addressM[11]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[11]_INST_0_i_20_n_0\,
      I1 => \q_reg[0]_16\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[0]_17\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_15\,
      O => \addressM[11]_INST_0_i_9_n_0\
    );
\addressM[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(12),
      I1 => ALUResult(12),
      I2 => Shift,
      O => \^addressm\(12)
    );
\addressM[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[12]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(12),
      I5 => MVN,
      O => SrcB2(12)
    );
\addressM[12]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_17_n_0\,
      I1 => \addressM[16]_INST_0_i_18_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[16]_INST_0_i_16_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_29\,
      O => \addressM[12]_INST_0_i_11_n_0\
    );
\addressM[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(12),
      I1 => \q_reg[31]_1\(11),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(12),
      O => ALUResult(12)
    );
\addressM[12]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEA40404004"
    )
        port map (
      I0 => Instr(27),
      I1 => \addressM[28]_INST_0_i_6_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[12]_INST_0_i_3_n_0\
    );
\addressM[12]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => \q_reg[0]_8\(0),
      I1 => \q_reg[0]_10\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[12]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(12)
    );
\addressM[12]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[15]_INST_0_i_20_n_0\,
      I1 => \addressM[13]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[14]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[12]_INST_0_i_11_n_0\,
      O => \addressM[12]_INST_0_i_8_n_0\
    );
\addressM[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(13),
      I1 => ALUResult(13),
      I2 => Shift,
      O => \^addressm\(13)
    );
\addressM[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[13]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(13),
      I5 => MVN,
      O => SrcB2(13)
    );
\addressM[13]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_18_n_0\,
      I1 => \addressM[17]_INST_0_i_19_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[17]_INST_0_i_17_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_24\,
      O => \addressM[13]_INST_0_i_11_n_0\
    );
\addressM[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(13),
      I1 => \q_reg[31]_1\(12),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(13),
      O => ALUResult(13)
    );
\addressM[13]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0E0E0E0E0E0E0A4"
    )
        port map (
      I0 => Instr(27),
      I1 => \addressM[29]_INST_0_i_6_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[13]_INST_0_i_3_n_0\
    );
\addressM[13]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(13),
      I1 => \addressM[13]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[13]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(13)
    );
\addressM[13]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg[1]_47\,
      I1 => \^q_reg[0]_4\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[1]_46\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[16]_INST_0_i_11_n_0\,
      O => y01_in(13)
    );
\addressM[13]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \q_reg[0]_16\,
      I1 => \^q_reg[0]_3\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[0]_15\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[16]_INST_0_i_12_n_0\,
      O => \addressM[13]_INST_0_i_7_n_0\
    );
\addressM[13]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_13_n_0\,
      I1 => \addressM[14]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[15]_INST_0_i_20_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[13]_INST_0_i_11_n_0\,
      O => \addressM[13]_INST_0_i_8_n_0\
    );
\addressM[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(14),
      I1 => ALUResult(14),
      I2 => Shift,
      O => \^addressm\(14)
    );
\addressM[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[14]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(14),
      I5 => MVN,
      O => SrcB2(14)
    );
\addressM[14]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_18_n_0\,
      I1 => \addressM[18]_INST_0_i_19_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[18]_INST_0_i_17_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_21\,
      O => \addressM[14]_INST_0_i_11_n_0\
    );
\addressM[14]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(14),
      I1 => \q_reg[31]_1\(13),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(14),
      O => ALUResult(14)
    );
\addressM[14]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF400040"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_12_n_0\,
      I1 => \addressM[31]_INST_0_i_10_n_0\,
      I2 => \addressM[30]_INST_0_i_6_n_0\,
      I3 => Instr(27),
      I4 => Instr(12),
      I5 => \^out\(0),
      O => \addressM[14]_INST_0_i_3_n_0\
    );
\addressM[14]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(14),
      I1 => \addressM[14]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[14]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(14)
    );
\addressM[14]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg[1]_46\,
      I1 => \addressM[16]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[0]_4\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[17]_INST_0_i_11_n_0\,
      O => y01_in(14)
    );
\addressM[14]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \q_reg[0]_15\,
      I1 => \addressM[16]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[0]_3\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[17]_INST_0_i_12_n_0\,
      O => \addressM[14]_INST_0_i_7_n_0\
    );
\addressM[14]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_13_n_0\,
      I1 => \addressM[15]_INST_0_i_20_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[16]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[14]_INST_0_i_11_n_0\,
      O => \addressM[14]_INST_0_i_8_n_0\
    );
\addressM[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(15),
      I1 => ALUResult(15),
      I2 => Shift,
      O => \^addressm\(15)
    );
\addressM[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[15]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(15),
      I5 => MVN,
      O => SrcB2(15)
    );
\addressM[15]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(15),
      I2 => r15(14),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(15),
      I5 => \^alucontrol\(1),
      O => \addressM[15]_INST_0_i_14_n_0\
    );
\addressM[15]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(14),
      I2 => r15(13),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(14),
      I5 => \^alucontrol\(1),
      O => \addressM[15]_INST_0_i_15_n_0\
    );
\addressM[15]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(13),
      I2 => r15(12),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(13),
      I5 => \^alucontrol\(1),
      O => \addressM[15]_INST_0_i_16_n_0\
    );
\addressM[15]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(12),
      I2 => r15(11),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(12),
      I5 => \^alucontrol\(1),
      O => \addressM[15]_INST_0_i_17_n_0\
    );
\addressM[15]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \addressM[15]_INST_0_i_21_n_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => writeDataM(3),
      I3 => \^q_reg[1]_0\(3),
      I4 => writeDataM(8),
      I5 => \^q_reg[1]_0\(4),
      O => \^q_reg[0]_4\
    );
\addressM[15]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88888888B8BBB888"
    )
        port map (
      I0 => \addressM[15]_INST_0_i_22_n_0\,
      I1 => \^q_reg[1]_4\,
      I2 => writeDataM(3),
      I3 => \^q_reg[1]_3\,
      I4 => writeDataM(8),
      I5 => \^q_reg[1]_2\,
      O => \^q_reg[0]_3\
    );
\addressM[15]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(15),
      I1 => \q_reg[31]_1\(14),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(15),
      O => ALUResult(15)
    );
\addressM[15]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_37_n_0\,
      I1 => \addressM[19]_INST_0_i_38_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_36_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_15\,
      O => \addressM[15]_INST_0_i_20_n_0\
    );
\addressM[15]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[1]_0\(3),
      I2 => rd20(8),
      I3 => \^q_reg[1]_1\,
      I4 => r15(7),
      I5 => \^q_reg[1]_0\(4),
      O => \addressM[15]_INST_0_i_21_n_0\
    );
\addressM[15]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BBB888B8"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[1]_3\,
      I2 => rd20(8),
      I3 => \^q_reg[1]_1\,
      I4 => r15(7),
      I5 => \^q_reg[1]_2\,
      O => \addressM[15]_INST_0_i_22_n_0\
    );
\addressM[15]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF400040"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_12_n_0\,
      I1 => \addressM[31]_INST_0_i_10_n_0\,
      I2 => \addressM[31]_INST_0_i_11_n_0\,
      I3 => Instr(27),
      I4 => Instr(13),
      I5 => \^out\(0),
      O => \addressM[15]_INST_0_i_3_n_0\
    );
\addressM[15]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(15),
      I1 => \addressM[15]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[15]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(15)
    );
\addressM[15]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[11]_INST_0_i_7_n_0\,
      CO(3) => \addressM[15]_INST_0_i_6_n_0\,
      CO(2) => \addressM[15]_INST_0_i_6_n_1\,
      CO(1) => \addressM[15]_INST_0_i_6_n_2\,
      CO(0) => \addressM[15]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(15 downto 12),
      O(3 downto 0) => \alu/sum\(15 downto 12),
      S(3) => \addressM[15]_INST_0_i_14_n_0\,
      S(2) => \addressM[15]_INST_0_i_15_n_0\,
      S(1) => \addressM[15]_INST_0_i_16_n_0\,
      S(0) => \addressM[15]_INST_0_i_17_n_0\
    );
\addressM[15]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[0]_4\,
      I1 => \addressM[17]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[16]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[18]_INST_0_i_11_n_0\,
      O => y01_in(15)
    );
\addressM[15]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \^q_reg[0]_3\,
      I1 => \addressM[17]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[16]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[18]_INST_0_i_12_n_0\,
      O => \addressM[15]_INST_0_i_8_n_0\
    );
\addressM[15]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_13_n_0\,
      I1 => \addressM[16]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[17]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[15]_INST_0_i_20_n_0\,
      O => \addressM[15]_INST_0_i_9_n_0\
    );
\addressM[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(16),
      I1 => ALUResult(16),
      I2 => Shift,
      O => \^addressm\(16)
    );
\addressM[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(16),
      I5 => MVN,
      O => SrcB2(16)
    );
\addressM[16]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[18]_0\,
      I1 => \addressM[17]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[18]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[16]_INST_0_i_13_n_0\,
      O => \addressM[16]_INST_0_i_10_n_0\
    );
\addressM[16]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_14_n_0\,
      I1 => \addressM[24]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_29_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[27]_INST_0_i_29_n_0\,
      O => \addressM[16]_INST_0_i_11_n_0\
    );
\addressM[16]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[2]_INST_0_i_11_n_0\,
      I1 => \addressM[24]_INST_0_i_14_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[19]_INST_0_i_33_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \addressM[27]_INST_0_i_35_n_0\,
      O => \addressM[16]_INST_0_i_12_n_0\
    );
\addressM[16]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_15_n_0\,
      I1 => \addressM[16]_INST_0_i_16_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[16]_INST_0_i_17_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[16]_INST_0_i_18_n_0\,
      O => \addressM[16]_INST_0_i_13_n_0\
    );
\addressM[16]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(1),
      I1 => \^q_reg[1]_1\,
      I2 => r15(0),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[16]_INST_0_i_14_n_0\
    );
\addressM[16]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(28),
      I1 => \^q_reg[1]_1\,
      I2 => r15(27),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[16]_INST_0_i_15_n_0\
    );
\addressM[16]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(20),
      I1 => \^q_reg[1]_1\,
      I2 => r15(19),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[16]_INST_0_i_16_n_0\
    );
\addressM[16]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(24),
      I1 => \^q_reg[1]_1\,
      I2 => r15(23),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[16]_INST_0_i_17_n_0\
    );
\addressM[16]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(16),
      I1 => \^q_reg[1]_1\,
      I2 => r15(15),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[16]_INST_0_i_18_n_0\
    );
\addressM[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(16),
      I1 => \q_reg[31]_1\(15),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(16),
      O => ALUResult(16)
    );
\addressM[16]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Instr(14),
      I1 => Instr(27),
      I2 => \addressM[16]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[16]_INST_0_i_7_n_0\,
      O => \addressM[16]_INST_0_i_3_n_0\
    );
\addressM[16]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(16),
      I1 => \addressM[16]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[16]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(16)
    );
\addressM[16]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q_reg[1]_0\(4),
      I1 => Instr(0),
      I2 => \^q_reg[1]_0\(3),
      I3 => \^q_reg[1]_0\(2),
      I4 => \^q_reg[1]_0\(1),
      O => \addressM[16]_INST_0_i_6_n_0\
    );
\addressM[16]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCA000000CA0"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(4),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(2),
      I4 => \addressM[31]_INST_0_i_25_n_0\,
      I5 => Instr(6),
      O => \addressM[16]_INST_0_i_7_n_0\
    );
\addressM[16]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_11_n_0\,
      I1 => \addressM[18]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[17]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_20_n_0\,
      O => y01_in(16)
    );
\addressM[16]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_12_n_0\,
      I1 => \addressM[18]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[17]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_23_n_0\,
      O => \addressM[16]_INST_0_i_9_n_0\
    );
\addressM[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(17),
      I1 => ALUResult(17),
      I2 => Shift,
      O => \^addressm\(17)
    );
\addressM[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(17),
      I5 => MVN,
      O => SrcB2(17)
    );
\addressM[17]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg[1]_11\,
      I1 => \addressM[18]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[18]_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[17]_INST_0_i_13_n_0\,
      O => \addressM[17]_INST_0_i_10_n_0\
    );
\addressM[17]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_14_n_0\,
      I1 => \addressM[25]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[21]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[29]_INST_0_i_13_n_0\,
      O => \addressM[17]_INST_0_i_11_n_0\
    );
\addressM[17]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_15_n_0\,
      I1 => \addressM[25]_INST_0_i_14_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[21]_INST_0_i_15_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \addressM[29]_INST_0_i_16_n_0\,
      O => \addressM[17]_INST_0_i_12_n_0\
    );
\addressM[17]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_16_n_0\,
      I1 => \addressM[17]_INST_0_i_17_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[17]_INST_0_i_18_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[17]_INST_0_i_19_n_0\,
      O => \addressM[17]_INST_0_i_13_n_0\
    );
\addressM[17]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(2),
      I1 => \^q_reg[1]_1\,
      I2 => r15(1),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[17]_INST_0_i_14_n_0\
    );
\addressM[17]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(2),
      I1 => \^q_reg[1]_1\,
      I2 => r15(1),
      I3 => \^q_reg[1]_2\,
      O => \addressM[17]_INST_0_i_15_n_0\
    );
\addressM[17]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(29),
      I1 => \^q_reg[1]_1\,
      I2 => r15(28),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[17]_INST_0_i_16_n_0\
    );
\addressM[17]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(21),
      I1 => \^q_reg[1]_1\,
      I2 => r15(20),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[17]_INST_0_i_17_n_0\
    );
\addressM[17]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(25),
      I1 => \^q_reg[1]_1\,
      I2 => r15(24),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[17]_INST_0_i_18_n_0\
    );
\addressM[17]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(17),
      I1 => \^q_reg[1]_1\,
      I2 => r15(16),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[17]_INST_0_i_19_n_0\
    );
\addressM[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(17),
      I1 => \q_reg[31]_1\(16),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(17),
      O => ALUResult(17)
    );
\addressM[17]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Instr(15),
      I1 => Instr(27),
      I2 => \addressM[17]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[17]_INST_0_i_7_n_0\,
      O => \addressM[17]_INST_0_i_3_n_0\
    );
\addressM[17]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(17),
      I1 => \addressM[17]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[17]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(17)
    );
\addressM[17]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \^q_reg[1]_0\(4),
      I1 => Instr(1),
      I2 => \^q_reg[1]_0\(3),
      I3 => \^q_reg[1]_0\(2),
      I4 => \^q_reg[1]_0\(1),
      O => \addressM[17]_INST_0_i_6_n_0\
    );
\addressM[17]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FCA000000CA0"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(5),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(2),
      I4 => \addressM[31]_INST_0_i_25_n_0\,
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[17]_INST_0_i_7_n_0\
    );
\addressM[17]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_11_n_0\,
      I1 => \addressM[19]_INST_0_i_20_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[18]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_21_n_0\,
      O => y01_in(17)
    );
\addressM[17]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_12_n_0\,
      I1 => \addressM[19]_INST_0_i_23_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[18]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_24_n_0\,
      O => \addressM[17]_INST_0_i_9_n_0\
    );
\addressM[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(18),
      I1 => ALUResult(18),
      I2 => Shift,
      O => \^addressm\(18)
    );
\addressM[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(18),
      I5 => MVN,
      O => SrcB2(18)
    );
\addressM[18]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \q_reg[1]_9\,
      I1 => \^q_reg[18]_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[1]_11\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[18]_INST_0_i_13_n_0\,
      O => \addressM[18]_INST_0_i_10_n_0\
    );
\addressM[18]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_14_n_0\,
      I1 => \addressM[26]_INST_0_i_15_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_30_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[30]_INST_0_i_15_n_0\,
      O => \addressM[18]_INST_0_i_11_n_0\
    );
\addressM[18]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_15_n_0\,
      I1 => \addressM[26]_INST_0_i_16_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[19]_INST_0_i_34_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \addressM[30]_INST_0_i_18_n_0\,
      O => \addressM[18]_INST_0_i_12_n_0\
    );
\addressM[18]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_16_n_0\,
      I1 => \addressM[18]_INST_0_i_17_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[18]_INST_0_i_18_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[18]_INST_0_i_19_n_0\,
      O => \addressM[18]_INST_0_i_13_n_0\
    );
\addressM[18]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(3),
      I1 => \^q_reg[1]_1\,
      I2 => r15(2),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[18]_INST_0_i_14_n_0\
    );
\addressM[18]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(3),
      I1 => \^q_reg[1]_1\,
      I2 => r15(2),
      I3 => \^q_reg[1]_2\,
      O => \addressM[18]_INST_0_i_15_n_0\
    );
\addressM[18]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(30),
      I1 => \^q_reg[1]_1\,
      I2 => r15(29),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[18]_INST_0_i_16_n_0\
    );
\addressM[18]_INST_0_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(22),
      I1 => \^q_reg[1]_1\,
      I2 => r15(21),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[18]_INST_0_i_17_n_0\
    );
\addressM[18]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(26),
      I1 => \^q_reg[1]_1\,
      I2 => r15(25),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[18]_INST_0_i_18_n_0\
    );
\addressM[18]_INST_0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(18),
      I1 => \^q_reg[1]_1\,
      I2 => r15(17),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[18]_INST_0_i_19_n_0\
    );
\addressM[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(18),
      I1 => \q_reg[31]_1\(17),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(18),
      O => ALUResult(18)
    );
\addressM[18]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Instr(16),
      I1 => Instr(27),
      I2 => \addressM[18]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[18]_INST_0_i_7_n_0\,
      O => \addressM[18]_INST_0_i_3_n_0\
    );
\addressM[18]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(18),
      I1 => \addressM[18]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[18]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(18)
    );
\addressM[18]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000000000C0"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(3),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(1),
      O => \addressM[18]_INST_0_i_6_n_0\
    );
\addressM[18]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5808"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => Instr(6),
      I2 => \^q_reg[1]_0\(1),
      I3 => Instr(4),
      O => \addressM[18]_INST_0_i_7_n_0\
    );
\addressM[18]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_11_n_0\,
      I1 => \addressM[19]_INST_0_i_21_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[19]_INST_0_i_20_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[21]_INST_0_i_11_n_0\,
      O => y01_in(18)
    );
\addressM[18]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_12_n_0\,
      I1 => \addressM[19]_INST_0_i_24_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[19]_INST_0_i_23_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[21]_INST_0_i_12_n_0\,
      O => \addressM[18]_INST_0_i_9_n_0\
    );
\addressM[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(19),
      I1 => ALUResult(19),
      I2 => Shift,
      O => \^addressm\(19)
    );
\addressM[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(19),
      I5 => MVN,
      O => SrcB2(19)
    );
\addressM[19]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_23_n_0\,
      I1 => \addressM[21]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[19]_INST_0_i_24_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_25_n_0\,
      O => \addressM[19]_INST_0_i_10_n_0\
    );
\addressM[19]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(19),
      I2 => r15(18),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(19),
      I5 => \^alucontrol\(1),
      O => \addressM[19]_INST_0_i_16_n_0\
    );
\addressM[19]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(18),
      I2 => r15(17),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(18),
      I5 => \^alucontrol\(1),
      O => \addressM[19]_INST_0_i_17_n_0\
    );
\addressM[19]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(17),
      I2 => r15(16),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(17),
      I5 => \^alucontrol\(1),
      O => \addressM[19]_INST_0_i_18_n_0\
    );
\addressM[19]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(16),
      I2 => r15(15),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(16),
      I5 => \^alucontrol\(1),
      O => \addressM[19]_INST_0_i_19_n_0\
    );
\addressM[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(19),
      I1 => \q_reg[31]_1\(18),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(19),
      O => ALUResult(19)
    );
\addressM[19]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_27_n_0\,
      I1 => \addressM[27]_INST_0_i_26_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_28_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[27]_INST_0_i_27_n_0\,
      O => \addressM[19]_INST_0_i_20_n_0\
    );
\addressM[19]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_29_n_0\,
      I1 => \addressM[27]_INST_0_i_29_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[24]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_41\,
      O => \addressM[19]_INST_0_i_21_n_0\
    );
\addressM[19]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_30_n_0\,
      I1 => \addressM[30]_INST_0_i_15_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[26]_INST_0_i_15_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_35\,
      O => \addressM[19]_INST_0_i_22_n_0\
    );
\addressM[19]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_31_n_0\,
      I1 => \addressM[27]_INST_0_i_32_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[19]_INST_0_i_32_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \addressM[27]_INST_0_i_33_n_0\,
      O => \addressM[19]_INST_0_i_23_n_0\
    );
\addressM[19]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_33_n_0\,
      I1 => \addressM[27]_INST_0_i_35_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[24]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[2]_3\,
      O => \addressM[19]_INST_0_i_24_n_0\
    );
\addressM[19]_INST_0_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_34_n_0\,
      I1 => \addressM[30]_INST_0_i_18_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[26]_INST_0_i_16_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[2]_1\,
      O => \addressM[19]_INST_0_i_25_n_0\
    );
\addressM[19]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_35_n_0\,
      I1 => \addressM[19]_INST_0_i_36_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[19]_INST_0_i_37_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \addressM[19]_INST_0_i_38_n_0\,
      O => \^q_reg[18]_0\
    );
\addressM[19]_INST_0_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(4),
      I1 => \^q_reg[1]_1\,
      I2 => r15(3),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_27_n_0\
    );
\addressM[19]_INST_0_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(8),
      I1 => \^q_reg[1]_1\,
      I2 => r15(7),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_28_n_0\
    );
\addressM[19]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[1]_1\,
      I2 => r15(4),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_29_n_0\
    );
\addressM[19]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB888B888B888"
    )
        port map (
      I0 => Instr(17),
      I1 => Instr(27),
      I2 => \addressM[19]_INST_0_i_7_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[19]_INST_0_i_8_n_0\,
      O => \addressM[19]_INST_0_i_3_n_0\
    );
\addressM[19]_INST_0_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(7),
      I1 => \^q_reg[1]_1\,
      I2 => r15(6),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_30_n_0\
    );
\addressM[19]_INST_0_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(4),
      I1 => \^q_reg[1]_1\,
      I2 => r15(3),
      I3 => \^q_reg[1]_2\,
      O => \addressM[19]_INST_0_i_31_n_0\
    );
\addressM[19]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(8),
      I1 => \^q_reg[1]_1\,
      I2 => r15(7),
      I3 => \^q_reg[1]_2\,
      O => \addressM[19]_INST_0_i_32_n_0\
    );
\addressM[19]_INST_0_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[1]_1\,
      I2 => r15(4),
      I3 => \^q_reg[1]_2\,
      O => \addressM[19]_INST_0_i_33_n_0\
    );
\addressM[19]_INST_0_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(7),
      I1 => \^q_reg[1]_1\,
      I2 => r15(6),
      I3 => \^q_reg[1]_2\,
      O => \addressM[19]_INST_0_i_34_n_0\
    );
\addressM[19]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(31),
      I1 => \^q_reg[1]_1\,
      I2 => r15(30),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_35_n_0\
    );
\addressM[19]_INST_0_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(23),
      I1 => \^q_reg[1]_1\,
      I2 => r15(22),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_36_n_0\
    );
\addressM[19]_INST_0_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(27),
      I1 => \^q_reg[1]_1\,
      I2 => r15(26),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_37_n_0\
    );
\addressM[19]_INST_0_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(19),
      I1 => \^q_reg[1]_1\,
      I2 => r15(18),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[19]_INST_0_i_38_n_0\
    );
\addressM[19]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(19),
      I1 => \addressM[19]_INST_0_i_10_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \q_reg[0]_9\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(19)
    );
\addressM[19]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[15]_INST_0_i_6_n_0\,
      CO(3) => \addressM[19]_INST_0_i_6_n_0\,
      CO(2) => \addressM[19]_INST_0_i_6_n_1\,
      CO(1) => \addressM[19]_INST_0_i_6_n_2\,
      CO(0) => \addressM[19]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(19 downto 16),
      O(3 downto 0) => \alu/sum\(19 downto 16),
      S(3) => \addressM[19]_INST_0_i_16_n_0\,
      S(2) => \addressM[19]_INST_0_i_17_n_0\,
      S(1) => \addressM[19]_INST_0_i_18_n_0\,
      S(0) => \addressM[19]_INST_0_i_19_n_0\
    );
\addressM[19]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA000000000000C0"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(3),
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(3),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(1),
      O => \addressM[19]_INST_0_i_7_n_0\
    );
\addressM[19]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5808"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(1),
      I3 => Instr(5),
      O => \addressM[19]_INST_0_i_8_n_0\
    );
\addressM[19]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_20_n_0\,
      I1 => \addressM[21]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[19]_INST_0_i_21_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[19]_INST_0_i_22_n_0\,
      O => y01_in(19)
    );
\addressM[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(1),
      I1 => ALUResult(1),
      I2 => Shift,
      O => \^addressm\(1)
    );
\addressM[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCDDDF22232220"
    )
        port map (
      I0 => \addressM[1]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(1),
      I5 => MVN,
      O => SrcB2(1)
    );
\addressM[1]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(0),
      I2 => \^q_reg[1]_1\,
      I3 => \^q\(0),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[1]_INST_0_i_10_n_0\
    );
\addressM[1]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(0),
      I1 => \^q_reg[1]_1\,
      I2 => \^q\(0),
      I3 => \^q_reg[1]_2\,
      O => \addressM[1]_INST_0_i_11_n_0\
    );
\addressM[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(1),
      I1 => \q_reg[31]_1\(0),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(1),
      O => ALUResult(1)
    );
\addressM[1]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB888B888"
    )
        port map (
      I0 => Instr(1),
      I1 => \^out\(0),
      I2 => \addressM[1]_INST_0_i_6_n_0\,
      I3 => \addressM[3]_INST_0_i_8_n_0\,
      I4 => \addressM[31]_INST_0_i_12_n_0\,
      I5 => \addressM[17]_INST_0_i_6_n_0\,
      O => \addressM[1]_INST_0_i_3_n_0\
    );
\addressM[1]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAAFFAAAAAA"
    )
        port map (
      I0 => \addressM[1]_INST_0_i_7_n_0\,
      I1 => \addressM[1]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[1]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(1)
    );
\addressM[1]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => Instr(3),
      I2 => \^q_reg[1]_0\(1),
      I3 => Instr(5),
      I4 => \^q_reg[1]_0\(2),
      I5 => Instr(1),
      O => \addressM[1]_INST_0_i_6_n_0\
    );
\addressM[1]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(1),
      I1 => \addressM[2]_INST_0_i_10_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[1]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => \addressM[1]_INST_0_i_7_n_0\
    );
\addressM[1]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080000000000300"
    )
        port map (
      I0 => \addressM[1]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[2]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \^q_reg[1]_0\(1),
      O => \addressM[1]_INST_0_i_8_n_0\
    );
\addressM[1]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[4]_INST_0_i_13_n_0\,
      I1 => \q_reg[1]_19\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[1]_18\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_20\,
      O => \addressM[1]_INST_0_i_9_n_0\
    );
\addressM[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(20),
      I1 => ALUResult(20),
      I2 => Shift,
      O => \^addressm\(20)
    );
\addressM[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(20),
      I5 => MVN,
      O => SrcB2(20)
    );
\addressM[20]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_14_n_0\,
      I1 => \addressM[20]_INST_0_i_15_n_0\,
      I2 => \^q_reg[1]_0\(1),
      I3 => \addressM[22]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(2),
      I5 => \addressM[22]_INST_0_i_13_n_0\,
      O => \addressM[20]_INST_0_i_11_n_0\
    );
\addressM[20]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_16_n_0\,
      I1 => \q_reg[1]_45\,
      I2 => \^q_reg[0]_0\,
      I3 => \addressM[22]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_4\,
      I5 => \q_reg[1]_44\,
      O => \addressM[20]_INST_0_i_12_n_0\
    );
\addressM[20]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2FFE200"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[1]_1\,
      I2 => r15(4),
      I3 => \^q_reg[1]_0\(3),
      I4 => writeDataM(9),
      I5 => \^q_reg[1]_0\(4),
      O => \addressM[20]_INST_0_i_14_n_0\
    );
\addressM[20]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rd20(9),
      I1 => \^q_reg[1]_1\,
      I2 => r15(8),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_41\,
      O => \addressM[20]_INST_0_i_15_n_0\
    );
\addressM[20]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2FFE200"
    )
        port map (
      I0 => rd20(5),
      I1 => \^q_reg[1]_1\,
      I2 => r15(4),
      I3 => \^q_reg[1]_3\,
      I4 => writeDataM(9),
      I5 => \^q_reg[1]_2\,
      O => \addressM[20]_INST_0_i_16_n_0\
    );
\addressM[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(20),
      I1 => \q_reg[31]_1\(19),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(20),
      O => ALUResult(20)
    );
\addressM[20]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => Instr(18),
      I1 => Instr(27),
      I2 => \addressM[20]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[20]_INST_0_i_7_n_0\,
      O => \addressM[20]_INST_0_i_3_n_0\
    );
\addressM[20]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(20),
      I1 => \addressM[20]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \q_reg[1]_10\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(20)
    );
\addressM[20]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E323E020"
    )
        port map (
      I0 => Instr(0),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => Instr(2),
      I4 => Instr(4),
      I5 => \addressM[31]_INST_0_i_25_n_0\,
      O => \addressM[20]_INST_0_i_6_n_0\
    );
\addressM[20]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => Instr(6),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      O => \addressM[20]_INST_0_i_7_n_0\
    );
\addressM[20]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[21]_INST_0_i_11_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[23]_INST_0_i_18_n_0\,
      O => y01_in(20)
    );
\addressM[20]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[21]_INST_0_i_12_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[23]_INST_0_i_19_n_0\,
      O => \addressM[20]_INST_0_i_9_n_0\
    );
\addressM[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(21),
      I1 => ALUResult(21),
      I2 => Shift,
      O => \^addressm\(21)
    );
\addressM[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F4F5F70A0B0A08"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(21),
      I5 => MVN,
      O => SrcB2(21)
    );
\addressM[21]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \q_reg[1]_8\,
      I3 => \q_reg[1]_7\,
      I4 => \q_reg[1]_9\,
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[21]_INST_0_i_10_n_0\
    );
\addressM[21]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_14_n_0\,
      I1 => \addressM[29]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[25]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_38\,
      O => \addressM[21]_INST_0_i_11_n_0\
    );
\addressM[21]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_15_n_0\,
      I1 => \addressM[29]_INST_0_i_16_n_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[25]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[2]_2\,
      O => \addressM[21]_INST_0_i_12_n_0\
    );
\addressM[21]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(6),
      I1 => \^q_reg[1]_1\,
      I2 => r15(5),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[21]_INST_0_i_14_n_0\
    );
\addressM[21]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(6),
      I1 => \^q_reg[1]_1\,
      I2 => r15(5),
      I3 => \^q_reg[1]_2\,
      O => \addressM[21]_INST_0_i_15_n_0\
    );
\addressM[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(21),
      I1 => \q_reg[31]_1\(20),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(21),
      O => ALUResult(21)
    );
\addressM[21]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88BBB8888888B888"
    )
        port map (
      I0 => Instr(19),
      I1 => Instr(27),
      I2 => \addressM[21]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[31]_INST_0_i_10_n_0\,
      I5 => \addressM[21]_INST_0_i_7_n_0\,
      O => \addressM[21]_INST_0_i_3_n_0\
    );
\addressM[21]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(21),
      I1 => \addressM[21]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[21]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(21)
    );
\addressM[21]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E323E020"
    )
        port map (
      I0 => Instr(1),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => Instr(3),
      I4 => Instr(5),
      I5 => \addressM[31]_INST_0_i_25_n_0\,
      O => \addressM[21]_INST_0_i_6_n_0\
    );
\addressM[21]_INST_0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      O => \addressM[21]_INST_0_i_7_n_0\
    );
\addressM[21]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \addressM[23]_INST_0_i_18_n_0\,
      I3 => \^q_reg[1]_0\(0),
      I4 => \addressM[22]_INST_0_i_9_n_0\,
      O => y01_in(21)
    );
\addressM[21]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2FFE200"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \addressM[23]_INST_0_i_19_n_0\,
      I3 => \^q_reg[1]_0\(0),
      I4 => \addressM[22]_INST_0_i_10_n_0\,
      O => \addressM[21]_INST_0_i_9_n_0\
    );
\addressM[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(22),
      I1 => ALUResult(22),
      I2 => Shift,
      O => \^addressm\(22)
    );
\addressM[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[22]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(22),
      I5 => MVN,
      O => SrcB2(22)
    );
\addressM[22]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE2E2FF00E2E200"
    )
        port map (
      I0 => \addressM[22]_INST_0_i_14_n_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => \q_reg[1]_44\,
      I3 => \^q_reg[1]_0\(0),
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[24]_INST_0_i_11_n_0\,
      O => \addressM[22]_INST_0_i_10_n_0\
    );
\addressM[22]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2FFE200"
    )
        port map (
      I0 => rd20(7),
      I1 => \^q_reg[1]_1\,
      I2 => r15(6),
      I3 => \^q_reg[1]_0\(3),
      I4 => writeDataM(10),
      I5 => \^q_reg[1]_0\(4),
      O => \addressM[22]_INST_0_i_12_n_0\
    );
\addressM[22]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rd20(11),
      I1 => \^q_reg[1]_1\,
      I2 => r15(10),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_35\,
      O => \addressM[22]_INST_0_i_13_n_0\
    );
\addressM[22]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E2FFE200"
    )
        port map (
      I0 => rd20(7),
      I1 => \^q_reg[1]_1\,
      I2 => r15(6),
      I3 => \^q_reg[1]_3\,
      I4 => writeDataM(10),
      I5 => \^q_reg[1]_2\,
      O => \addressM[22]_INST_0_i_14_n_0\
    );
\addressM[22]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(22),
      I1 => \q_reg[31]_1\(21),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(22),
      O => ALUResult(22)
    );
\addressM[22]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF200020"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_10_n_0\,
      I2 => \addressM[31]_INST_0_i_12_n_0\,
      I3 => Instr(27),
      I4 => Instr(20),
      I5 => \^out\(0),
      O => \addressM[22]_INST_0_i_3_n_0\
    );
\addressM[22]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(22),
      I1 => \addressM[22]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[22]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(22)
    );
\addressM[22]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[22]_INST_0_i_9_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[23]_INST_0_i_18_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[25]_INST_0_i_10_n_0\,
      O => y01_in(22)
    );
\addressM[22]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[22]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[23]_INST_0_i_19_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[25]_INST_0_i_11_n_0\,
      O => \addressM[22]_INST_0_i_7_n_0\
    );
\addressM[22]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \q_reg[1]_8\,
      I3 => \addressM[25]_INST_0_i_12_n_0\,
      I4 => \q_reg[1]_7\,
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[22]_INST_0_i_8_n_0\
    );
\addressM[22]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \addressM[22]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => \addressM[22]_INST_0_i_13_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[24]_INST_0_i_10_n_0\,
      O => \addressM[22]_INST_0_i_9_n_0\
    );
\addressM[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(23),
      I1 => ALUResult(23),
      I2 => Shift,
      O => \^addressm\(23)
    );
\addressM[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[23]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(23),
      I5 => MVN,
      O => SrcB2(23)
    );
\addressM[23]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(23),
      I2 => r15(22),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(23),
      I5 => \^alucontrol\(1),
      O => \addressM[23]_INST_0_i_14_n_0\
    );
\addressM[23]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(22),
      I2 => r15(21),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(22),
      I5 => \^alucontrol\(1),
      O => \addressM[23]_INST_0_i_15_n_0\
    );
\addressM[23]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(21),
      I2 => r15(20),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(21),
      I5 => \^alucontrol\(1),
      O => \addressM[23]_INST_0_i_16_n_0\
    );
\addressM[23]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(20),
      I2 => r15(19),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(20),
      I5 => \^alucontrol\(1),
      O => \addressM[23]_INST_0_i_17_n_0\
    );
\addressM[23]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \addressM[23]_INST_0_i_21_n_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => writeDataM(8),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_27\,
      O => \addressM[23]_INST_0_i_18_n_0\
    );
\addressM[23]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8BBBB88B88888"
    )
        port map (
      I0 => \addressM[23]_INST_0_i_22_n_0\,
      I1 => \^q_reg[1]_4\,
      I2 => writeDataM(8),
      I3 => \^q_reg[1]_2\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[2]_0\,
      O => \addressM[23]_INST_0_i_19_n_0\
    );
\addressM[23]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(23),
      I1 => \q_reg[31]_1\(22),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(23),
      O => ALUResult(23)
    );
\addressM[23]_INST_0_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => writeDataM(7),
      I1 => \^q_reg[1]_0\(3),
      I2 => writeDataM_0_sn_1,
      I3 => \^q_reg[1]_0\(4),
      I4 => writeDataM(11),
      O => \addressM[23]_INST_0_i_21_n_0\
    );
\addressM[23]_INST_0_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => writeDataM(7),
      I1 => \^q_reg[1]_3\,
      I2 => writeDataM_0_sn_1,
      I3 => \^q_reg[1]_2\,
      I4 => writeDataM(11),
      O => \addressM[23]_INST_0_i_22_n_0\
    );
\addressM[23]_INST_0_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFE"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(2),
      I4 => \^q_reg[1]_0\(4),
      O => \^q_reg[1]_2\
    );
\addressM[23]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF200020"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_11_n_0\,
      I1 => \addressM[31]_INST_0_i_10_n_0\,
      I2 => \addressM[31]_INST_0_i_12_n_0\,
      I3 => Instr(27),
      I4 => Instr(21),
      I5 => \^out\(0),
      O => \addressM[23]_INST_0_i_3_n_0\
    );
\addressM[23]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(23),
      I1 => \addressM[23]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[23]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(23)
    );
\addressM[23]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[19]_INST_0_i_6_n_0\,
      CO(3) => \addressM[23]_INST_0_i_6_n_0\,
      CO(2) => \addressM[23]_INST_0_i_6_n_1\,
      CO(1) => \addressM[23]_INST_0_i_6_n_2\,
      CO(0) => \addressM[23]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(23 downto 20),
      O(3 downto 0) => \alu/sum\(23 downto 20),
      S(3) => \addressM[23]_INST_0_i_14_n_0\,
      S(2) => \addressM[23]_INST_0_i_15_n_0\,
      S(1) => \addressM[23]_INST_0_i_16_n_0\,
      S(0) => \addressM[23]_INST_0_i_17_n_0\
    );
\addressM[23]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF33CC00B8B8B8B8"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \addressM[26]_INST_0_i_11_n_0\,
      I3 => \addressM[23]_INST_0_i_18_n_0\,
      I4 => \addressM[25]_INST_0_i_10_n_0\,
      I5 => \^q_reg[1]_0\(0),
      O => y01_in(23)
    );
\addressM[23]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFECE3E02F2C2320"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(1),
      I3 => \addressM[26]_INST_0_i_12_n_0\,
      I4 => \addressM[23]_INST_0_i_19_n_0\,
      I5 => \addressM[25]_INST_0_i_11_n_0\,
      O => \addressM[23]_INST_0_i_8_n_0\
    );
\addressM[23]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8FF33CC00"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_14_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \addressM[24]_INST_0_i_12_n_0\,
      I3 => \addressM[25]_INST_0_i_12_n_0\,
      I4 => \q_reg[1]_7\,
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[23]_INST_0_i_9_n_0\
    );
\addressM[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(24),
      I1 => ALUResult(24),
      I2 => Shift,
      O => \^addressm\(24)
    );
\addressM[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(24),
      I5 => MVN,
      O => SrcB2(24)
    );
\addressM[24]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_13_n_0\,
      I1 => \q_reg[1]_41\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[27]_INST_0_i_29_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_40\,
      O => \addressM[24]_INST_0_i_10_n_0\
    );
\addressM[24]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_14_n_0\,
      I1 => \q_reg[2]_3\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[27]_INST_0_i_35_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[8]_2\,
      O => \addressM[24]_INST_0_i_11_n_0\
    );
\addressM[24]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(15),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(12),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[24]_INST_0_i_12_n_0\
    );
\addressM[24]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(9),
      I1 => \^q_reg[1]_1\,
      I2 => r15(8),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[24]_INST_0_i_13_n_0\
    );
\addressM[24]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(9),
      I1 => \^q_reg[1]_1\,
      I2 => r15(8),
      I3 => \^q_reg[1]_2\,
      O => \addressM[24]_INST_0_i_14_n_0\
    );
\addressM[24]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(24),
      I1 => \q_reg[31]_1\(23),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(24),
      O => ALUResult(24)
    );
\addressM[24]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(22),
      I4 => \^out\(0),
      O => \addressM[24]_INST_0_i_3_n_0\
    );
\addressM[24]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(24),
      I1 => \addressM[24]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[24]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(24)
    );
\addressM[24]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE030200"
    )
        port map (
      I0 => Instr(0),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => \addressM[16]_INST_0_i_7_n_0\,
      O => \addressM[24]_INST_0_i_6_n_0\
    );
\addressM[24]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_10_n_0\,
      I1 => \addressM[26]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[25]_INST_0_i_10_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[27]_INST_0_i_20_n_0\,
      O => y01_in(24)
    );
\addressM[24]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[24]_INST_0_i_11_n_0\,
      I1 => \addressM[26]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[25]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[27]_INST_0_i_22_n_0\,
      O => \addressM[24]_INST_0_i_8_n_0\
    );
\addressM[24]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_25_n_0\,
      I1 => \addressM[25]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[26]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[24]_INST_0_i_12_n_0\,
      O => \addressM[24]_INST_0_i_9_n_0\
    );
\addressM[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(25),
      I1 => ALUResult(25),
      I2 => Shift,
      O => \^addressm\(25)
    );
\addressM[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(25),
      I5 => MVN,
      O => SrcB2(25)
    );
\addressM[25]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_13_n_0\,
      I1 => \q_reg[1]_38\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[29]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_37\,
      O => \addressM[25]_INST_0_i_10_n_0\
    );
\addressM[25]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_14_n_0\,
      I1 => \q_reg[2]_2\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[29]_INST_0_i_16_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[8]_1\,
      O => \addressM[25]_INST_0_i_11_n_0\
    );
\addressM[25]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \q_reg[31]_2\,
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(13),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[25]_INST_0_i_12_n_0\
    );
\addressM[25]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(10),
      I1 => \^q_reg[1]_1\,
      I2 => r15(9),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[25]_INST_0_i_13_n_0\
    );
\addressM[25]_INST_0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(10),
      I1 => \^q_reg[1]_1\,
      I2 => r15(9),
      I3 => \^q_reg[1]_2\,
      O => \addressM[25]_INST_0_i_14_n_0\
    );
\addressM[25]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(25),
      I1 => \q_reg[31]_1\(24),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(25),
      O => ALUResult(25)
    );
\addressM[25]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(23),
      I4 => \^out\(0),
      O => \addressM[25]_INST_0_i_3_n_0\
    );
\addressM[25]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(25),
      I1 => \addressM[25]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[25]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(25)
    );
\addressM[25]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE030200"
    )
        port map (
      I0 => Instr(1),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => \addressM[17]_INST_0_i_7_n_0\,
      O => \addressM[25]_INST_0_i_6_n_0\
    );
\addressM[25]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_10_n_0\,
      I1 => \addressM[27]_INST_0_i_20_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[26]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[27]_INST_0_i_21_n_0\,
      O => y01_in(25)
    );
\addressM[25]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[25]_INST_0_i_11_n_0\,
      I1 => \addressM[27]_INST_0_i_22_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[26]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[27]_INST_0_i_23_n_0\,
      O => \addressM[25]_INST_0_i_8_n_0\
    );
\addressM[25]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_13_n_0\,
      I1 => \addressM[26]_INST_0_i_14_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[27]_INST_0_i_25_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[25]_INST_0_i_12_n_0\,
      O => \addressM[25]_INST_0_i_9_n_0\
    );
\addressM[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(26),
      I1 => ALUResult(26),
      I2 => Shift,
      O => \^addressm\(26)
    );
\addressM[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(26),
      I5 => MVN,
      O => SrcB2(26)
    );
\addressM[26]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000000000E0E0"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(4),
      I2 => Instr(2),
      I3 => Instr(0),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(1),
      O => \addressM[26]_INST_0_i_10_n_0\
    );
\addressM[26]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_15_n_0\,
      I1 => \q_reg[1]_35\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[30]_INST_0_i_15_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_34\,
      O => \addressM[26]_INST_0_i_11_n_0\
    );
\addressM[26]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_16_n_0\,
      I1 => \q_reg[2]_1\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[30]_INST_0_i_18_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[8]_0\,
      O => \addressM[26]_INST_0_i_12_n_0\
    );
\addressM[26]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(28),
      I2 => \^q_reg[1]_1\,
      I3 => r15(27),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[26]_INST_0_i_13_n_0\
    );
\addressM[26]_INST_0_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(16),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(14),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[26]_INST_0_i_14_n_0\
    );
\addressM[26]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(11),
      I1 => \^q_reg[1]_1\,
      I2 => r15(10),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[26]_INST_0_i_15_n_0\
    );
\addressM[26]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(11),
      I1 => \^q_reg[1]_1\,
      I2 => r15(10),
      I3 => \^q_reg[1]_2\,
      O => \addressM[26]_INST_0_i_16_n_0\
    );
\addressM[26]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(26),
      I1 => \q_reg[31]_1\(25),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(26),
      O => ALUResult(26)
    );
\addressM[26]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(23),
      I4 => \^out\(0),
      O => \addressM[26]_INST_0_i_3_n_0\
    );
\addressM[26]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(26),
      I1 => \addressM[26]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[26]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(26)
    );
\addressM[26]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAB02A8"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => \addressM[18]_INST_0_i_7_n_0\,
      O => \addressM[26]_INST_0_i_6_n_0\
    );
\addressM[26]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_11_n_0\,
      I1 => \addressM[27]_INST_0_i_21_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[27]_INST_0_i_20_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[29]_INST_0_i_10_n_0\,
      O => y01_in(26)
    );
\addressM[26]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[26]_INST_0_i_12_n_0\,
      I1 => \addressM[27]_INST_0_i_23_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[27]_INST_0_i_22_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[29]_INST_0_i_11_n_0\,
      O => \addressM[26]_INST_0_i_8_n_0\
    );
\addressM[26]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_24_n_0\,
      I1 => \addressM[27]_INST_0_i_25_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[26]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[26]_INST_0_i_14_n_0\,
      O => \addressM[26]_INST_0_i_9_n_0\
    );
\addressM[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(27),
      I1 => ALUResult(27),
      I2 => Shift,
      O => \^addressm\(27)
    );
\addressM[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(27),
      I5 => MVN,
      O => SrcB2(27)
    );
\addressM[27]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[27]_INST_0_i_24_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[27]_INST_0_i_25_n_0\,
      O => \addressM[27]_INST_0_i_10_n_0\
    );
\addressM[27]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(27),
      I2 => r15(26),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(27),
      I5 => \^alucontrol\(1),
      O => \addressM[27]_INST_0_i_15_n_0\
    );
\addressM[27]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(26),
      I2 => r15(25),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(26),
      I5 => \^alucontrol\(1),
      O => \addressM[27]_INST_0_i_16_n_0\
    );
\addressM[27]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(25),
      I2 => r15(24),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(25),
      I5 => \^alucontrol\(1),
      O => \addressM[27]_INST_0_i_17_n_0\
    );
\addressM[27]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(24),
      I2 => r15(23),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(24),
      I5 => \^alucontrol\(1),
      O => \addressM[27]_INST_0_i_18_n_0\
    );
\addressM[27]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0000000000E0E0"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(4),
      I2 => Instr(3),
      I3 => Instr(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(1),
      O => \addressM[27]_INST_0_i_19_n_0\
    );
\addressM[27]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(27),
      I1 => \q_reg[31]_1\(26),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(27),
      O => ALUResult(27)
    );
\addressM[27]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_26_n_0\,
      I1 => \q_reg[1]_27\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[27]_INST_0_i_27_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_43\,
      O => \addressM[27]_INST_0_i_20_n_0\
    );
\addressM[27]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_29_n_0\,
      I1 => \q_reg[1]_40\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_41\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_42\,
      O => \addressM[27]_INST_0_i_21_n_0\
    );
\addressM[27]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_32_n_0\,
      I1 => \q_reg[2]_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \addressM[27]_INST_0_i_33_n_0\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[8]_3\,
      O => \addressM[27]_INST_0_i_22_n_0\
    );
\addressM[27]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_35_n_0\,
      I1 => \q_reg[8]_2\,
      I2 => \^q_reg[1]_4\,
      I3 => \q_reg[2]_3\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[12]_3\,
      O => \addressM[27]_INST_0_i_23_n_0\
    );
\addressM[27]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(29),
      I2 => \^q_reg[1]_1\,
      I3 => r15(28),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[27]_INST_0_i_24_n_0\
    );
\addressM[27]_INST_0_i_25\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => \q_reg[31]_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => \q_reg[28]_0\,
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[27]_INST_0_i_25_n_0\
    );
\addressM[27]_INST_0_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(12),
      I1 => \^q_reg[1]_1\,
      I2 => r15(11),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[27]_INST_0_i_26_n_0\
    );
\addressM[27]_INST_0_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd20(0),
      I2 => \^q_reg[1]_0\(4),
      I3 => r15(15),
      I4 => \^q_reg[1]_1\,
      I5 => rd20(16),
      O => \addressM[27]_INST_0_i_27_n_0\
    );
\addressM[27]_INST_0_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(13),
      I1 => \^q_reg[1]_1\,
      I2 => r15(12),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[27]_INST_0_i_29_n_0\
    );
\addressM[27]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_7_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(23),
      I4 => \^out\(0),
      O => \addressM[27]_INST_0_i_3_n_0\
    );
\addressM[27]_INST_0_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(12),
      I1 => \^q_reg[1]_1\,
      I2 => r15(11),
      I3 => \^q_reg[1]_2\,
      O => \addressM[27]_INST_0_i_32_n_0\
    );
\addressM[27]_INST_0_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \^q\(0),
      I1 => rd20(0),
      I2 => \^q_reg[1]_2\,
      I3 => r15(15),
      I4 => \^q_reg[1]_1\,
      I5 => rd20(16),
      O => \addressM[27]_INST_0_i_33_n_0\
    );
\addressM[27]_INST_0_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(13),
      I1 => \^q_reg[1]_1\,
      I2 => r15(12),
      I3 => \^q_reg[1]_2\,
      O => \addressM[27]_INST_0_i_35_n_0\
    );
\addressM[27]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(27),
      I1 => \addressM[27]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[27]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(27)
    );
\addressM[27]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[23]_INST_0_i_6_n_0\,
      CO(3) => \addressM[27]_INST_0_i_6_n_0\,
      CO(2) => \addressM[27]_INST_0_i_6_n_1\,
      CO(1) => \addressM[27]_INST_0_i_6_n_2\,
      CO(0) => \addressM[27]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(27 downto 24),
      O(3 downto 0) => \alu/sum\(27 downto 24),
      S(3) => \addressM[27]_INST_0_i_15_n_0\,
      S(2) => \addressM[27]_INST_0_i_16_n_0\,
      S(1) => \addressM[27]_INST_0_i_17_n_0\,
      S(0) => \addressM[27]_INST_0_i_18_n_0\
    );
\addressM[27]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAB02A8"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_19_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => \addressM[19]_INST_0_i_8_n_0\,
      O => \addressM[27]_INST_0_i_7_n_0\
    );
\addressM[27]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_20_n_0\,
      I1 => \addressM[29]_INST_0_i_10_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[27]_INST_0_i_21_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[30]_INST_0_i_11_n_0\,
      O => y01_in(27)
    );
\addressM[27]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[27]_INST_0_i_22_n_0\,
      I1 => \addressM[29]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[27]_INST_0_i_23_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[30]_INST_0_i_12_n_0\,
      O => \addressM[27]_INST_0_i_9_n_0\
    );
\addressM[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(28),
      I1 => ALUResult(28),
      I2 => Shift,
      O => \^addressm\(28)
    );
\addressM[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(28),
      I5 => MVN,
      O => SrcB2(28)
    );
\addressM[28]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_13_n_0\,
      I1 => \q_reg[1]_32\,
      I2 => \^q_reg[1]_0\(1),
      I3 => \addressM[28]_INST_0_i_14_n_0\,
      I4 => \^q_reg[1]_0\(2),
      I5 => \q_reg[1]_33\,
      O => \addressM[28]_INST_0_i_10_n_0\
    );
\addressM[28]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => writeDataM(16),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(3),
      I3 => writeDataM(15),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[28]_INST_0_i_12_n_0\
    );
\addressM[28]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rd20(13),
      I1 => \^q_reg[1]_1\,
      I2 => r15(12),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_40\,
      O => \addressM[28]_INST_0_i_13_n_0\
    );
\addressM[28]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E2FFFF00E20000"
    )
        port map (
      I0 => rd20(15),
      I1 => \^q_reg[1]_1\,
      I2 => r15(14),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_34\,
      O => \addressM[28]_INST_0_i_14_n_0\
    );
\addressM[28]_INST_0_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => \^q_reg[1]_0\(1),
      O => \^q_reg[0]_0\
    );
\addressM[28]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(28),
      I1 => \q_reg[31]_1\(27),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(28),
      O => ALUResult(28)
    );
\addressM[28]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(23),
      I4 => \^out\(0),
      O => \addressM[28]_INST_0_i_3_n_0\
    );
\addressM[28]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(28),
      I1 => \addressM[28]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[28]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(28)
    );
\addressM[28]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EA802A8"
    )
        port map (
      I0 => \addressM[20]_INST_0_i_6_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => Instr(6),
      O => \addressM[28]_INST_0_i_6_n_0\
    );
\addressM[28]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[28]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[29]_INST_0_i_10_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[31]_INST_0_i_27_n_0\,
      O => y01_in(28)
    );
\addressM[28]_INST_0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \q_reg[0]_14\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[29]_INST_0_i_11_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[31]_INST_0_i_31_n_0\,
      O => \addressM[28]_INST_0_i_8_n_0\
    );
\addressM[28]_INST_0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_12_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[28]_INST_0_i_12_n_0\,
      O => \addressM[28]_INST_0_i_9_n_0\
    );
\addressM[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(29),
      I1 => ALUResult(29),
      I2 => Shift,
      O => \^addressm\(29)
    );
\addressM[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(29),
      I5 => MVN,
      O => SrcB2(29)
    );
\addressM[29]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_13_n_0\,
      I1 => \q_reg[1]_37\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_38\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_39\,
      O => \addressM[29]_INST_0_i_10_n_0\
    );
\addressM[29]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_16_n_0\,
      I1 => \q_reg[8]_1\,
      I2 => \^q_reg[1]_4\,
      I3 => \q_reg[2]_2\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[12]_2\,
      O => \addressM[29]_INST_0_i_11_n_0\
    );
\addressM[29]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => \q_reg[31]_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(3),
      I3 => \q_reg[31]_2\,
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[29]_INST_0_i_12_n_0\
    );
\addressM[29]_INST_0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(14),
      I1 => \^q_reg[1]_1\,
      I2 => r15(13),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[29]_INST_0_i_13_n_0\
    );
\addressM[29]_INST_0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(14),
      I1 => \^q_reg[1]_1\,
      I2 => r15(13),
      I3 => \^q_reg[1]_2\,
      O => \addressM[29]_INST_0_i_16_n_0\
    );
\addressM[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(29),
      I1 => \q_reg[31]_1\(28),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(29),
      O => ALUResult(29)
    );
\addressM[29]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F808"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_6_n_0\,
      I1 => \addressM[31]_INST_0_i_12_n_0\,
      I2 => Instr(27),
      I3 => Instr(23),
      I4 => \^out\(0),
      O => \addressM[29]_INST_0_i_3_n_0\
    );
\addressM[29]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(29),
      I1 => \addressM[29]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[29]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(29)
    );
\addressM[29]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EA802A8"
    )
        port map (
      I0 => \addressM[21]_INST_0_i_6_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(3),
      I4 => \^q_reg[1]_0\(0),
      O => \addressM[29]_INST_0_i_6_n_0\
    );
\addressM[29]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_10_n_0\,
      I1 => \addressM[31]_INST_0_i_27_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[30]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_13\,
      O => y01_in(29)
    );
\addressM[29]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[29]_INST_0_i_11_n_0\,
      I1 => \addressM[31]_INST_0_i_31_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[30]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_12\,
      O => \addressM[29]_INST_0_i_8_n_0\
    );
\addressM[29]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_14_n_0\,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[29]_INST_0_i_12_n_0\,
      O => \addressM[29]_INST_0_i_9_n_0\
    );
\addressM[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(2),
      I1 => ALUResult(2),
      I2 => Shift,
      O => \^addressm\(2)
    );
\addressM[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(27),
      I2 => \addressM[2]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(2),
      I5 => MVN,
      O => SrcB2(2)
    );
\addressM[2]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(1),
      I2 => \^q_reg[1]_1\,
      I3 => r15(0),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[2]_INST_0_i_10_n_0\
    );
\addressM[2]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(1),
      I1 => \^q_reg[1]_1\,
      I2 => r15(0),
      I3 => \^q_reg[1]_2\,
      O => \addressM[2]_INST_0_i_11_n_0\
    );
\addressM[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(2),
      I1 => \q_reg[31]_1\(1),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(2),
      O => ALUResult(2)
    );
\addressM[2]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB888B888"
    )
        port map (
      I0 => Instr(2),
      I1 => \^out\(0),
      I2 => \addressM[2]_INST_0_i_6_n_0\,
      I3 => \addressM[3]_INST_0_i_8_n_0\,
      I4 => \addressM[31]_INST_0_i_12_n_0\,
      I5 => \addressM[18]_INST_0_i_6_n_0\,
      O => \addressM[2]_INST_0_i_3_n_0\
    );
\addressM[2]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAAFFAAAAAA"
    )
        port map (
      I0 => \addressM[2]_INST_0_i_7_n_0\,
      I1 => \addressM[2]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[2]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(2)
    );
\addressM[2]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Instr(4),
      I1 => \^q_reg[1]_0\(1),
      I2 => Instr(6),
      I3 => \^q_reg[1]_0\(2),
      I4 => Instr(2),
      O => \addressM[2]_INST_0_i_6_n_0\
    );
\addressM[2]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002E22"
    )
        port map (
      I0 => \addressM[3]_INST_0_i_20_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(1),
      I3 => \addressM[2]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => \addressM[2]_INST_0_i_7_n_0\
    );
\addressM[2]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80000000"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => \addressM[2]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(3),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(0),
      I5 => \addressM[3]_INST_0_i_21_n_0\,
      O => \addressM[2]_INST_0_i_8_n_0\
    );
\addressM[2]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[5]_INST_0_i_12_n_0\,
      I1 => \q_reg[1]_18\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[4]_INST_0_i_13_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_19\,
      O => \addressM[2]_INST_0_i_9_n_0\
    );
\addressM[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(30),
      I1 => ALUResult(30),
      I2 => Shift,
      O => \^addressm\(30)
    );
\addressM[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_3_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(30),
      I5 => MVN,
      O => SrcB2(30)
    );
\addressM[30]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B888"
    )
        port map (
      I0 => Instr(4),
      I1 => \^q_reg[1]_0\(1),
      I2 => Instr(6),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[30]_INST_0_i_10_n_0\
    );
\addressM[30]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_15_n_0\,
      I1 => \q_reg[1]_34\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_35\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_36\,
      O => \addressM[30]_INST_0_i_11_n_0\
    );
\addressM[30]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_18_n_0\,
      I1 => \q_reg[8]_0\,
      I2 => \^q_reg[1]_4\,
      I3 => \q_reg[2]_1\,
      I4 => \^q_reg[1]_3\,
      I5 => \q_reg[12]_1\,
      O => \addressM[30]_INST_0_i_12_n_0\
    );
\addressM[30]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(31),
      I2 => \^q_reg[1]_1\,
      I3 => r15(30),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[30]_INST_0_i_13_n_0\
    );
\addressM[30]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(30),
      I2 => \^q_reg[1]_1\,
      I3 => r15(29),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[30]_INST_0_i_14_n_0\
    );
\addressM[30]_INST_0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(15),
      I1 => \^q_reg[1]_1\,
      I2 => r15(14),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[30]_INST_0_i_15_n_0\
    );
\addressM[30]_INST_0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => rd20(15),
      I1 => \^q_reg[1]_1\,
      I2 => r15(14),
      I3 => \^q_reg[1]_2\,
      O => \addressM[30]_INST_0_i_18_n_0\
    );
\addressM[30]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(30),
      I1 => \q_reg[31]_1\(29),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(30),
      O => ALUResult(30)
    );
\addressM[30]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_10_n_0\,
      I1 => \addressM[30]_INST_0_i_6_n_0\,
      I2 => \addressM[31]_INST_0_i_12_n_0\,
      I3 => Instr(27),
      I4 => Instr(23),
      I5 => \^out\(0),
      O => \addressM[30]_INST_0_i_3_n_0\
    );
\addressM[30]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(30),
      I1 => \addressM[30]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[30]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(30)
    );
\addressM[30]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0C0AFF000C0A00"
    )
        port map (
      I0 => Instr(0),
      I1 => Instr(2),
      I2 => \addressM[31]_INST_0_i_25_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \addressM[30]_INST_0_i_10_n_0\,
      O => \addressM[30]_INST_0_i_6_n_0\
    );
\addressM[30]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_11_n_0\,
      I1 => \q_reg[1]_13\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[31]_INST_0_i_27_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_12\,
      O => y01_in(30)
    );
\addressM[30]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_12_n_0\,
      I1 => \q_reg[0]_12\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[31]_INST_0_i_31_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_11\,
      O => \addressM[30]_INST_0_i_8_n_0\
    );
\addressM[30]_INST_0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
        port map (
      I0 => \addressM[30]_INST_0_i_13_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[30]_INST_0_i_14_n_0\,
      I3 => \^q_reg[1]_0\(1),
      O => \addressM[30]_INST_0_i_9_n_0\
    );
\addressM[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(31),
      I1 => ALUResult(31),
      I2 => Shift,
      O => \^addressm\(31)
    );
\addressM[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_4_n_0\,
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => srcBshifted(31),
      I5 => MVN,
      O => SrcB2(31)
    );
\addressM[31]_INST_0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q_reg[1]_0\(1),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(3),
      O => \addressM[31]_INST_0_i_10_n_0\
    );
\addressM[31]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0C0AFF000C0A00"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(3),
      I2 => \addressM[31]_INST_0_i_25_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \addressM[31]_INST_0_i_26_n_0\,
      O => \addressM[31]_INST_0_i_11_n_0\
    );
\addressM[31]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[31]_INST_0_i_12_n_0\
    );
\addressM[31]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_27_n_0\,
      I1 => \q_reg[1]_12\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[1]_13\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_14\,
      O => y01_in(31)
    );
\addressM[31]_INST_0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_31_n_0\,
      I1 => \q_reg[0]_11\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \q_reg[0]_12\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_13\,
      O => \addressM[31]_INST_0_i_14_n_0\
    );
\addressM[31]_INST_0_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(0),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(2),
      I4 => \^q_reg[1]_0\(4),
      O => \addressM[31]_INST_0_i_15_n_0\
    );
\addressM[31]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \^q_reg[1]_0\(1),
      I1 => \^q_reg[1]_0\(3),
      I2 => \q_reg[31]_0\,
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[31]_INST_0_i_16_n_0\
    );
\addressM[31]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(31),
      I1 => \q_reg[31]_1\(30),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(31),
      O => ALUResult(31)
    );
\addressM[31]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(31),
      I2 => r15(30),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(31),
      I5 => \^alucontrol\(1),
      O => \addressM[31]_INST_0_i_21_n_0\
    );
\addressM[31]_INST_0_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(30),
      I2 => r15(29),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(30),
      I5 => \^alucontrol\(1),
      O => \addressM[31]_INST_0_i_22_n_0\
    );
\addressM[31]_INST_0_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(29),
      I2 => r15(28),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(29),
      I5 => \^alucontrol\(1),
      O => \addressM[31]_INST_0_i_23_n_0\
    );
\addressM[31]_INST_0_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(28),
      I2 => r15(27),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(28),
      I5 => \^alucontrol\(1),
      O => \addressM[31]_INST_0_i_24_n_0\
    );
\addressM[31]_INST_0_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(1),
      I3 => \^q_reg[1]_0\(4),
      O => \addressM[31]_INST_0_i_25_n_0\
    );
\addressM[31]_INST_0_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8B8B888"
    )
        port map (
      I0 => Instr(5),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[1]_0\(4),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[31]_INST_0_i_26_n_0\
    );
\addressM[31]_INST_0_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_35_n_0\,
      I1 => \^q_reg[1]_0\(2),
      I2 => \q_reg[1]_27\,
      I3 => \^q_reg[1]_0\(3),
      I4 => \q_reg[1]_28\,
      O => \addressM[31]_INST_0_i_27_n_0\
    );
\addressM[31]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(24),
      I3 => Instr(21),
      I4 => Instr(23),
      O => Shift
    );
\addressM[31]_INST_0_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_47_n_0\,
      I1 => \^q_reg[1]_4\,
      I2 => \q_reg[2]_0\,
      I3 => \^q_reg[1]_3\,
      I4 => \q_reg[12]_0\,
      O => \addressM[31]_INST_0_i_31_n_0\
    );
\addressM[31]_INST_0_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => writeDataM(11),
      I2 => \^q_reg[1]_0\(3),
      I3 => writeDataM(7),
      I4 => \^q_reg[1]_0\(4),
      I5 => writeDataM(12),
      O => \addressM[31]_INST_0_i_35_n_0\
    );
\addressM[31]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF800080"
    )
        port map (
      I0 => \addressM[31]_INST_0_i_10_n_0\,
      I1 => \addressM[31]_INST_0_i_11_n_0\,
      I2 => \addressM[31]_INST_0_i_12_n_0\,
      I3 => Instr(27),
      I4 => Instr(23),
      I5 => \^out\(0),
      O => \addressM[31]_INST_0_i_4_n_0\
    );
\addressM[31]_INST_0_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => writeDataM(11),
      I2 => \^q_reg[1]_3\,
      I3 => writeDataM(7),
      I4 => \^q_reg[1]_2\,
      I5 => writeDataM(12),
      O => \addressM[31]_INST_0_i_47_n_0\
    );
\addressM[31]_INST_0_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(2),
      O => \^q_reg[1]_4\
    );
\addressM[31]_INST_0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(31),
      I1 => \addressM[31]_INST_0_i_14_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[31]_INST_0_i_16_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => srcBshifted(31)
    );
\addressM[31]_INST_0_i_50\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FE"
    )
        port map (
      I0 => \^q_reg[1]_0\(2),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[1]_0\(3),
      O => \^q_reg[1]_3\
    );
\addressM[31]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(22),
      I3 => Instr(21),
      I4 => Instr(23),
      I5 => Instr(24),
      O => MVN
    );
\addressM[31]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001110100010001"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(22),
      I3 => Instr(23),
      I4 => Instr(21),
      I5 => Instr(24),
      O => \ALUControl__0\(1)
    );
\addressM[31]_INST_0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[27]_INST_0_i_6_n_0\,
      CO(3) => \addressM[31]_INST_0_i_9_n_0\,
      CO(2) => \addressM[31]_INST_0_i_9_n_1\,
      CO(1) => \addressM[31]_INST_0_i_9_n_2\,
      CO(0) => \addressM[31]_INST_0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(31 downto 28),
      O(3 downto 0) => \alu/sum\(31 downto 28),
      S(3) => \addressM[31]_INST_0_i_21_n_0\,
      S(2) => \addressM[31]_INST_0_i_22_n_0\,
      S(1) => \addressM[31]_INST_0_i_23_n_0\,
      S(0) => \addressM[31]_INST_0_i_24_n_0\
    );
\addressM[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(3),
      I1 => ALUResult(3),
      I2 => Shift,
      O => \^addressm\(3)
    );
\addressM[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => Instr(1),
      I1 => Instr(27),
      I2 => \addressM[3]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(3),
      I5 => MVN,
      O => SrcB2(3)
    );
\addressM[3]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \addressM[4]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[3]_INST_0_i_21_n_0\,
      I3 => \addressM[31]_INST_0_i_15_n_0\,
      O => \addressM[3]_INST_0_i_10_n_0\
    );
\addressM[3]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[6]_INST_0_i_12_n_0\,
      I1 => \addressM[4]_INST_0_i_13_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[5]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_18\,
      O => \addressM[3]_INST_0_i_11_n_0\
    );
\addressM[3]_INST_0_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => \SrcB2__0\(0),
      O => \alu/condinvb\(0)
    );
\addressM[3]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(3),
      I2 => r15(2),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(3),
      I5 => \^alucontrol\(1),
      O => \addressM[3]_INST_0_i_17_n_0\
    );
\addressM[3]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(2),
      I2 => r15(1),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(2),
      I5 => \^alucontrol\(1),
      O => \addressM[3]_INST_0_i_18_n_0\
    );
\addressM[3]_INST_0_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(1),
      I2 => r15(0),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(1),
      I5 => \^alucontrol\(1),
      O => \addressM[3]_INST_0_i_19_n_0\
    );
\addressM[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(3),
      I1 => \q_reg[31]_1\(2),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(3),
      O => ALUResult(3)
    );
\addressM[3]_INST_0_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(3),
      I3 => writeDataM(1),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[3]_INST_0_i_20_n_0\
    );
\addressM[3]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[0]_0\,
      I2 => \^q_reg[1]_3\,
      I3 => writeDataM(1),
      I4 => \^q_reg[1]_2\,
      I5 => \^q_reg[1]_4\,
      O => \addressM[3]_INST_0_i_21_n_0\
    );
\addressM[3]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB888B888"
    )
        port map (
      I0 => Instr(3),
      I1 => \^out\(0),
      I2 => \addressM[3]_INST_0_i_7_n_0\,
      I3 => \addressM[3]_INST_0_i_8_n_0\,
      I4 => \addressM[31]_INST_0_i_12_n_0\,
      I5 => \addressM[19]_INST_0_i_7_n_0\,
      O => \addressM[3]_INST_0_i_3_n_0\
    );
\addressM[3]_INST_0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFAFAAA"
    )
        port map (
      I0 => \addressM[3]_INST_0_i_9_n_0\,
      I1 => \addressM[3]_INST_0_i_10_n_0\,
      I2 => \addressM[3]_INST_0_i_11_n_0\,
      I3 => Instr(6),
      I4 => Instr(5),
      O => d0(3)
    );
\addressM[3]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \addressM[3]_INST_0_i_6_n_0\,
      CO(2) => \addressM[3]_INST_0_i_6_n_1\,
      CO(1) => \addressM[3]_INST_0_i_6_n_2\,
      CO(0) => \addressM[3]_INST_0_i_6_n_3\,
      CYINIT => \alu/condinvb\(0),
      DI(3 downto 0) => condinva(3 downto 0),
      O(3 downto 0) => \alu/sum\(3 downto 0),
      S(3) => \addressM[3]_INST_0_i_17_n_0\,
      S(2) => \addressM[3]_INST_0_i_18_n_0\,
      S(1) => \addressM[3]_INST_0_i_19_n_0\,
      S(0) => \q_reg[0]_19\(0)
    );
\addressM[3]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => Instr(5),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(0),
      I3 => \^q_reg[1]_0\(2),
      I4 => Instr(3),
      O => \addressM[3]_INST_0_i_7_n_0\
    );
\addressM[3]_INST_0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q_reg[1]_0\(4),
      I1 => \^q_reg[1]_0\(3),
      O => \addressM[3]_INST_0_i_8_n_0\
    );
\addressM[3]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000E2"
    )
        port map (
      I0 => \addressM[4]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[3]_INST_0_i_20_n_0\,
      I3 => Instr(6),
      I4 => Instr(5),
      O => \addressM[3]_INST_0_i_9_n_0\
    );
\addressM[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(4),
      I1 => ALUResult(4),
      I2 => Shift,
      O => \^addressm\(4)
    );
\addressM[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => Instr(2),
      I1 => Instr(27),
      I2 => \addressM[4]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(4),
      I5 => MVN,
      O => SrcB2(4)
    );
\addressM[4]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => writeDataM(0),
      I1 => \^q_reg[1]_0\(1),
      I2 => \^q_reg[1]_0\(3),
      I3 => writeDataM(2),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[4]_INST_0_i_10_n_0\
    );
\addressM[4]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000B08"
    )
        port map (
      I0 => writeDataM(0),
      I1 => \^q_reg[0]_0\,
      I2 => \^q_reg[1]_3\,
      I3 => writeDataM(2),
      I4 => \^q_reg[1]_2\,
      I5 => \^q_reg[1]_4\,
      O => \addressM[4]_INST_0_i_11_n_0\
    );
\addressM[4]_INST_0_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004540"
    )
        port map (
      I0 => \^q_reg[1]_2\,
      I1 => r15(1),
      I2 => \^q_reg[1]_1\,
      I3 => rd20(2),
      I4 => \^q_reg[1]_3\,
      O => \addressM[4]_INST_0_i_12_n_0\
    );
\addressM[4]_INST_0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_18_n_0\,
      I1 => \q_reg[1]_30\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_29\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_31\,
      O => \addressM[4]_INST_0_i_13_n_0\
    );
\addressM[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(4),
      I1 => \q_reg[31]_1\(3),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(4),
      O => ALUResult(4)
    );
\addressM[4]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8BBB8B8"
    )
        port map (
      I0 => Instr(4),
      I1 => \^out\(0),
      I2 => \addressM[4]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[20]_INST_0_i_6_n_0\,
      I5 => \addressM[31]_INST_0_i_10_n_0\,
      O => \addressM[4]_INST_0_i_3_n_0\
    );
\addressM[4]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(4),
      I1 => \addressM[4]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[4]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(4)
    );
\addressM[4]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(4),
      I2 => \^q_reg[1]_0\(2),
      I3 => Instr(4),
      I4 => \^q_reg[1]_0\(1),
      I5 => Instr(6),
      O => \addressM[4]_INST_0_i_6_n_0\
    );
\addressM[4]_INST_0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => \addressM[4]_INST_0_i_10_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[5]_INST_0_i_10_n_0\,
      I3 => \^q_reg[1]_0\(1),
      I4 => \addressM[7]_INST_0_i_19_n_0\,
      O => y01_in(4)
    );
\addressM[4]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888BBBBB8888888"
    )
        port map (
      I0 => \addressM[4]_INST_0_i_11_n_0\,
      I1 => \^q_reg[1]_0\(0),
      I2 => \addressM[4]_INST_0_i_12_n_0\,
      I3 => \^q_reg[1]_0\(2),
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[7]_INST_0_i_20_n_0\,
      O => \addressM[4]_INST_0_i_8_n_0\
    );
\addressM[4]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[7]_INST_0_i_21_n_0\,
      I1 => \addressM[5]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[6]_INST_0_i_12_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[4]_INST_0_i_13_n_0\,
      O => \addressM[4]_INST_0_i_9_n_0\
    );
\addressM[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(5),
      I1 => ALUResult(5),
      I2 => Shift,
      O => \^addressm\(5)
    );
\addressM[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => Instr(3),
      I1 => Instr(27),
      I2 => \addressM[5]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(5),
      I5 => MVN,
      O => SrcB2(5)
    );
\addressM[5]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(2),
      I2 => \^q_reg[1]_1\,
      I3 => r15(1),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[5]_INST_0_i_10_n_0\
    );
\addressM[5]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_3\,
      I1 => rd20(2),
      I2 => \^q_reg[1]_1\,
      I3 => r15(1),
      I4 => \^q_reg[1]_2\,
      I5 => \^q_reg[1]_4\,
      O => \addressM[5]_INST_0_i_11_n_0\
    );
\addressM[5]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_19_n_0\,
      I1 => \q_reg[1]_25\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_24\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_26\,
      O => \addressM[5]_INST_0_i_12_n_0\
    );
\addressM[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(5),
      I1 => \q_reg[31]_1\(4),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(5),
      O => ALUResult(5)
    );
\addressM[5]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8B8B8B8B8BBB8B8"
    )
        port map (
      I0 => Instr(5),
      I1 => \^out\(0),
      I2 => \addressM[5]_INST_0_i_6_n_0\,
      I3 => \addressM[31]_INST_0_i_12_n_0\,
      I4 => \addressM[21]_INST_0_i_6_n_0\,
      I5 => \addressM[31]_INST_0_i_10_n_0\,
      O => \addressM[5]_INST_0_i_3_n_0\
    );
\addressM[5]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(5),
      I1 => \addressM[5]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[5]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(5)
    );
\addressM[5]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010000000100"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => \^q_reg[1]_0\(4),
      I2 => \^q_reg[1]_0\(2),
      I3 => Instr(5),
      I4 => \^q_reg[1]_0\(1),
      I5 => \^q_reg[1]_0\(0),
      O => \addressM[5]_INST_0_i_6_n_0\
    );
\addressM[5]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[5]_INST_0_i_10_n_0\,
      I1 => \addressM[7]_INST_0_i_19_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[6]_INST_0_i_10_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[8]_INST_0_i_9_n_0\,
      O => y01_in(5)
    );
\addressM[5]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[5]_INST_0_i_11_n_0\,
      I1 => \addressM[7]_INST_0_i_20_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[6]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[8]_INST_0_i_10_n_0\,
      O => \addressM[5]_INST_0_i_8_n_0\
    );
\addressM[5]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[8]_INST_0_i_11_n_0\,
      I1 => \addressM[6]_INST_0_i_12_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[7]_INST_0_i_21_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[5]_INST_0_i_12_n_0\,
      O => \addressM[5]_INST_0_i_9_n_0\
    );
\addressM[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(6),
      I1 => ALUResult(6),
      I2 => Shift,
      O => \^addressm\(6)
    );
\addressM[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => d1(6),
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(6),
      I5 => MVN,
      O => SrcB2(6)
    );
\addressM[6]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_0\(3),
      I1 => rd20(3),
      I2 => \^q_reg[1]_1\,
      I3 => r15(2),
      I4 => \^q_reg[1]_0\(4),
      I5 => \^q_reg[1]_0\(2),
      O => \addressM[6]_INST_0_i_10_n_0\
    );
\addressM[6]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005404"
    )
        port map (
      I0 => \^q_reg[1]_3\,
      I1 => rd20(3),
      I2 => \^q_reg[1]_1\,
      I3 => r15(2),
      I4 => \^q_reg[1]_2\,
      I5 => \^q_reg[1]_4\,
      O => \addressM[6]_INST_0_i_11_n_0\
    );
\addressM[6]_INST_0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[18]_INST_0_i_19_n_0\,
      I1 => \q_reg[1]_22\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_21\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_23\,
      O => \addressM[6]_INST_0_i_12_n_0\
    );
\addressM[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(6),
      I1 => \q_reg[31]_1\(5),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(6),
      O => ALUResult(6)
    );
\addressM[6]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Instr(4),
      I1 => Instr(27),
      I2 => Instr(6),
      I3 => \^out\(0),
      I4 => \ext/Imm__7\(6),
      O => d1(6)
    );
\addressM[6]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(6),
      I1 => \addressM[6]_INST_0_i_8_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[6]_INST_0_i_9_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(6)
    );
\addressM[6]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0000300000002"
    )
        port map (
      I0 => Instr(6),
      I1 => \^q_reg[1]_0\(3),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(4),
      I5 => \addressM[30]_INST_0_i_6_n_0\,
      O => \ext/Imm__7\(6)
    );
\addressM[6]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[6]_INST_0_i_10_n_0\,
      I1 => \addressM[8]_INST_0_i_9_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[7]_INST_0_i_19_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[9]_INST_0_i_9_n_0\,
      O => y01_in(6)
    );
\addressM[6]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[6]_INST_0_i_11_n_0\,
      I1 => \addressM[8]_INST_0_i_10_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[7]_INST_0_i_20_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[9]_INST_0_i_10_n_0\,
      O => \addressM[6]_INST_0_i_8_n_0\
    );
\addressM[6]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[9]_INST_0_i_11_n_0\,
      I1 => \addressM[7]_INST_0_i_21_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[8]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[6]_INST_0_i_12_n_0\,
      O => \addressM[6]_INST_0_i_9_n_0\
    );
\addressM[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(7),
      I1 => ALUResult(7),
      I2 => Shift,
      O => \^addressm\(7)
    );
\addressM[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55545557AAABAAA8"
    )
        port map (
      I0 => d1(7),
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(25),
      I4 => d0(7),
      I5 => MVN,
      O => SrcB2(7)
    );
\addressM[7]_INST_0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[10]_INST_0_i_11_n_0\,
      I1 => \addressM[8]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[9]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[7]_INST_0_i_21_n_0\,
      O => \addressM[7]_INST_0_i_10_n_0\
    );
\addressM[7]_INST_0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(7),
      I2 => r15(6),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(7),
      I5 => \^alucontrol\(1),
      O => \addressM[7]_INST_0_i_15_n_0\
    );
\addressM[7]_INST_0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(6),
      I2 => r15(5),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(6),
      I5 => \^alucontrol\(1),
      O => \addressM[7]_INST_0_i_16_n_0\
    );
\addressM[7]_INST_0_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(5),
      I2 => r15(4),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(5),
      I5 => \^alucontrol\(1),
      O => \addressM[7]_INST_0_i_17_n_0\
    );
\addressM[7]_INST_0_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6966699996999666"
    )
        port map (
      I0 => \^alucontrol\(0),
      I1 => SrcB2(4),
      I2 => r15(3),
      I3 => \^q_reg[0]_1\,
      I4 => rd10(4),
      I5 => \^alucontrol\(1),
      O => \addressM[7]_INST_0_i_18_n_0\
    );
\addressM[7]_INST_0_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(3),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[7]_INST_0_i_19_n_0\
    );
\addressM[7]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(7),
      I1 => \q_reg[31]_1\(6),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(7),
      O => ALUResult(7)
    );
\addressM[7]_INST_0_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM_0_sn_1,
      I1 => \^q_reg[1]_4\,
      I2 => \^q_reg[1]_2\,
      I3 => writeDataM(3),
      I4 => \^q_reg[1]_3\,
      O => \addressM[7]_INST_0_i_20_n_0\
    );
\addressM[7]_INST_0_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[19]_INST_0_i_38_n_0\,
      I1 => \q_reg[1]_16\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \q_reg[1]_15\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_17\,
      O => \addressM[7]_INST_0_i_21_n_0\
    );
\addressM[7]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => Instr(5),
      I1 => Instr(27),
      I2 => \^q_reg[1]_0\(0),
      I3 => \^out\(0),
      I4 => \ext/Imm__7\(7),
      O => d1(7)
    );
\addressM[7]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(7),
      I1 => \addressM[7]_INST_0_i_9_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[7]_INST_0_i_10_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(7)
    );
\addressM[7]_INST_0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[3]_INST_0_i_6_n_0\,
      CO(3) => \addressM[7]_INST_0_i_6_n_0\,
      CO(2) => \addressM[7]_INST_0_i_6_n_1\,
      CO(1) => \addressM[7]_INST_0_i_6_n_2\,
      CO(0) => \addressM[7]_INST_0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => condinva(7 downto 4),
      O(3 downto 0) => \alu/sum\(7 downto 4),
      S(3) => \addressM[7]_INST_0_i_15_n_0\,
      S(2) => \addressM[7]_INST_0_i_16_n_0\,
      S(1) => \addressM[7]_INST_0_i_17_n_0\,
      S(0) => \addressM[7]_INST_0_i_18_n_0\
    );
\addressM[7]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC0000300000002"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => \^q_reg[1]_0\(3),
      I2 => \^q_reg[1]_0\(2),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(4),
      I5 => \addressM[31]_INST_0_i_11_n_0\,
      O => \ext/Imm__7\(7)
    );
\addressM[7]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[7]_INST_0_i_19_n_0\,
      I1 => \addressM[9]_INST_0_i_9_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[8]_INST_0_i_9_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[10]_INST_0_i_9_n_0\,
      O => y01_in(7)
    );
\addressM[7]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[7]_INST_0_i_20_n_0\,
      I1 => \addressM[9]_INST_0_i_10_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[8]_INST_0_i_10_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[10]_INST_0_i_10_n_0\,
      O => \addressM[7]_INST_0_i_9_n_0\
    );
\addressM[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(8),
      I1 => ALUResult(8),
      I2 => Shift,
      O => \^addressm\(8)
    );
\addressM[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => Instr(6),
      I1 => Instr(27),
      I2 => \addressM[8]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(8),
      I5 => MVN,
      O => SrcB2(8)
    );
\addressM[8]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(0),
      I1 => \^q_reg[1]_4\,
      I2 => \^q_reg[1]_2\,
      I3 => writeDataM(4),
      I4 => \^q_reg[1]_3\,
      O => \addressM[8]_INST_0_i_10_n_0\
    );
\addressM[8]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[16]_INST_0_i_16_n_0\,
      I1 => \q_reg[1]_29\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[16]_INST_0_i_18_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_30\,
      O => \addressM[8]_INST_0_i_11_n_0\
    );
\addressM[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(8),
      I1 => \q_reg[31]_1\(7),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(8),
      O => ALUResult(8)
    );
\addressM[8]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA40EA40EA40EA04"
    )
        port map (
      I0 => \^out\(0),
      I1 => \addressM[24]_INST_0_i_6_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[8]_INST_0_i_3_n_0\
    );
\addressM[8]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(8),
      I1 => \addressM[8]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[8]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(8)
    );
\addressM[8]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[8]_INST_0_i_9_n_0\,
      I1 => \addressM[10]_INST_0_i_9_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[9]_INST_0_i_9_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[11]_INST_0_i_19_n_0\,
      O => y01_in(8)
    );
\addressM[8]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[8]_INST_0_i_10_n_0\,
      I1 => \addressM[10]_INST_0_i_10_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[9]_INST_0_i_10_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[11]_INST_0_i_20_n_0\,
      O => \addressM[8]_INST_0_i_7_n_0\
    );
\addressM[8]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[11]_INST_0_i_21_n_0\,
      I1 => \addressM[9]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[10]_INST_0_i_11_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[8]_INST_0_i_11_n_0\,
      O => \addressM[8]_INST_0_i_8_n_0\
    );
\addressM[8]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(0),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(4),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[8]_INST_0_i_9_n_0\
    );
\addressM[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => SrcB2(9),
      I1 => ALUResult(9),
      I2 => Shift,
      O => \^addressm\(9)
    );
\addressM[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"470047FFB8FFB800"
    )
        port map (
      I0 => \^q_reg[1]_0\(0),
      I1 => Instr(27),
      I2 => \addressM[9]_INST_0_i_3_n_0\,
      I3 => ALUSrc,
      I4 => d0(9),
      I5 => MVN,
      O => SrcB2(9)
    );
\addressM[9]_INST_0_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(1),
      I1 => \^q_reg[1]_4\,
      I2 => \^q_reg[1]_2\,
      I3 => writeDataM(5),
      I4 => \^q_reg[1]_3\,
      O => \addressM[9]_INST_0_i_10_n_0\
    );
\addressM[9]_INST_0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[17]_INST_0_i_17_n_0\,
      I1 => \q_reg[1]_24\,
      I2 => \^q_reg[1]_0\(2),
      I3 => \addressM[17]_INST_0_i_19_n_0\,
      I4 => \^q_reg[1]_0\(3),
      I5 => \q_reg[1]_25\,
      O => \addressM[9]_INST_0_i_11_n_0\
    );
\addressM[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666E8FF6666E800"
    )
        port map (
      I0 => SrcB2(9),
      I1 => \q_reg[31]_1\(8),
      I2 => \^alucontrol\(0),
      I3 => \ALUControl__0\(1),
      I4 => \^alucontrol\(1),
      I5 => \alu/sum\(9),
      O => ALUResult(9)
    );
\addressM[9]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEA4040EAEA4004"
    )
        port map (
      I0 => \^out\(0),
      I1 => \addressM[25]_INST_0_i_6_n_0\,
      I2 => \^q_reg[1]_0\(4),
      I3 => \^q_reg[1]_0\(1),
      I4 => \^q_reg[1]_0\(2),
      I5 => \^q_reg[1]_0\(3),
      O => \addressM[9]_INST_0_i_3_n_0\
    );
\addressM[9]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF0CFF00FF00AAAA"
    )
        port map (
      I0 => y01_in(9),
      I1 => \addressM[9]_INST_0_i_7_n_0\,
      I2 => \addressM[31]_INST_0_i_15_n_0\,
      I3 => \addressM[9]_INST_0_i_8_n_0\,
      I4 => Instr(6),
      I5 => Instr(5),
      O => d0(9)
    );
\addressM[9]_INST_0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[9]_INST_0_i_9_n_0\,
      I1 => \addressM[11]_INST_0_i_19_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[10]_INST_0_i_9_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[1]_48\,
      O => y01_in(9)
    );
\addressM[9]_INST_0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFC0AFAFCFC0A0A0"
    )
        port map (
      I0 => \addressM[9]_INST_0_i_10_n_0\,
      I1 => \addressM[11]_INST_0_i_20_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[10]_INST_0_i_10_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \q_reg[0]_17\,
      O => \addressM[9]_INST_0_i_7_n_0\
    );
\addressM[9]_INST_0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \addressM[12]_INST_0_i_11_n_0\,
      I1 => \addressM[10]_INST_0_i_11_n_0\,
      I2 => \^q_reg[1]_0\(0),
      I3 => \addressM[11]_INST_0_i_21_n_0\,
      I4 => \^q_reg[1]_0\(1),
      I5 => \addressM[9]_INST_0_i_11_n_0\,
      O => \addressM[9]_INST_0_i_8_n_0\
    );
\addressM[9]_INST_0_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000B08"
    )
        port map (
      I0 => writeDataM(1),
      I1 => \^q_reg[1]_0\(2),
      I2 => \^q_reg[1]_0\(4),
      I3 => writeDataM(5),
      I4 => \^q_reg[1]_0\(3),
      O => \addressM[9]_INST_0_i_9_n_0\
    );
\cl/flagreg0/q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \q[0]_i_2__0_n_0\,
      I1 => \ALUControl__0\(1),
      I2 => \c/cl/FlagWrite\(0),
      I3 => \q_reg[0]_20\,
      O => \q_reg[0]_6\
    );
\cl/flagreg0/q[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F444FFFFF4440000"
    )
        port map (
      I0 => \ALUControl__0\(1),
      I1 => \alu/sum\(32),
      I2 => Shift,
      I3 => ALUFlags2(1),
      I4 => \c/cl/FlagWrite\(0),
      I5 => carry,
      O => \q_reg[1]_5\
    );
\cl/flagreg1/q[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF01FFFFFF010000"
    )
        port map (
      I0 => \q[0]_i_2_n_0\,
      I1 => \q[0]_i_3_n_0\,
      I2 => \q[0]_i_4_n_0\,
      I3 => ALUFlags10_out,
      I4 => \c/cl/FlagWrite\(1),
      I5 => \q_reg[0]_21\,
      O => \q_reg[0]_7\
    );
\cl/flagreg1/q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEA00"
    )
        port map (
      I0 => ALUResult(31),
      I1 => Shift,
      I2 => srcBshifted(31),
      I3 => \c/cl/FlagWrite\(1),
      I4 => data4,
      O => \q_reg[1]_6\
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"311E822811983919"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => Instr(24)
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A12B4B00052A31AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => \^q_reg[1]_0\(1)
    );
\g0_b0__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"322D411422643626"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(16)
    );
\g0_b0__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"322D411422643626"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(0)
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"088F188911110199"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => Instr(25)
    );
\g0_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"958115A000AA058A"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => \^q_reg[1]_0\(2)
    );
\g0_b1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044F244622220266"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(17)
    );
\g0_b1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"044F244622220266"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(1)
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B806000000003408"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^out\(0)
    );
\g0_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F021000000002130"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => \^q_reg[1]_0\(3)
    );
\g0_b2__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7409000000003804"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(18)
    );
\g0_b2__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7409000000003804"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(2)
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080F000100090418"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => Instr(27)
    );
\g0_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9181008001800112"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => \^q_reg[1]_0\(4)
    );
\g0_b3__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040F000200060824"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(19)
    );
\g0_b3__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"040F000200060824"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(3)
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"240F204020400408"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^out\(1)
    );
\g0_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A191200420040110"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => Instr(12)
    );
\g0_b4__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"180F108010800804"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(20)
    );
\g0_b4__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"180F108010800804"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(4)
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"573E151017315313"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^out\(2)
    );
\g0_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8B7B003A0ABA88EA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => Instr(13)
    );
\g0_b5__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB3D2A202B32A323"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(21)
    );
\g0_b5__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB3D2A202B32A323"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(5)
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"551F331031111511"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^out\(3)
    );
\g0_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81FB282A20AA00BA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => Instr(14)
    );
\g0_b6__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2F332032222A22"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(22)
    );
\g0_b6__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA2F332032222A22"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => Instr(6)
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"373E113013313313"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => \^out\(4)
    );
\g0_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB3B022A0AAAA8AA"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(2),
      I2 => \^q\(3),
      I3 => \^q\(0),
      I4 => \g0_b7_i_1__1_n_0\,
      I5 => \g0_b7_i_2__0_n_0\,
      O => Instr(15)
    );
\g0_b7__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3D223023323323"
    )
        port map (
      I0 => \^q\(0),
      I1 => sel(1),
      I2 => sel(2),
      I3 => sel(3),
      I4 => sel(4),
      I5 => sel(5),
      O => Instr(23)
    );
\g0_b7__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3B3D223023323323"
    )
        port map (
      I0 => \^q\(0),
      I1 => g0_b7_i_1_n_0,
      I2 => g0_b7_i_2_n_0,
      I3 => g0_b7_i_3_n_0,
      I4 => g0_b7_i_4_n_0,
      I5 => g0_b7_i_5_n_0,
      O => \^q_reg[1]_0\(0)
    );
g0_b7_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      O => g0_b7_i_1_n_0
    );
\g0_b7_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => sel(1)
    );
\g0_b7_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(3),
      I3 => \^q\(4),
      O => \g0_b7_i_1__1_n_0\
    );
g0_b7_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1E"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      O => g0_b7_i_2_n_0
    );
\g0_b7_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(4),
      I4 => \^q\(5),
      O => \g0_b7_i_2__0_n_0\
    );
\g0_b7_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => sel(2)
    );
g0_b7_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FE0"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => g0_b7_i_3_n_0
    );
\g0_b7_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      O => sel(3)
    );
g0_b7_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"57FFA800"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => g0_b7_i_4_n_0
    );
\g0_b7_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => sel(4)
    );
g0_b7_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57FFFFFFA8000000"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(4),
      I5 => \^q\(5),
      O => g0_b7_i_5_n_0
    );
\g0_b7_i_5__0\: unisim.vcomponents.LUT6
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
      O => sel(5)
    );
\q[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(0),
      I1 => \^addressm\(0),
      I2 => \^out\(0),
      I3 => \^q\(0),
      I4 => PCSrc,
      O => d(0)
    );
\q[0]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(26),
      I1 => ALUResult(27),
      I2 => ALUResult(24),
      I3 => ALUResult(25),
      O => \q[0]_i_10_n_0\
    );
\q[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(18),
      I1 => ALUResult(19),
      I2 => ALUResult(16),
      I3 => ALUResult(17),
      O => \q[0]_i_11_n_0\
    );
\q[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => d0(4),
      I1 => d0(5),
      I2 => d0(6),
      I3 => d0(7),
      I4 => \q[0]_i_16_n_0\,
      O => \q[0]_i_12_n_0\
    );
\q[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => d0(12),
      I1 => d0(13),
      I2 => d0(14),
      I3 => d0(15),
      I4 => \q[0]_i_17_n_0\,
      O => \q[0]_i_13_n_0\
    );
\q[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => d0(28),
      I1 => d0(29),
      I2 => srcBshifted(31),
      I3 => d0(30),
      I4 => \q[0]_i_18_n_0\,
      O => \q[0]_i_14_n_0\
    );
\q[0]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => \q[0]_i_19_n_0\,
      I1 => d0(20),
      I2 => d0(21),
      I3 => d0(22),
      I4 => d0(23),
      O => \q[0]_i_15_n_0\
    );
\q[0]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => d0(1),
      I1 => d0(0),
      I2 => d0(3),
      I3 => d0(2),
      O => \q[0]_i_16_n_0\
    );
\q[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => d0(9),
      I1 => d0(8),
      I2 => d0(11),
      I3 => d0(10),
      O => \q[0]_i_17_n_0\
    );
\q[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => d0(25),
      I1 => d0(24),
      I2 => d0(27),
      I3 => d0(26),
      O => \q[0]_i_18_n_0\
    );
\q[0]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => d0(19),
      I1 => d0(18),
      I2 => d0(17),
      I3 => d0(16),
      O => \q[0]_i_19_n_0\
    );
\q[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \q[0]_i_6_n_0\,
      I1 => \q[0]_i_7_n_0\,
      I2 => \q[0]_i_8_n_0\,
      I3 => \q[0]_i_9_n_0\,
      O => \q[0]_i_2_n_0\
    );
\q[0]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1118881844422242"
    )
        port map (
      I0 => \alu/sum\(31),
      I1 => \^alucontrol\(0),
      I2 => rd10(31),
      I3 => \^q_reg[0]_1\,
      I4 => r15(30),
      I5 => SrcB2(31),
      O => \q[0]_i_2__0_n_0\
    );
\q[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ALUResult(29),
      I1 => ALUResult(28),
      I2 => ALUResult(30),
      I3 => ALUResult(31),
      I4 => \q[0]_i_10_n_0\,
      O => \q[0]_i_3_n_0\
    );
\q[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => ALUResult(21),
      I1 => ALUResult(20),
      I2 => ALUResult(23),
      I3 => ALUResult(22),
      I4 => \q[0]_i_11_n_0\,
      O => \q[0]_i_4_n_0\
    );
\q[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \q[0]_i_12_n_0\,
      I1 => \q[0]_i_13_n_0\,
      I2 => \q[0]_i_14_n_0\,
      I3 => \q[0]_i_15_n_0\,
      I4 => Shift,
      O => ALUFlags10_out
    );
\q[0]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(10),
      I1 => ALUResult(11),
      I2 => ALUResult(8),
      I3 => ALUResult(9),
      O => \q[0]_i_6_n_0\
    );
\q[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(14),
      I1 => ALUResult(15),
      I2 => ALUResult(12),
      I3 => ALUResult(13),
      O => \q[0]_i_7_n_0\
    );
\q[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(2),
      I1 => ALUResult(3),
      I2 => ALUResult(0),
      I3 => ALUResult(1),
      O => \q[0]_i_8_n_0\
    );
\q[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => ALUResult(6),
      I1 => ALUResult(7),
      I2 => ALUResult(4),
      I3 => ALUResult(5),
      O => \q[0]_i_9_n_0\
    );
\q[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(10),
      I1 => \^addressm\(10),
      I2 => \^out\(0),
      I3 => d1_0(9),
      I4 => PCSrc,
      O => d(10)
    );
\q[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(11),
      I1 => \^addressm\(11),
      I2 => \^out\(0),
      I3 => d1_0(10),
      I4 => PCSrc,
      O => d(11)
    );
\q[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(12),
      I1 => \^addressm\(12),
      I2 => \^out\(0),
      I3 => d1_0(11),
      I4 => PCSrc,
      O => d(12)
    );
\q[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(13),
      I1 => \^addressm\(13),
      I2 => \^out\(0),
      I3 => d1_0(12),
      I4 => PCSrc,
      O => d(13)
    );
\q[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(14),
      I1 => \^addressm\(14),
      I2 => \^out\(0),
      I3 => d1_0(13),
      I4 => PCSrc,
      O => d(14)
    );
\q[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(15),
      I1 => \^addressm\(15),
      I2 => \^out\(0),
      I3 => d1_0(14),
      I4 => PCSrc,
      O => d(15)
    );
\q[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(16),
      I1 => \^addressm\(16),
      I2 => \^out\(0),
      I3 => d1_0(15),
      I4 => PCSrc,
      O => d(16)
    );
\q[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(17),
      I1 => \^addressm\(17),
      I2 => \^out\(0),
      I3 => d1_0(16),
      I4 => PCSrc,
      O => d(17)
    );
\q[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(18),
      I1 => \^addressm\(18),
      I2 => \^out\(0),
      I3 => d1_0(17),
      I4 => PCSrc,
      O => d(18)
    );
\q[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(19),
      I1 => \^addressm\(19),
      I2 => \^out\(0),
      I3 => d1_0(18),
      I4 => PCSrc,
      O => d(19)
    );
\q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(1),
      I1 => \^addressm\(1),
      I2 => \^out\(0),
      I3 => d1_0(0),
      I4 => PCSrc,
      O => d(1)
    );
\q[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => Instr(20),
      I1 => \^out\(0),
      I2 => Instr(27),
      I3 => CondEx,
      O => \c/cl/FlagWrite\(1)
    );
\q[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D484D4D4D484848"
    )
        port map (
      I0 => Instr(5),
      I1 => writeDataM_0_sn_1,
      I2 => Instr(6),
      I3 => r15(30),
      I4 => \^q_reg[1]_1\,
      I5 => rd20(31),
      O => ALUFlags2(1)
    );
\q[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \c/dec/p_1_out__5\(0),
      I1 => \^out\(0),
      I2 => Instr(27),
      I3 => CondEx,
      O => \c/cl/FlagWrite\(0)
    );
\q[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AA28200"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(21),
      I2 => Instr(24),
      I3 => Instr(23),
      I4 => Instr(22),
      O => \c/dec/p_1_out__5\(0)
    );
\q[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(20),
      I1 => \^addressm\(20),
      I2 => \^out\(0),
      I3 => d1_0(19),
      I4 => PCSrc,
      O => d(20)
    );
\q[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(21),
      I1 => \^addressm\(21),
      I2 => \^out\(0),
      I3 => d1_0(20),
      I4 => PCSrc,
      O => d(21)
    );
\q[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(22),
      I1 => \^addressm\(22),
      I2 => \^out\(0),
      I3 => d1_0(21),
      I4 => PCSrc,
      O => d(22)
    );
\q[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(23),
      I1 => \^addressm\(23),
      I2 => \^out\(0),
      I3 => d1_0(22),
      I4 => PCSrc,
      O => d(23)
    );
\q[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(24),
      I1 => \^addressm\(24),
      I2 => \^out\(0),
      I3 => d1_0(23),
      I4 => PCSrc,
      O => d(24)
    );
\q[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(25),
      I1 => \^addressm\(25),
      I2 => \^out\(0),
      I3 => d1_0(24),
      I4 => PCSrc,
      O => d(25)
    );
\q[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(26),
      I1 => \^addressm\(26),
      I2 => \^out\(0),
      I3 => d1_0(25),
      I4 => PCSrc,
      O => d(26)
    );
\q[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(27),
      I1 => \^addressm\(27),
      I2 => \^out\(0),
      I3 => d1_0(26),
      I4 => PCSrc,
      O => d(27)
    );
\q[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(28),
      I1 => \^addressm\(28),
      I2 => \^out\(0),
      I3 => d1_0(27),
      I4 => PCSrc,
      O => d(28)
    );
\q[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(29),
      I1 => \^addressm\(29),
      I2 => \^out\(0),
      I3 => d1_0(28),
      I4 => PCSrc,
      O => d(29)
    );
\q[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(2),
      I1 => \^addressm\(2),
      I2 => \^out\(0),
      I3 => d1_0(1),
      I4 => PCSrc,
      O => d(2)
    );
\q[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(30),
      I1 => \^addressm\(30),
      I2 => \^out\(0),
      I3 => d1_0(29),
      I4 => PCSrc,
      O => d(30)
    );
\q[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(31),
      I1 => \^addressm\(31),
      I2 => \^out\(0),
      I3 => d1_0(30),
      I4 => PCSrc,
      O => d(31)
    );
\q[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEAE0000"
    )
        port map (
      I0 => Instr(27),
      I1 => PCS1,
      I2 => \^out\(0),
      I3 => Instr(20),
      I4 => CondEx,
      O => PCSrc
    );
\q[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => Instr(15),
      I1 => Instr(14),
      I2 => Instr(12),
      I3 => Instr(13),
      O => PCS1
    );
\q[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(3),
      I1 => \^addressm\(3),
      I2 => \^out\(0),
      I3 => d1_0(2),
      I4 => PCSrc,
      O => d(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(4),
      I1 => \^addressm\(4),
      I2 => \^out\(0),
      I3 => d1_0(3),
      I4 => PCSrc,
      O => d(4)
    );
\q[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(5),
      I1 => \^addressm\(5),
      I2 => \^out\(0),
      I3 => d1_0(4),
      I4 => PCSrc,
      O => d(5)
    );
\q[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(6),
      I1 => \^addressm\(6),
      I2 => \^out\(0),
      I3 => d1_0(5),
      I4 => PCSrc,
      O => d(6)
    );
\q[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(7),
      I1 => \^addressm\(7),
      I2 => \^out\(0),
      I3 => d1_0(6),
      I4 => PCSrc,
      O => d(7)
    );
\q[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(8),
      I1 => \^addressm\(8),
      I2 => \^out\(0),
      I3 => d1_0(7),
      I4 => PCSrc,
      O => d(8)
    );
\q[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ACACFF00"
    )
        port map (
      I0 => readDataM(9),
      I1 => \^addressm\(9),
      I2 => \^out\(0),
      I3 => d1_0(8),
      I4 => PCSrc,
      O => d(9)
    );
\q_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(0),
      Q => \^q\(0)
    );
\q_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(10),
      Q => \^q\(10)
    );
\q_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(11),
      Q => \^q\(11)
    );
\q_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(12),
      Q => \^q\(12)
    );
\q_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(13),
      Q => \^q\(13)
    );
\q_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(14),
      Q => \^q\(14)
    );
\q_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(15),
      Q => \^q\(15)
    );
\q_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(16),
      Q => \^q\(16)
    );
\q_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(17),
      Q => \^q\(17)
    );
\q_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(18),
      Q => \^q\(18)
    );
\q_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(19),
      Q => \^q\(19)
    );
\q_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(1),
      Q => \^q\(1)
    );
\q_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \addressM[31]_INST_0_i_9_n_0\,
      CO(3 downto 1) => \NLW_q_reg[1]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \alu/sum\(32),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_q_reg[1]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\q_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(20),
      Q => \^q\(20)
    );
\q_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(21),
      Q => \^q\(21)
    );
\q_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(22),
      Q => \^q\(22)
    );
\q_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(23),
      Q => \^q\(23)
    );
\q_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(24),
      Q => \^q\(24)
    );
\q_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(25),
      Q => \^q\(25)
    );
\q_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(26),
      Q => \^q\(26)
    );
\q_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(27),
      Q => \^q\(27)
    );
\q_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(28),
      Q => \^q\(28)
    );
\q_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(29),
      Q => \^q\(29)
    );
\q_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(2),
      Q => \^q\(2)
    );
\q_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(30),
      Q => \^q\(30)
    );
\q_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(31),
      Q => \^q\(31)
    );
\q_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(3),
      Q => \^q\(3)
    );
\q_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(4),
      Q => \^q\(4)
    );
\q_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(5),
      Q => \^q\(5)
    );
\q_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(6),
      Q => \^q\(6)
    );
\q_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(7),
      Q => \^q\(7)
    );
\q_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(8),
      Q => \^q\(8)
    );
\q_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => E(0),
      CLR => reset,
      D => d(9),
      Q => \^q\(9)
    );
rf_reg_r1_0_15_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFAC232300000000"
    )
        port map (
      I0 => Instr(20),
      I1 => Instr(27),
      I2 => \^out\(0),
      I3 => Instr(23),
      I4 => Instr(24),
      I5 => CondEx,
      O => RegWrite
    );
rf_reg_r1_0_15_0_5_i_10: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(17),
      O => \q_reg[0]_5\(1)
    );
rf_reg_r1_0_15_0_5_i_11: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(16),
      O => \q_reg[0]_5\(0)
    );
rf_reg_r1_0_15_0_5_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(24),
      I2 => Instr(15),
      O => wa3(3)
    );
rf_reg_r1_0_15_0_5_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(24),
      I2 => Instr(14),
      O => wa3(2)
    );
rf_reg_r1_0_15_0_5_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(24),
      I2 => Instr(13),
      O => wa3(1)
    );
rf_reg_r1_0_15_0_5_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => Instr(12),
      I1 => Instr(27),
      I2 => Instr(24),
      O => wa3(0)
    );
rf_reg_r1_0_15_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(1),
      I1 => \^addressm\(1),
      I2 => \^out\(0),
      I3 => d1_0(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(1)
    );
rf_reg_r1_0_15_0_5_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(0),
      I1 => \^addressm\(0),
      I2 => \^out\(0),
      I3 => \^q\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(0)
    );
rf_reg_r1_0_15_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(3),
      I1 => \^addressm\(3),
      I2 => \^out\(0),
      I3 => d1_0(2),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(3)
    );
rf_reg_r1_0_15_0_5_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(2),
      I1 => \^addressm\(2),
      I2 => \^out\(0),
      I3 => d1_0(1),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(2)
    );
rf_reg_r1_0_15_0_5_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(5),
      I1 => \^addressm\(5),
      I2 => \^out\(0),
      I3 => d1_0(4),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(5)
    );
rf_reg_r1_0_15_0_5_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(4),
      I1 => \^addressm\(4),
      I2 => \^out\(0),
      I3 => d1_0(3),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(4)
    );
rf_reg_r1_0_15_0_5_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(19),
      O => \q_reg[0]_5\(3)
    );
rf_reg_r1_0_15_0_5_i_9: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Instr(27),
      I1 => Instr(18),
      O => \q_reg[0]_5\(2)
    );
rf_reg_r1_0_15_12_17_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(13),
      I1 => \^addressm\(13),
      I2 => \^out\(0),
      I3 => d1_0(12),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(13)
    );
rf_reg_r1_0_15_12_17_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(12),
      I1 => \^addressm\(12),
      I2 => \^out\(0),
      I3 => d1_0(11),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(12)
    );
rf_reg_r1_0_15_12_17_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(15),
      I1 => \^addressm\(15),
      I2 => \^out\(0),
      I3 => d1_0(14),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(15)
    );
rf_reg_r1_0_15_12_17_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(14),
      I1 => \^addressm\(14),
      I2 => \^out\(0),
      I3 => d1_0(13),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(14)
    );
rf_reg_r1_0_15_12_17_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(17),
      I1 => \^addressm\(17),
      I2 => \^out\(0),
      I3 => d1_0(16),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(17)
    );
rf_reg_r1_0_15_12_17_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(16),
      I1 => \^addressm\(16),
      I2 => \^out\(0),
      I3 => d1_0(15),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(16)
    );
rf_reg_r1_0_15_18_23_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(19),
      I1 => \^addressm\(19),
      I2 => \^out\(0),
      I3 => d1_0(18),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(19)
    );
rf_reg_r1_0_15_18_23_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(18),
      I1 => \^addressm\(18),
      I2 => \^out\(0),
      I3 => d1_0(17),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(18)
    );
rf_reg_r1_0_15_18_23_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(20),
      I1 => readDataM(21),
      I2 => \^addressm\(21),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(21)
    );
rf_reg_r1_0_15_18_23_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(19),
      I1 => readDataM(20),
      I2 => \^addressm\(20),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(20)
    );
rf_reg_r1_0_15_18_23_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(22),
      I1 => readDataM(23),
      I2 => \^addressm\(23),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(23)
    );
rf_reg_r1_0_15_18_23_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(21),
      I1 => readDataM(22),
      I2 => \^addressm\(22),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(22)
    );
rf_reg_r1_0_15_24_29_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(25),
      I1 => \^addressm\(25),
      I2 => \^out\(0),
      I3 => d1_0(24),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(25)
    );
rf_reg_r1_0_15_24_29_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(24),
      I1 => \^addressm\(24),
      I2 => \^out\(0),
      I3 => d1_0(23),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(24)
    );
rf_reg_r1_0_15_24_29_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(27),
      I1 => \^addressm\(27),
      I2 => \^out\(0),
      I3 => d1_0(26),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(27)
    );
rf_reg_r1_0_15_24_29_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(26),
      I1 => \^addressm\(26),
      I2 => \^out\(0),
      I3 => d1_0(25),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(26)
    );
rf_reg_r1_0_15_24_29_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(28),
      I1 => readDataM(29),
      I2 => \^addressm\(29),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(29)
    );
rf_reg_r1_0_15_24_29_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(27),
      I1 => readDataM(28),
      I2 => \^addressm\(28),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(28)
    );
rf_reg_r1_0_15_30_31_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(30),
      I1 => readDataM(31),
      I2 => \^addressm\(31),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(31)
    );
rf_reg_r1_0_15_30_31_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAACCF0CCF0CCF0"
    )
        port map (
      I0 => d1_0(29),
      I1 => readDataM(30),
      I2 => \^addressm\(30),
      I3 => \^out\(0),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(30)
    );
rf_reg_r1_0_15_6_11_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(7),
      I1 => \^addressm\(7),
      I2 => \^out\(0),
      I3 => d1_0(6),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(7)
    );
rf_reg_r1_0_15_6_11_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(6),
      I1 => \^addressm\(6),
      I2 => \^out\(0),
      I3 => d1_0(5),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(6)
    );
rf_reg_r1_0_15_6_11_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(9),
      I1 => \^addressm\(9),
      I2 => \^out\(0),
      I3 => d1_0(8),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(9)
    );
rf_reg_r1_0_15_6_11_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(8),
      I1 => \^addressm\(8),
      I2 => \^out\(0),
      I3 => d1_0(7),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(8)
    );
rf_reg_r1_0_15_6_11_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(11),
      I1 => \^addressm\(11),
      I2 => \^out\(0),
      I3 => d1_0(10),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(11)
    );
rf_reg_r1_0_15_6_11_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00ACACACACACAC"
    )
        port map (
      I0 => readDataM(10),
      I1 => \^addressm\(10),
      I2 => \^out\(0),
      I3 => d1_0(9),
      I4 => Instr(24),
      I5 => Instr(27),
      O => wd3(10)
    );
sum_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F0F0F0"
    )
        port map (
      I0 => Instr(17),
      I1 => Instr(16),
      I2 => Instr(27),
      I3 => Instr(19),
      I4 => Instr(18),
      O => \^q_reg[0]_1\
    );
sum_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100010101000000"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(21),
      I3 => Instr(24),
      I4 => Instr(23),
      I5 => Instr(22),
      O => \^alucontrol\(0)
    );
sum_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001011100000000"
    )
        port map (
      I0 => Instr(27),
      I1 => \^out\(0),
      I2 => Instr(22),
      I3 => Instr(23),
      I4 => Instr(24),
      I5 => Instr(21),
      O => \^alucontrol\(1)
    );
\writeDataM[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFFFFF80000000"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^addra\(1),
      I2 => \^addra\(0),
      I3 => \^addra\(3),
      I4 => \^addra\(2),
      I5 => rd20(0),
      O => writeDataM_0_sn_1
    );
\writeDataM[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instr(13),
      I1 => \^out\(0),
      I2 => Instr(20),
      I3 => Instr(1),
      O => \^addra\(1)
    );
\writeDataM[0]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instr(12),
      I1 => \^out\(0),
      I2 => Instr(20),
      I3 => Instr(0),
      O => \^addra\(0)
    );
\writeDataM[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instr(15),
      I1 => \^out\(0),
      I2 => Instr(20),
      I3 => Instr(3),
      O => \^addra\(3)
    );
\writeDataM[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => Instr(14),
      I1 => \^out\(0),
      I2 => Instr(20),
      I3 => Instr(2),
      O => \^addra\(2)
    );
\writeDataM[31]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^addra\(1),
      I1 => \^addra\(0),
      I2 => \^addra\(3),
      I3 => \^addra\(2),
      O => \^q_reg[1]_1\
    );
y_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(2),
      O => S(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_regfile is
  port (
    rd10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rd20 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    RegWrite : in STD_LOGIC;
    wd3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \q_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    wa3 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_regfile : entity is "regfile";
end design_1_top_0_0_regfile;

architecture STRUCTURE of design_1_top_0_0_regfile is
  signal NLW_rf_reg_r1_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r1_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_rf_reg_r2_0_15_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_30_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r1_0_15_6_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_0_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_12_17 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_18_23 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_24_29 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_30_31 : label is "";
  attribute METHODOLOGY_DRC_VIOS of rf_reg_r2_0_15_6_11 : label is "";
begin
rf_reg_r1_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(1 downto 0),
      DOB(1 downto 0) => rd10(3 downto 2),
      DOC(1 downto 0) => rd10(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(13 downto 12),
      DOB(1 downto 0) => rd10(15 downto 14),
      DOC(1 downto 0) => rd10(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(19 downto 18),
      DOB(1 downto 0) => rd10(21 downto 20),
      DOC(1 downto 0) => rd10(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(25 downto 24),
      DOB(1 downto 0) => rd10(27 downto 26),
      DOC(1 downto 0) => rd10(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_15_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(31 downto 30),
      DOB(1 downto 0) => NLW_rf_reg_r1_0_15_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_rf_reg_r1_0_15_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r1_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => \q_reg[0]\(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd10(7 downto 6),
      DOB(1 downto 0) => rd10(9 downto 8),
      DOC(1 downto 0) => rd10(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r1_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(1 downto 0),
      DIB(1 downto 0) => wd3(3 downto 2),
      DIC(1 downto 0) => wd3(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(1 downto 0),
      DOB(1 downto 0) => rd20(3 downto 2),
      DOC(1 downto 0) => rd20(5 downto 4),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(13 downto 12),
      DIB(1 downto 0) => wd3(15 downto 14),
      DIC(1 downto 0) => wd3(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(13 downto 12),
      DOB(1 downto 0) => rd20(15 downto 14),
      DOC(1 downto 0) => rd20(17 downto 16),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(19 downto 18),
      DIB(1 downto 0) => wd3(21 downto 20),
      DIC(1 downto 0) => wd3(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(19 downto 18),
      DOB(1 downto 0) => rd20(21 downto 20),
      DOC(1 downto 0) => rd20(23 downto 22),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(25 downto 24),
      DIB(1 downto 0) => wd3(27 downto 26),
      DIC(1 downto 0) => wd3(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(25 downto 24),
      DOB(1 downto 0) => rd20(27 downto 26),
      DOC(1 downto 0) => rd20(29 downto 28),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(31 downto 30),
      DOB(1 downto 0) => NLW_rf_reg_r2_0_15_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_rf_reg_r2_0_15_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
rf_reg_r2_0_15_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => '0',
      ADDRA(3 downto 0) => ADDRA(3 downto 0),
      ADDRB(4) => '0',
      ADDRB(3 downto 0) => ADDRA(3 downto 0),
      ADDRC(4) => '0',
      ADDRC(3 downto 0) => ADDRA(3 downto 0),
      ADDRD(4) => '0',
      ADDRD(3 downto 0) => wa3(3 downto 0),
      DIA(1 downto 0) => wd3(7 downto 6),
      DIB(1 downto 0) => wd3(9 downto 8),
      DIC(1 downto 0) => wd3(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => rd20(7 downto 6),
      DOB(1 downto 0) => rd20(9 downto 8),
      DOC(1 downto 0) => rd20(11 downto 10),
      DOD(1 downto 0) => NLW_rf_reg_r2_0_15_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => RegWrite
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_condlogic is
  port (
    carry : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    data4 : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    CondEx : out STD_LOGIC;
    \q_reg[1]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \q_reg[1]_0\ : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_condlogic : entity is "condlogic";
end design_1_top_0_0_condlogic;

architecture STRUCTURE of design_1_top_0_0_condlogic is
  signal \^data4\ : STD_LOGIC;
  signal \^q_reg[0]_0\ : STD_LOGIC;
begin
  data4 <= \^data4\;
  \q_reg[0]_0\ <= \^q_reg[0]_0\;
flagreg0: entity work.design_1_top_0_0_flopenr
     port map (
      CondEx => CondEx,
      carry => carry,
      clk => clk,
      data4 => \^data4\,
      \out\(3 downto 0) => \out\(3 downto 0),
      \q_reg[0]_0\ => \q_reg[0]\,
      \q_reg[0]_1\ => \q_reg[0]_1\,
      \q_reg[0]_2\ => \^q_reg[0]_0\,
      \q_reg[1]_0\ => \q_reg[1]\,
      reset => reset
    );
flagreg1: entity work.design_1_top_0_0_flopenr_1
     port map (
      clk => clk,
      data4 => \^data4\,
      \q_reg[0]_0\ => \^q_reg[0]_0\,
      \q_reg[0]_1\ => \q_reg[0]_2\,
      \q_reg[1]_0\ => \q_reg[1]_0\,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_datapath is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \writeDataM[31]\ : out STD_LOGIC;
    writeDataM_0_sp_1 : out STD_LOGIC;
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_CURRENT_STATE_reg[0]\ : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    \writeDataM[29]\ : out STD_LOGIC;
    writeDataM_27_sp_1 : out STD_LOGIC;
    writeDataM : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \q_reg[1]\ : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    \q_reg[1]_0\ : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    carry : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    CondEx : in STD_LOGIC;
    doneM : in STD_LOGIC;
    \FSM_sequential_CURRENT_STATE_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \q_reg[0]_1\ : in STD_LOGIC;
    data4 : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_datapath : entity is "datapath";
end design_1_top_0_0_datapath;

architecture STRUCTURE of design_1_top_0_0_datapath is
  signal ALUControl : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal Instr : STD_LOGIC_VECTOR ( 11 downto 7 );
  signal PC : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal RA1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RA2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal RA3 : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal RegWrite : STD_LOGIC;
  signal SrcA : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal alu_n_0 : STD_LOGIC;
  signal condinva : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal d1_0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal pcadd1_n_100 : STD_LOGIC;
  signal pcadd1_n_101 : STD_LOGIC;
  signal pcadd1_n_102 : STD_LOGIC;
  signal pcadd1_n_103 : STD_LOGIC;
  signal pcadd1_n_104 : STD_LOGIC;
  signal pcadd1_n_105 : STD_LOGIC;
  signal pcadd1_n_106 : STD_LOGIC;
  signal pcadd1_n_107 : STD_LOGIC;
  signal pcadd1_n_108 : STD_LOGIC;
  signal pcadd1_n_109 : STD_LOGIC;
  signal pcadd1_n_110 : STD_LOGIC;
  signal pcadd1_n_111 : STD_LOGIC;
  signal pcadd1_n_112 : STD_LOGIC;
  signal pcadd1_n_113 : STD_LOGIC;
  signal pcadd1_n_114 : STD_LOGIC;
  signal pcadd1_n_115 : STD_LOGIC;
  signal pcadd1_n_116 : STD_LOGIC;
  signal pcadd1_n_117 : STD_LOGIC;
  signal pcadd1_n_118 : STD_LOGIC;
  signal pcadd1_n_119 : STD_LOGIC;
  signal pcadd1_n_120 : STD_LOGIC;
  signal pcadd1_n_121 : STD_LOGIC;
  signal pcadd1_n_122 : STD_LOGIC;
  signal pcadd1_n_123 : STD_LOGIC;
  signal pcadd1_n_125 : STD_LOGIC;
  signal pcadd1_n_126 : STD_LOGIC;
  signal pcadd1_n_127 : STD_LOGIC;
  signal pcadd1_n_31 : STD_LOGIC;
  signal pcadd1_n_32 : STD_LOGIC;
  signal pcadd1_n_33 : STD_LOGIC;
  signal pcadd1_n_34 : STD_LOGIC;
  signal pcadd1_n_35 : STD_LOGIC;
  signal pcadd1_n_36 : STD_LOGIC;
  signal pcadd1_n_67 : STD_LOGIC;
  signal pcadd1_n_68 : STD_LOGIC;
  signal pcadd1_n_69 : STD_LOGIC;
  signal pcadd1_n_70 : STD_LOGIC;
  signal pcadd1_n_71 : STD_LOGIC;
  signal pcadd1_n_72 : STD_LOGIC;
  signal pcadd1_n_73 : STD_LOGIC;
  signal pcadd1_n_74 : STD_LOGIC;
  signal pcadd1_n_75 : STD_LOGIC;
  signal pcadd1_n_76 : STD_LOGIC;
  signal pcadd1_n_77 : STD_LOGIC;
  signal pcadd1_n_78 : STD_LOGIC;
  signal pcadd1_n_79 : STD_LOGIC;
  signal pcadd1_n_80 : STD_LOGIC;
  signal pcadd1_n_81 : STD_LOGIC;
  signal pcadd1_n_82 : STD_LOGIC;
  signal pcadd1_n_83 : STD_LOGIC;
  signal pcadd1_n_84 : STD_LOGIC;
  signal pcadd1_n_85 : STD_LOGIC;
  signal pcadd1_n_86 : STD_LOGIC;
  signal pcadd1_n_88 : STD_LOGIC;
  signal pcadd1_n_89 : STD_LOGIC;
  signal pcadd1_n_90 : STD_LOGIC;
  signal pcadd1_n_91 : STD_LOGIC;
  signal pcadd1_n_92 : STD_LOGIC;
  signal pcadd1_n_93 : STD_LOGIC;
  signal pcadd1_n_94 : STD_LOGIC;
  signal pcadd1_n_95 : STD_LOGIC;
  signal pcadd1_n_96 : STD_LOGIC;
  signal pcadd1_n_97 : STD_LOGIC;
  signal pcadd1_n_98 : STD_LOGIC;
  signal pcadd1_n_99 : STD_LOGIC;
  signal pcreg_n_10 : STD_LOGIC;
  signal pcreg_n_11 : STD_LOGIC;
  signal pcreg_n_118 : STD_LOGIC;
  signal pcreg_n_12 : STD_LOGIC;
  signal pcreg_n_122 : STD_LOGIC;
  signal pcreg_n_123 : STD_LOGIC;
  signal pcreg_n_124 : STD_LOGIC;
  signal pcreg_n_125 : STD_LOGIC;
  signal pcreg_n_126 : STD_LOGIC;
  signal pcreg_n_3 : STD_LOGIC;
  signal pcreg_n_46 : STD_LOGIC;
  signal pcreg_n_9 : STD_LOGIC;
  signal r15 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal rd10 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rd20 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal wd3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^writedatam\ : STD_LOGIC_VECTOR ( 27 downto 0 );
  signal \^writedatam[29]\ : STD_LOGIC;
  signal \^writedatam[31]\ : STD_LOGIC;
  signal writeDataM_0_sn_1 : STD_LOGIC;
  signal writeDataM_27_sn_1 : STD_LOGIC;
  signal y01_in : STD_LOGIC_VECTOR ( 12 to 12 );
begin
  writeDataM(27 downto 0) <= \^writedatam\(27 downto 0);
  \writeDataM[29]\ <= \^writedatam[29]\;
  \writeDataM[31]\ <= \^writedatam[31]\;
  writeDataM_0_sp_1 <= writeDataM_0_sn_1;
  writeDataM_27_sp_1 <= writeDataM_27_sn_1;
alu: entity work.design_1_top_0_0_alu
     port map (
      ALUControl(1) => ALUControl(2),
      ALUControl(0) => ALUControl(0),
      Q(0) => PC(0),
      S(0) => alu_n_0,
      carry => carry,
      condinva(31 downto 0) => condinva(31 downto 0),
      \q_reg[0]\ => pcreg_n_118,
      r15(30 downto 0) => r15(31 downto 1),
      rd10(31 downto 0) => rd10(31 downto 0)
    );
pcadd1: entity work.design_1_top_0_0_adder
     port map (
      Instr(4 downto 0) => Instr(11 downto 7),
      Q(30 downto 0) => PC(31 downto 1),
      S(0) => pcreg_n_122,
      SrcA(30 downto 0) => SrcA(31 downto 1),
      d1_0(30 downto 0) => d1_0(31 downto 1),
      \q_reg[0]\ => pcadd1_n_31,
      \q_reg[0]_0\ => pcadd1_n_34,
      \q_reg[0]_1\ => pcadd1_n_71,
      \q_reg[0]_10\ => pcadd1_n_84,
      \q_reg[0]_11\ => pcadd1_n_91,
      \q_reg[0]_12\ => pcadd1_n_92,
      \q_reg[0]_13\ => pcadd1_n_93,
      \q_reg[0]_14\ => pcadd1_n_97,
      \q_reg[0]_15\ => pcadd1_n_98,
      \q_reg[0]_16\ => pcadd1_n_99,
      \q_reg[0]_17\ => pcadd1_n_102,
      \q_reg[0]_18\ => pcadd1_n_113,
      \q_reg[0]_19\ => pcadd1_n_118,
      \q_reg[0]_2\ => pcadd1_n_72,
      \q_reg[0]_20\ => pcadd1_n_120,
      \q_reg[0]_21\ => pcadd1_n_121,
      \q_reg[0]_22\ => pcadd1_n_122,
      \q_reg[0]_23\ => pcadd1_n_123,
      \q_reg[0]_24\ => pcadd1_n_125,
      \q_reg[0]_25\ => pcadd1_n_126,
      \q_reg[0]_26\ => pcadd1_n_127,
      \q_reg[0]_27\ => pcreg_n_12,
      \q_reg[0]_28\ => pcreg_n_124,
      \q_reg[0]_29\ => pcreg_n_46,
      \q_reg[0]_3\ => pcadd1_n_73,
      \q_reg[0]_30\ => pcreg_n_125,
      \q_reg[0]_31\ => pcreg_n_118,
      \q_reg[0]_4\ => pcadd1_n_74,
      \q_reg[0]_5\ => pcadd1_n_75,
      \q_reg[0]_6\ => pcadd1_n_76,
      \q_reg[0]_7\ => pcadd1_n_77,
      \q_reg[0]_8\ => pcadd1_n_82,
      \q_reg[0]_9\ => pcadd1_n_83,
      \q_reg[19]\ => pcadd1_n_32,
      \q_reg[19]_0\ => pcadd1_n_33,
      \q_reg[19]_1\ => pcadd1_n_35,
      \q_reg[19]_2\ => pcadd1_n_67,
      \q_reg[1]\ => pcadd1_n_68,
      \q_reg[1]_0\ => pcadd1_n_69,
      \q_reg[1]_1\ => pcadd1_n_70,
      \q_reg[1]_10\ => pcadd1_n_90,
      \q_reg[1]_11\ => pcadd1_n_94,
      \q_reg[1]_12\ => pcadd1_n_95,
      \q_reg[1]_13\ => pcadd1_n_96,
      \q_reg[1]_14\ => pcadd1_n_100,
      \q_reg[1]_15\ => pcadd1_n_110,
      \q_reg[1]_16\ => pcadd1_n_111,
      \q_reg[1]_17\ => pcreg_n_123,
      \q_reg[1]_18\ => pcreg_n_9,
      \q_reg[1]_19\ => pcreg_n_11,
      \q_reg[1]_2\ => pcadd1_n_78,
      \q_reg[1]_20\ => pcreg_n_10,
      \q_reg[1]_21\ => pcreg_n_126,
      \q_reg[1]_3\ => pcadd1_n_79,
      \q_reg[1]_4\ => pcadd1_n_80,
      \q_reg[1]_5\ => pcadd1_n_81,
      \q_reg[1]_6\ => pcadd1_n_85,
      \q_reg[1]_7\ => pcadd1_n_86,
      \q_reg[1]_8\ => pcadd1_n_88,
      \q_reg[1]_9\ => pcadd1_n_89,
      \q_reg[24]\ => pcadd1_n_108,
      \q_reg[24]_0\ => pcadd1_n_109,
      \q_reg[25]\ => pcadd1_n_106,
      \q_reg[25]_0\ => pcadd1_n_107,
      \q_reg[25]_1\ => pcadd1_n_117,
      \q_reg[25]_2\ => pcadd1_n_119,
      \q_reg[26]\ => pcadd1_n_104,
      \q_reg[26]_0\ => pcadd1_n_105,
      \q_reg[26]_1\ => pcadd1_n_115,
      \q_reg[26]_2\ => pcadd1_n_116,
      \q_reg[27]\ => pcadd1_n_101,
      \q_reg[27]_0\ => pcadd1_n_103,
      \q_reg[27]_1\ => pcadd1_n_112,
      \q_reg[27]_2\ => pcadd1_n_114,
      \q_reg[4]\(0) => pcadd1_n_36,
      r15(30 downto 0) => r15(31 downto 1),
      rd10(30 downto 0) => rd10(31 downto 1),
      rd20(30 downto 0) => rd20(31 downto 1),
      writeDataM(27 downto 0) => \^writedatam\(27 downto 0),
      \writeDataM[29]\ => \^writedatam[29]\,
      \writeDataM[31]\ => \^writedatam[31]\,
      writeDataM_27_sp_1 => writeDataM_27_sn_1,
      y01_in(0) => y01_in(12)
    );
pcadd2: entity work.design_1_top_0_0_adder_0
     port map (
      d1_0(30 downto 0) => d1_0(31 downto 1),
      \q_reg[2]\(0) => pcadd1_n_36,
      r15(30 downto 0) => r15(31 downto 1)
    );
pcreg: entity work.\design_1_top_0_0_flopenr__parameterized0\
     port map (
      ADDRA(3 downto 0) => RA2(3 downto 0),
      ALUControl(1) => ALUControl(2),
      ALUControl(0) => ALUControl(0),
      CondEx => CondEx,
      E(0) => E(0),
      \FSM_sequential_CURRENT_STATE_reg[0]\ => \FSM_sequential_CURRENT_STATE_reg[0]\,
      \FSM_sequential_CURRENT_STATE_reg[2]\(1 downto 0) => \FSM_sequential_CURRENT_STATE_reg[2]\(1 downto 0),
      MemWrite => MemWrite,
      Q(31 downto 0) => PC(31 downto 0),
      RegWrite => RegWrite,
      S(0) => pcreg_n_122,
      addressM(31 downto 0) => addressM(31 downto 0),
      carry => carry,
      clk => clk,
      condinva(31 downto 0) => condinva(31 downto 0),
      d1_0(30 downto 0) => d1_0(31 downto 1),
      data4 => data4,
      doneM => doneM,
      \out\(4 downto 0) => \out\(4 downto 0),
      \q_reg[0]_0\ => pcreg_n_46,
      \q_reg[0]_1\ => pcreg_n_118,
      \q_reg[0]_10\ => pcadd1_n_120,
      \q_reg[0]_11\ => pcadd1_n_85,
      \q_reg[0]_12\ => pcadd1_n_94,
      \q_reg[0]_13\ => pcadd1_n_78,
      \q_reg[0]_14\ => pcadd1_n_102,
      \q_reg[0]_15\ => pcadd1_n_122,
      \q_reg[0]_16\ => pcadd1_n_123,
      \q_reg[0]_17\ => pcadd1_n_121,
      \q_reg[0]_18\ => pcadd1_n_71,
      \q_reg[0]_19\(0) => alu_n_0,
      \q_reg[0]_2\ => pcreg_n_124,
      \q_reg[0]_20\ => \q_reg[0]_1\,
      \q_reg[0]_21\ => \q_reg[0]_2\,
      \q_reg[0]_3\ => pcreg_n_125,
      \q_reg[0]_4\ => pcreg_n_126,
      \q_reg[0]_5\(3 downto 0) => RA1(3 downto 0),
      \q_reg[0]_6\ => \q_reg[0]\,
      \q_reg[0]_7\ => \q_reg[0]_0\,
      \q_reg[0]_8\(0) => y01_in(12),
      \q_reg[0]_9\ => pcadd1_n_67,
      \q_reg[12]_0\ => pcadd1_n_100,
      \q_reg[12]_1\ => pcadd1_n_103,
      \q_reg[12]_2\ => pcadd1_n_105,
      \q_reg[12]_3\ => pcadd1_n_107,
      \q_reg[18]_0\ => pcreg_n_123,
      \q_reg[1]_0\(4 downto 0) => Instr(11 downto 7),
      \q_reg[1]_1\ => pcreg_n_9,
      \q_reg[1]_10\ => pcadd1_n_31,
      \q_reg[1]_11\ => pcadd1_n_33,
      \q_reg[1]_12\ => pcadd1_n_80,
      \q_reg[1]_13\ => pcadd1_n_88,
      \q_reg[1]_14\ => pcadd1_n_68,
      \q_reg[1]_15\ => pcadd1_n_75,
      \q_reg[1]_16\ => pcadd1_n_77,
      \q_reg[1]_17\ => pcadd1_n_76,
      \q_reg[1]_18\ => pcadd1_n_72,
      \q_reg[1]_19\ => pcadd1_n_74,
      \q_reg[1]_2\ => pcreg_n_10,
      \q_reg[1]_20\ => pcadd1_n_73,
      \q_reg[1]_21\ => pcadd1_n_82,
      \q_reg[1]_22\ => pcadd1_n_84,
      \q_reg[1]_23\ => pcadd1_n_83,
      \q_reg[1]_24\ => pcadd1_n_91,
      \q_reg[1]_25\ => pcadd1_n_93,
      \q_reg[1]_26\ => pcadd1_n_92,
      \q_reg[1]_27\ => pcadd1_n_110,
      \q_reg[1]_28\ => pcadd1_n_96,
      \q_reg[1]_29\ => pcadd1_n_97,
      \q_reg[1]_3\ => pcreg_n_11,
      \q_reg[1]_30\ => pcadd1_n_99,
      \q_reg[1]_31\ => pcadd1_n_98,
      \q_reg[1]_32\ => pcadd1_n_89,
      \q_reg[1]_33\ => pcadd1_n_69,
      \q_reg[1]_34\ => pcadd1_n_70,
      \q_reg[1]_35\ => pcadd1_n_112,
      \q_reg[1]_36\ => pcadd1_n_101,
      \q_reg[1]_37\ => pcadd1_n_81,
      \q_reg[1]_38\ => pcadd1_n_115,
      \q_reg[1]_39\ => pcadd1_n_104,
      \q_reg[1]_4\ => pcreg_n_12,
      \q_reg[1]_40\ => pcadd1_n_90,
      \q_reg[1]_41\ => pcadd1_n_117,
      \q_reg[1]_42\ => pcadd1_n_106,
      \q_reg[1]_43\ => pcadd1_n_108,
      \q_reg[1]_44\ => pcadd1_n_113,
      \q_reg[1]_45\ => pcadd1_n_118,
      \q_reg[1]_46\ => pcadd1_n_126,
      \q_reg[1]_47\ => pcadd1_n_127,
      \q_reg[1]_48\ => pcadd1_n_125,
      \q_reg[1]_5\ => \q_reg[1]\,
      \q_reg[1]_6\ => \q_reg[1]_0\,
      \q_reg[1]_7\ => pcadd1_n_34,
      \q_reg[1]_8\ => pcadd1_n_32,
      \q_reg[1]_9\ => pcadd1_n_35,
      \q_reg[28]_0\ => writeDataM_27_sn_1,
      \q_reg[2]_0\ => pcadd1_n_111,
      \q_reg[2]_1\ => pcadd1_n_114,
      \q_reg[2]_2\ => pcadd1_n_116,
      \q_reg[2]_3\ => pcadd1_n_119,
      \q_reg[31]_0\ => \^writedatam[31]\,
      \q_reg[31]_1\(30 downto 0) => SrcA(31 downto 1),
      \q_reg[31]_2\ => \^writedatam[29]\,
      \q_reg[8]_0\ => pcadd1_n_79,
      \q_reg[8]_1\ => pcadd1_n_86,
      \q_reg[8]_2\ => pcadd1_n_95,
      \q_reg[8]_3\ => pcadd1_n_109,
      r15(30 downto 0) => r15(31 downto 1),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      wa3(3 downto 1) => RA3(3 downto 1),
      wa3(0) => pcreg_n_3,
      wd3(31 downto 0) => wd3(31 downto 0),
      writeDataM(16 downto 12) => \^writedatam\(27 downto 23),
      writeDataM(11 downto 10) => \^writedatam\(15 downto 14),
      writeDataM(9 downto 8) => \^writedatam\(12 downto 11),
      writeDataM(7 downto 0) => \^writedatam\(7 downto 0),
      writeDataM_0_sp_1 => writeDataM_0_sn_1
    );
rf: entity work.design_1_top_0_0_regfile
     port map (
      ADDRA(3 downto 0) => RA2(3 downto 0),
      RegWrite => RegWrite,
      clk => clk,
      \q_reg[0]\(3 downto 0) => RA1(3 downto 0),
      rd10(31 downto 0) => rd10(31 downto 0),
      rd20(31 downto 0) => rd20(31 downto 0),
      wa3(3 downto 1) => RA3(3 downto 1),
      wa3(0) => pcreg_n_3,
      wd3(31 downto 0) => wd3(31 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_controller is
  port (
    carry : out STD_LOGIC;
    \q_reg[0]\ : out STD_LOGIC;
    data4 : out STD_LOGIC;
    \q_reg[0]_0\ : out STD_LOGIC;
    CondEx : out STD_LOGIC;
    \q_reg[1]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    \q_reg[0]_1\ : in STD_LOGIC;
    \q_reg[1]_0\ : in STD_LOGIC;
    \q_reg[0]_2\ : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_controller : entity is "controller";
end design_1_top_0_0_controller;

architecture STRUCTURE of design_1_top_0_0_controller is
begin
cl: entity work.design_1_top_0_0_condlogic
     port map (
      CondEx => CondEx,
      carry => carry,
      clk => clk,
      data4 => data4,
      \out\(3 downto 0) => \out\(3 downto 0),
      \q_reg[0]\ => \q_reg[0]\,
      \q_reg[0]_0\ => \q_reg[0]_0\,
      \q_reg[0]_1\ => \q_reg[0]_1\,
      \q_reg[0]_2\ => \q_reg[0]_2\,
      \q_reg[1]\ => \q_reg[1]\,
      \q_reg[1]_0\ => \q_reg[1]_0\,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_arm is
  port (
    \out\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \writeDataM[31]\ : out STD_LOGIC;
    writeDataM_0_sp_1 : out STD_LOGIC;
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \FSM_sequential_CURRENT_STATE_reg[0]\ : out STD_LOGIC;
    MemWrite : out STD_LOGIC;
    \writeDataM[29]\ : out STD_LOGIC;
    writeDataM_27_sp_1 : out STD_LOGIC;
    writeDataM : out STD_LOGIC_VECTOR ( 27 downto 0 );
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doneM : in STD_LOGIC;
    \FSM_sequential_CURRENT_STATE_reg[2]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_arm : entity is "arm";
end design_1_top_0_0_arm;

architecture STRUCTURE of design_1_top_0_0_arm is
  signal Instr : STD_LOGIC_VECTOR ( 31 downto 28 );
  signal c_n_1 : STD_LOGIC;
  signal c_n_3 : STD_LOGIC;
  signal carry : STD_LOGIC;
  signal \cl/CondEx\ : STD_LOGIC;
  signal data4 : STD_LOGIC;
  signal dp_n_71 : STD_LOGIC;
  signal dp_n_72 : STD_LOGIC;
  signal dp_n_73 : STD_LOGIC;
  signal dp_n_74 : STD_LOGIC;
  signal writeDataM_0_sn_1 : STD_LOGIC;
  signal writeDataM_27_sn_1 : STD_LOGIC;
begin
  writeDataM_0_sp_1 <= writeDataM_0_sn_1;
  writeDataM_27_sp_1 <= writeDataM_27_sn_1;
c: entity work.design_1_top_0_0_controller
     port map (
      CondEx => \cl/CondEx\,
      carry => carry,
      clk => clk,
      data4 => data4,
      \out\(3 downto 0) => Instr(31 downto 28),
      \q_reg[0]\ => c_n_1,
      \q_reg[0]_0\ => c_n_3,
      \q_reg[0]_1\ => dp_n_72,
      \q_reg[0]_2\ => dp_n_74,
      \q_reg[1]\ => dp_n_71,
      \q_reg[1]_0\ => dp_n_73,
      reset => reset
    );
dp: entity work.design_1_top_0_0_datapath
     port map (
      CondEx => \cl/CondEx\,
      E(0) => E(0),
      \FSM_sequential_CURRENT_STATE_reg[0]\ => \FSM_sequential_CURRENT_STATE_reg[0]\,
      \FSM_sequential_CURRENT_STATE_reg[2]\(1 downto 0) => \FSM_sequential_CURRENT_STATE_reg[2]\(1 downto 0),
      MemWrite => MemWrite,
      addressM(31 downto 0) => addressM(31 downto 0),
      carry => carry,
      clk => clk,
      data4 => data4,
      doneM => doneM,
      \out\(4 downto 1) => Instr(31 downto 28),
      \out\(0) => \out\(0),
      \q_reg[0]\ => dp_n_72,
      \q_reg[0]_0\ => dp_n_74,
      \q_reg[0]_1\ => c_n_1,
      \q_reg[0]_2\ => c_n_3,
      \q_reg[1]\ => dp_n_71,
      \q_reg[1]_0\ => dp_n_73,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(27 downto 0) => writeDataM(27 downto 0),
      \writeDataM[29]\ => \writeDataM[29]\,
      \writeDataM[31]\ => \writeDataM[31]\,
      writeDataM_0_sp_1 => writeDataM_0_sn_1,
      writeDataM_27_sp_1 => writeDataM_27_sn_1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0_top is
  port (
    \writeDataM[31]\ : out STD_LOGIC;
    writeDataM_0_sp_1 : out STD_LOGIC;
    start : out STD_LOGIC;
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \writeDataM[29]\ : out STD_LOGIC;
    writeDataM_27_sp_1 : out STD_LOGIC;
    writeDataM : out STD_LOGIC_VECTOR ( 27 downto 0 );
    DRW : out STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_top_0_0_top : entity is "top";
end design_1_top_0_0_top;

architecture STRUCTURE of design_1_top_0_0_top is
  signal Instr : STD_LOGIC_VECTOR ( 26 to 26 );
  signal MemWrite : STD_LOGIC;
  signal core_n_35 : STD_LOGIC;
  signal memcontrol_n_0 : STD_LOGIC;
  signal memcontrol_n_1 : STD_LOGIC;
  signal memcontrol_n_2 : STD_LOGIC;
  signal writeDataM_0_sn_1 : STD_LOGIC;
  signal writeDataM_27_sn_1 : STD_LOGIC;
begin
  writeDataM_0_sp_1 <= writeDataM_0_sn_1;
  writeDataM_27_sp_1 <= writeDataM_27_sn_1;
core: entity work.design_1_top_0_0_arm
     port map (
      E(0) => memcontrol_n_2,
      \FSM_sequential_CURRENT_STATE_reg[0]\ => core_n_35,
      \FSM_sequential_CURRENT_STATE_reg[2]\(1) => memcontrol_n_0,
      \FSM_sequential_CURRENT_STATE_reg[2]\(0) => memcontrol_n_1,
      MemWrite => MemWrite,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      \out\(0) => Instr(26),
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      writeDataM(27 downto 0) => writeDataM(27 downto 0),
      \writeDataM[29]\ => \writeDataM[29]\,
      \writeDataM[31]\ => \writeDataM[31]\,
      writeDataM_0_sp_1 => writeDataM_0_sn_1,
      writeDataM_27_sp_1 => writeDataM_27_sn_1
    );
memcontrol: entity work.design_1_top_0_0_MemControl
     port map (
      DRW => DRW,
      E(0) => memcontrol_n_2,
      \FSM_sequential_CURRENT_STATE_reg[2]_0\ => core_n_35,
      MemWrite => MemWrite,
      clk => clk,
      doneM => doneM,
      \out\(1) => memcontrol_n_0,
      \out\(0) => memcontrol_n_1,
      \q_reg[0]\(0) => Instr(26),
      reset => reset,
      start => start
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_top_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    doneM : in STD_LOGIC;
    readDataM : in STD_LOGIC_VECTOR ( 31 downto 0 );
    writeDataM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    addressM : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DRW : out STD_LOGIC;
    start : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_top_0_0 : entity is "design_1_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_top_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_top_0_0 : entity is "top,Vivado 2018.1";
end design_1_top_0_0;

architecture STRUCTURE of design_1_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW";
begin
inst: entity work.design_1_top_0_0_top
     port map (
      DRW => DRW,
      addressM(31 downto 0) => addressM(31 downto 0),
      clk => clk,
      doneM => doneM,
      readDataM(31 downto 0) => readDataM(31 downto 0),
      reset => reset,
      start => start,
      writeDataM(27) => writeDataM(30),
      writeDataM(26) => writeDataM(28),
      writeDataM(25 downto 0) => writeDataM(26 downto 1),
      \writeDataM[29]\ => writeDataM(29),
      \writeDataM[31]\ => writeDataM(31),
      writeDataM_0_sp_1 => writeDataM(0),
      writeDataM_27_sp_1 => writeDataM(27)
    );
end STRUCTURE;
