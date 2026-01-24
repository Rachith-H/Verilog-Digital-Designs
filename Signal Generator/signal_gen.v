`timescale 1ns / 1ps

module signal_gen
    (input clk,rst,
     output [7:0] sine,cosine,
     square,triangle,up_ramp,dwn_ramp);
     
     square_wave S1(.clk(clk) ,.rst(rst) ,.square(square));
     triangular_wave S2(.clk(clk) ,.rst(rst) ,.triangle(triangle));
     rising_ramp S3(.clk(clk) ,.rst(rst),.up_ramp(up_ramp));
     falling_ramp S4(.clk(clk) ,.rst(rst) ,.dwn_ramp(dwn_ramp));
     sine_cosine S5_6(.clk(clk) ,.rst(rst) ,.sine_wave(sine) ,.cos_wave(cosine));
     
endmodule
