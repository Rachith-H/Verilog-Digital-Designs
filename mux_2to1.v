`timescale 1ns / 1ps
module mux_2to1 #(parameter size = 4)
(input [size-1:0]I0,I1,
input sel,
output [size-1:0]out);

assign out = sel ? I1 : I0 ;

endmodule
