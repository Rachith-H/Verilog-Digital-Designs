`timescale 1ns / 1ps
module CLA_tb;
reg [15:0]A,B;
reg Cin;
wire [15:0] S;
wire Cout;

CLA_16 unit(A,B,Cin,S,Cout);

initial begin
A = 16'h15ac;
B = 16'h30aa;
Cin = 0;
#50;
A = 16'he12d;
B = 16'h24cb;
#50;
A = 16'h42ae;
B = 16'h8bc4;
#50;
A = 16'hda6a;
B = 16'h7d5f;
#50;
$finish;
end

endmodule