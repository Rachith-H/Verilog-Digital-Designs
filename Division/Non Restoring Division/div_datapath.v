`timescale 1ns / 1ps

module div_datapath#(parameter N=4) 
(clk,rst,divisor,dividend,quotient,remainder,load,shift,compute,check,correction,done);
input clk,rst,load,shift,compute,check,correction,done;
input [N-1:0] divisor,dividend;
output [N-1:0] quotient,remainder;

reg [N-1:0] A,Q,M;
reg E;

assign quotient = done ? Q : 0 ;
assign remainder = done ? A : 0 ;

always@(posedge clk or posedge rst) begin 
    if(rst) begin 
        A <= 0;
        Q <= 0;
        E <= 0;
        M <= 0;
    end
    else begin 
        if(load) begin
            A <= 0;
            Q <= dividend;
            E <= 0;
            M <= divisor;
        end
        else if (shift)  
            {E,A,Q} <= {A,Q,1'b0};
        else if(compute) 
            A <= E ? (A+M) : (A-M) ;
        else if(check)  
            Q[0] <= ~A[N-1];
        else if(correction)  
            A <= A[N-1] ? A+M : A ;
    end
end
endmodule
