`timescale 1ns / 1ps
module rca_4bit(S,Cout,A,B,Cin);
input [3:0]A,B;
input Cin;
output [3:0]S;
output Cout;

wire [2:0]T;

full_adder FA1(S[0],T[0],A[0],B[0],Cin);
full_adder FA2(S[1],T[1],A[1],B[1],T[0]);
full_adder FA3(S[2],T[2],A[2],B[2],T[1]);
full_adder FA4(S[3],Cout,A[3],B[3],T[2]);

endmodule

module full_adder (S,Co,A,B,Cin);
input A,B,Cin;
output S,Co;
assign S = A^B^Cin;
assign Co = (A&B) | (B&Cin) | (A&Cin);
endmodule