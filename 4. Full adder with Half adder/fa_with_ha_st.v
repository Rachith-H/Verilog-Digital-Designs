module fa_with_ha(A,B,Cin,S,Cout);
input A,B,Cin;
output S,Cout;

wire w1,w2;
xor X1(w1,A,B);
and A1(w2,A,B);
xor X2(S,w1,Cin);
and A2(w3,w1,Cin);
or O1(Cout,w3,w2);

endmodule
