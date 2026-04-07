`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Author: Ritav
// 
// Create Date: 07.04.2026 12:22:11
// Design Name: 2 to 1 MUX
// Module Name: Multiplexer
// Project Name: Demo repo
// Target Devices: --
// Tool Versions: --
// Description: --
// 
// Dependencies: --
//
// Revision 0.01 - File Created
// Additional Comments: --
// 
//////////////////////////////////////////////////////////////////////////////////

module mux2t1(in1, in2, sel, dout);
input sel;
input [1:0]in1;
input [1:0]in2;
output reg [1:0]dout;

always begin
    case(sel)
    1'b1: dout = in1;
    1'b0: dout = in2;
    default: dout = 1'bx;
    endcase
end 
endmodule
