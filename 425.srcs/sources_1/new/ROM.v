`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//simulated 8x64 rom using case
//////////////////////////////////////////////////////////////////////////////////


module ROM(progCount, instruction);
    input [31:0] progCount;
    output reg [31:0] instruction;
    
    always@(progCount)
        begin
            case(progCount)
                0: instruction = 32'h00000000;    //load 0 r0
                1: instruction = 32'h00010001;  //load 1 r1
                2: instruction = 32'h00020002;  //load 2 r2
                3: instruction = 32'h00030003;  //load 3 r3
                4: instruction = 32'h04220000;  //adds r1 & r2
                5: instruction = 32'h04220000;
                6: instruction = 32'h04230000;
                7: instruction = 32'h04230000;
                8: instruction = 32'hFFFFFFFF;
                9: instruction = 32'hFFFFFFFF;
                10: instruction = 32'hFFFFFFFF;
                11: instruction = 32'hFFFFFFFF;
                12: instruction = 32'hFFFFFFFF;
                13: instruction = 32'hFFFFFFFF;
                14: instruction = 32'hFFFFFFFF;
                15: instruction = 32'hFFFFFFFF;
            endcase
        end
endmodule
