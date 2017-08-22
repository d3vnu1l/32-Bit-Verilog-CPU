`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 11:03:50 PM
// Design Name: 
// Module Name: ADDER
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


module ADDER(a, b, clk, sum);
    input [31:0] a;
    input [31:0] b;
    input clk;
    output reg [31:0] sum;
    
    always@(posedge clk)
    begin
        sum <= a + b;
    end
endmodule
