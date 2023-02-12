// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Feb 14 16:16:05 2019
// Host        : CEAT-ENDV-PC059 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/alexasu/Desktop/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_sim_netlist.v
// Design      : design_1_top_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_top_0_0,top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "top,Vivado 2018.1" *) 
(* NotValidForBitStream *)
module design_1_top_0_0
   (clk,
    reset,
    doneM,
    readDataM,
    writeDataM,
    addressM,
    DRW,
    AXIstart);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW" *) input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIstart;

  wire AXIstart;
  wire DRW;
  wire [31:0]addressM;
  wire clk;
  wire doneM;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]writeDataM;

  design_1_top_0_0_top inst
       (.AXIstart(AXIstart),
        .DRW(DRW),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM({writeDataM[30],writeDataM[28],writeDataM[26:1]}),
        .\writeDataM[29] (writeDataM[29]),
        .\writeDataM[31] (writeDataM[31]),
        .writeDataM_0_sp_1(writeDataM[0]),
        .writeDataM_27_sp_1(writeDataM[27]));
endmodule

(* ORIG_REF_NAME = "MemControl" *) 
module design_1_top_0_0_MemControl
   (out,
    AXIstart,
    E,
    DRW,
    \q_reg[0] ,
    MemWrite,
    reset,
    doneM,
    \FSM_sequential_CURRENT_STATE_reg[2]_0 ,
    clk);
  output [1:0]out;
  output AXIstart;
  output [0:0]E;
  output DRW;
  input [0:0]\q_reg[0] ;
  input MemWrite;
  input reset;
  input doneM;
  input \FSM_sequential_CURRENT_STATE_reg[2]_0 ;
  input clk;

  wire AXIstart;
  (* RTL_KEEP = "yes" *) wire [1:1]CURRENT_STATE;
  wire DRW;
  wire [0:0]E;
  wire \FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ;
  wire \FSM_sequential_CURRENT_STATE[2]_i_1_n_0 ;
  wire \FSM_sequential_CURRENT_STATE_reg[2]_0 ;
  wire MemWrite;
  wire clk;
  wire doneM;
  (* RTL_KEEP = "yes" *) wire [1:0]out;
  wire [0:0]\q_reg[0] ;
  wire reset;

  LUT3 #(
    .INIT(8'h06)) 
    AXIstart_INST_0
       (.I0(out[1]),
        .I1(out[0]),
        .I2(CURRENT_STATE),
        .O(AXIstart));
  LUT3 #(
    .INIT(8'h15)) 
    DRW_INST_0
       (.I0(out[1]),
        .I1(CURRENT_STATE),
        .I2(out[0]),
        .O(DRW));
  LUT6 #(
    .INIT(64'h00000000222E2222)) 
    \FSM_sequential_CURRENT_STATE[0]_i_1 
       (.I0(\FSM_sequential_CURRENT_STATE_reg[2]_0 ),
        .I1(CURRENT_STATE),
        .I2(out[1]),
        .I3(out[0]),
        .I4(doneM),
        .I5(reset),
        .O(\FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001A12)) 
    \FSM_sequential_CURRENT_STATE[1]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(CURRENT_STATE),
        .I3(doneM),
        .I4(reset),
        .O(\FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000AABA)) 
    \FSM_sequential_CURRENT_STATE[2]_i_1 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(\q_reg[0] ),
        .I3(MemWrite),
        .I4(CURRENT_STATE),
        .I5(reset),
        .O(\FSM_sequential_CURRENT_STATE[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CURRENT_STATE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CURRENT_STATE[0]_i_1_n_0 ),
        .Q(out[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CURRENT_STATE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CURRENT_STATE[1]_i_1_n_0 ),
        .Q(CURRENT_STATE),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "Idle:000,ReadStart:100,WriteStart:001,ReadData:110,ReadMem:101,WriteData:011,WriteMem:010" *) 
  (* KEEP = "yes" *) 
  (* XILINX_LEGACY_PRIM = "FD_1" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \FSM_sequential_CURRENT_STATE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_sequential_CURRENT_STATE[2]_i_1_n_0 ),
        .Q(out[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h81)) 
    \q[31]_i_1 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(CURRENT_STATE),
        .O(E));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder
   (d1_0,
    \q_reg[0] ,
    \q_reg[19] ,
    \q_reg[19]_0 ,
    \q_reg[0]_0 ,
    \q_reg[19]_1 ,
    \q_reg[4] ,
    writeDataM_27_sp_1,
    \writeDataM[31] ,
    writeDataM,
    \q_reg[19]_2 ,
    \q_reg[1] ,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[0]_1 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    \q_reg[0]_5 ,
    \q_reg[0]_6 ,
    \q_reg[0]_7 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    \q_reg[1]_5 ,
    \q_reg[0]_8 ,
    \q_reg[0]_9 ,
    \q_reg[0]_10 ,
    \q_reg[1]_6 ,
    \q_reg[1]_7 ,
    \writeDataM[29] ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[1]_10 ,
    \q_reg[0]_11 ,
    \q_reg[0]_12 ,
    \q_reg[0]_13 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[0]_14 ,
    \q_reg[0]_15 ,
    \q_reg[0]_16 ,
    \q_reg[1]_14 ,
    \q_reg[27] ,
    \q_reg[0]_17 ,
    \q_reg[27]_0 ,
    \q_reg[26] ,
    \q_reg[26]_0 ,
    \q_reg[25] ,
    \q_reg[25]_0 ,
    \q_reg[24] ,
    \q_reg[24]_0 ,
    \q_reg[1]_15 ,
    \q_reg[1]_16 ,
    \q_reg[27]_1 ,
    \q_reg[0]_18 ,
    \q_reg[27]_2 ,
    \q_reg[26]_1 ,
    \q_reg[26]_2 ,
    \q_reg[25]_1 ,
    \q_reg[0]_19 ,
    \q_reg[25]_2 ,
    \q_reg[0]_20 ,
    \q_reg[0]_21 ,
    \q_reg[0]_22 ,
    \q_reg[0]_23 ,
    y01_in,
    \q_reg[0]_24 ,
    \q_reg[0]_25 ,
    \q_reg[0]_26 ,
    SrcA,
    Q,
    S,
    Instr,
    \q_reg[1]_17 ,
    r15,
    rd20,
    \q_reg[1]_18 ,
    \q_reg[0]_27 ,
    \q_reg[1]_19 ,
    \q_reg[1]_20 ,
    \q_reg[0]_28 ,
    \q_reg[0]_29 ,
    \q_reg[0]_30 ,
    \q_reg[1]_21 ,
    \q_reg[0]_31 ,
    rd10);
  output [30:0]d1_0;
  output \q_reg[0] ;
  output \q_reg[19] ;
  output \q_reg[19]_0 ;
  output \q_reg[0]_0 ;
  output \q_reg[19]_1 ;
  output [0:0]\q_reg[4] ;
  output writeDataM_27_sp_1;
  output \writeDataM[31] ;
  output [27:0]writeDataM;
  output \q_reg[19]_2 ;
  output \q_reg[1] ;
  output \q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[0]_1 ;
  output \q_reg[0]_2 ;
  output \q_reg[0]_3 ;
  output \q_reg[0]_4 ;
  output \q_reg[0]_5 ;
  output \q_reg[0]_6 ;
  output \q_reg[0]_7 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output \q_reg[1]_5 ;
  output \q_reg[0]_8 ;
  output \q_reg[0]_9 ;
  output \q_reg[0]_10 ;
  output \q_reg[1]_6 ;
  output \q_reg[1]_7 ;
  output \writeDataM[29] ;
  output \q_reg[1]_8 ;
  output \q_reg[1]_9 ;
  output \q_reg[1]_10 ;
  output \q_reg[0]_11 ;
  output \q_reg[0]_12 ;
  output \q_reg[0]_13 ;
  output \q_reg[1]_11 ;
  output \q_reg[1]_12 ;
  output \q_reg[1]_13 ;
  output \q_reg[0]_14 ;
  output \q_reg[0]_15 ;
  output \q_reg[0]_16 ;
  output \q_reg[1]_14 ;
  output \q_reg[27] ;
  output \q_reg[0]_17 ;
  output \q_reg[27]_0 ;
  output \q_reg[26] ;
  output \q_reg[26]_0 ;
  output \q_reg[25] ;
  output \q_reg[25]_0 ;
  output \q_reg[24] ;
  output \q_reg[24]_0 ;
  output \q_reg[1]_15 ;
  output \q_reg[1]_16 ;
  output \q_reg[27]_1 ;
  output \q_reg[0]_18 ;
  output \q_reg[27]_2 ;
  output \q_reg[26]_1 ;
  output \q_reg[26]_2 ;
  output \q_reg[25]_1 ;
  output \q_reg[0]_19 ;
  output \q_reg[25]_2 ;
  output \q_reg[0]_20 ;
  output \q_reg[0]_21 ;
  output \q_reg[0]_22 ;
  output \q_reg[0]_23 ;
  output [0:0]y01_in;
  output \q_reg[0]_24 ;
  output \q_reg[0]_25 ;
  output \q_reg[0]_26 ;
  output [30:0]SrcA;
  input [30:0]Q;
  input [0:0]S;
  input [4:0]Instr;
  input \q_reg[1]_17 ;
  input [30:0]r15;
  input [30:0]rd20;
  input \q_reg[1]_18 ;
  input \q_reg[0]_27 ;
  input \q_reg[1]_19 ;
  input \q_reg[1]_20 ;
  input \q_reg[0]_28 ;
  input \q_reg[0]_29 ;
  input \q_reg[0]_30 ;
  input \q_reg[1]_21 ;
  input \q_reg[0]_31 ;
  input [30:0]rd10;

  wire [4:0]Instr;
  wire [30:0]Q;
  wire [0:0]S;
  wire [30:0]SrcA;
  wire \addressM[0]_INST_0_i_9_n_0 ;
  wire \addressM[1]_INST_0_i_13_n_0 ;
  wire \addressM[28]_INST_0_i_15_n_0 ;
  wire \addressM[28]_INST_0_i_17_n_0 ;
  wire \addressM[2]_INST_0_i_13_n_0 ;
  wire \addressM[31]_INST_0_i_38_n_0 ;
  wire \addressM[31]_INST_0_i_40_n_0 ;
  wire \addressM[31]_INST_0_i_43_n_0 ;
  wire \addressM[31]_INST_0_i_46_n_0 ;
  wire \addressM[31]_INST_0_i_52_n_0 ;
  wire \addressM[31]_INST_0_i_54_n_0 ;
  wire \addressM[31]_INST_0_i_55_n_0 ;
  wire \addressM[31]_INST_0_i_57_n_0 ;
  wire \addressM[31]_INST_0_i_58_n_0 ;
  wire \addressM[31]_INST_0_i_60_n_0 ;
  wire \addressM[3]_INST_0_i_23_n_0 ;
  wire [30:0]d1_0;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_10 ;
  wire \q_reg[0]_11 ;
  wire \q_reg[0]_12 ;
  wire \q_reg[0]_13 ;
  wire \q_reg[0]_14 ;
  wire \q_reg[0]_15 ;
  wire \q_reg[0]_16 ;
  wire \q_reg[0]_17 ;
  wire \q_reg[0]_18 ;
  wire \q_reg[0]_19 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_20 ;
  wire \q_reg[0]_21 ;
  wire \q_reg[0]_22 ;
  wire \q_reg[0]_23 ;
  wire \q_reg[0]_24 ;
  wire \q_reg[0]_25 ;
  wire \q_reg[0]_26 ;
  wire \q_reg[0]_27 ;
  wire \q_reg[0]_28 ;
  wire \q_reg[0]_29 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_30 ;
  wire \q_reg[0]_31 ;
  wire \q_reg[0]_4 ;
  wire \q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire \q_reg[0]_7 ;
  wire \q_reg[0]_8 ;
  wire \q_reg[0]_9 ;
  wire \q_reg[19] ;
  wire \q_reg[19]_0 ;
  wire \q_reg[19]_1 ;
  wire \q_reg[19]_2 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_14 ;
  wire \q_reg[1]_15 ;
  wire \q_reg[1]_16 ;
  wire \q_reg[1]_17 ;
  wire \q_reg[1]_18 ;
  wire \q_reg[1]_19 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_20 ;
  wire \q_reg[1]_21 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire \q_reg[24] ;
  wire \q_reg[24]_0 ;
  wire \q_reg[25] ;
  wire \q_reg[25]_0 ;
  wire \q_reg[25]_1 ;
  wire \q_reg[25]_2 ;
  wire \q_reg[26] ;
  wire \q_reg[26]_0 ;
  wire \q_reg[26]_1 ;
  wire \q_reg[26]_2 ;
  wire \q_reg[27] ;
  wire \q_reg[27]_0 ;
  wire \q_reg[27]_1 ;
  wire \q_reg[27]_2 ;
  wire [0:0]\q_reg[4] ;
  wire [30:0]r15;
  wire [30:0]rd10;
  wire [30:0]rd20;
  wire [27:0]writeDataM;
  wire \writeDataM[29] ;
  wire \writeDataM[31] ;
  wire writeDataM_27_sn_1;
  wire [0:0]y01_in;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  assign writeDataM_27_sp_1 = writeDataM_27_sn_1;
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[0]_INST_0_i_8 
       (.I0(\q_reg[0]_2 ),
        .I1(\q_reg[0]_3 ),
        .I2(Instr[0]),
        .I3(\q_reg[0]_4 ),
        .I4(Instr[1]),
        .I5(\addressM[0]_INST_0_i_9_n_0 ),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[0]_INST_0_i_9 
       (.I0(\q_reg[0]_14 ),
        .I1(\q_reg[0]_15 ),
        .I2(Instr[2]),
        .I3(\q_reg[0]_16 ),
        .I4(Instr[3]),
        .I5(\q_reg[0]_28 ),
        .O(\addressM[0]_INST_0_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[10]_INST_0_i_12 
       (.I0(r15[25]),
        .I1(rd20[25]),
        .I2(Instr[4]),
        .I3(r15[9]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[9]),
        .O(\q_reg[0]_10 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[10]_INST_0_i_5 
       (.I0(r15[9]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[9]),
        .O(SrcA[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[11]_INST_0_i_22 
       (.I0(r15[26]),
        .I1(rd20[26]),
        .I2(Instr[4]),
        .I3(r15[10]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[10]),
        .O(\q_reg[0]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[11]_INST_0_i_6 
       (.I0(r15[10]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[10]),
        .O(SrcA[10]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[12]_INST_0_i_10 
       (.I0(writeDataM[4]),
        .I1(\q_reg[0]_27 ),
        .I2(writeDataM[0]),
        .I3(\q_reg[1]_19 ),
        .I4(writeDataM[8]),
        .I5(\q_reg[1]_20 ),
        .O(\q_reg[0]_21 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[12]_INST_0_i_12 
       (.I0(r15[27]),
        .I1(rd20[27]),
        .I2(Instr[4]),
        .I3(r15[11]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[11]),
        .O(\q_reg[0]_14 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[12]_INST_0_i_5 
       (.I0(r15[11]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[11]),
        .O(SrcA[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[12]_INST_0_i_6 
       (.I0(\q_reg[0]_24 ),
        .I1(\q_reg[0]_25 ),
        .I2(Instr[0]),
        .I3(\q_reg[0]_26 ),
        .I4(Instr[1]),
        .I5(\q_reg[1]_21 ),
        .O(y01_in));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[12]_INST_0_i_7 
       (.I0(\q_reg[0]_21 ),
        .I1(\q_reg[0]_22 ),
        .I2(Instr[0]),
        .I3(\q_reg[0]_23 ),
        .I4(Instr[1]),
        .I5(\q_reg[0]_30 ),
        .O(\q_reg[0]_20 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[12]_INST_0_i_9 
       (.I0(writeDataM[4]),
        .I1(Instr[2]),
        .I2(writeDataM[0]),
        .I3(Instr[3]),
        .I4(writeDataM[8]),
        .I5(Instr[4]),
        .O(\q_reg[0]_24 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[13]_INST_0_i_10 
       (.I0(writeDataM[5]),
        .I1(\q_reg[0]_27 ),
        .I2(writeDataM[1]),
        .I3(\q_reg[1]_19 ),
        .I4(writeDataM[9]),
        .I5(\q_reg[1]_20 ),
        .O(\q_reg[0]_23 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[13]_INST_0_i_12 
       (.I0(r15[28]),
        .I1(rd20[28]),
        .I2(Instr[4]),
        .I3(r15[12]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[12]),
        .O(\q_reg[0]_11 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[13]_INST_0_i_5 
       (.I0(r15[12]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[12]),
        .O(SrcA[12]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[13]_INST_0_i_9 
       (.I0(writeDataM[5]),
        .I1(Instr[2]),
        .I2(writeDataM[1]),
        .I3(Instr[3]),
        .I4(writeDataM[9]),
        .I5(Instr[4]),
        .O(\q_reg[0]_26 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[14]_INST_0_i_10 
       (.I0(writeDataM[6]),
        .I1(\q_reg[0]_27 ),
        .I2(writeDataM[2]),
        .I3(\q_reg[1]_19 ),
        .I4(writeDataM[10]),
        .I5(\q_reg[1]_20 ),
        .O(\q_reg[0]_22 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[14]_INST_0_i_12 
       (.I0(r15[29]),
        .I1(rd20[29]),
        .I2(Instr[4]),
        .I3(r15[13]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[13]),
        .O(\q_reg[0]_8 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[14]_INST_0_i_5 
       (.I0(r15[13]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[13]),
        .O(SrcA[13]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[14]_INST_0_i_9 
       (.I0(writeDataM[6]),
        .I1(Instr[2]),
        .I2(writeDataM[2]),
        .I3(Instr[3]),
        .I4(writeDataM[10]),
        .I5(Instr[4]),
        .O(\q_reg[0]_25 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[15]_INST_0_i_23 
       (.I0(r15[30]),
        .I1(rd20[30]),
        .I2(Instr[4]),
        .I3(r15[14]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[14]),
        .O(\q_reg[0]_5 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[15]_INST_0_i_5 
       (.I0(r15[14]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[14]),
        .O(SrcA[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[16]_INST_0_i_5 
       (.I0(r15[15]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[15]),
        .O(SrcA[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[17]_INST_0_i_5 
       (.I0(r15[16]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[16]),
        .O(SrcA[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[18]_INST_0_i_5 
       (.I0(r15[17]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[17]),
        .O(SrcA[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_11 
       (.I0(\q_reg[19] ),
        .I1(\q_reg[19]_0 ),
        .I2(Instr[0]),
        .I3(\q_reg[19]_1 ),
        .I4(Instr[1]),
        .I5(\q_reg[1]_17 ),
        .O(\q_reg[19]_2 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[19]_INST_0_i_5 
       (.I0(r15[18]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[18]),
        .O(SrcA[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[1]_INST_0_i_12 
       (.I0(\q_reg[0]_11 ),
        .I1(\q_reg[0]_12 ),
        .I2(Instr[2]),
        .I3(\q_reg[0]_13 ),
        .I4(Instr[3]),
        .I5(\addressM[1]_INST_0_i_13_n_0 ),
        .O(\q_reg[0]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[1]_INST_0_i_13 
       (.I0(r15[16]),
        .I1(rd20[16]),
        .I2(Instr[4]),
        .I3(r15[0]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[0]),
        .O(\addressM[1]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[1]_INST_0_i_5 
       (.I0(r15[0]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[0]),
        .O(SrcA[0]));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \addressM[20]_INST_0_i_10 
       (.I0(\q_reg[19] ),
        .I1(Instr[1]),
        .I2(\q_reg[19]_0 ),
        .I3(\q_reg[0]_0 ),
        .I4(\q_reg[19]_1 ),
        .I5(Instr[0]),
        .O(\q_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[20]_INST_0_i_13 
       (.I0(writeDataM[23]),
        .I1(Instr[2]),
        .I2(writeDataM[26]),
        .I3(Instr[3]),
        .I4(writeDataM[19]),
        .I5(Instr[4]),
        .O(\q_reg[19]_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[20]_INST_0_i_17 
       (.I0(writeDataM[8]),
        .I1(\q_reg[1]_19 ),
        .I2(writeDataM[0]),
        .I3(\q_reg[1]_20 ),
        .I4(writeDataM[16]),
        .O(\q_reg[0]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[20]_INST_0_i_5 
       (.I0(r15[19]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[19]),
        .O(SrcA[19]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[21]_INST_0_i_13 
       (.I0(writeDataM[24]),
        .I1(Instr[2]),
        .I2(\writeDataM[29] ),
        .I3(Instr[3]),
        .I4(writeDataM[20]),
        .I5(Instr[4]),
        .O(\q_reg[19]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[21]_INST_0_i_5 
       (.I0(r15[20]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[20]),
        .O(SrcA[20]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[22]_INST_0_i_11 
       (.I0(writeDataM[25]),
        .I1(Instr[2]),
        .I2(writeDataM[27]),
        .I3(Instr[3]),
        .I4(writeDataM[21]),
        .I5(Instr[4]),
        .O(\q_reg[19] ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[22]_INST_0_i_15 
       (.I0(writeDataM[10]),
        .I1(\q_reg[1]_19 ),
        .I2(writeDataM[2]),
        .I3(\q_reg[1]_20 ),
        .I4(writeDataM[18]),
        .O(\q_reg[0]_18 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[22]_INST_0_i_5 
       (.I0(r15[21]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[21]),
        .O(SrcA[21]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[23]_INST_0_i_20 
       (.I0(writeDataM_27_sn_1),
        .I1(Instr[2]),
        .I2(\writeDataM[31] ),
        .I3(Instr[3]),
        .I4(writeDataM[22]),
        .I5(Instr[4]),
        .O(\q_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[23]_INST_0_i_5 
       (.I0(r15[22]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[22]),
        .O(SrcA[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[24]_INST_0_i_5 
       (.I0(r15[23]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[23]),
        .O(SrcA[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[25]_INST_0_i_5 
       (.I0(r15[24]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[24]),
        .O(SrcA[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[26]_INST_0_i_5 
       (.I0(r15[25]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[25]),
        .O(SrcA[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_28 
       (.I0(r15[7]),
        .I1(rd20[7]),
        .I2(Instr[4]),
        .I3(r15[23]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[23]),
        .O(\q_reg[24] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_30 
       (.I0(r15[0]),
        .I1(rd20[0]),
        .I2(Instr[4]),
        .I3(r15[16]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[16]),
        .O(\q_reg[25]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_31 
       (.I0(r15[8]),
        .I1(rd20[8]),
        .I2(Instr[4]),
        .I3(r15[24]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[24]),
        .O(\q_reg[25] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_34 
       (.I0(r15[7]),
        .I1(rd20[7]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[23]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[23]),
        .O(\q_reg[24]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_36 
       (.I0(r15[0]),
        .I1(rd20[0]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[16]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[16]),
        .O(\q_reg[25]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_37 
       (.I0(r15[8]),
        .I1(rd20[8]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[24]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[24]),
        .O(\q_reg[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[27]_INST_0_i_5 
       (.I0(r15[26]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[26]),
        .O(SrcA[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[28]_INST_0_i_11 
       (.I0(\addressM[28]_INST_0_i_15_n_0 ),
        .I1(\addressM[31]_INST_0_i_55_n_0 ),
        .I2(\q_reg[0]_29 ),
        .I3(\addressM[28]_INST_0_i_17_n_0 ),
        .I4(\q_reg[0]_27 ),
        .I5(\addressM[31]_INST_0_i_58_n_0 ),
        .O(\q_reg[0]_17 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[28]_INST_0_i_15 
       (.I0(writeDataM[12]),
        .I1(\q_reg[1]_19 ),
        .I2(writeDataM[4]),
        .I3(\q_reg[1]_20 ),
        .I4(writeDataM[20]),
        .O(\addressM[28]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[28]_INST_0_i_17 
       (.I0(writeDataM[14]),
        .I1(\q_reg[1]_19 ),
        .I2(writeDataM[6]),
        .I3(\q_reg[1]_20 ),
        .I4(writeDataM[22]),
        .O(\addressM[28]_INST_0_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[28]_INST_0_i_5 
       (.I0(r15[27]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[27]),
        .O(SrcA[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_14 
       (.I0(r15[1]),
        .I1(rd20[1]),
        .I2(Instr[4]),
        .I3(r15[17]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[17]),
        .O(\q_reg[26]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_15 
       (.I0(r15[9]),
        .I1(rd20[9]),
        .I2(Instr[4]),
        .I3(r15[25]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[25]),
        .O(\q_reg[26] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_17 
       (.I0(r15[1]),
        .I1(rd20[1]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[17]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[17]),
        .O(\q_reg[26]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_18 
       (.I0(r15[9]),
        .I1(rd20[9]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[25]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[25]),
        .O(\q_reg[26]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[29]_INST_0_i_5 
       (.I0(r15[28]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[28]),
        .O(SrcA[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[2]_INST_0_i_12 
       (.I0(\q_reg[0]_8 ),
        .I1(\q_reg[0]_9 ),
        .I2(Instr[2]),
        .I3(\q_reg[0]_10 ),
        .I4(Instr[3]),
        .I5(\addressM[2]_INST_0_i_13_n_0 ),
        .O(\q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[2]_INST_0_i_13 
       (.I0(r15[17]),
        .I1(rd20[17]),
        .I2(Instr[4]),
        .I3(r15[1]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[1]),
        .O(\addressM[2]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[2]_INST_0_i_5 
       (.I0(r15[1]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[1]),
        .O(SrcA[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_16 
       (.I0(r15[2]),
        .I1(rd20[2]),
        .I2(Instr[4]),
        .I3(r15[18]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[18]),
        .O(\q_reg[27]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_17 
       (.I0(r15[10]),
        .I1(rd20[10]),
        .I2(Instr[4]),
        .I3(r15[26]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[26]),
        .O(\q_reg[27] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_19 
       (.I0(r15[2]),
        .I1(rd20[2]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[18]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[18]),
        .O(\q_reg[27]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_20 
       (.I0(r15[10]),
        .I1(rd20[10]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[26]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[26]),
        .O(\q_reg[27]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[30]_INST_0_i_5 
       (.I0(r15[29]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[29]),
        .O(SrcA[29]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_28 
       (.I0(\addressM[31]_INST_0_i_38_n_0 ),
        .I1(Instr[2]),
        .I2(\q_reg[1]_5 ),
        .I3(Instr[3]),
        .I4(\addressM[31]_INST_0_i_40_n_0 ),
        .O(\q_reg[1]_4 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_29 
       (.I0(\q_reg[1]_9 ),
        .I1(Instr[2]),
        .I2(\q_reg[1]_10 ),
        .I3(Instr[3]),
        .I4(\addressM[31]_INST_0_i_43_n_0 ),
        .O(\q_reg[1]_8 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_30 
       (.I0(\q_reg[1]_0 ),
        .I1(Instr[2]),
        .I2(\q_reg[1]_1 ),
        .I3(Instr[3]),
        .I4(\addressM[31]_INST_0_i_46_n_0 ),
        .O(\q_reg[1] ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_32 
       (.I0(\addressM[31]_INST_0_i_52_n_0 ),
        .I1(\q_reg[0]_27 ),
        .I2(\q_reg[1]_7 ),
        .I3(\q_reg[1]_19 ),
        .I4(\addressM[31]_INST_0_i_54_n_0 ),
        .O(\q_reg[1]_6 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_33 
       (.I0(\addressM[31]_INST_0_i_55_n_0 ),
        .I1(\q_reg[0]_27 ),
        .I2(\q_reg[1]_12 ),
        .I3(\q_reg[1]_19 ),
        .I4(\addressM[31]_INST_0_i_57_n_0 ),
        .O(\q_reg[1]_11 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_34 
       (.I0(\addressM[31]_INST_0_i_58_n_0 ),
        .I1(\q_reg[0]_27 ),
        .I2(\q_reg[1]_3 ),
        .I3(\q_reg[1]_19 ),
        .I4(\addressM[31]_INST_0_i_60_n_0 ),
        .O(\q_reg[1]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_36 
       (.I0(r15[3]),
        .I1(rd20[3]),
        .I2(Instr[4]),
        .I3(r15[19]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[19]),
        .O(\q_reg[1]_15 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_37 
       (.I0(r15[11]),
        .I1(rd20[11]),
        .I2(Instr[4]),
        .I3(r15[27]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[27]),
        .O(\q_reg[1]_13 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_38 
       (.I0(writeDataM[1]),
        .I1(writeDataM[17]),
        .I2(Instr[3]),
        .I3(writeDataM[9]),
        .I4(Instr[4]),
        .I5(writeDataM[25]),
        .O(\addressM[31]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_39 
       (.I0(r15[5]),
        .I1(rd20[5]),
        .I2(Instr[4]),
        .I3(r15[21]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[21]),
        .O(\q_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_40 
       (.I0(r15[13]),
        .I1(rd20[13]),
        .I2(Instr[4]),
        .I3(r15[29]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[29]),
        .O(\addressM[31]_INST_0_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_41 
       (.I0(writeDataM[0]),
        .I1(writeDataM[16]),
        .I2(Instr[3]),
        .I3(writeDataM[8]),
        .I4(Instr[4]),
        .I5(writeDataM[24]),
        .O(\q_reg[1]_9 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_42 
       (.I0(r15[4]),
        .I1(rd20[4]),
        .I2(Instr[4]),
        .I3(r15[20]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[20]),
        .O(\q_reg[1]_10 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_43 
       (.I0(r15[12]),
        .I1(rd20[12]),
        .I2(Instr[4]),
        .I3(r15[28]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[28]),
        .O(\addressM[31]_INST_0_i_43_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_44 
       (.I0(writeDataM[2]),
        .I1(writeDataM[18]),
        .I2(Instr[3]),
        .I3(writeDataM[10]),
        .I4(Instr[4]),
        .I5(writeDataM_27_sn_1),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_45 
       (.I0(r15[6]),
        .I1(rd20[6]),
        .I2(Instr[4]),
        .I3(r15[22]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[22]),
        .O(\q_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_46 
       (.I0(r15[14]),
        .I1(rd20[14]),
        .I2(Instr[4]),
        .I3(r15[30]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[30]),
        .O(\addressM[31]_INST_0_i_46_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_49 
       (.I0(r15[3]),
        .I1(rd20[3]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[19]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[19]),
        .O(\q_reg[1]_16 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_51 
       (.I0(r15[11]),
        .I1(rd20[11]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[27]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[27]),
        .O(\q_reg[1]_14 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_52 
       (.I0(writeDataM[1]),
        .I1(writeDataM[17]),
        .I2(\q_reg[1]_19 ),
        .I3(writeDataM[9]),
        .I4(\q_reg[1]_20 ),
        .I5(writeDataM[25]),
        .O(\addressM[31]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_53 
       (.I0(r15[5]),
        .I1(rd20[5]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[21]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[21]),
        .O(\q_reg[1]_7 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_54 
       (.I0(r15[13]),
        .I1(rd20[13]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[29]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[29]),
        .O(\addressM[31]_INST_0_i_54_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_55 
       (.I0(writeDataM[0]),
        .I1(writeDataM[16]),
        .I2(\q_reg[1]_19 ),
        .I3(writeDataM[8]),
        .I4(\q_reg[1]_20 ),
        .I5(writeDataM[24]),
        .O(\addressM[31]_INST_0_i_55_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_56 
       (.I0(r15[4]),
        .I1(rd20[4]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[20]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[20]),
        .O(\q_reg[1]_12 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_57 
       (.I0(r15[12]),
        .I1(rd20[12]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[28]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[28]),
        .O(\addressM[31]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_58 
       (.I0(writeDataM[2]),
        .I1(writeDataM[18]),
        .I2(\q_reg[1]_19 ),
        .I3(writeDataM[10]),
        .I4(\q_reg[1]_20 ),
        .I5(writeDataM_27_sn_1),
        .O(\addressM[31]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_59 
       (.I0(r15[6]),
        .I1(rd20[6]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[22]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[22]),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_60 
       (.I0(r15[14]),
        .I1(rd20[14]),
        .I2(\q_reg[1]_20 ),
        .I3(r15[30]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[30]),
        .O(\addressM[31]_INST_0_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[31]_INST_0_i_7 
       (.I0(r15[30]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[30]),
        .O(SrcA[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[3]_INST_0_i_22 
       (.I0(\q_reg[0]_5 ),
        .I1(\q_reg[0]_6 ),
        .I2(Instr[2]),
        .I3(\q_reg[0]_7 ),
        .I4(Instr[3]),
        .I5(\addressM[3]_INST_0_i_23_n_0 ),
        .O(\q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[3]_INST_0_i_23 
       (.I0(r15[18]),
        .I1(rd20[18]),
        .I2(Instr[4]),
        .I3(r15[2]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[2]),
        .O(\addressM[3]_INST_0_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[3]_INST_0_i_5 
       (.I0(r15[2]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[2]),
        .O(SrcA[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[4]_INST_0_i_14 
       (.I0(r15[19]),
        .I1(rd20[19]),
        .I2(Instr[4]),
        .I3(r15[3]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[3]),
        .O(\q_reg[0]_15 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[4]_INST_0_i_5 
       (.I0(r15[3]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[3]),
        .O(SrcA[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[5]_INST_0_i_13 
       (.I0(r15[20]),
        .I1(rd20[20]),
        .I2(Instr[4]),
        .I3(r15[4]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[4]),
        .O(\q_reg[0]_12 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[5]_INST_0_i_5 
       (.I0(r15[4]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[4]),
        .O(SrcA[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[6]_INST_0_i_13 
       (.I0(r15[21]),
        .I1(rd20[21]),
        .I2(Instr[4]),
        .I3(r15[5]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[5]),
        .O(\q_reg[0]_9 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[6]_INST_0_i_5 
       (.I0(r15[5]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[5]),
        .O(SrcA[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[7]_INST_0_i_22 
       (.I0(r15[22]),
        .I1(rd20[22]),
        .I2(Instr[4]),
        .I3(r15[6]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[6]),
        .O(\q_reg[0]_6 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[7]_INST_0_i_5 
       (.I0(r15[6]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[6]),
        .O(SrcA[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[8]_INST_0_i_12 
       (.I0(r15[23]),
        .I1(rd20[23]),
        .I2(Instr[4]),
        .I3(r15[7]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[7]),
        .O(\q_reg[0]_16 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[8]_INST_0_i_5 
       (.I0(r15[7]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[7]),
        .O(SrcA[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[9]_INST_0_i_12 
       (.I0(r15[24]),
        .I1(rd20[24]),
        .I2(Instr[4]),
        .I3(r15[8]),
        .I4(\q_reg[1]_18 ),
        .I5(rd20[8]),
        .O(\q_reg[0]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[9]_INST_0_i_5 
       (.I0(r15[8]),
        .I1(\q_reg[0]_31 ),
        .I2(rd10[8]),
        .O(SrcA[8]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[10]_INST_0 
       (.I0(r15[9]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[9]),
        .O(writeDataM[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[11]_INST_0 
       (.I0(r15[10]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[10]),
        .O(writeDataM[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[12]_INST_0 
       (.I0(r15[11]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[11]),
        .O(writeDataM[11]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[13]_INST_0 
       (.I0(r15[12]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[12]),
        .O(writeDataM[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[14]_INST_0 
       (.I0(r15[13]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[13]),
        .O(writeDataM[13]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[15]_INST_0 
       (.I0(r15[14]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[14]),
        .O(writeDataM[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[16]_INST_0 
       (.I0(r15[15]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[15]),
        .O(writeDataM[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[17]_INST_0 
       (.I0(r15[16]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[16]),
        .O(writeDataM[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[18]_INST_0 
       (.I0(r15[17]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[17]),
        .O(writeDataM[17]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[19]_INST_0 
       (.I0(r15[18]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[18]),
        .O(writeDataM[18]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[1]_INST_0 
       (.I0(r15[0]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[0]),
        .O(writeDataM[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[20]_INST_0 
       (.I0(r15[19]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[19]),
        .O(writeDataM[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[21]_INST_0 
       (.I0(r15[20]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[20]),
        .O(writeDataM[20]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[22]_INST_0 
       (.I0(r15[21]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[21]),
        .O(writeDataM[21]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[23]_INST_0 
       (.I0(r15[22]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[22]),
        .O(writeDataM[22]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[24]_INST_0 
       (.I0(r15[23]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[23]),
        .O(writeDataM[23]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[25]_INST_0 
       (.I0(r15[24]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[24]),
        .O(writeDataM[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[26]_INST_0 
       (.I0(r15[25]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[25]),
        .O(writeDataM[25]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[27]_INST_0 
       (.I0(r15[26]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[26]),
        .O(writeDataM_27_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[28]_INST_0 
       (.I0(r15[27]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[27]),
        .O(writeDataM[26]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[29]_INST_0 
       (.I0(r15[28]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[28]),
        .O(\writeDataM[29] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[2]_INST_0 
       (.I0(r15[1]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[1]),
        .O(writeDataM[1]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[30]_INST_0 
       (.I0(r15[29]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[29]),
        .O(writeDataM[27]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[31]_INST_0 
       (.I0(r15[30]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[30]),
        .O(\writeDataM[31] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[3]_INST_0 
       (.I0(r15[2]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[2]),
        .O(writeDataM[2]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[4]_INST_0 
       (.I0(r15[3]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[3]),
        .O(writeDataM[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[5]_INST_0 
       (.I0(r15[4]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[4]),
        .O(writeDataM[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[6]_INST_0 
       (.I0(r15[5]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[5]),
        .O(writeDataM[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[7]_INST_0 
       (.I0(r15[6]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[6]),
        .O(writeDataM[6]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[8]_INST_0 
       (.I0(r15[7]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[7]),
        .O(writeDataM[7]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \writeDataM[9]_INST_0 
       (.I0(r15[8]),
        .I1(\q_reg[1]_18 ),
        .I2(rd20[8]),
        .O(writeDataM[8]));
  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,Q[1],1'b0}),
        .O(d1_0[3:0]),
        .S({Q[3:2],S,Q[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[7:4]),
        .S(Q[7:4]));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[11:8]),
        .S(Q[11:8]));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[15:12]),
        .S(Q[15:12]));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[19:16]),
        .S(Q[19:16]));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[23:20]),
        .S(Q[23:20]));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(d1_0[27:24]),
        .S(Q[27:24]));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],d1_0[30:28]}),
        .S({1'b0,Q[30:28]}));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1__0
       (.I0(d1_0[1]),
        .O(\q_reg[4] ));
endmodule

(* ORIG_REF_NAME = "adder" *) 
module design_1_top_0_0_adder_0
   (r15,
    d1_0,
    \q_reg[2] );
  output [30:0]r15;
  input [30:0]d1_0;
  input [0:0]\q_reg[2] ;

  wire [30:0]d1_0;
  wire [0:0]\q_reg[2] ;
  wire [30:0]r15;
  wire y_carry__0_n_0;
  wire y_carry__0_n_1;
  wire y_carry__0_n_2;
  wire y_carry__0_n_3;
  wire y_carry__1_n_0;
  wire y_carry__1_n_1;
  wire y_carry__1_n_2;
  wire y_carry__1_n_3;
  wire y_carry__2_n_0;
  wire y_carry__2_n_1;
  wire y_carry__2_n_2;
  wire y_carry__2_n_3;
  wire y_carry__3_n_0;
  wire y_carry__3_n_1;
  wire y_carry__3_n_2;
  wire y_carry__3_n_3;
  wire y_carry__4_n_0;
  wire y_carry__4_n_1;
  wire y_carry__4_n_2;
  wire y_carry__4_n_3;
  wire y_carry__5_n_0;
  wire y_carry__5_n_1;
  wire y_carry__5_n_2;
  wire y_carry__5_n_3;
  wire y_carry__6_n_2;
  wire y_carry__6_n_3;
  wire y_carry_n_0;
  wire y_carry_n_1;
  wire y_carry_n_2;
  wire y_carry_n_3;
  wire [3:2]NLW_y_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_y_carry__6_O_UNCONNECTED;

  CARRY4 y_carry
       (.CI(1'b0),
        .CO({y_carry_n_0,y_carry_n_1,y_carry_n_2,y_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,d1_0[1],1'b0}),
        .O(r15[3:0]),
        .S({d1_0[3:2],\q_reg[2] ,d1_0[0]}));
  CARRY4 y_carry__0
       (.CI(y_carry_n_0),
        .CO({y_carry__0_n_0,y_carry__0_n_1,y_carry__0_n_2,y_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[7:4]),
        .S(d1_0[7:4]));
  CARRY4 y_carry__1
       (.CI(y_carry__0_n_0),
        .CO({y_carry__1_n_0,y_carry__1_n_1,y_carry__1_n_2,y_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[11:8]),
        .S(d1_0[11:8]));
  CARRY4 y_carry__2
       (.CI(y_carry__1_n_0),
        .CO({y_carry__2_n_0,y_carry__2_n_1,y_carry__2_n_2,y_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[15:12]),
        .S(d1_0[15:12]));
  CARRY4 y_carry__3
       (.CI(y_carry__2_n_0),
        .CO({y_carry__3_n_0,y_carry__3_n_1,y_carry__3_n_2,y_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[19:16]),
        .S(d1_0[19:16]));
  CARRY4 y_carry__4
       (.CI(y_carry__3_n_0),
        .CO({y_carry__4_n_0,y_carry__4_n_1,y_carry__4_n_2,y_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[23:20]),
        .S(d1_0[23:20]));
  CARRY4 y_carry__5
       (.CI(y_carry__4_n_0),
        .CO({y_carry__5_n_0,y_carry__5_n_1,y_carry__5_n_2,y_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(r15[27:24]),
        .S(d1_0[27:24]));
  CARRY4 y_carry__6
       (.CI(y_carry__5_n_0),
        .CO({NLW_y_carry__6_CO_UNCONNECTED[3:2],y_carry__6_n_2,y_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_y_carry__6_O_UNCONNECTED[3],r15[30:28]}),
        .S({1'b0,d1_0[30:28]}));
endmodule

(* ORIG_REF_NAME = "alu" *) 
module design_1_top_0_0_alu
   (S,
    condinva,
    Q,
    \q_reg[0] ,
    rd10,
    ALUControl,
    carry,
    r15);
  output [0:0]S;
  output [31:0]condinva;
  input [0:0]Q;
  input \q_reg[0] ;
  input [31:0]rd10;
  input [1:0]ALUControl;
  input carry;
  input [30:0]r15;

  wire [1:0]ALUControl;
  wire [0:0]Q;
  wire [0:0]S;
  wire carry;
  wire [31:0]condinva;
  wire \q_reg[0] ;
  wire [30:0]r15;
  wire [31:0]rd10;

  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[11]_INST_0_i_11 
       (.I0(ALUControl[1]),
        .I1(rd10[11]),
        .I2(\q_reg[0] ),
        .I3(r15[10]),
        .O(condinva[11]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[11]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[10]),
        .I2(\q_reg[0] ),
        .I3(r15[9]),
        .O(condinva[10]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[11]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[9]),
        .I2(\q_reg[0] ),
        .I3(r15[8]),
        .O(condinva[9]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[11]_INST_0_i_14 
       (.I0(ALUControl[1]),
        .I1(rd10[8]),
        .I2(\q_reg[0] ),
        .I3(r15[7]),
        .O(condinva[8]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[15]_INST_0_i_10 
       (.I0(ALUControl[1]),
        .I1(rd10[15]),
        .I2(\q_reg[0] ),
        .I3(r15[14]),
        .O(condinva[15]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[15]_INST_0_i_11 
       (.I0(ALUControl[1]),
        .I1(rd10[14]),
        .I2(\q_reg[0] ),
        .I3(r15[13]),
        .O(condinva[14]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[15]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[13]),
        .I2(\q_reg[0] ),
        .I3(r15[12]),
        .O(condinva[13]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[15]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[12]),
        .I2(\q_reg[0] ),
        .I3(r15[11]),
        .O(condinva[12]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[19]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[19]),
        .I2(\q_reg[0] ),
        .I3(r15[18]),
        .O(condinva[19]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[19]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[18]),
        .I2(\q_reg[0] ),
        .I3(r15[17]),
        .O(condinva[18]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[19]_INST_0_i_14 
       (.I0(ALUControl[1]),
        .I1(rd10[17]),
        .I2(\q_reg[0] ),
        .I3(r15[16]),
        .O(condinva[17]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[19]_INST_0_i_15 
       (.I0(ALUControl[1]),
        .I1(rd10[16]),
        .I2(\q_reg[0] ),
        .I3(r15[15]),
        .O(condinva[16]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[23]_INST_0_i_10 
       (.I0(ALUControl[1]),
        .I1(rd10[23]),
        .I2(\q_reg[0] ),
        .I3(r15[22]),
        .O(condinva[23]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[23]_INST_0_i_11 
       (.I0(ALUControl[1]),
        .I1(rd10[22]),
        .I2(\q_reg[0] ),
        .I3(r15[21]),
        .O(condinva[22]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[23]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[21]),
        .I2(\q_reg[0] ),
        .I3(r15[20]),
        .O(condinva[21]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[23]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[20]),
        .I2(\q_reg[0] ),
        .I3(r15[19]),
        .O(condinva[20]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[27]_INST_0_i_11 
       (.I0(ALUControl[1]),
        .I1(rd10[27]),
        .I2(\q_reg[0] ),
        .I3(r15[26]),
        .O(condinva[27]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[27]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[26]),
        .I2(\q_reg[0] ),
        .I3(r15[25]),
        .O(condinva[26]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[27]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[25]),
        .I2(\q_reg[0] ),
        .I3(r15[24]),
        .O(condinva[25]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[27]_INST_0_i_14 
       (.I0(ALUControl[1]),
        .I1(rd10[24]),
        .I2(\q_reg[0] ),
        .I3(r15[23]),
        .O(condinva[24]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[31]_INST_0_i_17 
       (.I0(ALUControl[1]),
        .I1(rd10[31]),
        .I2(\q_reg[0] ),
        .I3(r15[30]),
        .O(condinva[31]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[31]_INST_0_i_18 
       (.I0(ALUControl[1]),
        .I1(rd10[30]),
        .I2(\q_reg[0] ),
        .I3(r15[29]),
        .O(condinva[30]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[31]_INST_0_i_19 
       (.I0(ALUControl[1]),
        .I1(rd10[29]),
        .I2(\q_reg[0] ),
        .I3(r15[28]),
        .O(condinva[29]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[31]_INST_0_i_20 
       (.I0(ALUControl[1]),
        .I1(rd10[28]),
        .I2(\q_reg[0] ),
        .I3(r15[27]),
        .O(condinva[28]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[3]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[3]),
        .I2(\q_reg[0] ),
        .I3(r15[2]),
        .O(condinva[3]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[3]_INST_0_i_14 
       (.I0(ALUControl[1]),
        .I1(rd10[2]),
        .I2(\q_reg[0] ),
        .I3(r15[1]),
        .O(condinva[2]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[3]_INST_0_i_15 
       (.I0(ALUControl[1]),
        .I1(rd10[1]),
        .I2(\q_reg[0] ),
        .I3(r15[0]),
        .O(condinva[1]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[3]_INST_0_i_16 
       (.I0(ALUControl[1]),
        .I1(rd10[0]),
        .I2(\q_reg[0] ),
        .I3(Q),
        .O(condinva[0]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[7]_INST_0_i_11 
       (.I0(ALUControl[1]),
        .I1(rd10[7]),
        .I2(\q_reg[0] ),
        .I3(r15[6]),
        .O(condinva[7]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[7]_INST_0_i_12 
       (.I0(ALUControl[1]),
        .I1(rd10[6]),
        .I2(\q_reg[0] ),
        .I3(r15[5]),
        .O(condinva[6]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[7]_INST_0_i_13 
       (.I0(ALUControl[1]),
        .I1(rd10[5]),
        .I2(\q_reg[0] ),
        .I3(r15[4]),
        .O(condinva[5]));
  LUT4 #(
    .INIT(16'h56A6)) 
    \addressM[7]_INST_0_i_14 
       (.I0(ALUControl[1]),
        .I1(rd10[4]),
        .I2(\q_reg[0] ),
        .I3(r15[3]),
        .O(condinva[4]));
  LUT6 #(
    .INIT(64'hB8B847B8474747B8)) 
    sum
       (.I0(Q),
        .I1(\q_reg[0] ),
        .I2(rd10[0]),
        .I3(ALUControl[0]),
        .I4(ALUControl[1]),
        .I5(carry),
        .O(S));
endmodule

(* ORIG_REF_NAME = "arm" *) 
module design_1_top_0_0_arm
   (out,
    \writeDataM[31] ,
    writeDataM_0_sp_1,
    addressM,
    \FSM_sequential_CURRENT_STATE_reg[0] ,
    MemWrite,
    \writeDataM[29] ,
    writeDataM_27_sp_1,
    writeDataM,
    readDataM,
    doneM,
    \FSM_sequential_CURRENT_STATE_reg[2] ,
    clk,
    reset,
    E);
  output [0:0]out;
  output \writeDataM[31] ;
  output writeDataM_0_sp_1;
  output [31:0]addressM;
  output \FSM_sequential_CURRENT_STATE_reg[0] ;
  output MemWrite;
  output \writeDataM[29] ;
  output writeDataM_27_sp_1;
  output [27:0]writeDataM;
  input [31:0]readDataM;
  input doneM;
  input [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  input clk;
  input reset;
  input [0:0]E;

  wire [0:0]E;
  wire \FSM_sequential_CURRENT_STATE_reg[0] ;
  wire [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  wire [31:28]Instr;
  wire MemWrite;
  wire [31:0]addressM;
  wire c_n_1;
  wire c_n_3;
  wire carry;
  wire \cl/CondEx ;
  wire clk;
  wire data4;
  wire doneM;
  wire dp_n_71;
  wire dp_n_72;
  wire dp_n_73;
  wire dp_n_74;
  wire [0:0]out;
  wire [31:0]readDataM;
  wire reset;
  wire [27:0]writeDataM;
  wire \writeDataM[29] ;
  wire \writeDataM[31] ;
  wire writeDataM_0_sn_1;
  wire writeDataM_27_sn_1;

  assign writeDataM_0_sp_1 = writeDataM_0_sn_1;
  assign writeDataM_27_sp_1 = writeDataM_27_sn_1;
  design_1_top_0_0_controller c
       (.CondEx(\cl/CondEx ),
        .carry(carry),
        .clk(clk),
        .data4(data4),
        .out(Instr),
        .\q_reg[0] (c_n_1),
        .\q_reg[0]_0 (c_n_3),
        .\q_reg[0]_1 (dp_n_72),
        .\q_reg[0]_2 (dp_n_74),
        .\q_reg[1] (dp_n_71),
        .\q_reg[1]_0 (dp_n_73),
        .reset(reset));
  design_1_top_0_0_datapath dp
       (.CondEx(\cl/CondEx ),
        .E(E),
        .\FSM_sequential_CURRENT_STATE_reg[0] (\FSM_sequential_CURRENT_STATE_reg[0] ),
        .\FSM_sequential_CURRENT_STATE_reg[2] (\FSM_sequential_CURRENT_STATE_reg[2] ),
        .MemWrite(MemWrite),
        .addressM(addressM),
        .carry(carry),
        .clk(clk),
        .data4(data4),
        .doneM(doneM),
        .out({Instr,out}),
        .\q_reg[0] (dp_n_72),
        .\q_reg[0]_0 (dp_n_74),
        .\q_reg[0]_1 (c_n_1),
        .\q_reg[0]_2 (c_n_3),
        .\q_reg[1] (dp_n_71),
        .\q_reg[1]_0 (dp_n_73),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM),
        .\writeDataM[29] (\writeDataM[29] ),
        .\writeDataM[31] (\writeDataM[31] ),
        .writeDataM_0_sp_1(writeDataM_0_sn_1),
        .writeDataM_27_sp_1(writeDataM_27_sn_1));
endmodule

(* ORIG_REF_NAME = "condlogic" *) 
module design_1_top_0_0_condlogic
   (carry,
    \q_reg[0] ,
    data4,
    \q_reg[0]_0 ,
    CondEx,
    \q_reg[1] ,
    clk,
    reset,
    \q_reg[0]_1 ,
    \q_reg[1]_0 ,
    \q_reg[0]_2 ,
    out);
  output carry;
  output \q_reg[0] ;
  output data4;
  output \q_reg[0]_0 ;
  output CondEx;
  input \q_reg[1] ;
  input clk;
  input reset;
  input \q_reg[0]_1 ;
  input \q_reg[1]_0 ;
  input \q_reg[0]_2 ;
  input [3:0]out;

  wire CondEx;
  wire carry;
  wire clk;
  wire data4;
  wire [3:0]out;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire reset;

  design_1_top_0_0_flopenr flagreg0
       (.CondEx(CondEx),
        .carry(carry),
        .clk(clk),
        .data4(data4),
        .out(out),
        .\q_reg[0]_0 (\q_reg[0] ),
        .\q_reg[0]_1 (\q_reg[0]_1 ),
        .\q_reg[0]_2 (\q_reg[0]_0 ),
        .\q_reg[1]_0 (\q_reg[1] ),
        .reset(reset));
  design_1_top_0_0_flopenr_1 flagreg1
       (.clk(clk),
        .data4(data4),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[0]_1 (\q_reg[0]_2 ),
        .\q_reg[1]_0 (\q_reg[1]_0 ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "controller" *) 
module design_1_top_0_0_controller
   (carry,
    \q_reg[0] ,
    data4,
    \q_reg[0]_0 ,
    CondEx,
    \q_reg[1] ,
    clk,
    reset,
    \q_reg[0]_1 ,
    \q_reg[1]_0 ,
    \q_reg[0]_2 ,
    out);
  output carry;
  output \q_reg[0] ;
  output data4;
  output \q_reg[0]_0 ;
  output CondEx;
  input \q_reg[1] ;
  input clk;
  input reset;
  input \q_reg[0]_1 ;
  input \q_reg[1]_0 ;
  input \q_reg[0]_2 ;
  input [3:0]out;

  wire CondEx;
  wire carry;
  wire clk;
  wire data4;
  wire [3:0]out;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire reset;

  design_1_top_0_0_condlogic cl
       (.CondEx(CondEx),
        .carry(carry),
        .clk(clk),
        .data4(data4),
        .out(out),
        .\q_reg[0] (\q_reg[0] ),
        .\q_reg[0]_0 (\q_reg[0]_0 ),
        .\q_reg[0]_1 (\q_reg[0]_1 ),
        .\q_reg[0]_2 (\q_reg[0]_2 ),
        .\q_reg[1] (\q_reg[1] ),
        .\q_reg[1]_0 (\q_reg[1]_0 ),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "datapath" *) 
module design_1_top_0_0_datapath
   (out,
    \writeDataM[31] ,
    writeDataM_0_sp_1,
    addressM,
    \FSM_sequential_CURRENT_STATE_reg[0] ,
    MemWrite,
    \writeDataM[29] ,
    writeDataM_27_sp_1,
    writeDataM,
    \q_reg[1] ,
    \q_reg[0] ,
    \q_reg[1]_0 ,
    \q_reg[0]_0 ,
    carry,
    readDataM,
    CondEx,
    doneM,
    \FSM_sequential_CURRENT_STATE_reg[2] ,
    \q_reg[0]_1 ,
    data4,
    \q_reg[0]_2 ,
    clk,
    E,
    reset);
  output [4:0]out;
  output \writeDataM[31] ;
  output writeDataM_0_sp_1;
  output [31:0]addressM;
  output \FSM_sequential_CURRENT_STATE_reg[0] ;
  output MemWrite;
  output \writeDataM[29] ;
  output writeDataM_27_sp_1;
  output [27:0]writeDataM;
  output \q_reg[1] ;
  output \q_reg[0] ;
  output \q_reg[1]_0 ;
  output \q_reg[0]_0 ;
  input carry;
  input [31:0]readDataM;
  input CondEx;
  input doneM;
  input [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  input \q_reg[0]_1 ;
  input data4;
  input \q_reg[0]_2 ;
  input clk;
  input [0:0]E;
  input reset;

  wire [2:0]ALUControl;
  wire CondEx;
  wire [0:0]E;
  wire \FSM_sequential_CURRENT_STATE_reg[0] ;
  wire [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  wire [11:7]Instr;
  wire MemWrite;
  wire [31:0]PC;
  wire [3:0]RA1;
  wire [3:0]RA2;
  wire [3:1]RA3;
  wire RegWrite;
  wire [31:1]SrcA;
  wire [31:0]addressM;
  wire alu_n_0;
  wire carry;
  wire clk;
  wire [31:0]condinva;
  wire [31:1]d1_0;
  wire data4;
  wire doneM;
  wire [4:0]out;
  wire pcadd1_n_100;
  wire pcadd1_n_101;
  wire pcadd1_n_102;
  wire pcadd1_n_103;
  wire pcadd1_n_104;
  wire pcadd1_n_105;
  wire pcadd1_n_106;
  wire pcadd1_n_107;
  wire pcadd1_n_108;
  wire pcadd1_n_109;
  wire pcadd1_n_110;
  wire pcadd1_n_111;
  wire pcadd1_n_112;
  wire pcadd1_n_113;
  wire pcadd1_n_114;
  wire pcadd1_n_115;
  wire pcadd1_n_116;
  wire pcadd1_n_117;
  wire pcadd1_n_118;
  wire pcadd1_n_119;
  wire pcadd1_n_120;
  wire pcadd1_n_121;
  wire pcadd1_n_122;
  wire pcadd1_n_123;
  wire pcadd1_n_125;
  wire pcadd1_n_126;
  wire pcadd1_n_127;
  wire pcadd1_n_31;
  wire pcadd1_n_32;
  wire pcadd1_n_33;
  wire pcadd1_n_34;
  wire pcadd1_n_35;
  wire pcadd1_n_36;
  wire pcadd1_n_67;
  wire pcadd1_n_68;
  wire pcadd1_n_69;
  wire pcadd1_n_70;
  wire pcadd1_n_71;
  wire pcadd1_n_72;
  wire pcadd1_n_73;
  wire pcadd1_n_74;
  wire pcadd1_n_75;
  wire pcadd1_n_76;
  wire pcadd1_n_77;
  wire pcadd1_n_78;
  wire pcadd1_n_79;
  wire pcadd1_n_80;
  wire pcadd1_n_81;
  wire pcadd1_n_82;
  wire pcadd1_n_83;
  wire pcadd1_n_84;
  wire pcadd1_n_85;
  wire pcadd1_n_86;
  wire pcadd1_n_88;
  wire pcadd1_n_89;
  wire pcadd1_n_90;
  wire pcadd1_n_91;
  wire pcadd1_n_92;
  wire pcadd1_n_93;
  wire pcadd1_n_94;
  wire pcadd1_n_95;
  wire pcadd1_n_96;
  wire pcadd1_n_97;
  wire pcadd1_n_98;
  wire pcadd1_n_99;
  wire pcreg_n_10;
  wire pcreg_n_11;
  wire pcreg_n_118;
  wire pcreg_n_12;
  wire pcreg_n_122;
  wire pcreg_n_123;
  wire pcreg_n_124;
  wire pcreg_n_125;
  wire pcreg_n_126;
  wire pcreg_n_3;
  wire pcreg_n_46;
  wire pcreg_n_9;
  wire \q_reg[0] ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[1] ;
  wire \q_reg[1]_0 ;
  wire [31:1]r15;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]readDataM;
  wire reset;
  wire [31:0]wd3;
  wire [27:0]writeDataM;
  wire \writeDataM[29] ;
  wire \writeDataM[31] ;
  wire writeDataM_0_sn_1;
  wire writeDataM_27_sn_1;
  wire [12:12]y01_in;

  assign writeDataM_0_sp_1 = writeDataM_0_sn_1;
  assign writeDataM_27_sp_1 = writeDataM_27_sn_1;
  design_1_top_0_0_alu alu
       (.ALUControl({ALUControl[2],ALUControl[0]}),
        .Q(PC[0]),
        .S(alu_n_0),
        .carry(carry),
        .condinva(condinva),
        .\q_reg[0] (pcreg_n_118),
        .r15(r15),
        .rd10(rd10));
  design_1_top_0_0_adder pcadd1
       (.Instr(Instr),
        .Q(PC[31:1]),
        .S(pcreg_n_122),
        .SrcA(SrcA),
        .d1_0(d1_0),
        .\q_reg[0] (pcadd1_n_31),
        .\q_reg[0]_0 (pcadd1_n_34),
        .\q_reg[0]_1 (pcadd1_n_71),
        .\q_reg[0]_10 (pcadd1_n_84),
        .\q_reg[0]_11 (pcadd1_n_91),
        .\q_reg[0]_12 (pcadd1_n_92),
        .\q_reg[0]_13 (pcadd1_n_93),
        .\q_reg[0]_14 (pcadd1_n_97),
        .\q_reg[0]_15 (pcadd1_n_98),
        .\q_reg[0]_16 (pcadd1_n_99),
        .\q_reg[0]_17 (pcadd1_n_102),
        .\q_reg[0]_18 (pcadd1_n_113),
        .\q_reg[0]_19 (pcadd1_n_118),
        .\q_reg[0]_2 (pcadd1_n_72),
        .\q_reg[0]_20 (pcadd1_n_120),
        .\q_reg[0]_21 (pcadd1_n_121),
        .\q_reg[0]_22 (pcadd1_n_122),
        .\q_reg[0]_23 (pcadd1_n_123),
        .\q_reg[0]_24 (pcadd1_n_125),
        .\q_reg[0]_25 (pcadd1_n_126),
        .\q_reg[0]_26 (pcadd1_n_127),
        .\q_reg[0]_27 (pcreg_n_12),
        .\q_reg[0]_28 (pcreg_n_124),
        .\q_reg[0]_29 (pcreg_n_46),
        .\q_reg[0]_3 (pcadd1_n_73),
        .\q_reg[0]_30 (pcreg_n_125),
        .\q_reg[0]_31 (pcreg_n_118),
        .\q_reg[0]_4 (pcadd1_n_74),
        .\q_reg[0]_5 (pcadd1_n_75),
        .\q_reg[0]_6 (pcadd1_n_76),
        .\q_reg[0]_7 (pcadd1_n_77),
        .\q_reg[0]_8 (pcadd1_n_82),
        .\q_reg[0]_9 (pcadd1_n_83),
        .\q_reg[19] (pcadd1_n_32),
        .\q_reg[19]_0 (pcadd1_n_33),
        .\q_reg[19]_1 (pcadd1_n_35),
        .\q_reg[19]_2 (pcadd1_n_67),
        .\q_reg[1] (pcadd1_n_68),
        .\q_reg[1]_0 (pcadd1_n_69),
        .\q_reg[1]_1 (pcadd1_n_70),
        .\q_reg[1]_10 (pcadd1_n_90),
        .\q_reg[1]_11 (pcadd1_n_94),
        .\q_reg[1]_12 (pcadd1_n_95),
        .\q_reg[1]_13 (pcadd1_n_96),
        .\q_reg[1]_14 (pcadd1_n_100),
        .\q_reg[1]_15 (pcadd1_n_110),
        .\q_reg[1]_16 (pcadd1_n_111),
        .\q_reg[1]_17 (pcreg_n_123),
        .\q_reg[1]_18 (pcreg_n_9),
        .\q_reg[1]_19 (pcreg_n_11),
        .\q_reg[1]_2 (pcadd1_n_78),
        .\q_reg[1]_20 (pcreg_n_10),
        .\q_reg[1]_21 (pcreg_n_126),
        .\q_reg[1]_3 (pcadd1_n_79),
        .\q_reg[1]_4 (pcadd1_n_80),
        .\q_reg[1]_5 (pcadd1_n_81),
        .\q_reg[1]_6 (pcadd1_n_85),
        .\q_reg[1]_7 (pcadd1_n_86),
        .\q_reg[1]_8 (pcadd1_n_88),
        .\q_reg[1]_9 (pcadd1_n_89),
        .\q_reg[24] (pcadd1_n_108),
        .\q_reg[24]_0 (pcadd1_n_109),
        .\q_reg[25] (pcadd1_n_106),
        .\q_reg[25]_0 (pcadd1_n_107),
        .\q_reg[25]_1 (pcadd1_n_117),
        .\q_reg[25]_2 (pcadd1_n_119),
        .\q_reg[26] (pcadd1_n_104),
        .\q_reg[26]_0 (pcadd1_n_105),
        .\q_reg[26]_1 (pcadd1_n_115),
        .\q_reg[26]_2 (pcadd1_n_116),
        .\q_reg[27] (pcadd1_n_101),
        .\q_reg[27]_0 (pcadd1_n_103),
        .\q_reg[27]_1 (pcadd1_n_112),
        .\q_reg[27]_2 (pcadd1_n_114),
        .\q_reg[4] (pcadd1_n_36),
        .r15(r15),
        .rd10(rd10[31:1]),
        .rd20(rd20[31:1]),
        .writeDataM(writeDataM),
        .\writeDataM[29] (\writeDataM[29] ),
        .\writeDataM[31] (\writeDataM[31] ),
        .writeDataM_27_sp_1(writeDataM_27_sn_1),
        .y01_in(y01_in));
  design_1_top_0_0_adder_0 pcadd2
       (.d1_0(d1_0),
        .\q_reg[2] (pcadd1_n_36),
        .r15(r15));
  design_1_top_0_0_flopenr__parameterized0 pcreg
       (.ADDRA(RA2),
        .ALUControl({ALUControl[2],ALUControl[0]}),
        .CondEx(CondEx),
        .E(E),
        .\FSM_sequential_CURRENT_STATE_reg[0] (\FSM_sequential_CURRENT_STATE_reg[0] ),
        .\FSM_sequential_CURRENT_STATE_reg[2] (\FSM_sequential_CURRENT_STATE_reg[2] ),
        .MemWrite(MemWrite),
        .Q(PC),
        .RegWrite(RegWrite),
        .S(pcreg_n_122),
        .addressM(addressM),
        .carry(carry),
        .clk(clk),
        .condinva(condinva),
        .d1_0(d1_0),
        .data4(data4),
        .doneM(doneM),
        .out(out),
        .\q_reg[0]_0 (pcreg_n_46),
        .\q_reg[0]_1 (pcreg_n_118),
        .\q_reg[0]_10 (pcadd1_n_120),
        .\q_reg[0]_11 (pcadd1_n_85),
        .\q_reg[0]_12 (pcadd1_n_94),
        .\q_reg[0]_13 (pcadd1_n_78),
        .\q_reg[0]_14 (pcadd1_n_102),
        .\q_reg[0]_15 (pcadd1_n_122),
        .\q_reg[0]_16 (pcadd1_n_123),
        .\q_reg[0]_17 (pcadd1_n_121),
        .\q_reg[0]_18 (pcadd1_n_71),
        .\q_reg[0]_19 (alu_n_0),
        .\q_reg[0]_2 (pcreg_n_124),
        .\q_reg[0]_20 (\q_reg[0]_1 ),
        .\q_reg[0]_21 (\q_reg[0]_2 ),
        .\q_reg[0]_3 (pcreg_n_125),
        .\q_reg[0]_4 (pcreg_n_126),
        .\q_reg[0]_5 (RA1),
        .\q_reg[0]_6 (\q_reg[0] ),
        .\q_reg[0]_7 (\q_reg[0]_0 ),
        .\q_reg[0]_8 (y01_in),
        .\q_reg[0]_9 (pcadd1_n_67),
        .\q_reg[12]_0 (pcadd1_n_100),
        .\q_reg[12]_1 (pcadd1_n_103),
        .\q_reg[12]_2 (pcadd1_n_105),
        .\q_reg[12]_3 (pcadd1_n_107),
        .\q_reg[18]_0 (pcreg_n_123),
        .\q_reg[1]_0 (Instr),
        .\q_reg[1]_1 (pcreg_n_9),
        .\q_reg[1]_10 (pcadd1_n_31),
        .\q_reg[1]_11 (pcadd1_n_33),
        .\q_reg[1]_12 (pcadd1_n_80),
        .\q_reg[1]_13 (pcadd1_n_88),
        .\q_reg[1]_14 (pcadd1_n_68),
        .\q_reg[1]_15 (pcadd1_n_75),
        .\q_reg[1]_16 (pcadd1_n_77),
        .\q_reg[1]_17 (pcadd1_n_76),
        .\q_reg[1]_18 (pcadd1_n_72),
        .\q_reg[1]_19 (pcadd1_n_74),
        .\q_reg[1]_2 (pcreg_n_10),
        .\q_reg[1]_20 (pcadd1_n_73),
        .\q_reg[1]_21 (pcadd1_n_82),
        .\q_reg[1]_22 (pcadd1_n_84),
        .\q_reg[1]_23 (pcadd1_n_83),
        .\q_reg[1]_24 (pcadd1_n_91),
        .\q_reg[1]_25 (pcadd1_n_93),
        .\q_reg[1]_26 (pcadd1_n_92),
        .\q_reg[1]_27 (pcadd1_n_110),
        .\q_reg[1]_28 (pcadd1_n_96),
        .\q_reg[1]_29 (pcadd1_n_97),
        .\q_reg[1]_3 (pcreg_n_11),
        .\q_reg[1]_30 (pcadd1_n_99),
        .\q_reg[1]_31 (pcadd1_n_98),
        .\q_reg[1]_32 (pcadd1_n_89),
        .\q_reg[1]_33 (pcadd1_n_69),
        .\q_reg[1]_34 (pcadd1_n_70),
        .\q_reg[1]_35 (pcadd1_n_112),
        .\q_reg[1]_36 (pcadd1_n_101),
        .\q_reg[1]_37 (pcadd1_n_81),
        .\q_reg[1]_38 (pcadd1_n_115),
        .\q_reg[1]_39 (pcadd1_n_104),
        .\q_reg[1]_4 (pcreg_n_12),
        .\q_reg[1]_40 (pcadd1_n_90),
        .\q_reg[1]_41 (pcadd1_n_117),
        .\q_reg[1]_42 (pcadd1_n_106),
        .\q_reg[1]_43 (pcadd1_n_108),
        .\q_reg[1]_44 (pcadd1_n_113),
        .\q_reg[1]_45 (pcadd1_n_118),
        .\q_reg[1]_46 (pcadd1_n_126),
        .\q_reg[1]_47 (pcadd1_n_127),
        .\q_reg[1]_48 (pcadd1_n_125),
        .\q_reg[1]_5 (\q_reg[1] ),
        .\q_reg[1]_6 (\q_reg[1]_0 ),
        .\q_reg[1]_7 (pcadd1_n_34),
        .\q_reg[1]_8 (pcadd1_n_32),
        .\q_reg[1]_9 (pcadd1_n_35),
        .\q_reg[28]_0 (writeDataM_27_sn_1),
        .\q_reg[2]_0 (pcadd1_n_111),
        .\q_reg[2]_1 (pcadd1_n_114),
        .\q_reg[2]_2 (pcadd1_n_116),
        .\q_reg[2]_3 (pcadd1_n_119),
        .\q_reg[31]_0 (\writeDataM[31] ),
        .\q_reg[31]_1 (SrcA),
        .\q_reg[31]_2 (\writeDataM[29] ),
        .\q_reg[8]_0 (pcadd1_n_79),
        .\q_reg[8]_1 (pcadd1_n_86),
        .\q_reg[8]_2 (pcadd1_n_95),
        .\q_reg[8]_3 (pcadd1_n_109),
        .r15(r15),
        .rd10(rd10),
        .rd20(rd20),
        .readDataM(readDataM),
        .reset(reset),
        .wa3({RA3,pcreg_n_3}),
        .wd3(wd3),
        .writeDataM({writeDataM[27:23],writeDataM[15:14],writeDataM[12:11],writeDataM[7:0]}),
        .writeDataM_0_sp_1(writeDataM_0_sn_1));
  design_1_top_0_0_regfile rf
       (.ADDRA(RA2),
        .RegWrite(RegWrite),
        .clk(clk),
        .\q_reg[0] (RA1),
        .rd10(rd10),
        .rd20(rd20),
        .wa3({RA3,pcreg_n_3}),
        .wd3(wd3));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr
   (carry,
    \q_reg[0]_0 ,
    CondEx,
    \q_reg[1]_0 ,
    clk,
    reset,
    \q_reg[0]_1 ,
    out,
    \q_reg[0]_2 ,
    data4);
  output carry;
  output \q_reg[0]_0 ;
  output CondEx;
  input \q_reg[1]_0 ;
  input clk;
  input reset;
  input \q_reg[0]_1 ;
  input [3:0]out;
  input \q_reg[0]_2 ;
  input data4;

  wire CondEx;
  wire carry;
  wire \cc/ge__0 ;
  wire clk;
  wire data4;
  wire [3:0]out;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[1]_0 ;
  wire reset;
  wire rf_reg_r1_0_15_0_5_i_17_n_0;
  wire rf_reg_r1_0_15_0_5_i_18_n_0;
  wire rf_reg_r1_0_15_0_5_i_19_n_0;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[0]_1 ),
        .Q(\q_reg[0]_0 ));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_0 ),
        .Q(carry));
  MUXF7 rf_reg_r1_0_15_0_5_i_16
       (.I0(rf_reg_r1_0_15_0_5_i_17_n_0),
        .I1(rf_reg_r1_0_15_0_5_i_18_n_0),
        .O(CondEx),
        .S(out[3]));
  LUT6 #(
    .INIT(64'h4B78FFFF4B780000)) 
    rf_reg_r1_0_15_0_5_i_17
       (.I0(\q_reg[0]_0 ),
        .I1(out[1]),
        .I2(out[0]),
        .I3(data4),
        .I4(out[2]),
        .I5(rf_reg_r1_0_15_0_5_i_19_n_0),
        .O(rf_reg_r1_0_15_0_5_i_17_n_0));
  LUT6 #(
    .INIT(64'hF3CCC1FEFFC0FDC2)) 
    rf_reg_r1_0_15_0_5_i_18
       (.I0(carry),
        .I1(out[1]),
        .I2(out[2]),
        .I3(out[0]),
        .I4(\q_reg[0]_2 ),
        .I5(\cc/ge__0 ),
        .O(rf_reg_r1_0_15_0_5_i_18_n_0));
  LUT4 #(
    .INIT(16'h4B78)) 
    rf_reg_r1_0_15_0_5_i_19
       (.I0(carry),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\q_reg[0]_2 ),
        .O(rf_reg_r1_0_15_0_5_i_19_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    rf_reg_r1_0_15_0_5_i_20
       (.I0(\q_reg[0]_0 ),
        .I1(data4),
        .O(\cc/ge__0 ));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr_1
   (data4,
    \q_reg[0]_0 ,
    \q_reg[1]_0 ,
    clk,
    reset,
    \q_reg[0]_1 );
  output data4;
  output \q_reg[0]_0 ;
  input \q_reg[1]_0 ;
  input clk;
  input reset;
  input \q_reg[0]_1 ;

  wire clk;
  wire data4;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[1]_0 ;
  wire reset;

  FDCE \q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[0]_1 ),
        .Q(\q_reg[0]_0 ));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(reset),
        .D(\q_reg[1]_0 ),
        .Q(data4));
endmodule

(* ORIG_REF_NAME = "flopenr" *) 
module design_1_top_0_0_flopenr__parameterized0
   (wa3,
    \q_reg[1]_0 ,
    \q_reg[1]_1 ,
    \q_reg[1]_2 ,
    \q_reg[1]_3 ,
    \q_reg[1]_4 ,
    Q,
    writeDataM_0_sp_1,
    \q_reg[0]_0 ,
    addressM,
    out,
    wd3,
    ALUControl,
    \q_reg[0]_1 ,
    RegWrite,
    \FSM_sequential_CURRENT_STATE_reg[0] ,
    MemWrite,
    S,
    \q_reg[18]_0 ,
    \q_reg[0]_2 ,
    \q_reg[0]_3 ,
    \q_reg[0]_4 ,
    ADDRA,
    \q_reg[0]_5 ,
    \q_reg[1]_5 ,
    \q_reg[0]_6 ,
    \q_reg[1]_6 ,
    \q_reg[0]_7 ,
    \q_reg[31]_0 ,
    rd20,
    r15,
    readDataM,
    d1_0,
    rd10,
    \q_reg[1]_7 ,
    \q_reg[1]_8 ,
    \q_reg[1]_9 ,
    \q_reg[0]_8 ,
    \q_reg[31]_1 ,
    CondEx,
    doneM,
    \FSM_sequential_CURRENT_STATE_reg[2] ,
    \q_reg[31]_2 ,
    \q_reg[28]_0 ,
    \q_reg[1]_10 ,
    \q_reg[0]_9 ,
    \q_reg[1]_11 ,
    \q_reg[1]_12 ,
    \q_reg[1]_13 ,
    \q_reg[1]_14 ,
    \q_reg[0]_10 ,
    \q_reg[1]_15 ,
    \q_reg[1]_16 ,
    \q_reg[1]_17 ,
    \q_reg[1]_18 ,
    \q_reg[1]_19 ,
    \q_reg[1]_20 ,
    \q_reg[0]_11 ,
    \q_reg[0]_12 ,
    \q_reg[0]_13 ,
    writeDataM,
    \q_reg[1]_21 ,
    \q_reg[1]_22 ,
    \q_reg[1]_23 ,
    \q_reg[1]_24 ,
    \q_reg[1]_25 ,
    \q_reg[1]_26 ,
    \q_reg[1]_27 ,
    \q_reg[1]_28 ,
    \q_reg[1]_29 ,
    \q_reg[1]_30 ,
    \q_reg[1]_31 ,
    \q_reg[0]_14 ,
    \q_reg[2]_0 ,
    \q_reg[12]_0 ,
    \q_reg[1]_32 ,
    \q_reg[1]_33 ,
    \q_reg[1]_34 ,
    \q_reg[1]_35 ,
    \q_reg[1]_36 ,
    \q_reg[8]_0 ,
    \q_reg[2]_1 ,
    \q_reg[12]_1 ,
    \q_reg[1]_37 ,
    \q_reg[1]_38 ,
    \q_reg[1]_39 ,
    \q_reg[8]_1 ,
    \q_reg[2]_2 ,
    \q_reg[12]_2 ,
    \q_reg[1]_40 ,
    \q_reg[1]_41 ,
    \q_reg[1]_42 ,
    \q_reg[8]_2 ,
    \q_reg[2]_3 ,
    \q_reg[12]_3 ,
    \q_reg[1]_43 ,
    \q_reg[8]_3 ,
    \q_reg[1]_44 ,
    \q_reg[1]_45 ,
    \q_reg[0]_15 ,
    \q_reg[1]_46 ,
    \q_reg[0]_16 ,
    \q_reg[1]_47 ,
    \q_reg[0]_17 ,
    \q_reg[1]_48 ,
    \q_reg[0]_18 ,
    condinva,
    \q_reg[0]_19 ,
    carry,
    \q_reg[0]_20 ,
    data4,
    \q_reg[0]_21 ,
    E,
    clk,
    reset);
  output [3:0]wa3;
  output [4:0]\q_reg[1]_0 ;
  output \q_reg[1]_1 ;
  output \q_reg[1]_2 ;
  output \q_reg[1]_3 ;
  output \q_reg[1]_4 ;
  output [31:0]Q;
  output writeDataM_0_sp_1;
  output \q_reg[0]_0 ;
  output [31:0]addressM;
  output [4:0]out;
  output [31:0]wd3;
  output [1:0]ALUControl;
  output \q_reg[0]_1 ;
  output RegWrite;
  output \FSM_sequential_CURRENT_STATE_reg[0] ;
  output MemWrite;
  output [0:0]S;
  output \q_reg[18]_0 ;
  output \q_reg[0]_2 ;
  output \q_reg[0]_3 ;
  output \q_reg[0]_4 ;
  output [3:0]ADDRA;
  output [3:0]\q_reg[0]_5 ;
  output \q_reg[1]_5 ;
  output \q_reg[0]_6 ;
  output \q_reg[1]_6 ;
  output \q_reg[0]_7 ;
  input \q_reg[31]_0 ;
  input [31:0]rd20;
  input [30:0]r15;
  input [31:0]readDataM;
  input [30:0]d1_0;
  input [31:0]rd10;
  input \q_reg[1]_7 ;
  input \q_reg[1]_8 ;
  input \q_reg[1]_9 ;
  input [0:0]\q_reg[0]_8 ;
  input [30:0]\q_reg[31]_1 ;
  input CondEx;
  input doneM;
  input [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  input \q_reg[31]_2 ;
  input \q_reg[28]_0 ;
  input \q_reg[1]_10 ;
  input \q_reg[0]_9 ;
  input \q_reg[1]_11 ;
  input \q_reg[1]_12 ;
  input \q_reg[1]_13 ;
  input \q_reg[1]_14 ;
  input \q_reg[0]_10 ;
  input \q_reg[1]_15 ;
  input \q_reg[1]_16 ;
  input \q_reg[1]_17 ;
  input \q_reg[1]_18 ;
  input \q_reg[1]_19 ;
  input \q_reg[1]_20 ;
  input \q_reg[0]_11 ;
  input \q_reg[0]_12 ;
  input \q_reg[0]_13 ;
  input [16:0]writeDataM;
  input \q_reg[1]_21 ;
  input \q_reg[1]_22 ;
  input \q_reg[1]_23 ;
  input \q_reg[1]_24 ;
  input \q_reg[1]_25 ;
  input \q_reg[1]_26 ;
  input \q_reg[1]_27 ;
  input \q_reg[1]_28 ;
  input \q_reg[1]_29 ;
  input \q_reg[1]_30 ;
  input \q_reg[1]_31 ;
  input \q_reg[0]_14 ;
  input \q_reg[2]_0 ;
  input \q_reg[12]_0 ;
  input \q_reg[1]_32 ;
  input \q_reg[1]_33 ;
  input \q_reg[1]_34 ;
  input \q_reg[1]_35 ;
  input \q_reg[1]_36 ;
  input \q_reg[8]_0 ;
  input \q_reg[2]_1 ;
  input \q_reg[12]_1 ;
  input \q_reg[1]_37 ;
  input \q_reg[1]_38 ;
  input \q_reg[1]_39 ;
  input \q_reg[8]_1 ;
  input \q_reg[2]_2 ;
  input \q_reg[12]_2 ;
  input \q_reg[1]_40 ;
  input \q_reg[1]_41 ;
  input \q_reg[1]_42 ;
  input \q_reg[8]_2 ;
  input \q_reg[2]_3 ;
  input \q_reg[12]_3 ;
  input \q_reg[1]_43 ;
  input \q_reg[8]_3 ;
  input \q_reg[1]_44 ;
  input \q_reg[1]_45 ;
  input \q_reg[0]_15 ;
  input \q_reg[1]_46 ;
  input \q_reg[0]_16 ;
  input \q_reg[1]_47 ;
  input \q_reg[0]_17 ;
  input \q_reg[1]_48 ;
  input \q_reg[0]_18 ;
  input [31:0]condinva;
  input [0:0]\q_reg[0]_19 ;
  input carry;
  input \q_reg[0]_20 ;
  input data4;
  input \q_reg[0]_21 ;
  input [0:0]E;
  input clk;
  input reset;

  wire [3:0]ADDRA;
  wire [1:0]ALUControl;
  wire [1:1]ALUControl__0;
  wire ALUFlags10_out;
  wire [1:1]ALUFlags2;
  wire [31:0]ALUResult;
  wire ALUSrc;
  wire CondEx;
  wire [0:0]E;
  wire \FSM_sequential_CURRENT_STATE_reg[0] ;
  wire [1:0]\FSM_sequential_CURRENT_STATE_reg[2] ;
  wire [27:0]Instr;
  wire MVN;
  wire MemWrite;
  wire PCS1;
  wire PCSrc;
  wire [31:0]Q;
  wire RegWrite;
  wire [0:0]S;
  wire Shift;
  wire [0:0]SrcA;
  wire [31:1]SrcB2;
  wire [0:0]SrcB2__0;
  wire [31:0]addressM;
  wire \addressM[0]_INST_0_i_3_n_0 ;
  wire \addressM[0]_INST_0_i_6_n_0 ;
  wire \addressM[0]_INST_0_i_7_n_0 ;
  wire \addressM[10]_INST_0_i_10_n_0 ;
  wire \addressM[10]_INST_0_i_11_n_0 ;
  wire \addressM[10]_INST_0_i_3_n_0 ;
  wire \addressM[10]_INST_0_i_7_n_0 ;
  wire \addressM[10]_INST_0_i_8_n_0 ;
  wire \addressM[10]_INST_0_i_9_n_0 ;
  wire \addressM[11]_INST_0_i_10_n_0 ;
  wire \addressM[11]_INST_0_i_15_n_0 ;
  wire \addressM[11]_INST_0_i_16_n_0 ;
  wire \addressM[11]_INST_0_i_17_n_0 ;
  wire \addressM[11]_INST_0_i_18_n_0 ;
  wire \addressM[11]_INST_0_i_19_n_0 ;
  wire \addressM[11]_INST_0_i_20_n_0 ;
  wire \addressM[11]_INST_0_i_21_n_0 ;
  wire \addressM[11]_INST_0_i_3_n_0 ;
  wire \addressM[11]_INST_0_i_7_n_0 ;
  wire \addressM[11]_INST_0_i_7_n_1 ;
  wire \addressM[11]_INST_0_i_7_n_2 ;
  wire \addressM[11]_INST_0_i_7_n_3 ;
  wire \addressM[11]_INST_0_i_9_n_0 ;
  wire \addressM[12]_INST_0_i_11_n_0 ;
  wire \addressM[12]_INST_0_i_3_n_0 ;
  wire \addressM[12]_INST_0_i_8_n_0 ;
  wire \addressM[13]_INST_0_i_11_n_0 ;
  wire \addressM[13]_INST_0_i_3_n_0 ;
  wire \addressM[13]_INST_0_i_7_n_0 ;
  wire \addressM[13]_INST_0_i_8_n_0 ;
  wire \addressM[14]_INST_0_i_11_n_0 ;
  wire \addressM[14]_INST_0_i_3_n_0 ;
  wire \addressM[14]_INST_0_i_7_n_0 ;
  wire \addressM[14]_INST_0_i_8_n_0 ;
  wire \addressM[15]_INST_0_i_14_n_0 ;
  wire \addressM[15]_INST_0_i_15_n_0 ;
  wire \addressM[15]_INST_0_i_16_n_0 ;
  wire \addressM[15]_INST_0_i_17_n_0 ;
  wire \addressM[15]_INST_0_i_20_n_0 ;
  wire \addressM[15]_INST_0_i_21_n_0 ;
  wire \addressM[15]_INST_0_i_22_n_0 ;
  wire \addressM[15]_INST_0_i_3_n_0 ;
  wire \addressM[15]_INST_0_i_6_n_0 ;
  wire \addressM[15]_INST_0_i_6_n_1 ;
  wire \addressM[15]_INST_0_i_6_n_2 ;
  wire \addressM[15]_INST_0_i_6_n_3 ;
  wire \addressM[15]_INST_0_i_8_n_0 ;
  wire \addressM[15]_INST_0_i_9_n_0 ;
  wire \addressM[16]_INST_0_i_10_n_0 ;
  wire \addressM[16]_INST_0_i_11_n_0 ;
  wire \addressM[16]_INST_0_i_12_n_0 ;
  wire \addressM[16]_INST_0_i_13_n_0 ;
  wire \addressM[16]_INST_0_i_14_n_0 ;
  wire \addressM[16]_INST_0_i_15_n_0 ;
  wire \addressM[16]_INST_0_i_16_n_0 ;
  wire \addressM[16]_INST_0_i_17_n_0 ;
  wire \addressM[16]_INST_0_i_18_n_0 ;
  wire \addressM[16]_INST_0_i_3_n_0 ;
  wire \addressM[16]_INST_0_i_6_n_0 ;
  wire \addressM[16]_INST_0_i_7_n_0 ;
  wire \addressM[16]_INST_0_i_9_n_0 ;
  wire \addressM[17]_INST_0_i_10_n_0 ;
  wire \addressM[17]_INST_0_i_11_n_0 ;
  wire \addressM[17]_INST_0_i_12_n_0 ;
  wire \addressM[17]_INST_0_i_13_n_0 ;
  wire \addressM[17]_INST_0_i_14_n_0 ;
  wire \addressM[17]_INST_0_i_15_n_0 ;
  wire \addressM[17]_INST_0_i_16_n_0 ;
  wire \addressM[17]_INST_0_i_17_n_0 ;
  wire \addressM[17]_INST_0_i_18_n_0 ;
  wire \addressM[17]_INST_0_i_19_n_0 ;
  wire \addressM[17]_INST_0_i_3_n_0 ;
  wire \addressM[17]_INST_0_i_6_n_0 ;
  wire \addressM[17]_INST_0_i_7_n_0 ;
  wire \addressM[17]_INST_0_i_9_n_0 ;
  wire \addressM[18]_INST_0_i_10_n_0 ;
  wire \addressM[18]_INST_0_i_11_n_0 ;
  wire \addressM[18]_INST_0_i_12_n_0 ;
  wire \addressM[18]_INST_0_i_13_n_0 ;
  wire \addressM[18]_INST_0_i_14_n_0 ;
  wire \addressM[18]_INST_0_i_15_n_0 ;
  wire \addressM[18]_INST_0_i_16_n_0 ;
  wire \addressM[18]_INST_0_i_17_n_0 ;
  wire \addressM[18]_INST_0_i_18_n_0 ;
  wire \addressM[18]_INST_0_i_19_n_0 ;
  wire \addressM[18]_INST_0_i_3_n_0 ;
  wire \addressM[18]_INST_0_i_6_n_0 ;
  wire \addressM[18]_INST_0_i_7_n_0 ;
  wire \addressM[18]_INST_0_i_9_n_0 ;
  wire \addressM[19]_INST_0_i_10_n_0 ;
  wire \addressM[19]_INST_0_i_16_n_0 ;
  wire \addressM[19]_INST_0_i_17_n_0 ;
  wire \addressM[19]_INST_0_i_18_n_0 ;
  wire \addressM[19]_INST_0_i_19_n_0 ;
  wire \addressM[19]_INST_0_i_20_n_0 ;
  wire \addressM[19]_INST_0_i_21_n_0 ;
  wire \addressM[19]_INST_0_i_22_n_0 ;
  wire \addressM[19]_INST_0_i_23_n_0 ;
  wire \addressM[19]_INST_0_i_24_n_0 ;
  wire \addressM[19]_INST_0_i_25_n_0 ;
  wire \addressM[19]_INST_0_i_27_n_0 ;
  wire \addressM[19]_INST_0_i_28_n_0 ;
  wire \addressM[19]_INST_0_i_29_n_0 ;
  wire \addressM[19]_INST_0_i_30_n_0 ;
  wire \addressM[19]_INST_0_i_31_n_0 ;
  wire \addressM[19]_INST_0_i_32_n_0 ;
  wire \addressM[19]_INST_0_i_33_n_0 ;
  wire \addressM[19]_INST_0_i_34_n_0 ;
  wire \addressM[19]_INST_0_i_35_n_0 ;
  wire \addressM[19]_INST_0_i_36_n_0 ;
  wire \addressM[19]_INST_0_i_37_n_0 ;
  wire \addressM[19]_INST_0_i_38_n_0 ;
  wire \addressM[19]_INST_0_i_3_n_0 ;
  wire \addressM[19]_INST_0_i_6_n_0 ;
  wire \addressM[19]_INST_0_i_6_n_1 ;
  wire \addressM[19]_INST_0_i_6_n_2 ;
  wire \addressM[19]_INST_0_i_6_n_3 ;
  wire \addressM[19]_INST_0_i_7_n_0 ;
  wire \addressM[19]_INST_0_i_8_n_0 ;
  wire \addressM[1]_INST_0_i_10_n_0 ;
  wire \addressM[1]_INST_0_i_11_n_0 ;
  wire \addressM[1]_INST_0_i_3_n_0 ;
  wire \addressM[1]_INST_0_i_6_n_0 ;
  wire \addressM[1]_INST_0_i_7_n_0 ;
  wire \addressM[1]_INST_0_i_8_n_0 ;
  wire \addressM[1]_INST_0_i_9_n_0 ;
  wire \addressM[20]_INST_0_i_11_n_0 ;
  wire \addressM[20]_INST_0_i_12_n_0 ;
  wire \addressM[20]_INST_0_i_14_n_0 ;
  wire \addressM[20]_INST_0_i_15_n_0 ;
  wire \addressM[20]_INST_0_i_16_n_0 ;
  wire \addressM[20]_INST_0_i_3_n_0 ;
  wire \addressM[20]_INST_0_i_6_n_0 ;
  wire \addressM[20]_INST_0_i_7_n_0 ;
  wire \addressM[20]_INST_0_i_9_n_0 ;
  wire \addressM[21]_INST_0_i_10_n_0 ;
  wire \addressM[21]_INST_0_i_11_n_0 ;
  wire \addressM[21]_INST_0_i_12_n_0 ;
  wire \addressM[21]_INST_0_i_14_n_0 ;
  wire \addressM[21]_INST_0_i_15_n_0 ;
  wire \addressM[21]_INST_0_i_3_n_0 ;
  wire \addressM[21]_INST_0_i_6_n_0 ;
  wire \addressM[21]_INST_0_i_7_n_0 ;
  wire \addressM[21]_INST_0_i_9_n_0 ;
  wire \addressM[22]_INST_0_i_10_n_0 ;
  wire \addressM[22]_INST_0_i_12_n_0 ;
  wire \addressM[22]_INST_0_i_13_n_0 ;
  wire \addressM[22]_INST_0_i_14_n_0 ;
  wire \addressM[22]_INST_0_i_3_n_0 ;
  wire \addressM[22]_INST_0_i_7_n_0 ;
  wire \addressM[22]_INST_0_i_8_n_0 ;
  wire \addressM[22]_INST_0_i_9_n_0 ;
  wire \addressM[23]_INST_0_i_14_n_0 ;
  wire \addressM[23]_INST_0_i_15_n_0 ;
  wire \addressM[23]_INST_0_i_16_n_0 ;
  wire \addressM[23]_INST_0_i_17_n_0 ;
  wire \addressM[23]_INST_0_i_18_n_0 ;
  wire \addressM[23]_INST_0_i_19_n_0 ;
  wire \addressM[23]_INST_0_i_21_n_0 ;
  wire \addressM[23]_INST_0_i_22_n_0 ;
  wire \addressM[23]_INST_0_i_3_n_0 ;
  wire \addressM[23]_INST_0_i_6_n_0 ;
  wire \addressM[23]_INST_0_i_6_n_1 ;
  wire \addressM[23]_INST_0_i_6_n_2 ;
  wire \addressM[23]_INST_0_i_6_n_3 ;
  wire \addressM[23]_INST_0_i_8_n_0 ;
  wire \addressM[23]_INST_0_i_9_n_0 ;
  wire \addressM[24]_INST_0_i_10_n_0 ;
  wire \addressM[24]_INST_0_i_11_n_0 ;
  wire \addressM[24]_INST_0_i_12_n_0 ;
  wire \addressM[24]_INST_0_i_13_n_0 ;
  wire \addressM[24]_INST_0_i_14_n_0 ;
  wire \addressM[24]_INST_0_i_3_n_0 ;
  wire \addressM[24]_INST_0_i_6_n_0 ;
  wire \addressM[24]_INST_0_i_8_n_0 ;
  wire \addressM[24]_INST_0_i_9_n_0 ;
  wire \addressM[25]_INST_0_i_10_n_0 ;
  wire \addressM[25]_INST_0_i_11_n_0 ;
  wire \addressM[25]_INST_0_i_12_n_0 ;
  wire \addressM[25]_INST_0_i_13_n_0 ;
  wire \addressM[25]_INST_0_i_14_n_0 ;
  wire \addressM[25]_INST_0_i_3_n_0 ;
  wire \addressM[25]_INST_0_i_6_n_0 ;
  wire \addressM[25]_INST_0_i_8_n_0 ;
  wire \addressM[25]_INST_0_i_9_n_0 ;
  wire \addressM[26]_INST_0_i_10_n_0 ;
  wire \addressM[26]_INST_0_i_11_n_0 ;
  wire \addressM[26]_INST_0_i_12_n_0 ;
  wire \addressM[26]_INST_0_i_13_n_0 ;
  wire \addressM[26]_INST_0_i_14_n_0 ;
  wire \addressM[26]_INST_0_i_15_n_0 ;
  wire \addressM[26]_INST_0_i_16_n_0 ;
  wire \addressM[26]_INST_0_i_3_n_0 ;
  wire \addressM[26]_INST_0_i_6_n_0 ;
  wire \addressM[26]_INST_0_i_8_n_0 ;
  wire \addressM[26]_INST_0_i_9_n_0 ;
  wire \addressM[27]_INST_0_i_10_n_0 ;
  wire \addressM[27]_INST_0_i_15_n_0 ;
  wire \addressM[27]_INST_0_i_16_n_0 ;
  wire \addressM[27]_INST_0_i_17_n_0 ;
  wire \addressM[27]_INST_0_i_18_n_0 ;
  wire \addressM[27]_INST_0_i_19_n_0 ;
  wire \addressM[27]_INST_0_i_20_n_0 ;
  wire \addressM[27]_INST_0_i_21_n_0 ;
  wire \addressM[27]_INST_0_i_22_n_0 ;
  wire \addressM[27]_INST_0_i_23_n_0 ;
  wire \addressM[27]_INST_0_i_24_n_0 ;
  wire \addressM[27]_INST_0_i_25_n_0 ;
  wire \addressM[27]_INST_0_i_26_n_0 ;
  wire \addressM[27]_INST_0_i_27_n_0 ;
  wire \addressM[27]_INST_0_i_29_n_0 ;
  wire \addressM[27]_INST_0_i_32_n_0 ;
  wire \addressM[27]_INST_0_i_33_n_0 ;
  wire \addressM[27]_INST_0_i_35_n_0 ;
  wire \addressM[27]_INST_0_i_3_n_0 ;
  wire \addressM[27]_INST_0_i_6_n_0 ;
  wire \addressM[27]_INST_0_i_6_n_1 ;
  wire \addressM[27]_INST_0_i_6_n_2 ;
  wire \addressM[27]_INST_0_i_6_n_3 ;
  wire \addressM[27]_INST_0_i_7_n_0 ;
  wire \addressM[27]_INST_0_i_9_n_0 ;
  wire \addressM[28]_INST_0_i_10_n_0 ;
  wire \addressM[28]_INST_0_i_12_n_0 ;
  wire \addressM[28]_INST_0_i_13_n_0 ;
  wire \addressM[28]_INST_0_i_14_n_0 ;
  wire \addressM[28]_INST_0_i_3_n_0 ;
  wire \addressM[28]_INST_0_i_6_n_0 ;
  wire \addressM[28]_INST_0_i_8_n_0 ;
  wire \addressM[28]_INST_0_i_9_n_0 ;
  wire \addressM[29]_INST_0_i_10_n_0 ;
  wire \addressM[29]_INST_0_i_11_n_0 ;
  wire \addressM[29]_INST_0_i_12_n_0 ;
  wire \addressM[29]_INST_0_i_13_n_0 ;
  wire \addressM[29]_INST_0_i_16_n_0 ;
  wire \addressM[29]_INST_0_i_3_n_0 ;
  wire \addressM[29]_INST_0_i_6_n_0 ;
  wire \addressM[29]_INST_0_i_8_n_0 ;
  wire \addressM[29]_INST_0_i_9_n_0 ;
  wire \addressM[2]_INST_0_i_10_n_0 ;
  wire \addressM[2]_INST_0_i_11_n_0 ;
  wire \addressM[2]_INST_0_i_3_n_0 ;
  wire \addressM[2]_INST_0_i_6_n_0 ;
  wire \addressM[2]_INST_0_i_7_n_0 ;
  wire \addressM[2]_INST_0_i_8_n_0 ;
  wire \addressM[2]_INST_0_i_9_n_0 ;
  wire \addressM[30]_INST_0_i_10_n_0 ;
  wire \addressM[30]_INST_0_i_11_n_0 ;
  wire \addressM[30]_INST_0_i_12_n_0 ;
  wire \addressM[30]_INST_0_i_13_n_0 ;
  wire \addressM[30]_INST_0_i_14_n_0 ;
  wire \addressM[30]_INST_0_i_15_n_0 ;
  wire \addressM[30]_INST_0_i_18_n_0 ;
  wire \addressM[30]_INST_0_i_3_n_0 ;
  wire \addressM[30]_INST_0_i_6_n_0 ;
  wire \addressM[30]_INST_0_i_8_n_0 ;
  wire \addressM[30]_INST_0_i_9_n_0 ;
  wire \addressM[31]_INST_0_i_10_n_0 ;
  wire \addressM[31]_INST_0_i_11_n_0 ;
  wire \addressM[31]_INST_0_i_12_n_0 ;
  wire \addressM[31]_INST_0_i_14_n_0 ;
  wire \addressM[31]_INST_0_i_15_n_0 ;
  wire \addressM[31]_INST_0_i_16_n_0 ;
  wire \addressM[31]_INST_0_i_21_n_0 ;
  wire \addressM[31]_INST_0_i_22_n_0 ;
  wire \addressM[31]_INST_0_i_23_n_0 ;
  wire \addressM[31]_INST_0_i_24_n_0 ;
  wire \addressM[31]_INST_0_i_25_n_0 ;
  wire \addressM[31]_INST_0_i_26_n_0 ;
  wire \addressM[31]_INST_0_i_27_n_0 ;
  wire \addressM[31]_INST_0_i_31_n_0 ;
  wire \addressM[31]_INST_0_i_35_n_0 ;
  wire \addressM[31]_INST_0_i_47_n_0 ;
  wire \addressM[31]_INST_0_i_4_n_0 ;
  wire \addressM[31]_INST_0_i_9_n_0 ;
  wire \addressM[31]_INST_0_i_9_n_1 ;
  wire \addressM[31]_INST_0_i_9_n_2 ;
  wire \addressM[31]_INST_0_i_9_n_3 ;
  wire \addressM[3]_INST_0_i_10_n_0 ;
  wire \addressM[3]_INST_0_i_11_n_0 ;
  wire \addressM[3]_INST_0_i_17_n_0 ;
  wire \addressM[3]_INST_0_i_18_n_0 ;
  wire \addressM[3]_INST_0_i_19_n_0 ;
  wire \addressM[3]_INST_0_i_20_n_0 ;
  wire \addressM[3]_INST_0_i_21_n_0 ;
  wire \addressM[3]_INST_0_i_3_n_0 ;
  wire \addressM[3]_INST_0_i_6_n_0 ;
  wire \addressM[3]_INST_0_i_6_n_1 ;
  wire \addressM[3]_INST_0_i_6_n_2 ;
  wire \addressM[3]_INST_0_i_6_n_3 ;
  wire \addressM[3]_INST_0_i_7_n_0 ;
  wire \addressM[3]_INST_0_i_8_n_0 ;
  wire \addressM[3]_INST_0_i_9_n_0 ;
  wire \addressM[4]_INST_0_i_10_n_0 ;
  wire \addressM[4]_INST_0_i_11_n_0 ;
  wire \addressM[4]_INST_0_i_12_n_0 ;
  wire \addressM[4]_INST_0_i_13_n_0 ;
  wire \addressM[4]_INST_0_i_3_n_0 ;
  wire \addressM[4]_INST_0_i_6_n_0 ;
  wire \addressM[4]_INST_0_i_8_n_0 ;
  wire \addressM[4]_INST_0_i_9_n_0 ;
  wire \addressM[5]_INST_0_i_10_n_0 ;
  wire \addressM[5]_INST_0_i_11_n_0 ;
  wire \addressM[5]_INST_0_i_12_n_0 ;
  wire \addressM[5]_INST_0_i_3_n_0 ;
  wire \addressM[5]_INST_0_i_6_n_0 ;
  wire \addressM[5]_INST_0_i_8_n_0 ;
  wire \addressM[5]_INST_0_i_9_n_0 ;
  wire \addressM[6]_INST_0_i_10_n_0 ;
  wire \addressM[6]_INST_0_i_11_n_0 ;
  wire \addressM[6]_INST_0_i_12_n_0 ;
  wire \addressM[6]_INST_0_i_8_n_0 ;
  wire \addressM[6]_INST_0_i_9_n_0 ;
  wire \addressM[7]_INST_0_i_10_n_0 ;
  wire \addressM[7]_INST_0_i_15_n_0 ;
  wire \addressM[7]_INST_0_i_16_n_0 ;
  wire \addressM[7]_INST_0_i_17_n_0 ;
  wire \addressM[7]_INST_0_i_18_n_0 ;
  wire \addressM[7]_INST_0_i_19_n_0 ;
  wire \addressM[7]_INST_0_i_20_n_0 ;
  wire \addressM[7]_INST_0_i_21_n_0 ;
  wire \addressM[7]_INST_0_i_6_n_0 ;
  wire \addressM[7]_INST_0_i_6_n_1 ;
  wire \addressM[7]_INST_0_i_6_n_2 ;
  wire \addressM[7]_INST_0_i_6_n_3 ;
  wire \addressM[7]_INST_0_i_9_n_0 ;
  wire \addressM[8]_INST_0_i_10_n_0 ;
  wire \addressM[8]_INST_0_i_11_n_0 ;
  wire \addressM[8]_INST_0_i_3_n_0 ;
  wire \addressM[8]_INST_0_i_7_n_0 ;
  wire \addressM[8]_INST_0_i_8_n_0 ;
  wire \addressM[8]_INST_0_i_9_n_0 ;
  wire \addressM[9]_INST_0_i_10_n_0 ;
  wire \addressM[9]_INST_0_i_11_n_0 ;
  wire \addressM[9]_INST_0_i_3_n_0 ;
  wire \addressM[9]_INST_0_i_7_n_0 ;
  wire \addressM[9]_INST_0_i_8_n_0 ;
  wire \addressM[9]_INST_0_i_9_n_0 ;
  wire [0:0]\alu/condinvb ;
  wire [32:0]\alu/sum ;
  wire [1:0]\c/cl/FlagWrite ;
  wire [0:0]\c/dec/p_1_out__5 ;
  wire carry;
  wire clk;
  wire [31:0]condinva;
  wire [31:0]d;
  wire [30:0]d0;
  wire [7:6]d1;
  wire [30:0]d1_0;
  wire data4;
  wire doneM;
  wire [7:6]\ext/Imm__7 ;
  wire g0_b7_i_1__1_n_0;
  wire g0_b7_i_1_n_0;
  wire g0_b7_i_2__0_n_0;
  wire g0_b7_i_2_n_0;
  wire g0_b7_i_3_n_0;
  wire g0_b7_i_4_n_0;
  wire g0_b7_i_5_n_0;
  wire [4:0]out;
  wire \q[0]_i_10_n_0 ;
  wire \q[0]_i_11_n_0 ;
  wire \q[0]_i_12_n_0 ;
  wire \q[0]_i_13_n_0 ;
  wire \q[0]_i_14_n_0 ;
  wire \q[0]_i_15_n_0 ;
  wire \q[0]_i_16_n_0 ;
  wire \q[0]_i_17_n_0 ;
  wire \q[0]_i_18_n_0 ;
  wire \q[0]_i_19_n_0 ;
  wire \q[0]_i_2__0_n_0 ;
  wire \q[0]_i_2_n_0 ;
  wire \q[0]_i_3_n_0 ;
  wire \q[0]_i_4_n_0 ;
  wire \q[0]_i_6_n_0 ;
  wire \q[0]_i_7_n_0 ;
  wire \q[0]_i_8_n_0 ;
  wire \q[0]_i_9_n_0 ;
  wire \q_reg[0]_0 ;
  wire \q_reg[0]_1 ;
  wire \q_reg[0]_10 ;
  wire \q_reg[0]_11 ;
  wire \q_reg[0]_12 ;
  wire \q_reg[0]_13 ;
  wire \q_reg[0]_14 ;
  wire \q_reg[0]_15 ;
  wire \q_reg[0]_16 ;
  wire \q_reg[0]_17 ;
  wire \q_reg[0]_18 ;
  wire [0:0]\q_reg[0]_19 ;
  wire \q_reg[0]_2 ;
  wire \q_reg[0]_20 ;
  wire \q_reg[0]_21 ;
  wire \q_reg[0]_3 ;
  wire \q_reg[0]_4 ;
  wire [3:0]\q_reg[0]_5 ;
  wire \q_reg[0]_6 ;
  wire \q_reg[0]_7 ;
  wire [0:0]\q_reg[0]_8 ;
  wire \q_reg[0]_9 ;
  wire \q_reg[12]_0 ;
  wire \q_reg[12]_1 ;
  wire \q_reg[12]_2 ;
  wire \q_reg[12]_3 ;
  wire \q_reg[18]_0 ;
  wire [4:0]\q_reg[1]_0 ;
  wire \q_reg[1]_1 ;
  wire \q_reg[1]_10 ;
  wire \q_reg[1]_11 ;
  wire \q_reg[1]_12 ;
  wire \q_reg[1]_13 ;
  wire \q_reg[1]_14 ;
  wire \q_reg[1]_15 ;
  wire \q_reg[1]_16 ;
  wire \q_reg[1]_17 ;
  wire \q_reg[1]_18 ;
  wire \q_reg[1]_19 ;
  wire \q_reg[1]_2 ;
  wire \q_reg[1]_20 ;
  wire \q_reg[1]_21 ;
  wire \q_reg[1]_22 ;
  wire \q_reg[1]_23 ;
  wire \q_reg[1]_24 ;
  wire \q_reg[1]_25 ;
  wire \q_reg[1]_26 ;
  wire \q_reg[1]_27 ;
  wire \q_reg[1]_28 ;
  wire \q_reg[1]_29 ;
  wire \q_reg[1]_3 ;
  wire \q_reg[1]_30 ;
  wire \q_reg[1]_31 ;
  wire \q_reg[1]_32 ;
  wire \q_reg[1]_33 ;
  wire \q_reg[1]_34 ;
  wire \q_reg[1]_35 ;
  wire \q_reg[1]_36 ;
  wire \q_reg[1]_37 ;
  wire \q_reg[1]_38 ;
  wire \q_reg[1]_39 ;
  wire \q_reg[1]_4 ;
  wire \q_reg[1]_40 ;
  wire \q_reg[1]_41 ;
  wire \q_reg[1]_42 ;
  wire \q_reg[1]_43 ;
  wire \q_reg[1]_44 ;
  wire \q_reg[1]_45 ;
  wire \q_reg[1]_46 ;
  wire \q_reg[1]_47 ;
  wire \q_reg[1]_48 ;
  wire \q_reg[1]_5 ;
  wire \q_reg[1]_6 ;
  wire \q_reg[1]_7 ;
  wire \q_reg[1]_8 ;
  wire \q_reg[1]_9 ;
  wire \q_reg[28]_0 ;
  wire \q_reg[2]_0 ;
  wire \q_reg[2]_1 ;
  wire \q_reg[2]_2 ;
  wire \q_reg[2]_3 ;
  wire \q_reg[31]_0 ;
  wire [30:0]\q_reg[31]_1 ;
  wire \q_reg[31]_2 ;
  wire \q_reg[8]_0 ;
  wire \q_reg[8]_1 ;
  wire \q_reg[8]_2 ;
  wire \q_reg[8]_3 ;
  wire [30:0]r15;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [31:0]readDataM;
  wire reset;
  wire [5:1]sel;
  wire [31:31]srcBshifted;
  wire [3:0]wa3;
  wire [31:0]wd3;
  wire [16:0]writeDataM;
  wire writeDataM_0_sn_1;
  wire [31:4]y01_in;
  wire [3:1]\NLW_q_reg[1]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_q_reg[1]_i_2_O_UNCONNECTED ;

  assign writeDataM_0_sp_1 = writeDataM_0_sn_1;
  LUT6 #(
    .INIT(64'h44444444CFCCCCCC)) 
    \FSM_sequential_CURRENT_STATE[0]_i_2 
       (.I0(doneM),
        .I1(\FSM_sequential_CURRENT_STATE_reg[2] [1]),
        .I2(Instr[20]),
        .I3(out[0]),
        .I4(CondEx),
        .I5(\FSM_sequential_CURRENT_STATE_reg[2] [0]),
        .O(\FSM_sequential_CURRENT_STATE_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_CURRENT_STATE[2]_i_2 
       (.I0(Instr[20]),
        .I1(out[0]),
        .I2(CondEx),
        .O(MemWrite));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[0]_INST_0 
       (.I0(SrcB2__0),
        .I1(ALUResult[0]),
        .I2(Shift),
        .O(addressM[0]));
  LUT6 #(
    .INIT(64'hDDDCDDDF22232220)) 
    \addressM[0]_INST_0_i_1 
       (.I0(\addressM[0]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[0]),
        .I5(MVN),
        .O(SrcB2__0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[0]_INST_0_i_10 
       (.I0(r15[15]),
        .I1(rd20[16]),
        .I2(\q_reg[1]_0 [4]),
        .I3(Q[0]),
        .I4(\q_reg[1]_1 ),
        .I5(rd20[0]),
        .O(\q_reg[0]_2 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[0]_INST_0_i_2 
       (.I0(SrcB2__0),
        .I1(SrcA),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [0]),
        .O(ALUResult[0]));
  LUT6 #(
    .INIT(64'hB888BBBBB888B888)) 
    \addressM[0]_INST_0_i_3 
       (.I0(Instr[0]),
        .I1(out[0]),
        .I2(\addressM[0]_INST_0_i_6_n_0 ),
        .I3(\addressM[3]_INST_0_i_8_n_0 ),
        .I4(\addressM[31]_INST_0_i_12_n_0 ),
        .I5(\addressM[16]_INST_0_i_6_n_0 ),
        .O(\addressM[0]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F044)) 
    \addressM[0]_INST_0_i_4 
       (.I0(\q_reg[1]_0 [0]),
        .I1(\addressM[0]_INST_0_i_7_n_0 ),
        .I2(\q_reg[0]_18 ),
        .I3(Instr[6]),
        .I4(Instr[5]),
        .O(d0[0]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[0]_INST_0_i_5 
       (.I0(Q[0]),
        .I1(\q_reg[0]_1 ),
        .I2(rd10[0]),
        .O(SrcA));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[0]_INST_0_i_6 
       (.I0(Instr[6]),
        .I1(Instr[2]),
        .I2(\q_reg[1]_0 [1]),
        .I3(Instr[4]),
        .I4(\q_reg[1]_0 [2]),
        .I5(Instr[0]),
        .O(\addressM[0]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \addressM[0]_INST_0_i_7 
       (.I0(\q_reg[1]_0 [2]),
        .I1(\q_reg[1]_0 [4]),
        .I2(writeDataM_0_sn_1),
        .I3(\q_reg[1]_0 [3]),
        .I4(\q_reg[1]_0 [1]),
        .O(\addressM[0]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[10]_INST_0 
       (.I0(SrcB2[10]),
        .I1(ALUResult[10]),
        .I2(Shift),
        .O(addressM[10]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[10]_INST_0_i_1 
       (.I0(\q_reg[1]_0 [1]),
        .I1(Instr[27]),
        .I2(\addressM[10]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[10]),
        .I5(MVN),
        .O(SrcB2[10]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[10]_INST_0_i_10 
       (.I0(writeDataM[2]),
        .I1(\q_reg[1]_4 ),
        .I2(\q_reg[1]_2 ),
        .I3(writeDataM[6]),
        .I4(\q_reg[1]_3 ),
        .O(\addressM[10]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[10]_INST_0_i_11 
       (.I0(\addressM[18]_INST_0_i_17_n_0 ),
        .I1(\q_reg[1]_21 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[18]_INST_0_i_19_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_22 ),
        .O(\addressM[10]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[10]_INST_0_i_2 
       (.I0(SrcB2[10]),
        .I1(\q_reg[31]_1 [9]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [10]),
        .O(ALUResult[10]));
  LUT6 #(
    .INIT(64'hEAEAEAEA40404004)) 
    \addressM[10]_INST_0_i_3 
       (.I0(out[0]),
        .I1(\addressM[26]_INST_0_i_6_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[10]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[10]_INST_0_i_4 
       (.I0(y01_in[10]),
        .I1(\addressM[10]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[10]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[10]_INST_0_i_6 
       (.I0(\addressM[10]_INST_0_i_9_n_0 ),
        .I1(\q_reg[1]_48 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[11]_INST_0_i_19_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_47 ),
        .O(y01_in[10]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[10]_INST_0_i_7 
       (.I0(\addressM[10]_INST_0_i_10_n_0 ),
        .I1(\q_reg[0]_17 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[11]_INST_0_i_20_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_16 ),
        .O(\addressM[10]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[10]_INST_0_i_8 
       (.I0(\addressM[13]_INST_0_i_11_n_0 ),
        .I1(\addressM[11]_INST_0_i_21_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[12]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[10]_INST_0_i_11_n_0 ),
        .O(\addressM[10]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[10]_INST_0_i_9 
       (.I0(writeDataM[2]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[6]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[10]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[11]_INST_0 
       (.I0(SrcB2[11]),
        .I1(ALUResult[11]),
        .I2(Shift),
        .O(addressM[11]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[11]_INST_0_i_1 
       (.I0(\q_reg[1]_0 [2]),
        .I1(Instr[27]),
        .I2(\addressM[11]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[11]),
        .I5(MVN),
        .O(SrcB2[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[11]_INST_0_i_10 
       (.I0(\addressM[14]_INST_0_i_11_n_0 ),
        .I1(\addressM[12]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[13]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[11]_INST_0_i_21_n_0 ),
        .O(\addressM[11]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[11]_INST_0_i_15 
       (.I0(ALUControl[0]),
        .I1(SrcB2[11]),
        .I2(r15[10]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[11]),
        .I5(ALUControl[1]),
        .O(\addressM[11]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[11]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[10]),
        .I2(r15[9]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[10]),
        .I5(ALUControl[1]),
        .O(\addressM[11]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[11]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[9]),
        .I2(r15[8]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[9]),
        .I5(ALUControl[1]),
        .O(\addressM[11]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[11]_INST_0_i_18 
       (.I0(ALUControl[0]),
        .I1(SrcB2[8]),
        .I2(r15[7]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[8]),
        .I5(ALUControl[1]),
        .O(\addressM[11]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[11]_INST_0_i_19 
       (.I0(writeDataM[3]),
        .I1(\q_reg[1]_0 [2]),
        .I2(writeDataM_0_sn_1),
        .I3(\q_reg[1]_0 [3]),
        .I4(writeDataM[7]),
        .I5(\q_reg[1]_0 [4]),
        .O(\addressM[11]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[11]_INST_0_i_2 
       (.I0(SrcB2[11]),
        .I1(\q_reg[31]_1 [10]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [11]),
        .O(ALUResult[11]));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \addressM[11]_INST_0_i_20 
       (.I0(writeDataM[3]),
        .I1(\q_reg[1]_4 ),
        .I2(writeDataM_0_sn_1),
        .I3(\q_reg[1]_3 ),
        .I4(writeDataM[7]),
        .I5(\q_reg[1]_2 ),
        .O(\addressM[11]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[11]_INST_0_i_21 
       (.I0(\addressM[19]_INST_0_i_36_n_0 ),
        .I1(\q_reg[1]_15 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_38_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_16 ),
        .O(\addressM[11]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0E0A4)) 
    \addressM[11]_INST_0_i_3 
       (.I0(out[0]),
        .I1(\addressM[27]_INST_0_i_7_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[11]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \addressM[11]_INST_0_i_4 
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[25]),
        .O(ALUSrc));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[11]_INST_0_i_5 
       (.I0(y01_in[11]),
        .I1(\addressM[11]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[11]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[11]));
  CARRY4 \addressM[11]_INST_0_i_7 
       (.CI(\addressM[7]_INST_0_i_6_n_0 ),
        .CO({\addressM[11]_INST_0_i_7_n_0 ,\addressM[11]_INST_0_i_7_n_1 ,\addressM[11]_INST_0_i_7_n_2 ,\addressM[11]_INST_0_i_7_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[11:8]),
        .O(\alu/sum [11:8]),
        .S({\addressM[11]_INST_0_i_15_n_0 ,\addressM[11]_INST_0_i_16_n_0 ,\addressM[11]_INST_0_i_17_n_0 ,\addressM[11]_INST_0_i_18_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[11]_INST_0_i_8 
       (.I0(\addressM[11]_INST_0_i_19_n_0 ),
        .I1(\q_reg[1]_47 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_48 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_46 ),
        .O(y01_in[11]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[11]_INST_0_i_9 
       (.I0(\addressM[11]_INST_0_i_20_n_0 ),
        .I1(\q_reg[0]_16 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[0]_17 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_15 ),
        .O(\addressM[11]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[12]_INST_0 
       (.I0(SrcB2[12]),
        .I1(ALUResult[12]),
        .I2(Shift),
        .O(addressM[12]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[12]_INST_0_i_1 
       (.I0(\addressM[12]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[12]),
        .I5(MVN),
        .O(SrcB2[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[12]_INST_0_i_11 
       (.I0(\addressM[16]_INST_0_i_17_n_0 ),
        .I1(\addressM[16]_INST_0_i_18_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[16]_INST_0_i_16_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_29 ),
        .O(\addressM[12]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[12]_INST_0_i_2 
       (.I0(SrcB2[12]),
        .I1(\q_reg[31]_1 [11]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [12]),
        .O(ALUResult[12]));
  LUT6 #(
    .INIT(64'hEAEAEAEA40404004)) 
    \addressM[12]_INST_0_i_3 
       (.I0(Instr[27]),
        .I1(\addressM[28]_INST_0_i_6_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[12]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[12]_INST_0_i_4 
       (.I0(\q_reg[0]_8 ),
        .I1(\q_reg[0]_10 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[12]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[12]_INST_0_i_8 
       (.I0(\addressM[15]_INST_0_i_20_n_0 ),
        .I1(\addressM[13]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[14]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[12]_INST_0_i_11_n_0 ),
        .O(\addressM[12]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[13]_INST_0 
       (.I0(SrcB2[13]),
        .I1(ALUResult[13]),
        .I2(Shift),
        .O(addressM[13]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[13]_INST_0_i_1 
       (.I0(\addressM[13]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[13]),
        .I5(MVN),
        .O(SrcB2[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[13]_INST_0_i_11 
       (.I0(\addressM[17]_INST_0_i_18_n_0 ),
        .I1(\addressM[17]_INST_0_i_19_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[17]_INST_0_i_17_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_24 ),
        .O(\addressM[13]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[13]_INST_0_i_2 
       (.I0(SrcB2[13]),
        .I1(\q_reg[31]_1 [12]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [13]),
        .O(ALUResult[13]));
  LUT6 #(
    .INIT(64'hE0E0E0E0E0E0E0A4)) 
    \addressM[13]_INST_0_i_3 
       (.I0(Instr[27]),
        .I1(\addressM[29]_INST_0_i_6_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[13]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[13]_INST_0_i_4 
       (.I0(y01_in[13]),
        .I1(\addressM[13]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[13]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[13]_INST_0_i_6 
       (.I0(\q_reg[1]_47 ),
        .I1(\q_reg[0]_4 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_46 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[16]_INST_0_i_11_n_0 ),
        .O(y01_in[13]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[13]_INST_0_i_7 
       (.I0(\q_reg[0]_16 ),
        .I1(\q_reg[0]_3 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[0]_15 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[16]_INST_0_i_12_n_0 ),
        .O(\addressM[13]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[13]_INST_0_i_8 
       (.I0(\addressM[16]_INST_0_i_13_n_0 ),
        .I1(\addressM[14]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[15]_INST_0_i_20_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[13]_INST_0_i_11_n_0 ),
        .O(\addressM[13]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[14]_INST_0 
       (.I0(SrcB2[14]),
        .I1(ALUResult[14]),
        .I2(Shift),
        .O(addressM[14]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[14]_INST_0_i_1 
       (.I0(\addressM[14]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[14]),
        .I5(MVN),
        .O(SrcB2[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[14]_INST_0_i_11 
       (.I0(\addressM[18]_INST_0_i_18_n_0 ),
        .I1(\addressM[18]_INST_0_i_19_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[18]_INST_0_i_17_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_21 ),
        .O(\addressM[14]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[14]_INST_0_i_2 
       (.I0(SrcB2[14]),
        .I1(\q_reg[31]_1 [13]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [14]),
        .O(ALUResult[14]));
  LUT6 #(
    .INIT(64'h00000000FF400040)) 
    \addressM[14]_INST_0_i_3 
       (.I0(\addressM[31]_INST_0_i_12_n_0 ),
        .I1(\addressM[31]_INST_0_i_10_n_0 ),
        .I2(\addressM[30]_INST_0_i_6_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[12]),
        .I5(out[0]),
        .O(\addressM[14]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[14]_INST_0_i_4 
       (.I0(y01_in[14]),
        .I1(\addressM[14]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[14]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[14]_INST_0_i_6 
       (.I0(\q_reg[1]_46 ),
        .I1(\addressM[16]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[0]_4 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[17]_INST_0_i_11_n_0 ),
        .O(y01_in[14]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[14]_INST_0_i_7 
       (.I0(\q_reg[0]_15 ),
        .I1(\addressM[16]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[0]_3 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[17]_INST_0_i_12_n_0 ),
        .O(\addressM[14]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[14]_INST_0_i_8 
       (.I0(\addressM[17]_INST_0_i_13_n_0 ),
        .I1(\addressM[15]_INST_0_i_20_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[16]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[14]_INST_0_i_11_n_0 ),
        .O(\addressM[14]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[15]_INST_0 
       (.I0(SrcB2[15]),
        .I1(ALUResult[15]),
        .I2(Shift),
        .O(addressM[15]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[15]_INST_0_i_1 
       (.I0(\addressM[15]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[15]),
        .I5(MVN),
        .O(SrcB2[15]));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[15]_INST_0_i_14 
       (.I0(ALUControl[0]),
        .I1(SrcB2[15]),
        .I2(r15[14]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[15]),
        .I5(ALUControl[1]),
        .O(\addressM[15]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[15]_INST_0_i_15 
       (.I0(ALUControl[0]),
        .I1(SrcB2[14]),
        .I2(r15[13]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[14]),
        .I5(ALUControl[1]),
        .O(\addressM[15]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[15]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[13]),
        .I2(r15[12]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[13]),
        .I5(ALUControl[1]),
        .O(\addressM[15]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[15]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[12]),
        .I2(r15[11]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[12]),
        .I5(ALUControl[1]),
        .O(\addressM[15]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \addressM[15]_INST_0_i_18 
       (.I0(\addressM[15]_INST_0_i_21_n_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(writeDataM[3]),
        .I3(\q_reg[1]_0 [3]),
        .I4(writeDataM[8]),
        .I5(\q_reg[1]_0 [4]),
        .O(\q_reg[0]_4 ));
  LUT6 #(
    .INIT(64'h88888888B8BBB888)) 
    \addressM[15]_INST_0_i_19 
       (.I0(\addressM[15]_INST_0_i_22_n_0 ),
        .I1(\q_reg[1]_4 ),
        .I2(writeDataM[3]),
        .I3(\q_reg[1]_3 ),
        .I4(writeDataM[8]),
        .I5(\q_reg[1]_2 ),
        .O(\q_reg[0]_3 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[15]_INST_0_i_2 
       (.I0(SrcB2[15]),
        .I1(\q_reg[31]_1 [14]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [15]),
        .O(ALUResult[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[15]_INST_0_i_20 
       (.I0(\addressM[19]_INST_0_i_37_n_0 ),
        .I1(\addressM[19]_INST_0_i_38_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_36_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_15 ),
        .O(\addressM[15]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \addressM[15]_INST_0_i_21 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[1]_0 [3]),
        .I2(rd20[8]),
        .I3(\q_reg[1]_1 ),
        .I4(r15[7]),
        .I5(\q_reg[1]_0 [4]),
        .O(\addressM[15]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h00000000BBB888B8)) 
    \addressM[15]_INST_0_i_22 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[1]_3 ),
        .I2(rd20[8]),
        .I3(\q_reg[1]_1 ),
        .I4(r15[7]),
        .I5(\q_reg[1]_2 ),
        .O(\addressM[15]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF400040)) 
    \addressM[15]_INST_0_i_3 
       (.I0(\addressM[31]_INST_0_i_12_n_0 ),
        .I1(\addressM[31]_INST_0_i_10_n_0 ),
        .I2(\addressM[31]_INST_0_i_11_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[13]),
        .I5(out[0]),
        .O(\addressM[15]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[15]_INST_0_i_4 
       (.I0(y01_in[15]),
        .I1(\addressM[15]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[15]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[15]));
  CARRY4 \addressM[15]_INST_0_i_6 
       (.CI(\addressM[11]_INST_0_i_7_n_0 ),
        .CO({\addressM[15]_INST_0_i_6_n_0 ,\addressM[15]_INST_0_i_6_n_1 ,\addressM[15]_INST_0_i_6_n_2 ,\addressM[15]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[15:12]),
        .O(\alu/sum [15:12]),
        .S({\addressM[15]_INST_0_i_14_n_0 ,\addressM[15]_INST_0_i_15_n_0 ,\addressM[15]_INST_0_i_16_n_0 ,\addressM[15]_INST_0_i_17_n_0 }));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[15]_INST_0_i_7 
       (.I0(\q_reg[0]_4 ),
        .I1(\addressM[17]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[16]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[18]_INST_0_i_11_n_0 ),
        .O(y01_in[15]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[15]_INST_0_i_8 
       (.I0(\q_reg[0]_3 ),
        .I1(\addressM[17]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[16]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[18]_INST_0_i_12_n_0 ),
        .O(\addressM[15]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[15]_INST_0_i_9 
       (.I0(\addressM[18]_INST_0_i_13_n_0 ),
        .I1(\addressM[16]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[17]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[15]_INST_0_i_20_n_0 ),
        .O(\addressM[15]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[16]_INST_0 
       (.I0(SrcB2[16]),
        .I1(ALUResult[16]),
        .I2(Shift),
        .O(addressM[16]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[16]_INST_0_i_1 
       (.I0(\addressM[16]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[16]),
        .I5(MVN),
        .O(SrcB2[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[16]_INST_0_i_10 
       (.I0(\q_reg[18]_0 ),
        .I1(\addressM[17]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[18]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[16]_INST_0_i_13_n_0 ),
        .O(\addressM[16]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[16]_INST_0_i_11 
       (.I0(\addressM[16]_INST_0_i_14_n_0 ),
        .I1(\addressM[24]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_29_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[27]_INST_0_i_29_n_0 ),
        .O(\addressM[16]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[16]_INST_0_i_12 
       (.I0(\addressM[2]_INST_0_i_11_n_0 ),
        .I1(\addressM[24]_INST_0_i_14_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[19]_INST_0_i_33_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\addressM[27]_INST_0_i_35_n_0 ),
        .O(\addressM[16]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[16]_INST_0_i_13 
       (.I0(\addressM[16]_INST_0_i_15_n_0 ),
        .I1(\addressM[16]_INST_0_i_16_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[16]_INST_0_i_17_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[16]_INST_0_i_18_n_0 ),
        .O(\addressM[16]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[16]_INST_0_i_14 
       (.I0(rd20[1]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[0]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[16]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[16]_INST_0_i_15 
       (.I0(rd20[28]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[27]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[16]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[16]_INST_0_i_16 
       (.I0(rd20[20]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[19]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[16]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[16]_INST_0_i_17 
       (.I0(rd20[24]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[23]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[16]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[16]_INST_0_i_18 
       (.I0(rd20[16]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[15]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[16]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[16]_INST_0_i_2 
       (.I0(SrcB2[16]),
        .I1(\q_reg[31]_1 [15]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [16]),
        .O(ALUResult[16]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \addressM[16]_INST_0_i_3 
       (.I0(Instr[14]),
        .I1(Instr[27]),
        .I2(\addressM[16]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[16]_INST_0_i_7_n_0 ),
        .O(\addressM[16]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[16]_INST_0_i_4 
       (.I0(y01_in[16]),
        .I1(\addressM[16]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[16]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[16]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \addressM[16]_INST_0_i_6 
       (.I0(\q_reg[1]_0 [4]),
        .I1(Instr[0]),
        .I2(\q_reg[1]_0 [3]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\q_reg[1]_0 [1]),
        .O(\addressM[16]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCA000000CA0)) 
    \addressM[16]_INST_0_i_7 
       (.I0(Instr[2]),
        .I1(Instr[4]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\addressM[31]_INST_0_i_25_n_0 ),
        .I5(Instr[6]),
        .O(\addressM[16]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[16]_INST_0_i_8 
       (.I0(\addressM[16]_INST_0_i_11_n_0 ),
        .I1(\addressM[18]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[17]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_20_n_0 ),
        .O(y01_in[16]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[16]_INST_0_i_9 
       (.I0(\addressM[16]_INST_0_i_12_n_0 ),
        .I1(\addressM[18]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[17]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_23_n_0 ),
        .O(\addressM[16]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[17]_INST_0 
       (.I0(SrcB2[17]),
        .I1(ALUResult[17]),
        .I2(Shift),
        .O(addressM[17]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[17]_INST_0_i_1 
       (.I0(\addressM[17]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[17]),
        .I5(MVN),
        .O(SrcB2[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[17]_INST_0_i_10 
       (.I0(\q_reg[1]_11 ),
        .I1(\addressM[18]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[18]_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[17]_INST_0_i_13_n_0 ),
        .O(\addressM[17]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[17]_INST_0_i_11 
       (.I0(\addressM[17]_INST_0_i_14_n_0 ),
        .I1(\addressM[25]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[21]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[29]_INST_0_i_13_n_0 ),
        .O(\addressM[17]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[17]_INST_0_i_12 
       (.I0(\addressM[17]_INST_0_i_15_n_0 ),
        .I1(\addressM[25]_INST_0_i_14_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[21]_INST_0_i_15_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\addressM[29]_INST_0_i_16_n_0 ),
        .O(\addressM[17]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[17]_INST_0_i_13 
       (.I0(\addressM[17]_INST_0_i_16_n_0 ),
        .I1(\addressM[17]_INST_0_i_17_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[17]_INST_0_i_18_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[17]_INST_0_i_19_n_0 ),
        .O(\addressM[17]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_14 
       (.I0(rd20[2]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[1]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[17]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_15 
       (.I0(rd20[2]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[1]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[17]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_16 
       (.I0(rd20[29]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[28]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[17]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_17 
       (.I0(rd20[21]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[20]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[17]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_18 
       (.I0(rd20[25]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[24]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[17]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[17]_INST_0_i_19 
       (.I0(rd20[17]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[16]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[17]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[17]_INST_0_i_2 
       (.I0(SrcB2[17]),
        .I1(\q_reg[31]_1 [16]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [17]),
        .O(ALUResult[17]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \addressM[17]_INST_0_i_3 
       (.I0(Instr[15]),
        .I1(Instr[27]),
        .I2(\addressM[17]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[17]_INST_0_i_7_n_0 ),
        .O(\addressM[17]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[17]_INST_0_i_4 
       (.I0(y01_in[17]),
        .I1(\addressM[17]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[17]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[17]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \addressM[17]_INST_0_i_6 
       (.I0(\q_reg[1]_0 [4]),
        .I1(Instr[1]),
        .I2(\q_reg[1]_0 [3]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\q_reg[1]_0 [1]),
        .O(\addressM[17]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000FCA000000CA0)) 
    \addressM[17]_INST_0_i_7 
       (.I0(Instr[3]),
        .I1(Instr[5]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\addressM[31]_INST_0_i_25_n_0 ),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[17]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[17]_INST_0_i_8 
       (.I0(\addressM[17]_INST_0_i_11_n_0 ),
        .I1(\addressM[19]_INST_0_i_20_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[18]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_21_n_0 ),
        .O(y01_in[17]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[17]_INST_0_i_9 
       (.I0(\addressM[17]_INST_0_i_12_n_0 ),
        .I1(\addressM[19]_INST_0_i_23_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[18]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_24_n_0 ),
        .O(\addressM[17]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[18]_INST_0 
       (.I0(SrcB2[18]),
        .I1(ALUResult[18]),
        .I2(Shift),
        .O(addressM[18]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[18]_INST_0_i_1 
       (.I0(\addressM[18]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[18]),
        .I5(MVN),
        .O(SrcB2[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[18]_INST_0_i_10 
       (.I0(\q_reg[1]_9 ),
        .I1(\q_reg[18]_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_11 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[18]_INST_0_i_13_n_0 ),
        .O(\addressM[18]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[18]_INST_0_i_11 
       (.I0(\addressM[18]_INST_0_i_14_n_0 ),
        .I1(\addressM[26]_INST_0_i_15_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_30_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[30]_INST_0_i_15_n_0 ),
        .O(\addressM[18]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[18]_INST_0_i_12 
       (.I0(\addressM[18]_INST_0_i_15_n_0 ),
        .I1(\addressM[26]_INST_0_i_16_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[19]_INST_0_i_34_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\addressM[30]_INST_0_i_18_n_0 ),
        .O(\addressM[18]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[18]_INST_0_i_13 
       (.I0(\addressM[18]_INST_0_i_16_n_0 ),
        .I1(\addressM[18]_INST_0_i_17_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[18]_INST_0_i_18_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[18]_INST_0_i_19_n_0 ),
        .O(\addressM[18]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_14 
       (.I0(rd20[3]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[2]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[18]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_15 
       (.I0(rd20[3]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[2]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[18]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_16 
       (.I0(rd20[30]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[29]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[18]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_17 
       (.I0(rd20[22]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[21]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[18]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_18 
       (.I0(rd20[26]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[25]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[18]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[18]_INST_0_i_19 
       (.I0(rd20[18]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[17]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[18]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[18]_INST_0_i_2 
       (.I0(SrcB2[18]),
        .I1(\q_reg[31]_1 [17]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [18]),
        .O(ALUResult[18]));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \addressM[18]_INST_0_i_3 
       (.I0(Instr[16]),
        .I1(Instr[27]),
        .I2(\addressM[18]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[18]_INST_0_i_7_n_0 ),
        .O(\addressM[18]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[18]_INST_0_i_4 
       (.I0(y01_in[18]),
        .I1(\addressM[18]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[18]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[18]));
  LUT6 #(
    .INIT(64'hAA000000000000C0)) 
    \addressM[18]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [1]),
        .O(\addressM[18]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h5808)) 
    \addressM[18]_INST_0_i_7 
       (.I0(\q_reg[1]_0 [2]),
        .I1(Instr[6]),
        .I2(\q_reg[1]_0 [1]),
        .I3(Instr[4]),
        .O(\addressM[18]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[18]_INST_0_i_8 
       (.I0(\addressM[18]_INST_0_i_11_n_0 ),
        .I1(\addressM[19]_INST_0_i_21_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[19]_INST_0_i_20_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[21]_INST_0_i_11_n_0 ),
        .O(y01_in[18]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[18]_INST_0_i_9 
       (.I0(\addressM[18]_INST_0_i_12_n_0 ),
        .I1(\addressM[19]_INST_0_i_24_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[19]_INST_0_i_23_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[21]_INST_0_i_12_n_0 ),
        .O(\addressM[18]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[19]_INST_0 
       (.I0(SrcB2[19]),
        .I1(ALUResult[19]),
        .I2(Shift),
        .O(addressM[19]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[19]_INST_0_i_1 
       (.I0(\addressM[19]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[19]),
        .I5(MVN),
        .O(SrcB2[19]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[19]_INST_0_i_10 
       (.I0(\addressM[19]_INST_0_i_23_n_0 ),
        .I1(\addressM[21]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[19]_INST_0_i_24_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_25_n_0 ),
        .O(\addressM[19]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[19]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[19]),
        .I2(r15[18]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[19]),
        .I5(ALUControl[1]),
        .O(\addressM[19]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[19]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[18]),
        .I2(r15[17]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[18]),
        .I5(ALUControl[1]),
        .O(\addressM[19]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[19]_INST_0_i_18 
       (.I0(ALUControl[0]),
        .I1(SrcB2[17]),
        .I2(r15[16]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[17]),
        .I5(ALUControl[1]),
        .O(\addressM[19]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[19]_INST_0_i_19 
       (.I0(ALUControl[0]),
        .I1(SrcB2[16]),
        .I2(r15[15]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[16]),
        .I5(ALUControl[1]),
        .O(\addressM[19]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[19]_INST_0_i_2 
       (.I0(SrcB2[19]),
        .I1(\q_reg[31]_1 [18]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [19]),
        .O(ALUResult[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_20 
       (.I0(\addressM[19]_INST_0_i_27_n_0 ),
        .I1(\addressM[27]_INST_0_i_26_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_28_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[27]_INST_0_i_27_n_0 ),
        .O(\addressM[19]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_21 
       (.I0(\addressM[19]_INST_0_i_29_n_0 ),
        .I1(\addressM[27]_INST_0_i_29_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[24]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_41 ),
        .O(\addressM[19]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_22 
       (.I0(\addressM[19]_INST_0_i_30_n_0 ),
        .I1(\addressM[30]_INST_0_i_15_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[26]_INST_0_i_15_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_35 ),
        .O(\addressM[19]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_23 
       (.I0(\addressM[19]_INST_0_i_31_n_0 ),
        .I1(\addressM[27]_INST_0_i_32_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[19]_INST_0_i_32_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\addressM[27]_INST_0_i_33_n_0 ),
        .O(\addressM[19]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_24 
       (.I0(\addressM[19]_INST_0_i_33_n_0 ),
        .I1(\addressM[27]_INST_0_i_35_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[24]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[2]_3 ),
        .O(\addressM[19]_INST_0_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_25 
       (.I0(\addressM[19]_INST_0_i_34_n_0 ),
        .I1(\addressM[30]_INST_0_i_18_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[26]_INST_0_i_16_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[2]_1 ),
        .O(\addressM[19]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_26 
       (.I0(\addressM[19]_INST_0_i_35_n_0 ),
        .I1(\addressM[19]_INST_0_i_36_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[19]_INST_0_i_37_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\addressM[19]_INST_0_i_38_n_0 ),
        .O(\q_reg[18]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_27 
       (.I0(rd20[4]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[3]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_28 
       (.I0(rd20[8]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[7]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_29 
       (.I0(rd20[5]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[4]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBB888B888B888)) 
    \addressM[19]_INST_0_i_3 
       (.I0(Instr[17]),
        .I1(Instr[27]),
        .I2(\addressM[19]_INST_0_i_7_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[19]_INST_0_i_8_n_0 ),
        .O(\addressM[19]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_30 
       (.I0(rd20[7]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[6]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_31 
       (.I0(rd20[4]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[3]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[19]_INST_0_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_32 
       (.I0(rd20[8]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[7]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[19]_INST_0_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_33 
       (.I0(rd20[5]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[4]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[19]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_34 
       (.I0(rd20[7]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[6]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[19]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_35 
       (.I0(rd20[31]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[30]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_36 
       (.I0(rd20[23]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[22]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_37 
       (.I0(rd20[27]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[26]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[19]_INST_0_i_38 
       (.I0(rd20[19]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[18]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[19]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[19]_INST_0_i_4 
       (.I0(y01_in[19]),
        .I1(\addressM[19]_INST_0_i_10_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\q_reg[0]_9 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[19]));
  CARRY4 \addressM[19]_INST_0_i_6 
       (.CI(\addressM[15]_INST_0_i_6_n_0 ),
        .CO({\addressM[19]_INST_0_i_6_n_0 ,\addressM[19]_INST_0_i_6_n_1 ,\addressM[19]_INST_0_i_6_n_2 ,\addressM[19]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[19:16]),
        .O(\alu/sum [19:16]),
        .S({\addressM[19]_INST_0_i_16_n_0 ,\addressM[19]_INST_0_i_17_n_0 ,\addressM[19]_INST_0_i_18_n_0 ,\addressM[19]_INST_0_i_19_n_0 }));
  LUT6 #(
    .INIT(64'hAA000000000000C0)) 
    \addressM[19]_INST_0_i_7 
       (.I0(Instr[1]),
        .I1(Instr[3]),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [1]),
        .O(\addressM[19]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h5808)) 
    \addressM[19]_INST_0_i_8 
       (.I0(\q_reg[1]_0 [2]),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [1]),
        .I3(Instr[5]),
        .O(\addressM[19]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[19]_INST_0_i_9 
       (.I0(\addressM[19]_INST_0_i_20_n_0 ),
        .I1(\addressM[21]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[19]_INST_0_i_21_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[19]_INST_0_i_22_n_0 ),
        .O(y01_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[1]_INST_0 
       (.I0(SrcB2[1]),
        .I1(ALUResult[1]),
        .I2(Shift),
        .O(addressM[1]));
  LUT6 #(
    .INIT(64'hDDDCDDDF22232220)) 
    \addressM[1]_INST_0_i_1 
       (.I0(\addressM[1]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[1]),
        .I5(MVN),
        .O(SrcB2[1]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[1]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[0]),
        .I2(\q_reg[1]_1 ),
        .I3(Q[0]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[1]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[1]_INST_0_i_11 
       (.I0(rd20[0]),
        .I1(\q_reg[1]_1 ),
        .I2(Q[0]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[1]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[1]_INST_0_i_2 
       (.I0(SrcB2[1]),
        .I1(\q_reg[31]_1 [0]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [1]),
        .O(ALUResult[1]));
  LUT6 #(
    .INIT(64'hB888BBBBB888B888)) 
    \addressM[1]_INST_0_i_3 
       (.I0(Instr[1]),
        .I1(out[0]),
        .I2(\addressM[1]_INST_0_i_6_n_0 ),
        .I3(\addressM[3]_INST_0_i_8_n_0 ),
        .I4(\addressM[31]_INST_0_i_12_n_0 ),
        .I5(\addressM[17]_INST_0_i_6_n_0 ),
        .O(\addressM[1]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAAFFAAAAAA)) 
    \addressM[1]_INST_0_i_4 
       (.I0(\addressM[1]_INST_0_i_7_n_0 ),
        .I1(\addressM[1]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[1]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[1]_INST_0_i_6 
       (.I0(\q_reg[1]_0 [0]),
        .I1(Instr[3]),
        .I2(\q_reg[1]_0 [1]),
        .I3(Instr[5]),
        .I4(\q_reg[1]_0 [2]),
        .I5(Instr[1]),
        .O(\addressM[1]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[1]_INST_0_i_7 
       (.I0(\q_reg[1]_0 [1]),
        .I1(\addressM[2]_INST_0_i_10_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[1]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(\addressM[1]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \addressM[1]_INST_0_i_8 
       (.I0(\addressM[1]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[2]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_0 [1]),
        .O(\addressM[1]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[1]_INST_0_i_9 
       (.I0(\addressM[4]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_19 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_18 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_20 ),
        .O(\addressM[1]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[20]_INST_0 
       (.I0(SrcB2[20]),
        .I1(ALUResult[20]),
        .I2(Shift),
        .O(addressM[20]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[20]_INST_0_i_1 
       (.I0(\addressM[20]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[20]),
        .I5(MVN),
        .O(SrcB2[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[20]_INST_0_i_11 
       (.I0(\addressM[20]_INST_0_i_14_n_0 ),
        .I1(\addressM[20]_INST_0_i_15_n_0 ),
        .I2(\q_reg[1]_0 [1]),
        .I3(\addressM[22]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [2]),
        .I5(\addressM[22]_INST_0_i_13_n_0 ),
        .O(\addressM[20]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[20]_INST_0_i_12 
       (.I0(\addressM[20]_INST_0_i_16_n_0 ),
        .I1(\q_reg[1]_45 ),
        .I2(\q_reg[0]_0 ),
        .I3(\addressM[22]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_4 ),
        .I5(\q_reg[1]_44 ),
        .O(\addressM[20]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \addressM[20]_INST_0_i_14 
       (.I0(rd20[5]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[4]),
        .I3(\q_reg[1]_0 [3]),
        .I4(writeDataM[9]),
        .I5(\q_reg[1]_0 [4]),
        .O(\addressM[20]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \addressM[20]_INST_0_i_15 
       (.I0(rd20[9]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[8]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_41 ),
        .O(\addressM[20]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \addressM[20]_INST_0_i_16 
       (.I0(rd20[5]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[4]),
        .I3(\q_reg[1]_3 ),
        .I4(writeDataM[9]),
        .I5(\q_reg[1]_2 ),
        .O(\addressM[20]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[20]_INST_0_i_2 
       (.I0(SrcB2[20]),
        .I1(\q_reg[31]_1 [19]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [20]),
        .O(ALUResult[20]));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \addressM[20]_INST_0_i_3 
       (.I0(Instr[18]),
        .I1(Instr[27]),
        .I2(\addressM[20]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[20]_INST_0_i_7_n_0 ),
        .O(\addressM[20]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[20]_INST_0_i_4 
       (.I0(y01_in[20]),
        .I1(\addressM[20]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\q_reg[1]_10 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[20]));
  LUT6 #(
    .INIT(64'h00000000E323E020)) 
    \addressM[20]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(Instr[2]),
        .I4(Instr[4]),
        .I5(\addressM[31]_INST_0_i_25_n_0 ),
        .O(\addressM[20]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addressM[20]_INST_0_i_7 
       (.I0(Instr[6]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .O(\addressM[20]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[20]_INST_0_i_8 
       (.I0(\addressM[20]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[21]_INST_0_i_11_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[23]_INST_0_i_18_n_0 ),
        .O(y01_in[20]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[20]_INST_0_i_9 
       (.I0(\addressM[20]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[21]_INST_0_i_12_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[23]_INST_0_i_19_n_0 ),
        .O(\addressM[20]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[21]_INST_0 
       (.I0(SrcB2[21]),
        .I1(ALUResult[21]),
        .I2(Shift),
        .O(addressM[21]));
  LUT6 #(
    .INIT(64'hF5F4F5F70A0B0A08)) 
    \addressM[21]_INST_0_i_1 
       (.I0(\addressM[21]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[21]),
        .I5(MVN),
        .O(SrcB2[21]));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \addressM[21]_INST_0_i_10 
       (.I0(\addressM[24]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_8 ),
        .I3(\q_reg[1]_7 ),
        .I4(\q_reg[1]_9 ),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[21]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[21]_INST_0_i_11 
       (.I0(\addressM[21]_INST_0_i_14_n_0 ),
        .I1(\addressM[29]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[25]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_38 ),
        .O(\addressM[21]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[21]_INST_0_i_12 
       (.I0(\addressM[21]_INST_0_i_15_n_0 ),
        .I1(\addressM[29]_INST_0_i_16_n_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[25]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[2]_2 ),
        .O(\addressM[21]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[21]_INST_0_i_14 
       (.I0(rd20[6]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[5]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[21]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[21]_INST_0_i_15 
       (.I0(rd20[6]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[5]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[21]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[21]_INST_0_i_2 
       (.I0(SrcB2[21]),
        .I1(\q_reg[31]_1 [20]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [21]),
        .O(ALUResult[21]));
  LUT6 #(
    .INIT(64'h88BBB8888888B888)) 
    \addressM[21]_INST_0_i_3 
       (.I0(Instr[19]),
        .I1(Instr[27]),
        .I2(\addressM[21]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[31]_INST_0_i_10_n_0 ),
        .I5(\addressM[21]_INST_0_i_7_n_0 ),
        .O(\addressM[21]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[21]_INST_0_i_4 
       (.I0(y01_in[21]),
        .I1(\addressM[21]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[21]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[21]));
  LUT6 #(
    .INIT(64'h00000000E323E020)) 
    \addressM[21]_INST_0_i_6 
       (.I0(Instr[1]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(Instr[3]),
        .I4(Instr[5]),
        .I5(\addressM[31]_INST_0_i_25_n_0 ),
        .O(\addressM[21]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \addressM[21]_INST_0_i_7 
       (.I0(\q_reg[1]_0 [0]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .O(\addressM[21]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addressM[21]_INST_0_i_8 
       (.I0(\addressM[21]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\addressM[23]_INST_0_i_18_n_0 ),
        .I3(\q_reg[1]_0 [0]),
        .I4(\addressM[22]_INST_0_i_9_n_0 ),
        .O(y01_in[21]));
  LUT5 #(
    .INIT(32'hE2FFE200)) 
    \addressM[21]_INST_0_i_9 
       (.I0(\addressM[21]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\addressM[23]_INST_0_i_19_n_0 ),
        .I3(\q_reg[1]_0 [0]),
        .I4(\addressM[22]_INST_0_i_10_n_0 ),
        .O(\addressM[21]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[22]_INST_0 
       (.I0(SrcB2[22]),
        .I1(ALUResult[22]),
        .I2(Shift),
        .O(addressM[22]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[22]_INST_0_i_1 
       (.I0(\addressM[22]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[22]),
        .I5(MVN),
        .O(SrcB2[22]));
  LUT6 #(
    .INIT(64'hFFE2E2FF00E2E200)) 
    \addressM[22]_INST_0_i_10 
       (.I0(\addressM[22]_INST_0_i_14_n_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_44 ),
        .I3(\q_reg[1]_0 [0]),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[24]_INST_0_i_11_n_0 ),
        .O(\addressM[22]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \addressM[22]_INST_0_i_12 
       (.I0(rd20[7]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[6]),
        .I3(\q_reg[1]_0 [3]),
        .I4(writeDataM[10]),
        .I5(\q_reg[1]_0 [4]),
        .O(\addressM[22]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \addressM[22]_INST_0_i_13 
       (.I0(rd20[11]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[10]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_35 ),
        .O(\addressM[22]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00000000E2FFE200)) 
    \addressM[22]_INST_0_i_14 
       (.I0(rd20[7]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[6]),
        .I3(\q_reg[1]_3 ),
        .I4(writeDataM[10]),
        .I5(\q_reg[1]_2 ),
        .O(\addressM[22]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[22]_INST_0_i_2 
       (.I0(SrcB2[22]),
        .I1(\q_reg[31]_1 [21]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [22]),
        .O(ALUResult[22]));
  LUT6 #(
    .INIT(64'h00000000FF200020)) 
    \addressM[22]_INST_0_i_3 
       (.I0(\addressM[30]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_10_n_0 ),
        .I2(\addressM[31]_INST_0_i_12_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[20]),
        .I5(out[0]),
        .O(\addressM[22]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[22]_INST_0_i_4 
       (.I0(y01_in[22]),
        .I1(\addressM[22]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[22]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[22]_INST_0_i_6 
       (.I0(\addressM[22]_INST_0_i_9_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[23]_INST_0_i_18_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[25]_INST_0_i_10_n_0 ),
        .O(y01_in[22]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[22]_INST_0_i_7 
       (.I0(\addressM[22]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[23]_INST_0_i_19_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[25]_INST_0_i_11_n_0 ),
        .O(\addressM[22]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \addressM[22]_INST_0_i_8 
       (.I0(\addressM[24]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_8 ),
        .I3(\addressM[25]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_7 ),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[22]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \addressM[22]_INST_0_i_9 
       (.I0(\addressM[22]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(\addressM[22]_INST_0_i_13_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[24]_INST_0_i_10_n_0 ),
        .O(\addressM[22]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[23]_INST_0 
       (.I0(SrcB2[23]),
        .I1(ALUResult[23]),
        .I2(Shift),
        .O(addressM[23]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[23]_INST_0_i_1 
       (.I0(\addressM[23]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[23]),
        .I5(MVN),
        .O(SrcB2[23]));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[23]_INST_0_i_14 
       (.I0(ALUControl[0]),
        .I1(SrcB2[23]),
        .I2(r15[22]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[23]),
        .I5(ALUControl[1]),
        .O(\addressM[23]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[23]_INST_0_i_15 
       (.I0(ALUControl[0]),
        .I1(SrcB2[22]),
        .I2(r15[21]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[22]),
        .I5(ALUControl[1]),
        .O(\addressM[23]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[23]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[21]),
        .I2(r15[20]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[21]),
        .I5(ALUControl[1]),
        .O(\addressM[23]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[23]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[20]),
        .I2(r15[19]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[20]),
        .I5(ALUControl[1]),
        .O(\addressM[23]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \addressM[23]_INST_0_i_18 
       (.I0(\addressM[23]_INST_0_i_21_n_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(writeDataM[8]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_27 ),
        .O(\addressM[23]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h88B8BBBB88B88888)) 
    \addressM[23]_INST_0_i_19 
       (.I0(\addressM[23]_INST_0_i_22_n_0 ),
        .I1(\q_reg[1]_4 ),
        .I2(writeDataM[8]),
        .I3(\q_reg[1]_2 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[2]_0 ),
        .O(\addressM[23]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[23]_INST_0_i_2 
       (.I0(SrcB2[23]),
        .I1(\q_reg[31]_1 [22]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [23]),
        .O(ALUResult[23]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[23]_INST_0_i_21 
       (.I0(writeDataM[7]),
        .I1(\q_reg[1]_0 [3]),
        .I2(writeDataM_0_sn_1),
        .I3(\q_reg[1]_0 [4]),
        .I4(writeDataM[11]),
        .O(\addressM[23]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[23]_INST_0_i_22 
       (.I0(writeDataM[7]),
        .I1(\q_reg[1]_3 ),
        .I2(writeDataM_0_sn_1),
        .I3(\q_reg[1]_2 ),
        .I4(writeDataM[11]),
        .O(\addressM[23]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \addressM[23]_INST_0_i_23 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\q_reg[1]_0 [4]),
        .O(\q_reg[1]_2 ));
  LUT6 #(
    .INIT(64'h00000000FF200020)) 
    \addressM[23]_INST_0_i_3 
       (.I0(\addressM[31]_INST_0_i_11_n_0 ),
        .I1(\addressM[31]_INST_0_i_10_n_0 ),
        .I2(\addressM[31]_INST_0_i_12_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[21]),
        .I5(out[0]),
        .O(\addressM[23]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[23]_INST_0_i_4 
       (.I0(y01_in[23]),
        .I1(\addressM[23]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[23]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[23]));
  CARRY4 \addressM[23]_INST_0_i_6 
       (.CI(\addressM[19]_INST_0_i_6_n_0 ),
        .CO({\addressM[23]_INST_0_i_6_n_0 ,\addressM[23]_INST_0_i_6_n_1 ,\addressM[23]_INST_0_i_6_n_2 ,\addressM[23]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[23:20]),
        .O(\alu/sum [23:20]),
        .S({\addressM[23]_INST_0_i_14_n_0 ,\addressM[23]_INST_0_i_15_n_0 ,\addressM[23]_INST_0_i_16_n_0 ,\addressM[23]_INST_0_i_17_n_0 }));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \addressM[23]_INST_0_i_7 
       (.I0(\addressM[24]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\addressM[26]_INST_0_i_11_n_0 ),
        .I3(\addressM[23]_INST_0_i_18_n_0 ),
        .I4(\addressM[25]_INST_0_i_10_n_0 ),
        .I5(\q_reg[1]_0 [0]),
        .O(y01_in[23]));
  LUT6 #(
    .INIT(64'hEFECE3E02F2C2320)) 
    \addressM[23]_INST_0_i_8 
       (.I0(\addressM[24]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\addressM[26]_INST_0_i_12_n_0 ),
        .I4(\addressM[23]_INST_0_i_19_n_0 ),
        .I5(\addressM[25]_INST_0_i_11_n_0 ),
        .O(\addressM[23]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \addressM[23]_INST_0_i_9 
       (.I0(\addressM[26]_INST_0_i_14_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\addressM[24]_INST_0_i_12_n_0 ),
        .I3(\addressM[25]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_7 ),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[23]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[24]_INST_0 
       (.I0(SrcB2[24]),
        .I1(ALUResult[24]),
        .I2(Shift),
        .O(addressM[24]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[24]_INST_0_i_1 
       (.I0(\addressM[24]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[24]),
        .I5(MVN),
        .O(SrcB2[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[24]_INST_0_i_10 
       (.I0(\addressM[24]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_41 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[27]_INST_0_i_29_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_40 ),
        .O(\addressM[24]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[24]_INST_0_i_11 
       (.I0(\addressM[24]_INST_0_i_14_n_0 ),
        .I1(\q_reg[2]_3 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[27]_INST_0_i_35_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[8]_2 ),
        .O(\addressM[24]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[24]_INST_0_i_12 
       (.I0(writeDataM[15]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[12]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[24]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[24]_INST_0_i_13 
       (.I0(rd20[9]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[8]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[24]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[24]_INST_0_i_14 
       (.I0(rd20[9]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[8]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[24]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[24]_INST_0_i_2 
       (.I0(SrcB2[24]),
        .I1(\q_reg[31]_1 [23]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [24]),
        .O(ALUResult[24]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[24]_INST_0_i_3 
       (.I0(\addressM[24]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[22]),
        .I4(out[0]),
        .O(\addressM[24]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[24]_INST_0_i_4 
       (.I0(y01_in[24]),
        .I1(\addressM[24]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[24]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[24]));
  LUT5 #(
    .INIT(32'hFE030200)) 
    \addressM[24]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\addressM[16]_INST_0_i_7_n_0 ),
        .O(\addressM[24]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[24]_INST_0_i_7 
       (.I0(\addressM[24]_INST_0_i_10_n_0 ),
        .I1(\addressM[26]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[25]_INST_0_i_10_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[27]_INST_0_i_20_n_0 ),
        .O(y01_in[24]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[24]_INST_0_i_8 
       (.I0(\addressM[24]_INST_0_i_11_n_0 ),
        .I1(\addressM[26]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[25]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[27]_INST_0_i_22_n_0 ),
        .O(\addressM[24]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[24]_INST_0_i_9 
       (.I0(\addressM[27]_INST_0_i_25_n_0 ),
        .I1(\addressM[25]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[26]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[24]_INST_0_i_12_n_0 ),
        .O(\addressM[24]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[25]_INST_0 
       (.I0(SrcB2[25]),
        .I1(ALUResult[25]),
        .I2(Shift),
        .O(addressM[25]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[25]_INST_0_i_1 
       (.I0(\addressM[25]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[25]),
        .I5(MVN),
        .O(SrcB2[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[25]_INST_0_i_10 
       (.I0(\addressM[25]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_38 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[29]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_37 ),
        .O(\addressM[25]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[25]_INST_0_i_11 
       (.I0(\addressM[25]_INST_0_i_14_n_0 ),
        .I1(\q_reg[2]_2 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[29]_INST_0_i_16_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[8]_1 ),
        .O(\addressM[25]_INST_0_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[25]_INST_0_i_12 
       (.I0(\q_reg[31]_2 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[13]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[25]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[25]_INST_0_i_13 
       (.I0(rd20[10]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[9]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[25]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[25]_INST_0_i_14 
       (.I0(rd20[10]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[9]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[25]_INST_0_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[25]_INST_0_i_2 
       (.I0(SrcB2[25]),
        .I1(\q_reg[31]_1 [24]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [25]),
        .O(ALUResult[25]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[25]_INST_0_i_3 
       (.I0(\addressM[25]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[23]),
        .I4(out[0]),
        .O(\addressM[25]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[25]_INST_0_i_4 
       (.I0(y01_in[25]),
        .I1(\addressM[25]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[25]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[25]));
  LUT5 #(
    .INIT(32'hFE030200)) 
    \addressM[25]_INST_0_i_6 
       (.I0(Instr[1]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\addressM[17]_INST_0_i_7_n_0 ),
        .O(\addressM[25]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[25]_INST_0_i_7 
       (.I0(\addressM[25]_INST_0_i_10_n_0 ),
        .I1(\addressM[27]_INST_0_i_20_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[26]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[27]_INST_0_i_21_n_0 ),
        .O(y01_in[25]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[25]_INST_0_i_8 
       (.I0(\addressM[25]_INST_0_i_11_n_0 ),
        .I1(\addressM[27]_INST_0_i_22_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[26]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[27]_INST_0_i_23_n_0 ),
        .O(\addressM[25]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[25]_INST_0_i_9 
       (.I0(\addressM[26]_INST_0_i_13_n_0 ),
        .I1(\addressM[26]_INST_0_i_14_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[27]_INST_0_i_25_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[25]_INST_0_i_12_n_0 ),
        .O(\addressM[25]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[26]_INST_0 
       (.I0(SrcB2[26]),
        .I1(ALUResult[26]),
        .I2(Shift),
        .O(addressM[26]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[26]_INST_0_i_1 
       (.I0(\addressM[26]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[26]),
        .I5(MVN),
        .O(SrcB2[26]));
  LUT6 #(
    .INIT(64'hFF0000000000E0E0)) 
    \addressM[26]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [4]),
        .I2(Instr[2]),
        .I3(Instr[0]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [1]),
        .O(\addressM[26]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[26]_INST_0_i_11 
       (.I0(\addressM[26]_INST_0_i_15_n_0 ),
        .I1(\q_reg[1]_35 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[30]_INST_0_i_15_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_34 ),
        .O(\addressM[26]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[26]_INST_0_i_12 
       (.I0(\addressM[26]_INST_0_i_16_n_0 ),
        .I1(\q_reg[2]_1 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[30]_INST_0_i_18_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[8]_0 ),
        .O(\addressM[26]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[26]_INST_0_i_13 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[28]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[27]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[26]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[26]_INST_0_i_14 
       (.I0(writeDataM[16]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[14]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[26]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[26]_INST_0_i_15 
       (.I0(rd20[11]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[10]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[26]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[26]_INST_0_i_16 
       (.I0(rd20[11]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[10]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[26]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[26]_INST_0_i_2 
       (.I0(SrcB2[26]),
        .I1(\q_reg[31]_1 [25]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [26]),
        .O(ALUResult[26]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[26]_INST_0_i_3 
       (.I0(\addressM[26]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[23]),
        .I4(out[0]),
        .O(\addressM[26]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[26]_INST_0_i_4 
       (.I0(y01_in[26]),
        .I1(\addressM[26]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[26]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[26]));
  LUT5 #(
    .INIT(32'hFEAB02A8)) 
    \addressM[26]_INST_0_i_6 
       (.I0(\addressM[26]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\addressM[18]_INST_0_i_7_n_0 ),
        .O(\addressM[26]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[26]_INST_0_i_7 
       (.I0(\addressM[26]_INST_0_i_11_n_0 ),
        .I1(\addressM[27]_INST_0_i_21_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[27]_INST_0_i_20_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[29]_INST_0_i_10_n_0 ),
        .O(y01_in[26]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[26]_INST_0_i_8 
       (.I0(\addressM[26]_INST_0_i_12_n_0 ),
        .I1(\addressM[27]_INST_0_i_23_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[27]_INST_0_i_22_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[29]_INST_0_i_11_n_0 ),
        .O(\addressM[26]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[26]_INST_0_i_9 
       (.I0(\addressM[27]_INST_0_i_24_n_0 ),
        .I1(\addressM[27]_INST_0_i_25_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[26]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[26]_INST_0_i_14_n_0 ),
        .O(\addressM[26]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[27]_INST_0 
       (.I0(SrcB2[27]),
        .I1(ALUResult[27]),
        .I2(Shift),
        .O(addressM[27]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[27]_INST_0_i_1 
       (.I0(\addressM[27]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[27]),
        .I5(MVN),
        .O(SrcB2[27]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[27]_INST_0_i_10 
       (.I0(\addressM[28]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[27]_INST_0_i_24_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[27]_INST_0_i_25_n_0 ),
        .O(\addressM[27]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[27]_INST_0_i_15 
       (.I0(ALUControl[0]),
        .I1(SrcB2[27]),
        .I2(r15[26]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[27]),
        .I5(ALUControl[1]),
        .O(\addressM[27]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[27]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[26]),
        .I2(r15[25]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[26]),
        .I5(ALUControl[1]),
        .O(\addressM[27]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[27]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[25]),
        .I2(r15[24]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[25]),
        .I5(ALUControl[1]),
        .O(\addressM[27]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[27]_INST_0_i_18 
       (.I0(ALUControl[0]),
        .I1(SrcB2[24]),
        .I2(r15[23]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[24]),
        .I5(ALUControl[1]),
        .O(\addressM[27]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFF0000000000E0E0)) 
    \addressM[27]_INST_0_i_19 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [4]),
        .I2(Instr[3]),
        .I3(Instr[1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [1]),
        .O(\addressM[27]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[27]_INST_0_i_2 
       (.I0(SrcB2[27]),
        .I1(\q_reg[31]_1 [26]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [27]),
        .O(ALUResult[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_20 
       (.I0(\addressM[27]_INST_0_i_26_n_0 ),
        .I1(\q_reg[1]_27 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[27]_INST_0_i_27_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_43 ),
        .O(\addressM[27]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_21 
       (.I0(\addressM[27]_INST_0_i_29_n_0 ),
        .I1(\q_reg[1]_40 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_41 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_42 ),
        .O(\addressM[27]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_22 
       (.I0(\addressM[27]_INST_0_i_32_n_0 ),
        .I1(\q_reg[2]_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\addressM[27]_INST_0_i_33_n_0 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[8]_3 ),
        .O(\addressM[27]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_23 
       (.I0(\addressM[27]_INST_0_i_35_n_0 ),
        .I1(\q_reg[8]_2 ),
        .I2(\q_reg[1]_4 ),
        .I3(\q_reg[2]_3 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[12]_3 ),
        .O(\addressM[27]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[27]_INST_0_i_24 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[29]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[28]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[27]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[27]_INST_0_i_25 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[28]_0 ),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[27]_INST_0_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[27]_INST_0_i_26 
       (.I0(rd20[12]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[11]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[27]_INST_0_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_27 
       (.I0(Q[0]),
        .I1(rd20[0]),
        .I2(\q_reg[1]_0 [4]),
        .I3(r15[15]),
        .I4(\q_reg[1]_1 ),
        .I5(rd20[16]),
        .O(\addressM[27]_INST_0_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[27]_INST_0_i_29 
       (.I0(rd20[13]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[12]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[27]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[27]_INST_0_i_3 
       (.I0(\addressM[27]_INST_0_i_7_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[23]),
        .I4(out[0]),
        .O(\addressM[27]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[27]_INST_0_i_32 
       (.I0(rd20[12]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[11]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[27]_INST_0_i_32_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_33 
       (.I0(Q[0]),
        .I1(rd20[0]),
        .I2(\q_reg[1]_2 ),
        .I3(r15[15]),
        .I4(\q_reg[1]_1 ),
        .I5(rd20[16]),
        .O(\addressM[27]_INST_0_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[27]_INST_0_i_35 
       (.I0(rd20[13]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[12]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[27]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[27]_INST_0_i_4 
       (.I0(y01_in[27]),
        .I1(\addressM[27]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[27]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[27]));
  CARRY4 \addressM[27]_INST_0_i_6 
       (.CI(\addressM[23]_INST_0_i_6_n_0 ),
        .CO({\addressM[27]_INST_0_i_6_n_0 ,\addressM[27]_INST_0_i_6_n_1 ,\addressM[27]_INST_0_i_6_n_2 ,\addressM[27]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[27:24]),
        .O(\alu/sum [27:24]),
        .S({\addressM[27]_INST_0_i_15_n_0 ,\addressM[27]_INST_0_i_16_n_0 ,\addressM[27]_INST_0_i_17_n_0 ,\addressM[27]_INST_0_i_18_n_0 }));
  LUT5 #(
    .INIT(32'hFEAB02A8)) 
    \addressM[27]_INST_0_i_7 
       (.I0(\addressM[27]_INST_0_i_19_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\addressM[19]_INST_0_i_8_n_0 ),
        .O(\addressM[27]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[27]_INST_0_i_8 
       (.I0(\addressM[27]_INST_0_i_20_n_0 ),
        .I1(\addressM[29]_INST_0_i_10_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[27]_INST_0_i_21_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[30]_INST_0_i_11_n_0 ),
        .O(y01_in[27]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[27]_INST_0_i_9 
       (.I0(\addressM[27]_INST_0_i_22_n_0 ),
        .I1(\addressM[29]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[27]_INST_0_i_23_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[30]_INST_0_i_12_n_0 ),
        .O(\addressM[27]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[28]_INST_0 
       (.I0(SrcB2[28]),
        .I1(ALUResult[28]),
        .I2(Shift),
        .O(addressM[28]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[28]_INST_0_i_1 
       (.I0(\addressM[28]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[28]),
        .I5(MVN),
        .O(SrcB2[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[28]_INST_0_i_10 
       (.I0(\addressM[28]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_32 ),
        .I2(\q_reg[1]_0 [1]),
        .I3(\addressM[28]_INST_0_i_14_n_0 ),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_33 ),
        .O(\addressM[28]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[28]_INST_0_i_12 
       (.I0(writeDataM[16]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [3]),
        .I3(writeDataM[15]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[28]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \addressM[28]_INST_0_i_13 
       (.I0(rd20[13]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[12]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_40 ),
        .O(\addressM[28]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h00E2FFFF00E20000)) 
    \addressM[28]_INST_0_i_14 
       (.I0(rd20[15]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[14]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_34 ),
        .O(\addressM[28]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \addressM[28]_INST_0_i_16 
       (.I0(\q_reg[1]_0 [0]),
        .I1(\q_reg[1]_0 [1]),
        .O(\q_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[28]_INST_0_i_2 
       (.I0(SrcB2[28]),
        .I1(\q_reg[31]_1 [27]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [28]),
        .O(ALUResult[28]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[28]_INST_0_i_3 
       (.I0(\addressM[28]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[23]),
        .I4(out[0]),
        .O(\addressM[28]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[28]_INST_0_i_4 
       (.I0(y01_in[28]),
        .I1(\addressM[28]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[28]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[28]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h0EA802A8)) 
    \addressM[28]_INST_0_i_6 
       (.I0(\addressM[20]_INST_0_i_6_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(Instr[6]),
        .O(\addressM[28]_INST_0_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[28]_INST_0_i_7 
       (.I0(\addressM[28]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[29]_INST_0_i_10_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[31]_INST_0_i_27_n_0 ),
        .O(y01_in[28]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[28]_INST_0_i_8 
       (.I0(\q_reg[0]_14 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[29]_INST_0_i_11_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[31]_INST_0_i_31_n_0 ),
        .O(\addressM[28]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \addressM[28]_INST_0_i_9 
       (.I0(\addressM[29]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[28]_INST_0_i_12_n_0 ),
        .O(\addressM[28]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[29]_INST_0 
       (.I0(SrcB2[29]),
        .I1(ALUResult[29]),
        .I2(Shift),
        .O(addressM[29]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[29]_INST_0_i_1 
       (.I0(\addressM[29]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[29]),
        .I5(MVN),
        .O(SrcB2[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_10 
       (.I0(\addressM[29]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_37 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_38 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_39 ),
        .O(\addressM[29]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_11 
       (.I0(\addressM[29]_INST_0_i_16_n_0 ),
        .I1(\q_reg[8]_1 ),
        .I2(\q_reg[1]_4 ),
        .I3(\q_reg[2]_2 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[12]_2 ),
        .O(\addressM[29]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[29]_INST_0_i_12 
       (.I0(\q_reg[31]_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [3]),
        .I3(\q_reg[31]_2 ),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[29]_INST_0_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[29]_INST_0_i_13 
       (.I0(rd20[14]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[13]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[29]_INST_0_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[29]_INST_0_i_16 
       (.I0(rd20[14]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[13]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[29]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[29]_INST_0_i_2 
       (.I0(SrcB2[29]),
        .I1(\q_reg[31]_1 [28]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [29]),
        .O(ALUResult[29]));
  LUT5 #(
    .INIT(32'h0000F808)) 
    \addressM[29]_INST_0_i_3 
       (.I0(\addressM[29]_INST_0_i_6_n_0 ),
        .I1(\addressM[31]_INST_0_i_12_n_0 ),
        .I2(Instr[27]),
        .I3(Instr[23]),
        .I4(out[0]),
        .O(\addressM[29]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[29]_INST_0_i_4 
       (.I0(y01_in[29]),
        .I1(\addressM[29]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[29]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[29]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h0EA802A8)) 
    \addressM[29]_INST_0_i_6 
       (.I0(\addressM[21]_INST_0_i_6_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [3]),
        .I4(\q_reg[1]_0 [0]),
        .O(\addressM[29]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[29]_INST_0_i_7 
       (.I0(\addressM[29]_INST_0_i_10_n_0 ),
        .I1(\addressM[31]_INST_0_i_27_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[30]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_13 ),
        .O(y01_in[29]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[29]_INST_0_i_8 
       (.I0(\addressM[29]_INST_0_i_11_n_0 ),
        .I1(\addressM[31]_INST_0_i_31_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[30]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_12 ),
        .O(\addressM[29]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h2F20)) 
    \addressM[29]_INST_0_i_9 
       (.I0(\addressM[30]_INST_0_i_14_n_0 ),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[29]_INST_0_i_12_n_0 ),
        .O(\addressM[29]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[2]_INST_0 
       (.I0(SrcB2[2]),
        .I1(ALUResult[2]),
        .I2(Shift),
        .O(addressM[2]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[2]_INST_0_i_1 
       (.I0(Instr[0]),
        .I1(Instr[27]),
        .I2(\addressM[2]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[2]),
        .I5(MVN),
        .O(SrcB2[2]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[2]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[1]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[0]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[2]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[2]_INST_0_i_11 
       (.I0(rd20[1]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[0]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[2]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[2]_INST_0_i_2 
       (.I0(SrcB2[2]),
        .I1(\q_reg[31]_1 [1]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [2]),
        .O(ALUResult[2]));
  LUT6 #(
    .INIT(64'hB888BBBBB888B888)) 
    \addressM[2]_INST_0_i_3 
       (.I0(Instr[2]),
        .I1(out[0]),
        .I2(\addressM[2]_INST_0_i_6_n_0 ),
        .I3(\addressM[3]_INST_0_i_8_n_0 ),
        .I4(\addressM[31]_INST_0_i_12_n_0 ),
        .I5(\addressM[18]_INST_0_i_6_n_0 ),
        .O(\addressM[2]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFAEFFAAFFAAAAAA)) 
    \addressM[2]_INST_0_i_4 
       (.I0(\addressM[2]_INST_0_i_7_n_0 ),
        .I1(\addressM[2]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[2]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[2]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[2]_INST_0_i_6 
       (.I0(Instr[4]),
        .I1(\q_reg[1]_0 [1]),
        .I2(Instr[6]),
        .I3(\q_reg[1]_0 [2]),
        .I4(Instr[2]),
        .O(\addressM[2]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \addressM[2]_INST_0_i_7 
       (.I0(\addressM[3]_INST_0_i_20_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\addressM[2]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(\addressM[2]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8000FFFF80000000)) 
    \addressM[2]_INST_0_i_8 
       (.I0(\q_reg[1]_0 [2]),
        .I1(\addressM[2]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [3]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [0]),
        .I5(\addressM[3]_INST_0_i_21_n_0 ),
        .O(\addressM[2]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[2]_INST_0_i_9 
       (.I0(\addressM[5]_INST_0_i_12_n_0 ),
        .I1(\q_reg[1]_18 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[4]_INST_0_i_13_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_19 ),
        .O(\addressM[2]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[30]_INST_0 
       (.I0(SrcB2[30]),
        .I1(ALUResult[30]),
        .I2(Shift),
        .O(addressM[30]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[30]_INST_0_i_1 
       (.I0(\addressM[30]_INST_0_i_3_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[30]),
        .I5(MVN),
        .O(SrcB2[30]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \addressM[30]_INST_0_i_10 
       (.I0(Instr[4]),
        .I1(\q_reg[1]_0 [1]),
        .I2(Instr[6]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[30]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_11 
       (.I0(\addressM[30]_INST_0_i_15_n_0 ),
        .I1(\q_reg[1]_34 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_35 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_36 ),
        .O(\addressM[30]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_12 
       (.I0(\addressM[30]_INST_0_i_18_n_0 ),
        .I1(\q_reg[8]_0 ),
        .I2(\q_reg[1]_4 ),
        .I3(\q_reg[2]_1 ),
        .I4(\q_reg[1]_3 ),
        .I5(\q_reg[12]_1 ),
        .O(\addressM[30]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[30]_INST_0_i_13 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[31]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[30]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[30]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[30]_INST_0_i_14 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[30]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[29]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[30]_INST_0_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[30]_INST_0_i_15 
       (.I0(rd20[15]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[14]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[30]_INST_0_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[30]_INST_0_i_18 
       (.I0(rd20[15]),
        .I1(\q_reg[1]_1 ),
        .I2(r15[14]),
        .I3(\q_reg[1]_2 ),
        .O(\addressM[30]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[30]_INST_0_i_2 
       (.I0(SrcB2[30]),
        .I1(\q_reg[31]_1 [29]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [30]),
        .O(ALUResult[30]));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \addressM[30]_INST_0_i_3 
       (.I0(\addressM[31]_INST_0_i_10_n_0 ),
        .I1(\addressM[30]_INST_0_i_6_n_0 ),
        .I2(\addressM[31]_INST_0_i_12_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[23]),
        .I5(out[0]),
        .O(\addressM[30]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[30]_INST_0_i_4 
       (.I0(y01_in[30]),
        .I1(\addressM[30]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[30]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[30]));
  LUT6 #(
    .INIT(64'hFF0C0AFF000C0A00)) 
    \addressM[30]_INST_0_i_6 
       (.I0(Instr[0]),
        .I1(Instr[2]),
        .I2(\addressM[31]_INST_0_i_25_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\addressM[30]_INST_0_i_10_n_0 ),
        .O(\addressM[30]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[30]_INST_0_i_7 
       (.I0(\addressM[30]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_13 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[31]_INST_0_i_27_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_12 ),
        .O(y01_in[30]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[30]_INST_0_i_8 
       (.I0(\addressM[30]_INST_0_i_12_n_0 ),
        .I1(\q_reg[0]_12 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[31]_INST_0_i_31_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_11 ),
        .O(\addressM[30]_INST_0_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \addressM[30]_INST_0_i_9 
       (.I0(\addressM[30]_INST_0_i_13_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[30]_INST_0_i_14_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .O(\addressM[30]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[31]_INST_0 
       (.I0(SrcB2[31]),
        .I1(ALUResult[31]),
        .I2(Shift),
        .O(addressM[31]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[31]_INST_0_i_1 
       (.I0(\addressM[31]_INST_0_i_4_n_0 ),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(srcBshifted),
        .I5(MVN),
        .O(SrcB2[31]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \addressM[31]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [1]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [3]),
        .O(\addressM[31]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF0C0AFF000C0A00)) 
    \addressM[31]_INST_0_i_11 
       (.I0(Instr[1]),
        .I1(Instr[3]),
        .I2(\addressM[31]_INST_0_i_25_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\addressM[31]_INST_0_i_26_n_0 ),
        .O(\addressM[31]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \addressM[31]_INST_0_i_12 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[31]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_13 
       (.I0(\addressM[31]_INST_0_i_27_n_0 ),
        .I1(\q_reg[1]_12 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_13 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_14 ),
        .O(y01_in[31]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[31]_INST_0_i_14 
       (.I0(\addressM[31]_INST_0_i_31_n_0 ),
        .I1(\q_reg[0]_11 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[0]_12 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_13 ),
        .O(\addressM[31]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \addressM[31]_INST_0_i_15 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [0]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [2]),
        .I4(\q_reg[1]_0 [4]),
        .O(\addressM[31]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \addressM[31]_INST_0_i_16 
       (.I0(\q_reg[1]_0 [1]),
        .I1(\q_reg[1]_0 [3]),
        .I2(\q_reg[31]_0 ),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[31]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[31]_INST_0_i_2 
       (.I0(SrcB2[31]),
        .I1(\q_reg[31]_1 [30]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [31]),
        .O(ALUResult[31]));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[31]_INST_0_i_21 
       (.I0(ALUControl[0]),
        .I1(SrcB2[31]),
        .I2(r15[30]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[31]),
        .I5(ALUControl[1]),
        .O(\addressM[31]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[31]_INST_0_i_22 
       (.I0(ALUControl[0]),
        .I1(SrcB2[30]),
        .I2(r15[29]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[30]),
        .I5(ALUControl[1]),
        .O(\addressM[31]_INST_0_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[31]_INST_0_i_23 
       (.I0(ALUControl[0]),
        .I1(SrcB2[29]),
        .I2(r15[28]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[29]),
        .I5(ALUControl[1]),
        .O(\addressM[31]_INST_0_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[31]_INST_0_i_24 
       (.I0(ALUControl[0]),
        .I1(SrcB2[28]),
        .I2(r15[27]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[28]),
        .I5(ALUControl[1]),
        .O(\addressM[31]_INST_0_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \addressM[31]_INST_0_i_25 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [1]),
        .I3(\q_reg[1]_0 [4]),
        .O(\addressM[31]_INST_0_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8B8B888)) 
    \addressM[31]_INST_0_i_26 
       (.I0(Instr[5]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_0 [4]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[31]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_27 
       (.I0(\addressM[31]_INST_0_i_35_n_0 ),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_27 ),
        .I3(\q_reg[1]_0 [3]),
        .I4(\q_reg[1]_28 ),
        .O(\addressM[31]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \addressM[31]_INST_0_i_3 
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[24]),
        .I3(Instr[21]),
        .I4(Instr[23]),
        .O(Shift));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[31]_INST_0_i_31 
       (.I0(\addressM[31]_INST_0_i_47_n_0 ),
        .I1(\q_reg[1]_4 ),
        .I2(\q_reg[2]_0 ),
        .I3(\q_reg[1]_3 ),
        .I4(\q_reg[12]_0 ),
        .O(\addressM[31]_INST_0_i_31_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_35 
       (.I0(writeDataM_0_sn_1),
        .I1(writeDataM[11]),
        .I2(\q_reg[1]_0 [3]),
        .I3(writeDataM[7]),
        .I4(\q_reg[1]_0 [4]),
        .I5(writeDataM[12]),
        .O(\addressM[31]_INST_0_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF800080)) 
    \addressM[31]_INST_0_i_4 
       (.I0(\addressM[31]_INST_0_i_10_n_0 ),
        .I1(\addressM[31]_INST_0_i_11_n_0 ),
        .I2(\addressM[31]_INST_0_i_12_n_0 ),
        .I3(Instr[27]),
        .I4(Instr[23]),
        .I5(out[0]),
        .O(\addressM[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[31]_INST_0_i_47 
       (.I0(writeDataM_0_sn_1),
        .I1(writeDataM[11]),
        .I2(\q_reg[1]_3 ),
        .I3(writeDataM[7]),
        .I4(\q_reg[1]_2 ),
        .I5(writeDataM[12]),
        .O(\addressM[31]_INST_0_i_47_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \addressM[31]_INST_0_i_48 
       (.I0(\q_reg[1]_0 [0]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [2]),
        .O(\q_reg[1]_4 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[31]_INST_0_i_5 
       (.I0(y01_in[31]),
        .I1(\addressM[31]_INST_0_i_14_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[31]_INST_0_i_16_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(srcBshifted));
  LUT4 #(
    .INIT(16'h01FE)) 
    \addressM[31]_INST_0_i_50 
       (.I0(\q_reg[1]_0 [2]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_0 [3]),
        .O(\q_reg[1]_3 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \addressM[31]_INST_0_i_6 
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[22]),
        .I3(Instr[21]),
        .I4(Instr[23]),
        .I5(Instr[24]),
        .O(MVN));
  LUT6 #(
    .INIT(64'h0001110100010001)) 
    \addressM[31]_INST_0_i_8 
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[22]),
        .I3(Instr[23]),
        .I4(Instr[21]),
        .I5(Instr[24]),
        .O(ALUControl__0));
  CARRY4 \addressM[31]_INST_0_i_9 
       (.CI(\addressM[27]_INST_0_i_6_n_0 ),
        .CO({\addressM[31]_INST_0_i_9_n_0 ,\addressM[31]_INST_0_i_9_n_1 ,\addressM[31]_INST_0_i_9_n_2 ,\addressM[31]_INST_0_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[31:28]),
        .O(\alu/sum [31:28]),
        .S({\addressM[31]_INST_0_i_21_n_0 ,\addressM[31]_INST_0_i_22_n_0 ,\addressM[31]_INST_0_i_23_n_0 ,\addressM[31]_INST_0_i_24_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[3]_INST_0 
       (.I0(SrcB2[3]),
        .I1(ALUResult[3]),
        .I2(Shift),
        .O(addressM[3]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[3]_INST_0_i_1 
       (.I0(Instr[1]),
        .I1(Instr[27]),
        .I2(\addressM[3]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[3]),
        .I5(MVN),
        .O(SrcB2[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \addressM[3]_INST_0_i_10 
       (.I0(\addressM[4]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[3]_INST_0_i_21_n_0 ),
        .I3(\addressM[31]_INST_0_i_15_n_0 ),
        .O(\addressM[3]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[3]_INST_0_i_11 
       (.I0(\addressM[6]_INST_0_i_12_n_0 ),
        .I1(\addressM[4]_INST_0_i_13_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[5]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_18 ),
        .O(\addressM[3]_INST_0_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \addressM[3]_INST_0_i_12 
       (.I0(ALUControl[0]),
        .I1(SrcB2__0),
        .O(\alu/condinvb ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[3]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[3]),
        .I2(r15[2]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[3]),
        .I5(ALUControl[1]),
        .O(\addressM[3]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[3]_INST_0_i_18 
       (.I0(ALUControl[0]),
        .I1(SrcB2[2]),
        .I2(r15[1]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[2]),
        .I5(ALUControl[1]),
        .O(\addressM[3]_INST_0_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[3]_INST_0_i_19 
       (.I0(ALUControl[0]),
        .I1(SrcB2[1]),
        .I2(r15[0]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[1]),
        .I5(ALUControl[1]),
        .O(\addressM[3]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[3]_INST_0_i_2 
       (.I0(SrcB2[3]),
        .I1(\q_reg[31]_1 [2]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [3]),
        .O(ALUResult[3]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[3]_INST_0_i_20 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [3]),
        .I3(writeDataM[1]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[3]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[3]_INST_0_i_21 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[1]_3 ),
        .I3(writeDataM[1]),
        .I4(\q_reg[1]_2 ),
        .I5(\q_reg[1]_4 ),
        .O(\addressM[3]_INST_0_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hB888BBBBB888B888)) 
    \addressM[3]_INST_0_i_3 
       (.I0(Instr[3]),
        .I1(out[0]),
        .I2(\addressM[3]_INST_0_i_7_n_0 ),
        .I3(\addressM[3]_INST_0_i_8_n_0 ),
        .I4(\addressM[31]_INST_0_i_12_n_0 ),
        .I5(\addressM[19]_INST_0_i_7_n_0 ),
        .O(\addressM[3]_INST_0_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFEFAFAAA)) 
    \addressM[3]_INST_0_i_4 
       (.I0(\addressM[3]_INST_0_i_9_n_0 ),
        .I1(\addressM[3]_INST_0_i_10_n_0 ),
        .I2(\addressM[3]_INST_0_i_11_n_0 ),
        .I3(Instr[6]),
        .I4(Instr[5]),
        .O(d0[3]));
  CARRY4 \addressM[3]_INST_0_i_6 
       (.CI(1'b0),
        .CO({\addressM[3]_INST_0_i_6_n_0 ,\addressM[3]_INST_0_i_6_n_1 ,\addressM[3]_INST_0_i_6_n_2 ,\addressM[3]_INST_0_i_6_n_3 }),
        .CYINIT(\alu/condinvb ),
        .DI(condinva[3:0]),
        .O(\alu/sum [3:0]),
        .S({\addressM[3]_INST_0_i_17_n_0 ,\addressM[3]_INST_0_i_18_n_0 ,\addressM[3]_INST_0_i_19_n_0 ,\q_reg[0]_19 }));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \addressM[3]_INST_0_i_7 
       (.I0(Instr[5]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [0]),
        .I3(\q_reg[1]_0 [2]),
        .I4(Instr[3]),
        .O(\addressM[3]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \addressM[3]_INST_0_i_8 
       (.I0(\q_reg[1]_0 [4]),
        .I1(\q_reg[1]_0 [3]),
        .O(\addressM[3]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000000E2)) 
    \addressM[3]_INST_0_i_9 
       (.I0(\addressM[4]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[3]_INST_0_i_20_n_0 ),
        .I3(Instr[6]),
        .I4(Instr[5]),
        .O(\addressM[3]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[4]_INST_0 
       (.I0(SrcB2[4]),
        .I1(ALUResult[4]),
        .I2(Shift),
        .O(addressM[4]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[4]_INST_0_i_1 
       (.I0(Instr[2]),
        .I1(Instr[27]),
        .I2(\addressM[4]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[4]),
        .I5(MVN),
        .O(SrcB2[4]));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[4]_INST_0_i_10 
       (.I0(writeDataM[0]),
        .I1(\q_reg[1]_0 [1]),
        .I2(\q_reg[1]_0 [3]),
        .I3(writeDataM[2]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[4]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \addressM[4]_INST_0_i_11 
       (.I0(writeDataM[0]),
        .I1(\q_reg[0]_0 ),
        .I2(\q_reg[1]_3 ),
        .I3(writeDataM[2]),
        .I4(\q_reg[1]_2 ),
        .I5(\q_reg[1]_4 ),
        .O(\addressM[4]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00004540)) 
    \addressM[4]_INST_0_i_12 
       (.I0(\q_reg[1]_2 ),
        .I1(r15[1]),
        .I2(\q_reg[1]_1 ),
        .I3(rd20[2]),
        .I4(\q_reg[1]_3 ),
        .O(\addressM[4]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[4]_INST_0_i_13 
       (.I0(\addressM[16]_INST_0_i_18_n_0 ),
        .I1(\q_reg[1]_30 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_29 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_31 ),
        .O(\addressM[4]_INST_0_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[4]_INST_0_i_2 
       (.I0(SrcB2[4]),
        .I1(\q_reg[31]_1 [3]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [4]),
        .O(ALUResult[4]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8BBB8B8)) 
    \addressM[4]_INST_0_i_3 
       (.I0(Instr[4]),
        .I1(out[0]),
        .I2(\addressM[4]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[20]_INST_0_i_6_n_0 ),
        .I5(\addressM[31]_INST_0_i_10_n_0 ),
        .O(\addressM[4]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[4]_INST_0_i_4 
       (.I0(y01_in[4]),
        .I1(\addressM[4]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[4]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[4]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \addressM[4]_INST_0_i_6 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [4]),
        .I2(\q_reg[1]_0 [2]),
        .I3(Instr[4]),
        .I4(\q_reg[1]_0 [1]),
        .I5(Instr[6]),
        .O(\addressM[4]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[4]_INST_0_i_7 
       (.I0(\addressM[4]_INST_0_i_10_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[5]_INST_0_i_10_n_0 ),
        .I3(\q_reg[1]_0 [1]),
        .I4(\addressM[7]_INST_0_i_19_n_0 ),
        .O(y01_in[4]));
  LUT6 #(
    .INIT(64'hB888BBBBB8888888)) 
    \addressM[4]_INST_0_i_8 
       (.I0(\addressM[4]_INST_0_i_11_n_0 ),
        .I1(\q_reg[1]_0 [0]),
        .I2(\addressM[4]_INST_0_i_12_n_0 ),
        .I3(\q_reg[1]_0 [2]),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[7]_INST_0_i_20_n_0 ),
        .O(\addressM[4]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[4]_INST_0_i_9 
       (.I0(\addressM[7]_INST_0_i_21_n_0 ),
        .I1(\addressM[5]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[6]_INST_0_i_12_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[4]_INST_0_i_13_n_0 ),
        .O(\addressM[4]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[5]_INST_0 
       (.I0(SrcB2[5]),
        .I1(ALUResult[5]),
        .I2(Shift),
        .O(addressM[5]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[5]_INST_0_i_1 
       (.I0(Instr[3]),
        .I1(Instr[27]),
        .I2(\addressM[5]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[5]),
        .I5(MVN),
        .O(SrcB2[5]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[5]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[2]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[1]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[5]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[5]_INST_0_i_11 
       (.I0(\q_reg[1]_3 ),
        .I1(rd20[2]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[1]),
        .I4(\q_reg[1]_2 ),
        .I5(\q_reg[1]_4 ),
        .O(\addressM[5]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[5]_INST_0_i_12 
       (.I0(\addressM[17]_INST_0_i_19_n_0 ),
        .I1(\q_reg[1]_25 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_24 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_26 ),
        .O(\addressM[5]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[5]_INST_0_i_2 
       (.I0(SrcB2[5]),
        .I1(\q_reg[31]_1 [4]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [5]),
        .O(ALUResult[5]));
  LUT6 #(
    .INIT(64'hB8B8B8B8B8BBB8B8)) 
    \addressM[5]_INST_0_i_3 
       (.I0(Instr[5]),
        .I1(out[0]),
        .I2(\addressM[5]_INST_0_i_6_n_0 ),
        .I3(\addressM[31]_INST_0_i_12_n_0 ),
        .I4(\addressM[21]_INST_0_i_6_n_0 ),
        .I5(\addressM[31]_INST_0_i_10_n_0 ),
        .O(\addressM[5]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[5]_INST_0_i_4 
       (.I0(y01_in[5]),
        .I1(\addressM[5]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[5]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[5]));
  LUT6 #(
    .INIT(64'h0101010000000100)) 
    \addressM[5]_INST_0_i_6 
       (.I0(\q_reg[1]_0 [3]),
        .I1(\q_reg[1]_0 [4]),
        .I2(\q_reg[1]_0 [2]),
        .I3(Instr[5]),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_0 [0]),
        .O(\addressM[5]_INST_0_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[5]_INST_0_i_7 
       (.I0(\addressM[5]_INST_0_i_10_n_0 ),
        .I1(\addressM[7]_INST_0_i_19_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[6]_INST_0_i_10_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[8]_INST_0_i_9_n_0 ),
        .O(y01_in[5]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[5]_INST_0_i_8 
       (.I0(\addressM[5]_INST_0_i_11_n_0 ),
        .I1(\addressM[7]_INST_0_i_20_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[6]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[8]_INST_0_i_10_n_0 ),
        .O(\addressM[5]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[5]_INST_0_i_9 
       (.I0(\addressM[8]_INST_0_i_11_n_0 ),
        .I1(\addressM[6]_INST_0_i_12_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[7]_INST_0_i_21_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[5]_INST_0_i_12_n_0 ),
        .O(\addressM[5]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[6]_INST_0 
       (.I0(SrcB2[6]),
        .I1(ALUResult[6]),
        .I2(Shift),
        .O(addressM[6]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[6]_INST_0_i_1 
       (.I0(d1[6]),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[6]),
        .I5(MVN),
        .O(SrcB2[6]));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[6]_INST_0_i_10 
       (.I0(\q_reg[1]_0 [3]),
        .I1(rd20[3]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[2]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\q_reg[1]_0 [2]),
        .O(\addressM[6]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \addressM[6]_INST_0_i_11 
       (.I0(\q_reg[1]_3 ),
        .I1(rd20[3]),
        .I2(\q_reg[1]_1 ),
        .I3(r15[2]),
        .I4(\q_reg[1]_2 ),
        .I5(\q_reg[1]_4 ),
        .O(\addressM[6]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[6]_INST_0_i_12 
       (.I0(\addressM[18]_INST_0_i_19_n_0 ),
        .I1(\q_reg[1]_22 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_21 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_23 ),
        .O(\addressM[6]_INST_0_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[6]_INST_0_i_2 
       (.I0(SrcB2[6]),
        .I1(\q_reg[31]_1 [5]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [6]),
        .O(ALUResult[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[6]_INST_0_i_3 
       (.I0(Instr[4]),
        .I1(Instr[27]),
        .I2(Instr[6]),
        .I3(out[0]),
        .I4(\ext/Imm__7 [6]),
        .O(d1[6]));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[6]_INST_0_i_4 
       (.I0(y01_in[6]),
        .I1(\addressM[6]_INST_0_i_8_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[6]_INST_0_i_9_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[6]));
  LUT6 #(
    .INIT(64'hCCC0000300000002)) 
    \addressM[6]_INST_0_i_6 
       (.I0(Instr[6]),
        .I1(\q_reg[1]_0 [3]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\addressM[30]_INST_0_i_6_n_0 ),
        .O(\ext/Imm__7 [6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[6]_INST_0_i_7 
       (.I0(\addressM[6]_INST_0_i_10_n_0 ),
        .I1(\addressM[8]_INST_0_i_9_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[7]_INST_0_i_19_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[9]_INST_0_i_9_n_0 ),
        .O(y01_in[6]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[6]_INST_0_i_8 
       (.I0(\addressM[6]_INST_0_i_11_n_0 ),
        .I1(\addressM[8]_INST_0_i_10_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[7]_INST_0_i_20_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[9]_INST_0_i_10_n_0 ),
        .O(\addressM[6]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[6]_INST_0_i_9 
       (.I0(\addressM[9]_INST_0_i_11_n_0 ),
        .I1(\addressM[7]_INST_0_i_21_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[8]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[6]_INST_0_i_12_n_0 ),
        .O(\addressM[6]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[7]_INST_0 
       (.I0(SrcB2[7]),
        .I1(ALUResult[7]),
        .I2(Shift),
        .O(addressM[7]));
  LUT6 #(
    .INIT(64'h55545557AAABAAA8)) 
    \addressM[7]_INST_0_i_1 
       (.I0(d1[7]),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[25]),
        .I4(d0[7]),
        .I5(MVN),
        .O(SrcB2[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[7]_INST_0_i_10 
       (.I0(\addressM[10]_INST_0_i_11_n_0 ),
        .I1(\addressM[8]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[9]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[7]_INST_0_i_21_n_0 ),
        .O(\addressM[7]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[7]_INST_0_i_15 
       (.I0(ALUControl[0]),
        .I1(SrcB2[7]),
        .I2(r15[6]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[7]),
        .I5(ALUControl[1]),
        .O(\addressM[7]_INST_0_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[7]_INST_0_i_16 
       (.I0(ALUControl[0]),
        .I1(SrcB2[6]),
        .I2(r15[5]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[6]),
        .I5(ALUControl[1]),
        .O(\addressM[7]_INST_0_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[7]_INST_0_i_17 
       (.I0(ALUControl[0]),
        .I1(SrcB2[5]),
        .I2(r15[4]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[5]),
        .I5(ALUControl[1]),
        .O(\addressM[7]_INST_0_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h6966699996999666)) 
    \addressM[7]_INST_0_i_18 
       (.I0(ALUControl[0]),
        .I1(SrcB2[4]),
        .I2(r15[3]),
        .I3(\q_reg[0]_1 ),
        .I4(rd10[4]),
        .I5(ALUControl[1]),
        .O(\addressM[7]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[7]_INST_0_i_19 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[3]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[7]_INST_0_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[7]_INST_0_i_2 
       (.I0(SrcB2[7]),
        .I1(\q_reg[31]_1 [6]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [7]),
        .O(ALUResult[7]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[7]_INST_0_i_20 
       (.I0(writeDataM_0_sn_1),
        .I1(\q_reg[1]_4 ),
        .I2(\q_reg[1]_2 ),
        .I3(writeDataM[3]),
        .I4(\q_reg[1]_3 ),
        .O(\addressM[7]_INST_0_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[7]_INST_0_i_21 
       (.I0(\addressM[19]_INST_0_i_38_n_0 ),
        .I1(\q_reg[1]_16 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_15 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_17 ),
        .O(\addressM[7]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \addressM[7]_INST_0_i_3 
       (.I0(Instr[5]),
        .I1(Instr[27]),
        .I2(\q_reg[1]_0 [0]),
        .I3(out[0]),
        .I4(\ext/Imm__7 [7]),
        .O(d1[7]));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[7]_INST_0_i_4 
       (.I0(y01_in[7]),
        .I1(\addressM[7]_INST_0_i_9_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[7]_INST_0_i_10_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[7]));
  CARRY4 \addressM[7]_INST_0_i_6 
       (.CI(\addressM[3]_INST_0_i_6_n_0 ),
        .CO({\addressM[7]_INST_0_i_6_n_0 ,\addressM[7]_INST_0_i_6_n_1 ,\addressM[7]_INST_0_i_6_n_2 ,\addressM[7]_INST_0_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI(condinva[7:4]),
        .O(\alu/sum [7:4]),
        .S({\addressM[7]_INST_0_i_15_n_0 ,\addressM[7]_INST_0_i_16_n_0 ,\addressM[7]_INST_0_i_17_n_0 ,\addressM[7]_INST_0_i_18_n_0 }));
  LUT6 #(
    .INIT(64'hCCC0000300000002)) 
    \addressM[7]_INST_0_i_7 
       (.I0(\q_reg[1]_0 [0]),
        .I1(\q_reg[1]_0 [3]),
        .I2(\q_reg[1]_0 [2]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [4]),
        .I5(\addressM[31]_INST_0_i_11_n_0 ),
        .O(\ext/Imm__7 [7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[7]_INST_0_i_8 
       (.I0(\addressM[7]_INST_0_i_19_n_0 ),
        .I1(\addressM[9]_INST_0_i_9_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[8]_INST_0_i_9_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[10]_INST_0_i_9_n_0 ),
        .O(y01_in[7]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[7]_INST_0_i_9 
       (.I0(\addressM[7]_INST_0_i_20_n_0 ),
        .I1(\addressM[9]_INST_0_i_10_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[8]_INST_0_i_10_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[10]_INST_0_i_10_n_0 ),
        .O(\addressM[7]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[8]_INST_0 
       (.I0(SrcB2[8]),
        .I1(ALUResult[8]),
        .I2(Shift),
        .O(addressM[8]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[8]_INST_0_i_1 
       (.I0(Instr[6]),
        .I1(Instr[27]),
        .I2(\addressM[8]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[8]),
        .I5(MVN),
        .O(SrcB2[8]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[8]_INST_0_i_10 
       (.I0(writeDataM[0]),
        .I1(\q_reg[1]_4 ),
        .I2(\q_reg[1]_2 ),
        .I3(writeDataM[4]),
        .I4(\q_reg[1]_3 ),
        .O(\addressM[8]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[8]_INST_0_i_11 
       (.I0(\addressM[16]_INST_0_i_16_n_0 ),
        .I1(\q_reg[1]_29 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[16]_INST_0_i_18_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_30 ),
        .O(\addressM[8]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[8]_INST_0_i_2 
       (.I0(SrcB2[8]),
        .I1(\q_reg[31]_1 [7]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [8]),
        .O(ALUResult[8]));
  LUT6 #(
    .INIT(64'hEA40EA40EA40EA04)) 
    \addressM[8]_INST_0_i_3 
       (.I0(out[0]),
        .I1(\addressM[24]_INST_0_i_6_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[8]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[8]_INST_0_i_4 
       (.I0(y01_in[8]),
        .I1(\addressM[8]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[8]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[8]_INST_0_i_6 
       (.I0(\addressM[8]_INST_0_i_9_n_0 ),
        .I1(\addressM[10]_INST_0_i_9_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[9]_INST_0_i_9_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[11]_INST_0_i_19_n_0 ),
        .O(y01_in[8]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[8]_INST_0_i_7 
       (.I0(\addressM[8]_INST_0_i_10_n_0 ),
        .I1(\addressM[10]_INST_0_i_10_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[9]_INST_0_i_10_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[11]_INST_0_i_20_n_0 ),
        .O(\addressM[8]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[8]_INST_0_i_8 
       (.I0(\addressM[11]_INST_0_i_21_n_0 ),
        .I1(\addressM[9]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[10]_INST_0_i_11_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[8]_INST_0_i_11_n_0 ),
        .O(\addressM[8]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[8]_INST_0_i_9 
       (.I0(writeDataM[0]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[4]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[8]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \addressM[9]_INST_0 
       (.I0(SrcB2[9]),
        .I1(ALUResult[9]),
        .I2(Shift),
        .O(addressM[9]));
  LUT6 #(
    .INIT(64'h470047FFB8FFB800)) 
    \addressM[9]_INST_0_i_1 
       (.I0(\q_reg[1]_0 [0]),
        .I1(Instr[27]),
        .I2(\addressM[9]_INST_0_i_3_n_0 ),
        .I3(ALUSrc),
        .I4(d0[9]),
        .I5(MVN),
        .O(SrcB2[9]));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[9]_INST_0_i_10 
       (.I0(writeDataM[1]),
        .I1(\q_reg[1]_4 ),
        .I2(\q_reg[1]_2 ),
        .I3(writeDataM[5]),
        .I4(\q_reg[1]_3 ),
        .O(\addressM[9]_INST_0_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[9]_INST_0_i_11 
       (.I0(\addressM[17]_INST_0_i_17_n_0 ),
        .I1(\q_reg[1]_24 ),
        .I2(\q_reg[1]_0 [2]),
        .I3(\addressM[17]_INST_0_i_19_n_0 ),
        .I4(\q_reg[1]_0 [3]),
        .I5(\q_reg[1]_25 ),
        .O(\addressM[9]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6666E8FF6666E800)) 
    \addressM[9]_INST_0_i_2 
       (.I0(SrcB2[9]),
        .I1(\q_reg[31]_1 [8]),
        .I2(ALUControl[0]),
        .I3(ALUControl__0),
        .I4(ALUControl[1]),
        .I5(\alu/sum [9]),
        .O(ALUResult[9]));
  LUT6 #(
    .INIT(64'hEAEA4040EAEA4004)) 
    \addressM[9]_INST_0_i_3 
       (.I0(out[0]),
        .I1(\addressM[25]_INST_0_i_6_n_0 ),
        .I2(\q_reg[1]_0 [4]),
        .I3(\q_reg[1]_0 [1]),
        .I4(\q_reg[1]_0 [2]),
        .I5(\q_reg[1]_0 [3]),
        .O(\addressM[9]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF0CFF00FF00AAAA)) 
    \addressM[9]_INST_0_i_4 
       (.I0(y01_in[9]),
        .I1(\addressM[9]_INST_0_i_7_n_0 ),
        .I2(\addressM[31]_INST_0_i_15_n_0 ),
        .I3(\addressM[9]_INST_0_i_8_n_0 ),
        .I4(Instr[6]),
        .I5(Instr[5]),
        .O(d0[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[9]_INST_0_i_6 
       (.I0(\addressM[9]_INST_0_i_9_n_0 ),
        .I1(\addressM[11]_INST_0_i_19_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[10]_INST_0_i_9_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[1]_48 ),
        .O(y01_in[9]));
  LUT6 #(
    .INIT(64'hCFC0AFAFCFC0A0A0)) 
    \addressM[9]_INST_0_i_7 
       (.I0(\addressM[9]_INST_0_i_10_n_0 ),
        .I1(\addressM[11]_INST_0_i_20_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[10]_INST_0_i_10_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\q_reg[0]_17 ),
        .O(\addressM[9]_INST_0_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \addressM[9]_INST_0_i_8 
       (.I0(\addressM[12]_INST_0_i_11_n_0 ),
        .I1(\addressM[10]_INST_0_i_11_n_0 ),
        .I2(\q_reg[1]_0 [0]),
        .I3(\addressM[11]_INST_0_i_21_n_0 ),
        .I4(\q_reg[1]_0 [1]),
        .I5(\addressM[9]_INST_0_i_11_n_0 ),
        .O(\addressM[9]_INST_0_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \addressM[9]_INST_0_i_9 
       (.I0(writeDataM[1]),
        .I1(\q_reg[1]_0 [2]),
        .I2(\q_reg[1]_0 [4]),
        .I3(writeDataM[5]),
        .I4(\q_reg[1]_0 [3]),
        .O(\addressM[9]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \cl/flagreg0/q[0]_i_1 
       (.I0(\q[0]_i_2__0_n_0 ),
        .I1(ALUControl__0),
        .I2(\c/cl/FlagWrite [0]),
        .I3(\q_reg[0]_20 ),
        .O(\q_reg[0]_6 ));
  LUT6 #(
    .INIT(64'hF444FFFFF4440000)) 
    \cl/flagreg0/q[1]_i_1 
       (.I0(ALUControl__0),
        .I1(\alu/sum [32]),
        .I2(Shift),
        .I3(ALUFlags2),
        .I4(\c/cl/FlagWrite [0]),
        .I5(carry),
        .O(\q_reg[1]_5 ));
  LUT6 #(
    .INIT(64'hFF01FFFFFF010000)) 
    \cl/flagreg1/q[0]_i_1 
       (.I0(\q[0]_i_2_n_0 ),
        .I1(\q[0]_i_3_n_0 ),
        .I2(\q[0]_i_4_n_0 ),
        .I3(ALUFlags10_out),
        .I4(\c/cl/FlagWrite [1]),
        .I5(\q_reg[0]_21 ),
        .O(\q_reg[0]_7 ));
  LUT5 #(
    .INIT(32'hEAFFEA00)) 
    \cl/flagreg1/q[1]_i_1 
       (.I0(ALUResult[31]),
        .I1(Shift),
        .I2(srcBshifted),
        .I3(\c/cl/FlagWrite [1]),
        .I4(data4),
        .O(\q_reg[1]_6 ));
  LUT6 #(
    .INIT(64'h311E822811983919)) 
    g0_b0
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(Instr[24]));
  LUT6 #(
    .INIT(64'hA12B4B00052A31AA)) 
    g0_b0__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(\q_reg[1]_0 [1]));
  LUT6 #(
    .INIT(64'h322D411422643626)) 
    g0_b0__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[16]));
  LUT6 #(
    .INIT(64'h322D411422643626)) 
    g0_b0__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[0]));
  LUT6 #(
    .INIT(64'h088F188911110199)) 
    g0_b1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(Instr[25]));
  LUT6 #(
    .INIT(64'h958115A000AA058A)) 
    g0_b1__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(\q_reg[1]_0 [2]));
  LUT6 #(
    .INIT(64'h044F244622220266)) 
    g0_b1__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[17]));
  LUT6 #(
    .INIT(64'h044F244622220266)) 
    g0_b1__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[1]));
  LUT6 #(
    .INIT(64'hB806000000003408)) 
    g0_b2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(out[0]));
  LUT6 #(
    .INIT(64'hF021000000002130)) 
    g0_b2__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(\q_reg[1]_0 [3]));
  LUT6 #(
    .INIT(64'h7409000000003804)) 
    g0_b2__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[18]));
  LUT6 #(
    .INIT(64'h7409000000003804)) 
    g0_b2__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[2]));
  LUT6 #(
    .INIT(64'h080F000100090418)) 
    g0_b3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(Instr[27]));
  LUT6 #(
    .INIT(64'h9181008001800112)) 
    g0_b3__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(\q_reg[1]_0 [4]));
  LUT6 #(
    .INIT(64'h040F000200060824)) 
    g0_b3__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[19]));
  LUT6 #(
    .INIT(64'h040F000200060824)) 
    g0_b3__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[3]));
  LUT6 #(
    .INIT(64'h240F204020400408)) 
    g0_b4
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(out[1]));
  LUT6 #(
    .INIT(64'hA191200420040110)) 
    g0_b4__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(Instr[12]));
  LUT6 #(
    .INIT(64'h180F108010800804)) 
    g0_b4__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[20]));
  LUT6 #(
    .INIT(64'h180F108010800804)) 
    g0_b4__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[4]));
  LUT6 #(
    .INIT(64'h573E151017315313)) 
    g0_b5
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(out[2]));
  LUT6 #(
    .INIT(64'h8B7B003A0ABA88EA)) 
    g0_b5__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(Instr[13]));
  LUT6 #(
    .INIT(64'hAB3D2A202B32A323)) 
    g0_b5__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[21]));
  LUT6 #(
    .INIT(64'hAB3D2A202B32A323)) 
    g0_b5__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[5]));
  LUT6 #(
    .INIT(64'h551F331031111511)) 
    g0_b6
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(out[3]));
  LUT6 #(
    .INIT(64'h81FB282A20AA00BA)) 
    g0_b6__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(Instr[14]));
  LUT6 #(
    .INIT(64'hAA2F332032222A22)) 
    g0_b6__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[22]));
  LUT6 #(
    .INIT(64'hAA2F332032222A22)) 
    g0_b6__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(Instr[6]));
  LUT6 #(
    .INIT(64'h373E113013313313)) 
    g0_b7
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(out[4]));
  LUT6 #(
    .INIT(64'hAB3B022A0AAAA8AA)) 
    g0_b7__0
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[0]),
        .I4(g0_b7_i_1__1_n_0),
        .I5(g0_b7_i_2__0_n_0),
        .O(Instr[15]));
  LUT6 #(
    .INIT(64'h3B3D223023323323)) 
    g0_b7__1
       (.I0(Q[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .I3(sel[3]),
        .I4(sel[4]),
        .I5(sel[5]),
        .O(Instr[23]));
  LUT6 #(
    .INIT(64'h3B3D223023323323)) 
    g0_b7__2
       (.I0(Q[0]),
        .I1(g0_b7_i_1_n_0),
        .I2(g0_b7_i_2_n_0),
        .I3(g0_b7_i_3_n_0),
        .I4(g0_b7_i_4_n_0),
        .I5(g0_b7_i_5_n_0),
        .O(\q_reg[1]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h9)) 
    g0_b7_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(g0_b7_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h6)) 
    g0_b7_i_1__0
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(sel[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    g0_b7_i_1__1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[4]),
        .O(g0_b7_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h1E)) 
    g0_b7_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(g0_b7_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    g0_b7_i_2__0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(g0_b7_i_2__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'h78)) 
    g0_b7_i_2__1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(sel[2]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    g0_b7_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(g0_b7_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    g0_b7_i_3__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(sel[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h57FFA800)) 
    g0_b7_i_4
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(g0_b7_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    g0_b7_i_4__0
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(sel[4]));
  LUT6 #(
    .INIT(64'h57FFFFFFA8000000)) 
    g0_b7_i_5
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(g0_b7_i_5_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    g0_b7_i_5__0
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(sel[5]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[0]_i_1 
       (.I0(readDataM[0]),
        .I1(addressM[0]),
        .I2(out[0]),
        .I3(Q[0]),
        .I4(PCSrc),
        .O(d[0]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_10 
       (.I0(ALUResult[26]),
        .I1(ALUResult[27]),
        .I2(ALUResult[24]),
        .I3(ALUResult[25]),
        .O(\q[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_11 
       (.I0(ALUResult[18]),
        .I1(ALUResult[19]),
        .I2(ALUResult[16]),
        .I3(ALUResult[17]),
        .O(\q[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[0]_i_12 
       (.I0(d0[4]),
        .I1(d0[5]),
        .I2(d0[6]),
        .I3(d0[7]),
        .I4(\q[0]_i_16_n_0 ),
        .O(\q[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[0]_i_13 
       (.I0(d0[12]),
        .I1(d0[13]),
        .I2(d0[14]),
        .I3(d0[15]),
        .I4(\q[0]_i_17_n_0 ),
        .O(\q[0]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \q[0]_i_14 
       (.I0(d0[28]),
        .I1(d0[29]),
        .I2(srcBshifted),
        .I3(d0[30]),
        .I4(\q[0]_i_18_n_0 ),
        .O(\q[0]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \q[0]_i_15 
       (.I0(\q[0]_i_19_n_0 ),
        .I1(d0[20]),
        .I2(d0[21]),
        .I3(d0[22]),
        .I4(d0[23]),
        .O(\q[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_16 
       (.I0(d0[1]),
        .I1(d0[0]),
        .I2(d0[3]),
        .I3(d0[2]),
        .O(\q[0]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_17 
       (.I0(d0[9]),
        .I1(d0[8]),
        .I2(d0[11]),
        .I3(d0[10]),
        .O(\q[0]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_18 
       (.I0(d0[25]),
        .I1(d0[24]),
        .I2(d0[27]),
        .I3(d0[26]),
        .O(\q[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[0]_i_19 
       (.I0(d0[19]),
        .I1(d0[18]),
        .I2(d0[17]),
        .I3(d0[16]),
        .O(\q[0]_i_19_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_2 
       (.I0(\q[0]_i_6_n_0 ),
        .I1(\q[0]_i_7_n_0 ),
        .I2(\q[0]_i_8_n_0 ),
        .I3(\q[0]_i_9_n_0 ),
        .O(\q[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1118881844422242)) 
    \q[0]_i_2__0 
       (.I0(\alu/sum [31]),
        .I1(ALUControl[0]),
        .I2(rd10[31]),
        .I3(\q_reg[0]_1 ),
        .I4(r15[30]),
        .I5(SrcB2[31]),
        .O(\q[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_3 
       (.I0(ALUResult[29]),
        .I1(ALUResult[28]),
        .I2(ALUResult[30]),
        .I3(ALUResult[31]),
        .I4(\q[0]_i_10_n_0 ),
        .O(\q[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \q[0]_i_4 
       (.I0(ALUResult[21]),
        .I1(ALUResult[20]),
        .I2(ALUResult[23]),
        .I3(ALUResult[22]),
        .I4(\q[0]_i_11_n_0 ),
        .O(\q[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \q[0]_i_5 
       (.I0(\q[0]_i_12_n_0 ),
        .I1(\q[0]_i_13_n_0 ),
        .I2(\q[0]_i_14_n_0 ),
        .I3(\q[0]_i_15_n_0 ),
        .I4(Shift),
        .O(ALUFlags10_out));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_6 
       (.I0(ALUResult[10]),
        .I1(ALUResult[11]),
        .I2(ALUResult[8]),
        .I3(ALUResult[9]),
        .O(\q[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_7 
       (.I0(ALUResult[14]),
        .I1(ALUResult[15]),
        .I2(ALUResult[12]),
        .I3(ALUResult[13]),
        .O(\q[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_8 
       (.I0(ALUResult[2]),
        .I1(ALUResult[3]),
        .I2(ALUResult[0]),
        .I3(ALUResult[1]),
        .O(\q[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[0]_i_9 
       (.I0(ALUResult[6]),
        .I1(ALUResult[7]),
        .I2(ALUResult[4]),
        .I3(ALUResult[5]),
        .O(\q[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[10]_i_1 
       (.I0(readDataM[10]),
        .I1(addressM[10]),
        .I2(out[0]),
        .I3(d1_0[9]),
        .I4(PCSrc),
        .O(d[10]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[11]_i_1 
       (.I0(readDataM[11]),
        .I1(addressM[11]),
        .I2(out[0]),
        .I3(d1_0[10]),
        .I4(PCSrc),
        .O(d[11]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[12]_i_1 
       (.I0(readDataM[12]),
        .I1(addressM[12]),
        .I2(out[0]),
        .I3(d1_0[11]),
        .I4(PCSrc),
        .O(d[12]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[13]_i_1 
       (.I0(readDataM[13]),
        .I1(addressM[13]),
        .I2(out[0]),
        .I3(d1_0[12]),
        .I4(PCSrc),
        .O(d[13]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[14]_i_1 
       (.I0(readDataM[14]),
        .I1(addressM[14]),
        .I2(out[0]),
        .I3(d1_0[13]),
        .I4(PCSrc),
        .O(d[14]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[15]_i_1 
       (.I0(readDataM[15]),
        .I1(addressM[15]),
        .I2(out[0]),
        .I3(d1_0[14]),
        .I4(PCSrc),
        .O(d[15]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[16]_i_1 
       (.I0(readDataM[16]),
        .I1(addressM[16]),
        .I2(out[0]),
        .I3(d1_0[15]),
        .I4(PCSrc),
        .O(d[16]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[17]_i_1 
       (.I0(readDataM[17]),
        .I1(addressM[17]),
        .I2(out[0]),
        .I3(d1_0[16]),
        .I4(PCSrc),
        .O(d[17]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[18]_i_1 
       (.I0(readDataM[18]),
        .I1(addressM[18]),
        .I2(out[0]),
        .I3(d1_0[17]),
        .I4(PCSrc),
        .O(d[18]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[19]_i_1 
       (.I0(readDataM[19]),
        .I1(addressM[19]),
        .I2(out[0]),
        .I3(d1_0[18]),
        .I4(PCSrc),
        .O(d[19]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[1]_i_1 
       (.I0(readDataM[1]),
        .I1(addressM[1]),
        .I2(out[0]),
        .I3(d1_0[0]),
        .I4(PCSrc),
        .O(d[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \q[1]_i_2 
       (.I0(Instr[20]),
        .I1(out[0]),
        .I2(Instr[27]),
        .I3(CondEx),
        .O(\c/cl/FlagWrite [1]));
  LUT6 #(
    .INIT(64'h4D484D4D4D484848)) 
    \q[1]_i_3 
       (.I0(Instr[5]),
        .I1(writeDataM_0_sn_1),
        .I2(Instr[6]),
        .I3(r15[30]),
        .I4(\q_reg[1]_1 ),
        .I5(rd20[31]),
        .O(ALUFlags2));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \q[1]_i_4 
       (.I0(\c/dec/p_1_out__5 ),
        .I1(out[0]),
        .I2(Instr[27]),
        .I3(CondEx),
        .O(\c/cl/FlagWrite [0]));
  LUT5 #(
    .INIT(32'h8AA28200)) 
    \q[1]_i_5 
       (.I0(Instr[20]),
        .I1(Instr[21]),
        .I2(Instr[24]),
        .I3(Instr[23]),
        .I4(Instr[22]),
        .O(\c/dec/p_1_out__5 ));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[20]_i_1 
       (.I0(readDataM[20]),
        .I1(addressM[20]),
        .I2(out[0]),
        .I3(d1_0[19]),
        .I4(PCSrc),
        .O(d[20]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[21]_i_1 
       (.I0(readDataM[21]),
        .I1(addressM[21]),
        .I2(out[0]),
        .I3(d1_0[20]),
        .I4(PCSrc),
        .O(d[21]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[22]_i_1 
       (.I0(readDataM[22]),
        .I1(addressM[22]),
        .I2(out[0]),
        .I3(d1_0[21]),
        .I4(PCSrc),
        .O(d[22]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[23]_i_1 
       (.I0(readDataM[23]),
        .I1(addressM[23]),
        .I2(out[0]),
        .I3(d1_0[22]),
        .I4(PCSrc),
        .O(d[23]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[24]_i_1 
       (.I0(readDataM[24]),
        .I1(addressM[24]),
        .I2(out[0]),
        .I3(d1_0[23]),
        .I4(PCSrc),
        .O(d[24]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[25]_i_1 
       (.I0(readDataM[25]),
        .I1(addressM[25]),
        .I2(out[0]),
        .I3(d1_0[24]),
        .I4(PCSrc),
        .O(d[25]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[26]_i_1 
       (.I0(readDataM[26]),
        .I1(addressM[26]),
        .I2(out[0]),
        .I3(d1_0[25]),
        .I4(PCSrc),
        .O(d[26]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[27]_i_1 
       (.I0(readDataM[27]),
        .I1(addressM[27]),
        .I2(out[0]),
        .I3(d1_0[26]),
        .I4(PCSrc),
        .O(d[27]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[28]_i_1 
       (.I0(readDataM[28]),
        .I1(addressM[28]),
        .I2(out[0]),
        .I3(d1_0[27]),
        .I4(PCSrc),
        .O(d[28]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[29]_i_1 
       (.I0(readDataM[29]),
        .I1(addressM[29]),
        .I2(out[0]),
        .I3(d1_0[28]),
        .I4(PCSrc),
        .O(d[29]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[2]_i_1 
       (.I0(readDataM[2]),
        .I1(addressM[2]),
        .I2(out[0]),
        .I3(d1_0[1]),
        .I4(PCSrc),
        .O(d[2]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[30]_i_1 
       (.I0(readDataM[30]),
        .I1(addressM[30]),
        .I2(out[0]),
        .I3(d1_0[29]),
        .I4(PCSrc),
        .O(d[30]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[31]_i_2 
       (.I0(readDataM[31]),
        .I1(addressM[31]),
        .I2(out[0]),
        .I3(d1_0[30]),
        .I4(PCSrc),
        .O(d[31]));
  LUT5 #(
    .INIT(32'hEEAE0000)) 
    \q[31]_i_3 
       (.I0(Instr[27]),
        .I1(PCS1),
        .I2(out[0]),
        .I3(Instr[20]),
        .I4(CondEx),
        .O(PCSrc));
  LUT4 #(
    .INIT(16'h8000)) 
    \q[31]_i_4 
       (.I0(Instr[15]),
        .I1(Instr[14]),
        .I2(Instr[12]),
        .I3(Instr[13]),
        .O(PCS1));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[3]_i_1 
       (.I0(readDataM[3]),
        .I1(addressM[3]),
        .I2(out[0]),
        .I3(d1_0[2]),
        .I4(PCSrc),
        .O(d[3]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[4]_i_1 
       (.I0(readDataM[4]),
        .I1(addressM[4]),
        .I2(out[0]),
        .I3(d1_0[3]),
        .I4(PCSrc),
        .O(d[4]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[5]_i_1 
       (.I0(readDataM[5]),
        .I1(addressM[5]),
        .I2(out[0]),
        .I3(d1_0[4]),
        .I4(PCSrc),
        .O(d[5]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[6]_i_1 
       (.I0(readDataM[6]),
        .I1(addressM[6]),
        .I2(out[0]),
        .I3(d1_0[5]),
        .I4(PCSrc),
        .O(d[6]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[7]_i_1 
       (.I0(readDataM[7]),
        .I1(addressM[7]),
        .I2(out[0]),
        .I3(d1_0[6]),
        .I4(PCSrc),
        .O(d[7]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[8]_i_1 
       (.I0(readDataM[8]),
        .I1(addressM[8]),
        .I2(out[0]),
        .I3(d1_0[7]),
        .I4(PCSrc),
        .O(d[8]));
  LUT5 #(
    .INIT(32'hACACFF00)) 
    \q[9]_i_1 
       (.I0(readDataM[9]),
        .I1(addressM[9]),
        .I2(out[0]),
        .I3(d1_0[8]),
        .I4(PCSrc),
        .O(d[9]));
  FDCE \q_reg[0] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[0]),
        .Q(Q[0]));
  FDCE \q_reg[10] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[10]),
        .Q(Q[10]));
  FDCE \q_reg[11] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[11]),
        .Q(Q[11]));
  FDCE \q_reg[12] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[12]),
        .Q(Q[12]));
  FDCE \q_reg[13] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[13]),
        .Q(Q[13]));
  FDCE \q_reg[14] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[14]),
        .Q(Q[14]));
  FDCE \q_reg[15] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[15]),
        .Q(Q[15]));
  FDCE \q_reg[16] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[16]),
        .Q(Q[16]));
  FDCE \q_reg[17] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[17]),
        .Q(Q[17]));
  FDCE \q_reg[18] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[18]),
        .Q(Q[18]));
  FDCE \q_reg[19] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[19]),
        .Q(Q[19]));
  FDCE \q_reg[1] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[1]),
        .Q(Q[1]));
  CARRY4 \q_reg[1]_i_2 
       (.CI(\addressM[31]_INST_0_i_9_n_0 ),
        .CO({\NLW_q_reg[1]_i_2_CO_UNCONNECTED [3:1],\alu/sum [32]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_q_reg[1]_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  FDCE \q_reg[20] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[20]),
        .Q(Q[20]));
  FDCE \q_reg[21] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[21]),
        .Q(Q[21]));
  FDCE \q_reg[22] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[22]),
        .Q(Q[22]));
  FDCE \q_reg[23] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[23]),
        .Q(Q[23]));
  FDCE \q_reg[24] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[24]),
        .Q(Q[24]));
  FDCE \q_reg[25] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[25]),
        .Q(Q[25]));
  FDCE \q_reg[26] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[26]),
        .Q(Q[26]));
  FDCE \q_reg[27] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[27]),
        .Q(Q[27]));
  FDCE \q_reg[28] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[28]),
        .Q(Q[28]));
  FDCE \q_reg[29] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[29]),
        .Q(Q[29]));
  FDCE \q_reg[2] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[2]),
        .Q(Q[2]));
  FDCE \q_reg[30] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[30]),
        .Q(Q[30]));
  FDCE \q_reg[31] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[31]),
        .Q(Q[31]));
  FDCE \q_reg[3] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[7]),
        .Q(Q[7]));
  FDCE \q_reg[8] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[8]),
        .Q(Q[8]));
  FDCE \q_reg[9] 
       (.C(clk),
        .CE(E),
        .CLR(reset),
        .D(d[9]),
        .Q(Q[9]));
  LUT6 #(
    .INIT(64'hAFAC232300000000)) 
    rf_reg_r1_0_15_0_5_i_1
       (.I0(Instr[20]),
        .I1(Instr[27]),
        .I2(out[0]),
        .I3(Instr[23]),
        .I4(Instr[24]),
        .I5(CondEx),
        .O(RegWrite));
  LUT2 #(
    .INIT(4'hE)) 
    rf_reg_r1_0_15_0_5_i_10
       (.I0(Instr[27]),
        .I1(Instr[17]),
        .O(\q_reg[0]_5 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    rf_reg_r1_0_15_0_5_i_11
       (.I0(Instr[27]),
        .I1(Instr[16]),
        .O(\q_reg[0]_5 [0]));
  LUT3 #(
    .INIT(8'hF8)) 
    rf_reg_r1_0_15_0_5_i_12
       (.I0(Instr[27]),
        .I1(Instr[24]),
        .I2(Instr[15]),
        .O(wa3[3]));
  LUT3 #(
    .INIT(8'hF8)) 
    rf_reg_r1_0_15_0_5_i_13
       (.I0(Instr[27]),
        .I1(Instr[24]),
        .I2(Instr[14]),
        .O(wa3[2]));
  LUT3 #(
    .INIT(8'hF8)) 
    rf_reg_r1_0_15_0_5_i_14
       (.I0(Instr[27]),
        .I1(Instr[24]),
        .I2(Instr[13]),
        .O(wa3[1]));
  LUT3 #(
    .INIT(8'h2A)) 
    rf_reg_r1_0_15_0_5_i_15
       (.I0(Instr[12]),
        .I1(Instr[27]),
        .I2(Instr[24]),
        .O(wa3[0]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_2
       (.I0(readDataM[1]),
        .I1(addressM[1]),
        .I2(out[0]),
        .I3(d1_0[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[1]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_3
       (.I0(readDataM[0]),
        .I1(addressM[0]),
        .I2(out[0]),
        .I3(Q[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[0]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_4
       (.I0(readDataM[3]),
        .I1(addressM[3]),
        .I2(out[0]),
        .I3(d1_0[2]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[3]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_5
       (.I0(readDataM[2]),
        .I1(addressM[2]),
        .I2(out[0]),
        .I3(d1_0[1]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[2]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_6
       (.I0(readDataM[5]),
        .I1(addressM[5]),
        .I2(out[0]),
        .I3(d1_0[4]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[5]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_0_5_i_7
       (.I0(readDataM[4]),
        .I1(addressM[4]),
        .I2(out[0]),
        .I3(d1_0[3]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[4]));
  LUT2 #(
    .INIT(4'hE)) 
    rf_reg_r1_0_15_0_5_i_8
       (.I0(Instr[27]),
        .I1(Instr[19]),
        .O(\q_reg[0]_5 [3]));
  LUT2 #(
    .INIT(4'hE)) 
    rf_reg_r1_0_15_0_5_i_9
       (.I0(Instr[27]),
        .I1(Instr[18]),
        .O(\q_reg[0]_5 [2]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_1
       (.I0(readDataM[13]),
        .I1(addressM[13]),
        .I2(out[0]),
        .I3(d1_0[12]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[13]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_2
       (.I0(readDataM[12]),
        .I1(addressM[12]),
        .I2(out[0]),
        .I3(d1_0[11]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[12]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_3
       (.I0(readDataM[15]),
        .I1(addressM[15]),
        .I2(out[0]),
        .I3(d1_0[14]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[15]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_4
       (.I0(readDataM[14]),
        .I1(addressM[14]),
        .I2(out[0]),
        .I3(d1_0[13]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[14]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_5
       (.I0(readDataM[17]),
        .I1(addressM[17]),
        .I2(out[0]),
        .I3(d1_0[16]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[17]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_12_17_i_6
       (.I0(readDataM[16]),
        .I1(addressM[16]),
        .I2(out[0]),
        .I3(d1_0[15]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[16]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_18_23_i_1
       (.I0(readDataM[19]),
        .I1(addressM[19]),
        .I2(out[0]),
        .I3(d1_0[18]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[19]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_18_23_i_2
       (.I0(readDataM[18]),
        .I1(addressM[18]),
        .I2(out[0]),
        .I3(d1_0[17]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[18]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_18_23_i_3
       (.I0(d1_0[20]),
        .I1(readDataM[21]),
        .I2(addressM[21]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[21]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_18_23_i_4
       (.I0(d1_0[19]),
        .I1(readDataM[20]),
        .I2(addressM[20]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[20]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_18_23_i_5
       (.I0(d1_0[22]),
        .I1(readDataM[23]),
        .I2(addressM[23]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[23]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_18_23_i_6
       (.I0(d1_0[21]),
        .I1(readDataM[22]),
        .I2(addressM[22]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[22]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_24_29_i_1
       (.I0(readDataM[25]),
        .I1(addressM[25]),
        .I2(out[0]),
        .I3(d1_0[24]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[25]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_24_29_i_2
       (.I0(readDataM[24]),
        .I1(addressM[24]),
        .I2(out[0]),
        .I3(d1_0[23]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[24]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_24_29_i_3
       (.I0(readDataM[27]),
        .I1(addressM[27]),
        .I2(out[0]),
        .I3(d1_0[26]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[27]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_24_29_i_4
       (.I0(readDataM[26]),
        .I1(addressM[26]),
        .I2(out[0]),
        .I3(d1_0[25]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[26]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_24_29_i_5
       (.I0(d1_0[28]),
        .I1(readDataM[29]),
        .I2(addressM[29]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[29]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_24_29_i_6
       (.I0(d1_0[27]),
        .I1(readDataM[28]),
        .I2(addressM[28]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[28]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_30_31_i_1
       (.I0(d1_0[30]),
        .I1(readDataM[31]),
        .I2(addressM[31]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[31]));
  LUT6 #(
    .INIT(64'hAAAACCF0CCF0CCF0)) 
    rf_reg_r1_0_15_30_31_i_2
       (.I0(d1_0[29]),
        .I1(readDataM[30]),
        .I2(addressM[30]),
        .I3(out[0]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[30]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_1
       (.I0(readDataM[7]),
        .I1(addressM[7]),
        .I2(out[0]),
        .I3(d1_0[6]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[7]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_2
       (.I0(readDataM[6]),
        .I1(addressM[6]),
        .I2(out[0]),
        .I3(d1_0[5]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[6]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_3
       (.I0(readDataM[9]),
        .I1(addressM[9]),
        .I2(out[0]),
        .I3(d1_0[8]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[9]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_4
       (.I0(readDataM[8]),
        .I1(addressM[8]),
        .I2(out[0]),
        .I3(d1_0[7]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[8]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_5
       (.I0(readDataM[11]),
        .I1(addressM[11]),
        .I2(out[0]),
        .I3(d1_0[10]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[11]));
  LUT6 #(
    .INIT(64'hFF00ACACACACACAC)) 
    rf_reg_r1_0_15_6_11_i_6
       (.I0(readDataM[10]),
        .I1(addressM[10]),
        .I2(out[0]),
        .I3(d1_0[9]),
        .I4(Instr[24]),
        .I5(Instr[27]),
        .O(wd3[10]));
  LUT5 #(
    .INIT(32'hF8F0F0F0)) 
    sum_i_1
       (.I0(Instr[17]),
        .I1(Instr[16]),
        .I2(Instr[27]),
        .I3(Instr[19]),
        .I4(Instr[18]),
        .O(\q_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0100010101000000)) 
    sum_i_2
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[21]),
        .I3(Instr[24]),
        .I4(Instr[23]),
        .I5(Instr[22]),
        .O(ALUControl[0]));
  LUT6 #(
    .INIT(64'h0001011100000000)) 
    sum_i_3
       (.I0(Instr[27]),
        .I1(out[0]),
        .I2(Instr[22]),
        .I3(Instr[23]),
        .I4(Instr[24]),
        .I5(Instr[21]),
        .O(ALUControl[1]));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \writeDataM[0]_INST_0 
       (.I0(Q[0]),
        .I1(ADDRA[1]),
        .I2(ADDRA[0]),
        .I3(ADDRA[3]),
        .I4(ADDRA[2]),
        .I5(rd20[0]),
        .O(writeDataM_0_sn_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \writeDataM[0]_INST_0_i_1 
       (.I0(Instr[13]),
        .I1(out[0]),
        .I2(Instr[20]),
        .I3(Instr[1]),
        .O(ADDRA[1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \writeDataM[0]_INST_0_i_2 
       (.I0(Instr[12]),
        .I1(out[0]),
        .I2(Instr[20]),
        .I3(Instr[0]),
        .O(ADDRA[0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \writeDataM[0]_INST_0_i_3 
       (.I0(Instr[15]),
        .I1(out[0]),
        .I2(Instr[20]),
        .I3(Instr[3]),
        .O(ADDRA[3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \writeDataM[0]_INST_0_i_4 
       (.I0(Instr[14]),
        .I1(out[0]),
        .I2(Instr[20]),
        .I3(Instr[2]),
        .O(ADDRA[2]));
  LUT4 #(
    .INIT(16'h8000)) 
    \writeDataM[31]_INST_0_i_1 
       (.I0(ADDRA[1]),
        .I1(ADDRA[0]),
        .I2(ADDRA[3]),
        .I3(ADDRA[2]),
        .O(\q_reg[1]_1 ));
  LUT1 #(
    .INIT(2'h1)) 
    y_carry_i_1
       (.I0(Q[2]),
        .O(S));
endmodule

(* ORIG_REF_NAME = "regfile" *) 
module design_1_top_0_0_regfile
   (rd10,
    rd20,
    clk,
    RegWrite,
    wd3,
    \q_reg[0] ,
    wa3,
    ADDRA);
  output [31:0]rd10;
  output [31:0]rd20;
  input clk;
  input RegWrite;
  input [31:0]wd3;
  input [3:0]\q_reg[0] ;
  input [3:0]wa3;
  input [3:0]ADDRA;

  wire [3:0]ADDRA;
  wire RegWrite;
  wire clk;
  wire [3:0]\q_reg[0] ;
  wire [31:0]rd10;
  wire [31:0]rd20;
  wire [3:0]wa3;
  wire [31:0]wd3;
  wire [1:0]NLW_rf_reg_r1_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r1_0_15_6_11_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_rf_reg_r2_0_15_6_11_DOD_UNCONNECTED;

  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_0_5
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[1:0]),
        .DOB(rd10[3:2]),
        .DOC(rd10[5:4]),
        .DOD(NLW_rf_reg_r1_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_12_17
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[13:12]),
        .DOB(rd10[15:14]),
        .DOC(rd10[17:16]),
        .DOD(NLW_rf_reg_r1_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_18_23
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[19:18]),
        .DOB(rd10[21:20]),
        .DOC(rd10[23:22]),
        .DOD(NLW_rf_reg_r1_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_24_29
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[25:24]),
        .DOB(rd10[27:26]),
        .DOC(rd10[29:28]),
        .DOD(NLW_rf_reg_r1_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_30_31
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd10[31:30]),
        .DOB(NLW_rf_reg_r1_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r1_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r1_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r1_0_15_6_11
       (.ADDRA({1'b0,\q_reg[0] }),
        .ADDRB({1'b0,\q_reg[0] }),
        .ADDRC({1'b0,\q_reg[0] }),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd10[7:6]),
        .DOB(rd10[9:8]),
        .DOC(rd10[11:10]),
        .DOD(NLW_rf_reg_r1_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_0_5
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[1:0]),
        .DIB(wd3[3:2]),
        .DIC(wd3[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[1:0]),
        .DOB(rd20[3:2]),
        .DOC(rd20[5:4]),
        .DOD(NLW_rf_reg_r2_0_15_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_12_17
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[13:12]),
        .DIB(wd3[15:14]),
        .DIC(wd3[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[13:12]),
        .DOB(rd20[15:14]),
        .DOC(rd20[17:16]),
        .DOD(NLW_rf_reg_r2_0_15_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_18_23
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[19:18]),
        .DIB(wd3[21:20]),
        .DIC(wd3[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[19:18]),
        .DOB(rd20[21:20]),
        .DOC(rd20[23:22]),
        .DOD(NLW_rf_reg_r2_0_15_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_24_29
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[25:24]),
        .DIB(wd3[27:26]),
        .DIC(wd3[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[25:24]),
        .DOB(rd20[27:26]),
        .DOC(rd20[29:28]),
        .DOD(NLW_rf_reg_r2_0_15_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_30_31
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(rd20[31:30]),
        .DOB(NLW_rf_reg_r2_0_15_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_rf_reg_r2_0_15_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_rf_reg_r2_0_15_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM32M rf_reg_r2_0_15_6_11
       (.ADDRA({1'b0,ADDRA}),
        .ADDRB({1'b0,ADDRA}),
        .ADDRC({1'b0,ADDRA}),
        .ADDRD({1'b0,wa3}),
        .DIA(wd3[7:6]),
        .DIB(wd3[9:8]),
        .DIC(wd3[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(rd20[7:6]),
        .DOB(rd20[9:8]),
        .DOC(rd20[11:10]),
        .DOD(NLW_rf_reg_r2_0_15_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(RegWrite));
endmodule

(* ORIG_REF_NAME = "top" *) 
module design_1_top_0_0_top
   (\writeDataM[31] ,
    writeDataM_0_sp_1,
    AXIstart,
    addressM,
    \writeDataM[29] ,
    writeDataM_27_sp_1,
    writeDataM,
    DRW,
    readDataM,
    clk,
    reset,
    doneM);
  output \writeDataM[31] ;
  output writeDataM_0_sp_1;
  output AXIstart;
  output [31:0]addressM;
  output \writeDataM[29] ;
  output writeDataM_27_sp_1;
  output [27:0]writeDataM;
  output DRW;
  input [31:0]readDataM;
  input clk;
  input reset;
  input doneM;

  wire AXIstart;
  wire DRW;
  wire [26:26]Instr;
  wire MemWrite;
  wire [31:0]addressM;
  wire clk;
  wire core_n_35;
  wire doneM;
  wire memcontrol_n_0;
  wire memcontrol_n_1;
  wire memcontrol_n_3;
  wire [31:0]readDataM;
  wire reset;
  wire [27:0]writeDataM;
  wire \writeDataM[29] ;
  wire \writeDataM[31] ;
  wire writeDataM_0_sn_1;
  wire writeDataM_27_sn_1;

  assign writeDataM_0_sp_1 = writeDataM_0_sn_1;
  assign writeDataM_27_sp_1 = writeDataM_27_sn_1;
  design_1_top_0_0_arm core
       (.E(memcontrol_n_3),
        .\FSM_sequential_CURRENT_STATE_reg[0] (core_n_35),
        .\FSM_sequential_CURRENT_STATE_reg[2] ({memcontrol_n_0,memcontrol_n_1}),
        .MemWrite(MemWrite),
        .addressM(addressM),
        .clk(clk),
        .doneM(doneM),
        .out(Instr),
        .readDataM(readDataM),
        .reset(reset),
        .writeDataM(writeDataM),
        .\writeDataM[29] (\writeDataM[29] ),
        .\writeDataM[31] (\writeDataM[31] ),
        .writeDataM_0_sp_1(writeDataM_0_sn_1),
        .writeDataM_27_sp_1(writeDataM_27_sn_1));
  design_1_top_0_0_MemControl memcontrol
       (.AXIstart(AXIstart),
        .DRW(DRW),
        .E(memcontrol_n_3),
        .\FSM_sequential_CURRENT_STATE_reg[2]_0 (core_n_35),
        .MemWrite(MemWrite),
        .clk(clk),
        .doneM(doneM),
        .out({memcontrol_n_0,memcontrol_n_1}),
        .\q_reg[0] (Instr),
        .reset(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
