`timescale 1ns / 1ps
module mux_4to1 #(parameter size=4 )
(input [size-1:0]I0,I1,I2,I3,
input [1:0]sel,
output [3:0]out);

wire [size-1:0]w1,w2;
mux_2to1 M1(.I0(I0) ,.I1(I1) ,.sel(sel[0]) ,.out(w1));
mux_2to1 M2(.I0(I2) ,.I1(I3) ,.sel(sel[0]) ,.out(w2));
mux_2to1 M3(.I0(w1) ,.I1(w2) ,.sel(sel[1]) ,.out(out));

endmodule
