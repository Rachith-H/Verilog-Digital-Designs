module enc_4to2_priority_tb;
reg in0,in1,in2,in3;
wire out0,out1,v;

enc_4to2_priority enc(in0,in1,in2,in3,out0,out1,v);

integer i;
initial begin
$dumpfile("simulate.vcd");
$dumpvars(0,enc_4to2_priority_tb);
for(i=0;i<16;i=i+1) begin
{in3,in2,in1,in0} = i ; #10;
end
$finish;
end

endmodule
