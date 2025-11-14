module dec_4to16_tb;
reg en,in0,in1,in2,in3;
wire out0,out1,out2,out3,out4,out5,out6,out7,
     out8,out9,out10,out11,out12,out13,out14,out15;

dec_4to16 dec(en,in0,in1,in2,in3,
	      out0,out1,out2,out3,out4,out5,out6,out7,
     	      out8,out9,out10,out11,out12,out13,out14,out15);

integer i;
initial begin
$dumpfile("simulate.vcd");
$dumpvars(0,dec_4to16_tb);
	en=0;
	for(i=0 ; i<16 ; i=i+1) begin
	{in3,in2,in1,in0} = i;#5;
	end
	en=1;
	for(i=0 ; i<16 ; i=i+1) begin
	{in3,in2,in1,in0} = i;#5;
	end
end
endmodule
