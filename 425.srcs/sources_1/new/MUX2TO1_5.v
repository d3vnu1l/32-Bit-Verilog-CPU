`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2017 07:37:17 PM
// Design Name: 
// Module Name: MUX2TO1_32
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

module MUX2TO1_5(A, B, control, out);
  input [4:0] A, B;
  input control;
  
  output reg [4:0] out=0;
  
  always@(A or B or control)
  begin
    case(control)
      0: out = A;
      1: out = B;
    endcase
  end
endmodule
