`timescale 1ns / 1ps
module rca_tb;
reg [3:0] X,Y;
reg Cin;
wire [3:0]S;
wire Cout;
ripple_adder dut(.S(S) ,.Cout(Cout) ,.A(X) ,.B(Y) ,.Cin(Cin));

initial begin
Cin = 0; 
X = 4'b1111;
Y = 4'b1010;
#50;
X = 4'b0110;
Y = 4'b1101;
#50 
X = 4'b0010;
Y = 4'b1001;
#50 
X = 4'b1000;
Y = 4'b0011;
#50 



$finish;
end
endmodule
