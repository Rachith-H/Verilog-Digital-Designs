module enc_4to2 (input in0,in1,in2,in3,
		output out0,out1,v);

assign v = in0|in1|in2|in3;
assign out0 = in1|in3;
assign out1 = in2|in3;

endmodule
