`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 11:49:18 PM
// Design Name: 
// Module Name: DATAMEM
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


module DATAMEM(WriteData, Address, ReadData, lw, rw, clk);
  parameter DataSize = 31, FileSize = 32, SelSize = 16;
  
  input [(SelSize-1):0] WriteData,Address;//5 bit input for selection
  input clk, lw, rw;

  output reg [31:0] ReadData=0;
  reg [DataSize-1:0] Data[FileSize-1:0];
  reg [DataSize-1:0] i;
 
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
        	Data[Address] = WriteData;
        end
    else if(rw==1)
        begin
            ReadData = Data[Address];
        end
    end
endmodule

