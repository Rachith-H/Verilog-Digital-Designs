`timescale 1ns / 1ps
module mux_8to1(I,sel,out);
input [7:0]I;
input [2:0]sel;
output out;

assign out = I[sel];

endmodule
