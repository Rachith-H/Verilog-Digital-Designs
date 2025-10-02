`timescale 1ns / 1ps
module Gry_to_Bin_tb;
reg [2:0]G3;
reg [3:0]G4;
wire [2:0]B3;
wire[3:0]B4;

gry_to_bin #(.wid(3)) cnv3 (.Bin(B3) ,.Gry(G3));
gry_to_bin #(.wid(4)) cnv4 (.Bin(B4) ,.Gry(G4));

initial begin
G3 = 3'b000; #10;
G3 = 3'b001; #10;
G3 = 3'b011; #10;
G3 = 3'b010; #10;
G3 = 3'b110; #10;
G3 = 3'b111; #10;
G3 = 3'b101; #10;
G3 = 3'b100; #10;
end

initial begin
G4 = 4'b0000; #10;
G4 = 4'b0001; #10;
G4 = 4'b0011; #10;
G4 = 4'b0010; #10;
G4 = 4'b0110; #10;
G4 = 4'b0111; #10;
G4 = 4'b0101; #10;
G4 = 4'b0100; #10;
G4 = 4'b1100; #10;
G4 = 4'b1101; #10;
G4 = 4'b1111; #10;
G4 = 4'b1110; #10;
G4 = 4'b1010; #10;
G4 = 4'b1011; #10;
G4 = 4'b1001; #10;
G4 = 4'b1000; #10;

end

initial begin
$monitor($time, "%b %b %b %b",B3,G3,B4,G4);
#170 $finish;
end

endmodule
