`timescale 1ns / 1ps

module falling_ramp(clk,rst,dwn_ramp);
input clk,rst;
output [7:0] dwn_ramp;

reg [7:0]count ;

assign dwn_ramp = count;

always@(posedge clk) begin
    if(rst) 
        count <= 8'hff;
    
    else 
        count <= count-1 ;
end
endmodule
