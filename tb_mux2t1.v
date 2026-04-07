`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Ritav
// 
// Create Date: 07.04.2026 12:22:34
// Design Name: testbench 2_1 MUX
// Module Name: tbMultiplexer
// Project Name: demo
// Target Devices: --
// Tool Versions: --
// Description: MUX inputs are 2 bit each, same as output
// 
// Dependencies: --
// 
// Revision: --
// Revision 0.01 - File Created
// Additional Comments: --
// 
//////////////////////////////////////////////////////////////////////////////////

module tb_mux2t1;
  
  reg sel; 
  reg [1:0] in1, in2;
  wire [1:0]dout;
  
  //initantiate dut
  mul2t1 MUX(.in1(in1), 
             .in2(in2), 
             .sel(sel), 
             .dout(dout));
  
  initial begin
    $monitor("At time: ", $time, " A:%b, B: %b, S: %b, Y:%b", in1, in2, sel, dout);
    //dump waves
    $dumpfile("mux2t1.vcd");
    $dumpvars(0, tb_mux2t1);
    
    in1 = 2'b01; 
    in2 = 2'b11;
  end
  
  initial begin
    #5 sel = 1'b0; 
    #5 sel = 1'b1;
    #5 sel = 1'b0;
    #5 $display("Simulation end");
    $finish;
  end
endmodule
