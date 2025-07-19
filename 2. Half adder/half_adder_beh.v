module half_adder (A,B,S,C);
input A,B;
output reg S,C;

// behavioral
always@(*) begin
S = A^B;
C = A&B;
end
endmodule
