module dec_3to8(	
	input en,in0,in1,in2,
	output reg out0,out1,out2,out3,out4,out5,out6,out7
	);

always@(*) begin
if(en) begin
	{out0,out1,out2,out3,out4,out5,out6,out7}=8'h00;
	case({in2,in1,in0})
	3'b000 : out0 = 1;
	3'b001 : out1 = 1;
	3'b010 : out2 = 1;
	3'b011 : out3 = 1;
	3'b100 : out4 = 1;
	3'b101 : out5 = 1;
	3'b110 : out6 = 1;
	3'b111 : out7 = 1;
	default : {out0,out1,out2,out3,out4,out5,out6,out7}=8'h00;
	endcase
end
else
	{out0,out1,out2,out3,out4,out5,out6,out7}=8'h00;
end
endmodule
