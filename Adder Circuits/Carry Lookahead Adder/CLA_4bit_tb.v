`timescale 1ns / 1ps
module CLA_tb;
reg [3:0]A,B;
reg Cin;
wire [3:0] S;
wire Cout;

CLA_4bit unit(A,B,Cin,S,Cout);

initial begin
A = 4'b1010;
B = 4'b0110;
Cin = 0;
#50;
A = 4'b0111;
B = 4'b0011;
#50;
A = 4'b1101;
B = 4'b0111;
#50;
A = 4'b0100;
B = 4'b1000;
#50;
$finish;
end

endmodule
