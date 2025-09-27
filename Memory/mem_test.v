`timescale 1ns / 1ps
module mem_test;
reg wen,ren;
reg [9:0]addr;
wire [7:0]data;
reg clk;
reg [7:0]data_buf;

memory #(.width(8) , .size(1024)) mem (.wen(wen) ,.ren(ren) ,.clk(clk) ,.Addr(addr) ,.Data(data));

assign data = wen?data_buf:8'hzz;
integer i;

initial begin 
    for(i=0 ; i<1024 ; i=i+1)
        mem.mem[i] = 8'h00;
end


always #5 clk = ~clk;
initial begin
    clk =0 ;
    #13 ren = 0;
    wen = 1;
    addr = 10'h001;
    data_buf = 8'h8c;
    #5 addr = 10'h002;
    data_buf = 8'ha4;
    #9 addr = 10'h003;
    data_buf = 8'h2c;
    #9 ren=1;
    wen=0;
    addr = 10'h001;
    #12 addr = 10'h002;
    #9 addr = 10'h003;
    #50 $finish;
end
endmodule
