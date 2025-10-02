`timescale 1ns / 1ps
module mux_parameter #(parameter ctrl=5 , width=(1<<ctrl))
(input [ctrl-1:0]sel,
input [width-1:0]Din,
output Dout);
assign Dout = Din[sel];
endmodule
