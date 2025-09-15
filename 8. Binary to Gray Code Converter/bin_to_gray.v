`timescale 1ns / 1ps
module bin_to_gray #(parameter wid=4) (Bin,Gry);
input [wid-1:0]Bin;
output [wid-1:0]Gry;
genvar i;
assign Gry[wid-1] = Bin[wid-1];
generate 
for (i=0 ; i<wid-1 ; i=i+1)
begin : block
assign Gry[i] = Bin[i]^Bin[i+1];
end
endgenerate
endmodule