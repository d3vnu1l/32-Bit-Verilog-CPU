`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//simulated 8x64 rom using case
//////////////////////////////////////////////////////////////////////////////////


module ROM(address, value);
    input [31:0] address;
    output reg [31:0] value;
    
    always@(address)
        begin
            case(address)
                0: value <= 32'hFFFFFFFF;
                3: value <= 32'hFFFFFFFF;
                7: value <= 32'hFFFFFFFF;
                11: value <= 32'hFFFFFFFF;
                15: value <= 32'hFFFFFFFF;
                19: value <= 32'hFFFFFFFF;
                23: value <= 32'hFFFFFFFF;
                27: value <= 32'hFFFFFFFF;
                31: value <= 32'hFFFFFFFF;
                35: value <= 32'hFFFFFFFF;
                39: value <= 32'hFFFFFFFF;
                43: value <= 32'hFFFFFFFF;
                47: value <= 32'hFFFFFFFF;
                51: value <= 32'hFFFFFFFF;
                55: value <= 32'hFFFFFFFF;
                59: value <= 32'hFFFFFFFF;
            endcase
        end
endmodule
