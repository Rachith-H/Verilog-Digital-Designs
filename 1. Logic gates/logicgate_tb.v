`timescale 1ns / 1ps
module logicgate_tb;
reg x,y;
wire andg,org,nandg,norg,notg,xorg,xnorg;
and_udp An(andg,x,y);
or_udp O(org,x,y);
nand_udp nan(nandg,x,y);
nor_udp nr(norg,x,y);
not_udp no(notg,y);
xor_udp xr(xorg,x,y);
xnor_udp xnr(xnorg,x,y);

initial begin
x=0 ; y=0 ; #100;
x=0 ; y=1 ; #100;
x=1 ; y=0 ; #100;
x=1 ; y=1 ; #100;
$finish;
end
endmodule
