`timescale 1ns / 1ps
module decoder_2to4 (in0,in1,out0,out1,out2,out3);
input in0,in1;
output out0,out1,out2,out3;

assign out0 = (~in1)&(~in0);
assign out1 = (~in1)&(in0);
assign out2 = (in1)&(~in0);
assign out3 = (in1)&(in0);

endmodule
