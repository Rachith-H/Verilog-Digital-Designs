`timescale 1ns / 1ps

module triangular_wave(clk,rst,triangle);
input clk,rst;
output [7:0] triangle;

reg [7:0] count;
reg dir ;

assign triangle = count;

always @(posedge clk) begin
    if (rst) begin
        dir   <= 1'b1;
        count <= 8'h00;
    end 
    else begin
        if (dir) begin
            if (count == 8'hFF) begin
                dir   <= 1'b0;
                count <= count - 1;
            end 
            else 
                count <= count + 1;
        end 
        else begin
            if (count == 8'h00) begin
                dir   <= 1'b1;
                count <= count + 1;
            end 
            else 
                count <= count - 1;
        end
    end
end


endmodule
