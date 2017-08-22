`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2017 09:16:30 PM
// Design Name: 
// Module Name: RegFile
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


module testbench();
  reg [2:0] Op;
  reg [4:0] Asel, Bsel, Wdest;
  reg clk, control, lw, reset;
  reg [7:0] ext;
  
  wire [7:0] A, B, Breg;
  wire [15:0] result;
  
  ALU alu(.A(A),
          .B(B),
          .Op(Op),
          .result(result),
          .clk(clk));
  
  MUX2TO1 mux2to1(.Breg(Breg),
                 .ext(ext),
                 .control(control),
                 .B(B));    
  
  REGFILE regfile(.Asel(Asel), 
          .Bsel(Bsel), 
          .Wdest(Wdest), 
          .A(A), 
          .Breg(Breg), 
          .lw(lw),
          .clk(clk), 
          .result(result),
          .reset(reset));
  
 // This initial block is executed once
 // it provides the stimuli for the DUT
  initial 
    begin
	//1. reset register
    Op <= 3'b010;
    Asel <= 0;
    Bsel <= 0;
    Wdest <= 0;
    clk <= 0;
    control <= 1;
    lw <= 0;
    reset <= 1;
    ext <= 0;
    #10; clk <= ~clk; #10; clk <= ~clk;
      
    //put something in R1 (5)
    Wdest = 1;
    lw = 1;
    reset = 0;
    ext = 7'b00000101;
    #10; clk = ~clk; #10; clk = ~clk;
      
    //put something in R2 (8)
    Wdest = 2;
    control = 1;
    lw = 1;
    ext = 7'b00001000;
    #10; clk = ~clk; #10; clk = ~clk;
      
    //get r1 + r2
    Asel = 1;
    Bsel = 2;
    control = 0;
    lw = 0;
    ext = 7'b00000101;
    #10; clk = ~clk;#10; clk = ~clk;

    //put result in R3
    Asel = 3;
    Bsel = 0;
    Wdest = 3;
    lw = 1;
    #10; clk = ~clk;#10; clk = ~clk;
      
  end
endmodule