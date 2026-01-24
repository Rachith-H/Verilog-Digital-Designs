`timescale 1ns / 1ps

module signal_generator_tb;
reg clk ,rst;
wire [7:0] sine,cosine,square,triangle,up_ramp,dwn_ramp;

signal_gen GEN(clk,rst,sine,cosine,square,triangle,up_ramp,dwn_ramp);

always #1 clk = ~clk;
initial begin
    clk = 0;
    rst = 1; #2;
    rst = 0;
end
endmodule
