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
                0: instruction = 32'h040F0F;
                1: instruction = 32'h040F0F;
                2: instruction = 32'h000000;
                3: instruction = 32'h00FFFF;
                4: instruction = 32'h000000;
                5: instruction = 32'h000000;
                6: instruction = 32'hFFFFFF;
                7: instruction = 32'hFFFFFF;
                8: instruction = 32'hFFFFFF;
                9: instruction = 32'hFFFFFF;
                10: instruction = 32'hFFFFFF;
                11: instruction = 32'hFFFFFF;
                12: instruction = 32'hFFFFFF;
                13: instruction = 32'hFFFFFF;
                14: instruction = 32'hFFFFFF;
                15: instruction = 32'hFFFFFF;
            endcase
        end
endmodule
