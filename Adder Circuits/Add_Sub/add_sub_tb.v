`timescale 1ns / 1ps

module add_sub_tb;
reg [3:0]A,B;
reg ctrl;
wire [3:0]Op;
wire Cout;
add_sub  dut(A,B,ctrl,Op,Cout);

initial begin
    ctrl = 0;
    A=4'd5 ; B=-4'd7;#10;
    A=4'd3 ; B=4'd4;#10;
    A=4'd6 ; B=-4'd4;#10;
    A=-4'd2 ; B=-4'd5;#10;
    ctrl = 1;
    A=4'd5 ; B=4'd7;#10;
    A=4'd3 ; B=4'd4;#10;
    A=-4'd6 ; B=-4'd2;#10;
    A=-4'd2 ; B=-4'd5;#10;
    $finish;
end
endmodule
