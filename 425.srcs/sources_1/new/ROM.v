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
                0: instruction = 32'h0000FFFF;
                4: instruction = 32'h0000FFFF;
                8: instruction = 32'h00000000;
                12: instruction = 32'h00000000;
                16: instruction = 32'h00000000;
                20: instruction = 32'h00000000;
                24: instruction = 32'hFFFFFFFF;
                28: instruction = 32'hFFFFFFFF;
                32: instruction = 32'hFFFFFFFF;
                36: instruction = 32'hFFFFFFFF;
                40: instruction = 32'hFFFFFFFF;
                44: instruction = 32'hFFFFFFFF;
                48: instruction = 32'hFFFFFFFF;
                52: instruction = 32'hFFFFFFFF;
                56: instruction = 32'hFFFFFFFF;
                60: instruction = 32'hFFFFFFFF;
            endcase
        end
endmodule
