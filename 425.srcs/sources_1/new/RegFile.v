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


module REGFILE(Asel,Bsel, Wdest, A, Breg, lw, clk, result, reset);
  parameter DataSize = 16, FileSize = 32, SelSize = 4;
  
  input [(SelSize-1):0] Asel,Bsel;//3 bit input
  input [(SelSize-1):0] Wdest;
  input [(DataSize-1):0] result; //
  input reset, clk, lw;

  output reg [7:0] A, Breg; //outputs
  reg [DataSize-1:0] Data[FileSize-1:0];
  reg [DataSize-1:0] i;
  
  //assign outputs
  //assign A = Data[Asel];
 // assign Breg = Data[Bsel];
  
  always @(posedge clk)
    begin
      if(reset==1)
        begin
          for(i=0; (i<=(DataSize-1)); i=i+1)
            begin
              Data[i] = 0;
            end
      	end
      else if(lw == 1)
        begin
        	Data[Wdest] = result;
        end
      A = Data[Asel];
      Breg = Data[Bsel];
    end
endmodule
