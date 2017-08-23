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
                1: instruction = 32'h00010006;  //load 6 r1
                2: instruction = 32'h00020002;  //load 4 r2
                3: instruction = 32'h00030004;  //load 2 r3
                4: instruction = 32'h08430802;  //adds r2 & r3, store r1
                6: instruction = 32'h1041000C;  //add r2 & #12, store r1
                8: instruction = 32'h08620806;  //sub r2 - r3, store r1 
                10: instruction = 32'h08620006; //sub #2 from r2, store r1
                //12: instruction = 32'h20120006;  //bne r1, r2 LOOP (address 15 for example)
                12: instruction = 32'h20000001;
                14: instruction = 32'hFFFFFFFF;
                15: instruction = 32'hFFFFFFFF;
                16: instruction = 32'hFFFFFFFF;
            endcase
        end
endmodule
