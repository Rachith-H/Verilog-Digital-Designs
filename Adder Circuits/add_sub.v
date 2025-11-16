`timescale 1ns / 1ps

module add_sub 
( input [3:0]A,B,
  input ctrl,
  output [3:0]res, //range -8 to 7
  output Cout
);

wire [3:0]P,G,Bnew;
wire [2:0]C;
assign Bnew = B^({4{ctrl}});
assign P = A^Bnew;
assign G = A&Bnew;
assign C[0] = G[0] | (P[0]&ctrl);
assign C[1] = G[1] | (P[1]&G[0]) | (P[1]&P[0]&ctrl);
assign C[2] = G[2] | (P[2]&G[1]) | (P[2]&P[1]&G[0]) | (P[2]&P[1]&P[0]&ctrl);
assign Cout = G[3] | (P[3]&G[2]) | (P[3]&P[2]&G[1]) | (P[3]&P[2]&P[1]&G[0]) | (P[3]&P[2]&P[1]&P[0]&ctrl);
assign res[0] = P[0]^ctrl;
assign res[3:1] = P[3:1]^C;

endmodule
