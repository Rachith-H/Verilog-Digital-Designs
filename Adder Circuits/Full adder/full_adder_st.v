module full_adder (A,B,Cin,S,Cout);
input A,B,Cin;
output S,Cout;

//structural
wire w1,w2,w3;
xor G1(S,A,B,Cin);
and G2(w1,A,B);
and G3(w2,B,Cin);
and G4(w3,A,Cin);
or G5(Cout,w1,w2,w3);

endmodule