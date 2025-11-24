module enc_4to2_tb;
reg in0,in1,in2,in3;
wire out0,out1,v;

enc_4to2 enc(in0,in1,in2,in3,out0,out1,v);

initial begin
$dumpfile("simulate.vcd");
$dumpvars(0,enc_4to2_tb);
{in3,in2,in1,in0} = 4'b0000; #10 ; 
{in3,in2,in1,in0} = 4'b1000; #10 ; 
{in3,in2,in1,in0} = 4'b0100; #10 ; 
{in3,in2,in1,in0} = 4'b0010; #10 ; 
{in3,in2,in1,in0} = 4'b0001; #10 ; 
$finish;
end

endmodule
