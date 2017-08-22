`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 10:58:30 PM
// Design Name: 
// Module Name: PC
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


module PC(newPC, progCount);
    input [31:0]newPC;
    output reg [31:0]progCount;
    
    initial begin
        progCount = 0;
    end
    
    always@(newPC)
    begin
        progCount = newPC;
    end
endmodule
