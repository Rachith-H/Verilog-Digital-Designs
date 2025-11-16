module dec_5to32 (en,in,out);
input [4:0]in;
input en;
output reg [31:0]out;

always@(*) begin
	out = 32'h00000000;
	if(en) 
	out[in] = 1'b1;
	else
	out = 32'hzzzzzzzz;
end
endmodule
