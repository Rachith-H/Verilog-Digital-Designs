module full_adder (A,B,Cin,S,Cout);
input A,B,Cin;
output S,Cout;

//dataflow
assign S = A^B^Cin;
assign Cout = (A&B)|(B&Cin)|(A&Cin);

endmodule