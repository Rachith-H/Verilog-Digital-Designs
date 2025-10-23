`timescale 1ns / 1ps
module deco_2to4_tb;
reg in0,en,in1;
wire out0,out1,out2,out3;
decoder_2to4 dec(en,in0,in1,out0,out1,out2,out3);
initial begin
en = 0 ; #10 ;
{in1,in0} = 2'b11 ; #10 ;
en = 1;
{in1,in0} = 2'b00 ; #10 ;
{in1,in0} = 2'b01 ; #10 ;
{in1,in0} = 2'b10 ; #10 ;
{in1,in0} = 2'b11 ; #10 ;
$finish;
end
endmodule
