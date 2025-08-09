`timescale 1ns / 1ps
module mux_2to1_tb;
reg [3:0]I0,I1,I2,I3;
reg [1:0]sel;
wire [3:0]out;
mux_4to1 dut(I0,I1,I2,I3,sel,out);

initial begin
I0 = 4'b1010;
I1 = 4'b0101;
I2 = 4'b0110;
I3 = 4'b0011;
sel = 2'b00; #50;
sel = 2'b01; #50;
sel = 2'b10; #50;
sel = 2'b11; #50;
$finish;
end

endmodule
