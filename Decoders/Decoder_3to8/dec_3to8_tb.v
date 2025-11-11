module dec_3to8_tb;
reg en,in0,in1,in2;
wire out0,out1,out2,out3,out4,out5,out6,out7;

integer i;
dec_3to8 dec (
	en,in0,in1,in2,
	out0,out1,out2,out3,out4,out5,out6,out7);

initial begin
$dumpfile("sim.vcd");
$dumpvars(0,dec_3to8_tb);
en=0;
for(i=0;i<8;i=i+1) begin
{in2,in1,in0}=i ; #10;
end
en=1;
for(i=0;i<8;i=i+1) begin
{in2,in1,in0}=i ; #10;
end
end
endmodule
