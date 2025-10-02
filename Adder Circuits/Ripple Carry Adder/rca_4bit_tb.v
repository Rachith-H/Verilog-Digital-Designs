`timescale 1ns / 1ps
module RCA_4bit_tb;
reg [3:0] X,Y;
reg Cin;
wire Cout;
wire [3:0] S;
rca_4bit dut(.S(S) ,.Cout(Cout) ,.A(X) ,.B(Y) ,.Cin(Cin));

initial begin
X = 4'b1001;
Y = 4'b1101;
Cin=0;
#50;
X = 4'b0110;
Y = 4'b0101;
#50;
X = 4'b1111;
Y = 4'b1010;
#50;
X = 4'b0111;
Y = 4'b0011;
#50;
$finish;
end
endmodule
