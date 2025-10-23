`timescale 1ns / 1ps
module decoder_2to4 (en,in0,in1,out0,out1,out2,out3);
input in0,in1,en;
output out0,out1,out2,out3;

  assign out0 = en ? ((~in1)&(~in0)) : 0;
  assign out1 = en ? ((~in1)&(in0)) : 0;
  assign out2 = en ? ((in1)&(~in0)) : 0;
  assign out3 = en ? ((in1)&(in0)) : 0;

endmodule
