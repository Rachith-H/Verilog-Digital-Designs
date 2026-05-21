`timescale 1ns / 1ps

module div_tb;
reg [4:0] A , B;
reg clk,rst,start;
wire [4:0] quo,rem;
wire done;


// NOTE: Division by zero is not handled.

non_res_div #(.N(5)) dut (clk,rst,start,A,B,quo,rem,done);

always #5 clk = ~clk;
initial begin 
    clk = 0;
    rst = 1; #10;
    rst = 0;
    
    A = 5'd10;  B = 5'd27;
    start = 1; #10;
    start = 0; #280;
    
    rst = 1; #10;
    rst = 0;
    
    A = 5'd17;  B = 5'd31;
    start = 1; #10;
    start = 0; #280;
    $finish;
end
endmodule
