module dec_4to16(
	input en,in0,in1,in2,in3,
	output out0,out1,out2,out3,out4,out5,out6,out7,
	   out8,out9,out10,out11,out12,out13,out14,out15
	);
	
wire w1,w2;
assign w1 = en ? (~in3) : 1'b0 ;
assign w2 = en ? (in3) : 1'b0 ;

dec_3to8 lower(.en(w1), .in2(in2), .in1(in1), .in0(in0), 
		.out0(out0),  .out1(out1), .out2(out2), .out3(out3),  
		.out4(out4), .out5(out5), .out6(out6), .out7(out7) );
dec_3to8 higher(.en(w2), .in2(in2), .in1(in1), .in0(in0), 
		.out0(out8), .out1(out9), .out2(out10), .out3(out11),
		.out4(out12), .out5(out13), .out6(out14), .out7(out15) );

endmodule


