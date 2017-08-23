`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2017 07:59:46 PM
// Design Name: 
// Module Name: CONTROLLER
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


module CONTROLLER(instruction, RegDst, Branch, MemRead, MemtoReg, ALUOp, MemWrite, ALUSrc, RegWrite);
    input [5:0] instruction;
    output reg RegDst=0, Branch=0, MemRead=0, MemtoReg=0, ALUOp=0, MemWrite=0, ALUSrc=0, RegWrite=0;
    always@(instruction)
    begin
        case(instruction)
            //load immediate from 15:0 
            0: begin
                   RegDst = 0;
                   Branch = 0;
                   MemRead = 0;
                   MemtoReg = 0;
                   ALUOp = 0;
                   MemWrite = 0;
                   ALUSrc = 1;
                   RegWrite = 0;
            end
            //read
            1: begin
                      RegDst = 0;
                      Branch = 0;
                      MemRead = 1;
                      MemtoReg = 0;
                      ALUOp = 0;
                      MemWrite = 0;
                      ALUSrc = 0;
                      RegWrite = 0;
            end
            //r-type
            2: begin
                      RegDst = 0;
                      Branch = 0;
                      MemRead = 0;
                      MemtoReg = 0;
                      ALUOp = 0;
                      MemWrite = 0;
                      ALUSrc = 0;
                      RegWrite = 0;
            end
                  
         endcase
    end
endmodule
