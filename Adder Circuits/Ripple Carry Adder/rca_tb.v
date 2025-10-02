`timescale 1ns / 1ps
module rca_tb;
reg [7:0] X,Y;
reg Cin;
wire [7:0]S;
wire Cout;
ripple_adder dut(.S(S) ,.Cout(Cout) ,.A(X) ,.B(Y) ,.Cin(Cin));

initial begin
Cin = 0; 
X = 8'b11100101;
Y = 8'b10101100;
#50;
X = 8'b01001110;
Y = 8'b11001101;
#50 
X = 8'b00110010;
Y = 8'b10010101;
#50 
X = 8'b10000100;
Y = 8'b00101111;
#50 



$finish;
end
endmodule
