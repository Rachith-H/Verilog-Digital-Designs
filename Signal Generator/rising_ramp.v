`timescale 1ns / 1ps

module rising_ramp(clk,rst,up_ramp);
input clk,rst;
output [7:0] up_ramp;

reg [7:0]count ;

assign up_ramp = count;

always@(posedge clk) begin
    if(rst) 
        count <= 8'h00;
    
    else 
        count <= count+1 ;
end
endmodule
