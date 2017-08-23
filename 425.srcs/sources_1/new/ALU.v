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


module ALU(A,B,Op,result);
  input [31:0] A,B;//8 bit input
  input [2:0] Op; //operation variable
  output [31:0] result; //result in 16-bit output
  reg [31:0] result=0; //16-bit regitser file
  always @(A or B or Op)
    begin
      case(Op)
      3'b000: result = A & B;//AND
      3'b001: result = A | B;//OR
      3'b010: result = A + B;//ADD
      3'b011:   ;//do nothing
      3'b100: result = A & (!B);//A and NOT B
      3'b101: result = A | (!B);//A OR NOT B
      3'b110: result = A - B;//SUB
      3'b111: result = A < B;//LEssThan
      endcase
    end
endmodule