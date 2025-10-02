`timescale 1ns / 1ps                                                                                                                                                        
module tb_WDT;
reg clk;
reg en;
reg kick;
reg ld_en;
reg [23:0] ld_cnt;
wire rst_sys;
wire rst_int;
WDT uut (.clk(clk),.en(en),.kick(kick),.ld_cnt(ld_cnt), .ld_en(ld_en),.rst_sys(rst_sys),.rst_int(rst_int) );                                                              
always #2 clk = ~clk; 
initial begin
    clk = 0;
    en = 0;
    kick = 0;
    ld_en = 0;
    ld_cnt = 24'd8; 
    #1 ld_en = 1;
    #4 ld_en = 0;
    #2 en = 1;
    #20;
    kick = 1;
    #5 kick = 0;
    #20;
    kick = 1;
    #5 kick = 0;
    #115 kick =1;
    #5 kick=0;
    #150 $finish;
end
endmodule
