`timescale 1ns / 1ps

module barrel_shifter#(parameter width=8,bits = $clog2(width))
(d_in,shift_val,sign_ext,opr,d_out);

input [width-1:0] d_in;
input [bits-1:0] shift_val;
input sign_ext;
input [1:0] opr;
output reg [width-1:0] d_out;

reg [(2*width)-1:0] hold;
reg signed [width-1:0] mask;

always@(*) begin
    hold = {d_in,d_in};
    d_out = 0;
    mask = ({width{1'b1}}) << (width-shift_val);
    case(opr) 
    2'b00: d_out = (d_in << shift_val);
    2'b01: d_out = (d_in[width-1]&sign_ext) ? ((d_in >> shift_val)^mask) : (d_in >> shift_val);
    2'b10: d_out = (hold << shift_val) >> width;
    2'b11: d_out = hold >> shift_val;
    endcase


end

endmodule
