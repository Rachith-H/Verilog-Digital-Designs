`timescale 1ns / 1ps
module mux_parm_tb;
reg [4:0]sel;
reg [31:0]Din;
wire Dout;
integer i;
mux_parameter #(.ctrl(5)) M1(.sel(sel) ,.Din(Din) ,.Dout(Dout));
initial begin
Din = 32'haaaa_aaaa;
sel = 5'b00000;
for (i=0 ; i<32 ; i=i+1) 
#10 sel = sel+1;
$finish;
end
endmodule 
