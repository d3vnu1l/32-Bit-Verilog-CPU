`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
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
