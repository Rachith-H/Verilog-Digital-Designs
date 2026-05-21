`timescale 1ns / 1ps

module div_ctrl #(parameter N=4)
(clk,rst,start,load,shift,compute,check,correction,done);
input clk,rst,start;
output reg load,shift,compute,check,correction,done;

localparam IDLE=0 , INIT=1 , EVAL1=2 , EVAL2=3 , EVAL3=4 , UPDATE=5, CORRECT=6, CONCLUDE=7 ;

reg [2:0] state ;
reg [$clog2(N):0] count;

// NOTE: Division by zero is not handled.

always@(posedge clk or posedge rst) begin 
    if(rst) begin 
        count <= N;
        load <= 0;
        shift <= 0;
        compute <= 0;
        check <= 0;
        correction <= 0;
        done <= 0;
        state <= 0;
    end
    else begin 
        case(state)
            IDLE : begin
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 0;
                state <= start ? INIT : IDLE;
            end
            INIT : begin
                load <= 1;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 0;
                done <= 0;
                count <= N;
                state <= EVAL1;
            end
            EVAL1 : begin 
                load <= 0;
                shift <= 1;
                compute <= 0;
                check <= 0;
                correction <= 0;
                done <= 0;
                state <= EVAL2;
            end
            EVAL2 : begin 
                load <= 0;
                shift <= 0;
                compute <= 1;
                check <= 0;
                correction <= 0;
                done <= 0;
                state <= EVAL3;
            end
            EVAL3 : begin
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 1;
                correction <= 0;
                done <= 0;
                state <= UPDATE;
            end
            UPDATE : begin
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 0;
                done <= 0;
                count <= count - 1;
                state <= (count==1) ? CORRECT : EVAL1 ;
            end
            CORRECT : begin 
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 1;
                done <= 0;
                state <= CONCLUDE ;
            end
            CONCLUDE : begin
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 0;
                done <= 1;
                state <= IDLE;
            end
            default : begin 
                load <= 0;
                shift <= 0;
                compute <= 0;
                check <= 0;
                correction <= 0;
                done <= 0;
                state <= IDLE ;
            end
        endcase
    end
end
endmodule
