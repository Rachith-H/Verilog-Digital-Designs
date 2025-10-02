`timescale 1ns / 1ps
module bin_to_gry_tb;
reg [3:0]B4;
reg [2:0]B3;
wire [2:0]G3;
wire [3:0]G4;

bin_to_gray #(.wid(4)) cnv_4(.Bin(B4) ,.Gry(G4));
bin_to_gray #(.wid(3)) cnv_3(.Bin(B3) ,.Gry(G3));

integer i,j;
initial 
for (i=0 ; i<8 ; i=i+1) #10 B3 = i;
initial
for (j=0 ; j<16 ; j=j+1) #10 B4 = j;
initial begin
$monitor($time,"%b %b %b %b",B3,G3,B4,G4);
#170 $finish ;
end
endmodule
