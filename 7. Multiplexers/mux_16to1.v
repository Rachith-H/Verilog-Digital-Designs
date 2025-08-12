`timescale 1ns / 1ps
module mux_16to1 #(parameter size = 4)
(input [size-1:0]I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,
input [3:0]sel,
output reg [size-1:0]out);

always@(*) begin
case(sel) 
4'b0000 : out = I0;
4'b0001 : out = I1;
4'b0010 : out = I2;
4'b0011 : out = I3;
4'b0100 : out = I4;
4'b0101 : out = I5;
4'b0110 : out = I6;
4'b0111 : out = I7;
4'b1000 : out = I8;
4'b1001 : out = I9;
4'b1010 : out = I10;
4'b1011 : out = I11;
4'b1100 : out = I12;
4'b1101 : out = I13;
4'b1110 : out = I14;
4'b1111 : out = I15;
default : out = {size{1'bz}};
endcase  
end
endmodule