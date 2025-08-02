`timescale 1ns / 1ps
module ripple_adder #(parameter size = 8)(A,B,Cin,Cout,S);
input [size-1:0] A,B;
input Cin;
output Cout;
output [size-1:0]S;
wire [size:0] carry;
assign carry[0] = Cin;
assign Cout = carry[size];
genvar i;
generate 
for(i=0 ; i<size ; i=i+1) 
begin: rca
fulladder FA(.S(S[i]) ,.Co(carry[i+1]) ,.A(A[i]) ,.B(B[i]) ,.Cin(carry[i]));
end 
endgenerate
endmodule

module fulladder (S,Co,A,B,Cin);
input A,B,Cin;
output S,Co;
assign S = A^B^Cin;
assign Co = (A&B) | (B&Cin) | (A&Cin);
endmodule