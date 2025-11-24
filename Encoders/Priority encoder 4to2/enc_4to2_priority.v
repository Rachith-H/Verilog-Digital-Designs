module enc_4to2_priority(
	input in0,in1,in2,in3,
	output reg out0,out1,v);

// priority given to lsb
always@(*) begin;
	v = in0|in1|in2|in3;
	if(in0) {out1,out0} = 2'b00;
	else if(in1)  {out1,out0} = 2'b01;
	else if(in2)  {out1,out0} = 2'b10;
	else if(in3)  {out1,out0} = 2'b11;
	else {out1,out0} = 2'b00;
end

endmodule
	
