`timescale 1ns / 1ps                                                               

module WDT(clk,en,kick,rst_sys,ld_cnt,ld_en,rst_int);
input clk,en,kick,ld_en;
input [23:0]ld_cnt;
output reg rst_sys,rst_int;

reg [23:0]counter,cnt_hld;

always@(posedge clk)
begin
    if(en) begin
        
        if(kick) begin
            counter <= cnt_hld;
            rst_sys <= 0;
            rst_int <= 0;
        end
        else if(counter==3) begin
            rst_int <= 1;
            counter <= counter-1;
        end
        else if(counter==0) begin
            rst_sys <= 1;
            counter <= cnt_hld;
        end
        else begin
            counter <= (counter>0) ? (counter-1) : 0 ;
        end
     end
     if(rst_sys || rst_int) begin
            rst_sys <= 0;
            rst_int <= 0; 
        end
     if (ld_en) begin
        cnt_hld <= ld_cnt;
        counter <= ld_cnt;
    end

end
endmodule
