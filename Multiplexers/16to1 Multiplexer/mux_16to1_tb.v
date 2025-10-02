`timescale 1ns / 1ps
module mux_16to1_tb;
reg [3:0]I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15;
reg [3:0]sel;
wire [3:0]out;
mux_16to1 dut(I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,sel,out);

integer i;
initial begin
I0 = 4'b1010;
I1 = 4'b1110;
I2 = 4'b0010;
I3 = 4'b0110;
I4 = 4'b1011;
I5 = 4'b1100;
I6 = 4'b0111;
I7 = 4'b1110;
I8 = 4'b0101;
I9 = 4'b0000;
I10 = 4'b1001;
I11 = 4'b1111;
I12 = 4'b1011;
I13 = 4'b1011;
I14 = 4'b1110;
I15 = 4'b0111;
sel = 4'b0000;
for(i=0 ; i<16 ; i=i+1)
#10 sel = sel+1;
#10 $finish;
end
endmodule