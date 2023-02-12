//////////////////////////////////////////////////////////////////////////////////
// Company: OKState
// Engineer: James E. Stine/Alex Underwood
// 
// Create Date: 02/05/2019 01:01:22 PM
// Design Name: design_1
// Module Name: top
// Project Name: lab2
// Target Devices: xc7z020clg484-1
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top(
    input clk,
    input reset,
    input doneM,
    input [31:0] readDataM,
    output [31:0] writeDataM,
    output [31:0] addressM,
    output DRW,
    output AXIstart
    );
    
    wire [31:0] PC;
    wire [31:0] Instr;
    wire MemWrite;
    wire PReady;
    wire MStrobe;
    
    arm core(.clk(clk),
             .reset(reset),
             .PC(PC),
             .Instr(Instr),
             .MemWrite(MemWrite),
             .ALUResult(addressM),
             .WriteData(writeDataM),
             .ReadData(readDataM),
             .MemStrobe(MStrobe),
             .PReady(PReady)
             );
    
    MemControl memcontrol(.Done(PReady),
                          .DRW(DRW),
                          .MStrobe(MStrobe),
                          .MemWrite(MemWrite),
                          .Trigger(doneM),
                          .clk(clk),
                          .reset(reset),
                          .AXIstart(AXIstart)
                    );
                    
    imem imem(.mem_addr(PC),
              .mem_out(Instr)
              );
    
endmodule