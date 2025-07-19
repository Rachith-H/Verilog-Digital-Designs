module half_adder_tb;
reg A,B;
wire S,C;
half_adder dut(.A(A) ,.B(B) ,.C(C) ,.S(S));

initial begin
$monitor($time,"A=%b , B=%b , S=%b , C=%b", A,B,S,C);
A=0 ; B=0 ; #100 ;
A=0 ; B=1 ; #100 ;
A=1 ; B=0 ; #100 ; 
A=1 ; B=1 ; #100 ;
$finish ;
end 
endmodule