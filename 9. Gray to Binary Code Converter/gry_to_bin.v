`timescale 1ns / 1ps
module gry_to_bin #(wid=8) (Bin,Gry);
input [wid-1:0]Gry;
output [wid-1:0]Bin;
genvar i;

assign Bin[wid-1] = Gry[wid-1];
generate
for (i=1 ; i<=wid-1 ; i=i+1)
begin : block
assign Bin[wid-(i+1)] = Bin[wid-i]^Gry[wid-(i+1)];
end
endgenerate
endmodule
