// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Thu Feb 14 16:16:05 2019
// Host        : CEAT-ENDV-PC059 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/alexasu/Desktop/lab2/lab2.srcs/sources_1/bd/design_1/ip/design_1_top_0_0/design_1_top_0_0_stub.v
// Design      : design_1_top_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "top,Vivado 2018.1" *)
module design_1_top_0_0(clk, reset, doneM, readDataM, writeDataM, addressM, 
  DRW, AXIstart)
/* synthesis syn_black_box black_box_pad_pin="clk,reset,doneM,readDataM[31:0],writeDataM[31:0],addressM[31:0],DRW,AXIstart" */;
  input clk;
  input reset;
  input doneM;
  input [31:0]readDataM;
  output [31:0]writeDataM;
  output [31:0]addressM;
  output DRW;
  output AXIstart;
endmodule
