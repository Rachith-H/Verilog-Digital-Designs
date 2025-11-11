module dec_2to4 (en,in,out);
input [1:0]in;
input en;
output [3:0]out;

assign out[0] = en & (~in[1]) & (~in[0]);
assign out[1] = en & (~in[1]) & (in[0]);
assign out[2] = en & (in[1]) & (~in[0]);
assign out[3] = en & (in[1]) & (in[0]);

endmodule
