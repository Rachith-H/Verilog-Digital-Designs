module half_adder (A,B,S,C);
input A,B;
output S,C;

// structural 
xor G1(S,A,B);
and G2(C,A,B);

endmodule