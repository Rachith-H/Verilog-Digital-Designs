module logicgates(
input A,B,
output ANDg,ORg,NOTg,NANDg,NORg,XORg,XNORg
);
assign ANDg = A&B;
assign ORg = A|B;
assign NOTg = ~A;
assign NANDg = ~(A&B);
assign NORg = ~(A|B);
assign XORg = A^B;
assign XNORg = ~(A^B);

endmodule