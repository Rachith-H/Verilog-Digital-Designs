`timescale 1ns / 1ps
module mux_8to1_tb;
reg [7:0]I;
reg[2:0]sel;
wire out;
mux_8to1 duv(.I(I) ,.out(out) ,.sel(sel));

integer i;
initial begin
I = 8'b10101010;
sel = 3'b000;
for(i=0 ; i<7 ; i=i+1)
#50 sel = sel+1;
#50 $finish;
end

endmodule
