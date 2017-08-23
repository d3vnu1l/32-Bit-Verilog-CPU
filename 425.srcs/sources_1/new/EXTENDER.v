`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//sign extends 16 bits to 32
//////////////////////////////////////////////////////////////////////////////////


module EXTENDER(in, out);
input [15:0]in;
output reg [31:0]out;
always@(in)
    begin
        if(in[15:14]==1)
            begin
                out = in + 32'hFFFF0000;
            end   
        else
            begin
                out = in + 32'h00000000;
            end
    end
endmodule
