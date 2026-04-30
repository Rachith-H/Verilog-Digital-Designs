`timescale 1ns / 1ps

module barrel_shifter_tb;
parameter N = 8;
reg [N-1:0] d_in;
reg [2:0] shift_val;
reg sign_ext;
reg [1:0] opr;
wire [N-1:0] d_out;

barrel_shifter #(.width(N)) uut (d_in,shift_val,sign_ext,opr,d_out);
initial begin
    shift_val = 3'b010;
    sign_ext = 0;
    d_in = 8'b10110001;
    opr = 2'b00; #10;
    opr = 2'b01; #10;
    sign_ext = 1; #10;
    opr = 2'b10; #10;
    opr = 2'b11 ; #10
    $finish;
end
endmodule
