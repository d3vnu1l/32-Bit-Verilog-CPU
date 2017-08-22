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
  input [7:0] ext, Breg;
  input control;
  
  output reg [7:0] B;
  
  always@(Breg or ext or control)
  begin
    case(control)
      0: B <= Breg;
      1: B <= ext;
    endcase
  end
endmodule

