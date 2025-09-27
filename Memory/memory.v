`timescale 1ns / 1ps
module memory #(parameter width=8 , size=32 , addr_width=$clog2(size)) (wen,ren,clk,Data,Addr);
input wen,ren,clk;
inout [width-1:0]Data;
input [addr_width-1:0]Addr;

wire write,read;
reg [width-1:0]mem[0:size-1];
reg [width-1:0]data_buff;
assign Data = ren ? data_buff : {width{1'bz}};
assign write = wen& ~ren ;
assign read = ren & ~wen;

always@(posedge clk) begin
    if(write) begin
        mem[Addr] <=  Data;
    end
    else if(read) begin
        data_buff <= mem[Addr];
    end
end
endmodule
