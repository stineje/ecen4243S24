//------------------------------------------------
// imem.v
// James E. Stine/Alex Underwood
// February 1, 2018
// Oklahoma State University
// ECEN 4243
// Harvard Architecture Instr Memory (Big Endian)
//------------------------------------------------

module imem (mem_addr, mem_out);

   output [31:0] mem_out;
   input [31:0]  mem_addr;

   // Choose smaller memory to speed simulation
   //   through smaller AddrSize (only used to
   //   allocate memory size -- processor sees
   //   32-bits)
   parameter AddrSize = 16;
   parameter WordSize = 8;

   reg [WordSize-1:0] RAM[((1<<AddrSize)-1):0];
   initial $readmemh("fib.dat", RAM);

   // Read Instruction memory
   //   byte addressed, but appears as 32b to processor
   assign mem_out = {RAM[mem_addr], RAM[mem_addr+1],
                     RAM[mem_addr+2], RAM[mem_addr+3]};

endmodule // imem

