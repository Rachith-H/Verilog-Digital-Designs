`timescale 1ns / 1ps
module adder_inst(A,B,Cin,S,Cout);
input A,B,Cin ;
output S,Cout;
wire t1,t2,t3;
halfadder H1(A,B,t1,t2);
halfadder H2(t1,Cin,S,t3);
or O1(Cout,t2,t3);
endmodule

module halfadder(A,B,S,C);
input A,B;
output S,C;
assign S = A^B;
assign C = A&B;
endmodule