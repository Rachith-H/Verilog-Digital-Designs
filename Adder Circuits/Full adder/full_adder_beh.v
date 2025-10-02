module full_adder (A,B,Cin,S,Cout);
input A,B,Cin;
output reg S,Cout;

//behavioral
always@(*) begin
S = A^B^Cin;
Cout = (A&B)|(B&Cin)|(A&Cin);
end
endmodule