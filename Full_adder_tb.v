module full_adder_tb;
reg A,B,Cin;
wire S,Cout;
full_adder dut(.A(A) ,.B(B) ,.Cin(Cin) ,.S(S) ,.Cout(Cout));

initial begin
$monitor($time,"A=%b , B=%b , Cin=%b , S=%b , Cout=%b ",A,B,Cin,S,Cout);
A=0 ; B=0 ; Cin=0 ; #100 ;
A=0 ; B=0 ; Cin=1 ; #100 ;
A=0 ; B=1 ; Cin=0 ; #100 ;
A=0 ; B=1 ; Cin=1 ; #100 ;
A=1 ; B=0 ; Cin=0 ; #100 ;
A=1 ; B=0 ; Cin=1 ; #100 ;
A=1 ; B=1 ; Cin=0 ; #100 ;
A=1 ; B=1 ; Cin=1 ; #100 ;
$finish;
end

endmodule

