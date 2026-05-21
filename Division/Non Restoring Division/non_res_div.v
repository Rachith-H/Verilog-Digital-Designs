`timescale 1ns / 1ps

module non_res_div #(parameter N=4)
(clk,rst,start,divisor,dividend,quotient,remainder,done);

input clk,rst,start;
input [N-1:0] divisor,dividend;
output done;
output [N-1:0] quotient,remainder;

wire load,shift,compute,check,correction;


div_ctrl #(.N(N)) ctrl (clk,rst,start,load,shift,compute,check,correction,done);

div_datapath#(.N(N)) datapath (clk,rst,divisor,dividend,quotient,remainder,load,shift,compute,check,correction,done);

endmodule
