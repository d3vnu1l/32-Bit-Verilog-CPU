`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2017 08:45:38 PM
// Design Name: 
// Module Name: ALUCTRL
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


module ALUCTRL(instruction, ALUOp, Op);
input [5:0] instruction;
input ALUOp;
output reg [2:0]Op = 0;
   
   always@(instruction or ALUOp)
    if(ALUOp == 1)begin
        case(instruction)
            0: Op = 3'b000;
            1: Op = 3'b001;
            2: Op = 3'b010;
            3: Op = 3'b011;
            4: Op = 3'b100;
            5: Op = 3'b101;
            6: Op = 3'b110;
            7: Op = 3'b111;
        endcase
    end 
    else if(ALUOp == 0) begin
        Op = 3'b010;        //alu pass thru
    end
endmodule
