`timescale 1ns / 1ps
module mux_2to1_tb;
reg [3:0]I0,I1;
reg sel;
wire [3:0]out;
mux_2to1 dut(I0,I1,sel,out);

initial begin
I0 = 4'b1010;
I1 = 4'b0101;
sel = 0; #50;
sel = 1; #50;
$finish;
end

endmodule
