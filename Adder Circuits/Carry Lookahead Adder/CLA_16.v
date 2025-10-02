`timescale 1ns / 1ps

module CLA_16(A,B,Cin,S,Cout);
input [15:0]A,B;
input Cin;
output [15:0]S;
output Cout;

wire [3:0]P,G;
wire [3:1]C;

assign Cout = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&Cin);
assign C[1] = G[0] | (P[0]&Cin);
assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&Cin);
assign C[3] = G[2] | (G[1]&P[2]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&Cin);

CLA_4 M1(A[3:0],B[3:0],Cin,S[3:0],P[0],G[0]);
CLA_4 M2(A[7:4],B[7:4],C[1],S[7:4],P[1],G[1]);
CLA_4 M3(A[11:8],B[11:8],C[2],S[11:8],P[2],G[2]);
CLA_4 M4(A[15:12],B[15:12],C[3],S[15:12],P[3],G[3]);

endmodule





module CLA_4(A,B,Cin,S,Po,Go );
input [3:0]A,B;
input Cin;
output [3:0]S;
output Po,Go;

wire [3:0] P,G;
wire [3:1] C;

assign P = A^B;
assign G = A&B;

assign C[1] = G[0] | (P[0]&Cin);
assign C[2] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&Cin);
assign C[3] = G[2] | (G[1]&P[2]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&Cin);

assign S[0] = P[0]^Cin;
assign S[1] = P[1]^C[1];
assign S[2] = P[2]^C[2];
assign S[3] = P[3]^C[3];

assign Po = P[0]&P[1]&P[2]&P[3];
assign Go = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]);

endmodule
