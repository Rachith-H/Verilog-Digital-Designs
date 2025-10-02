module logicgates_tb;
reg A ,B;
wire ANDg,ORg,NOTg,NANDg,NORg,XORg,XNORg;
logicgates uut(.ANDg(ANDg) ,.ORg(ORg) ,.NOTg(NOTg) ,.NANDg(NANDg) ,.NORg(NORg) ,.XORg(XORg) ,.XNORg(XNORg) ,.A(A) ,.B(B));

initial begin
A=0 ; B=0 ; #100 ;
A=0 ; B=1 ; #100 ;
A=1 ; B=0 ; #100 ;
A=1 ; B=1 ; #100 ;
end

endmodule
