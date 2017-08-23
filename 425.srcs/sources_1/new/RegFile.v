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


module REGFILE(Asel,Bsel, Wdest, result, A, Breg, lw, clk);
  parameter DataSize = 32, FileSize = 32, SelSize = 5;
  
  input [(SelSize-1):0] Asel,Bsel;//5 bit input for selection
  input [(SelSize-1):0] Wdest;
  input [(DataSize-1):0] result; //
  input clk, lw;

  output reg [31:0] A=0, Breg=0; //outputs
  reg [DataSize-1:0] Data[FileSize-1:0];
  reg [DataSize-1:0] i;
  
  //assign outputs
  //assign A = Data[Asel];
 // assign Breg = Data[Bsel];
  
  initial begin
  for(i=0; (i<=(DataSize-1)); i=i+1)
    begin
      Data[i] = 0;
    end
  end
  
  always @(posedge clk)
    begin
    if(lw == 1)
        begin
        	Data[Wdest] = result;
        end
      A = Data[Asel];
      Breg = Data[Bsel];
    end
endmodule
