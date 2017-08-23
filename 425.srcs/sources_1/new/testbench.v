`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 09:16:30 PM
// Design Name: 
// Module Name: RegFile
// Project Name: 
// Target Devices: 
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


module testbench();
  wire RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite;

  reg clk = 0;
  
  wire [31:0] A, B, Breg;
  wire [31:0] result, ReadData, WriteData;
  wire [4:0] Wdest;
  wire [31:0] progCount;
  wire [31:0] newPC;
  wire [31:0] pcA;
  wire [31:0] pcB;
  wire [2:0] Op;
  reg [31:0] pcInc = 1;
  wire [31:0] addrExt;
  
  wire [31:0]instruction;
  
  ROM rom(.progCount(progCount),
          .instruction(instruction));
          
  ADDER incPC(
      .a(progCount),
      .b(pcInc),
      .clk(clk),
      .sum(pcA));
      
 ADDER addPC(
    .a(pcA),
    .b(addrExt),
    .clk(clk),
    .sum(pcB));
  
  MUX2TO1_32 muxPC(.A(pcA),
             .B(pcB),
             .control(Branch),
             .out(newPC));   
  
  CONTROLLER controller(.instruction(instruction[31:26]),
   .RegDst(RegDst),
    .Branch(Branch),
     .MemRead(MemRead),
      .MemtoReg(MemtoReg),
       .ALUOp(ALUOp),
        .MemWrite(MemWrite),
         .ALUSrc(ALUSrc),
          .RegWrite(RegWrite));
  
  PC pc(.newPC(newPC),
        .progCount(progCount));
        
  EXTENDER extender(
    .in(instruction[15:0]),
    .out(addrExt));
  
  
  MUX2TO1 mux2to1(.Breg(Breg),
         .ext(addrExt),
         .control(ALUSrc),
         .B(B));    
  
  MUX2TO1_5 muxReg(.A(instruction[20:16]), 
                   .B(instruction[15:11]), 
                   .control(RegDst), 
                   .out(Wdest));
  
  REGFILE regfile(.Asel(instruction[25:21]), 
          .Bsel(instruction[20:16]), 
          .Wdest(Wdest), 
          .result(WriteData),
          .A(A), 
          .Breg(Breg), 
          .lw(RegWrite),
          .clk(clk));
    
  ALUCTRL aluctrl(.instruction(instruction[5:0]),
                 .ALUOp(ALUOp),
                 .Op(Op));
          
          
  ALU alu(.A(A),
          .B(B),
          .Op(Op),
          .result(result));
          
  DATAMEM datamem(.WriteData(Breg), 
    .Address(result),
    .ReadData(ReadData), 
    .lw(MemWrite), 
    .rw(MemRead), 
    .clk(clk));
    
   MUX2TO1 muxData(.Breg(result),
         .ext(ReadData),
         .control(MemtoReg),
         .B(WriteData));    
  
 // This initial block is executed once
 // it provides the stimuli for the DUT
  initial 
    begin
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
    #10; clk = ~clk; 
    #10; clk = ~clk;
  end
endmodule