`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 10:39:09 PM
// Design Name: 
// Module Name: MUX2TO1
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


module MUX2TO1(Breg, ext, control, B);
  input [31:0] ext, Breg;
  input control;
  
  output reg [31:0] B=0;
  
  always@(Breg or ext or control)
  begin
    case(control)
      0: B = Breg;
      1: B = ext;
    endcase
  end
endmodule

