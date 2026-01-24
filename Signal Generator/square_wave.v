`timescale 1ns / 1ps

module square_wave(clk,rst,square);
input clk,rst;
output  [7:0]square;

reg [7:0] count ;
reg toggle;
assign square = toggle ? 8'hff : 8'h00 ;

always@(posedge clk) begin
    if (rst) begin
        toggle <=0 ;
        count <= 8'h00;
    end
    else
        {toggle,count} <= {toggle,count}+1 ;
end

endmodule
