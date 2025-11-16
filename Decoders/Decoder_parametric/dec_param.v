module dec_param #(parameter width=2, len= 1<<width) (en,in,out);
input en;
input [width-1:0]in;
output reg [len-1:0]out;

always@(*) begin
	out = {len{1'b0}};
	if(en)
	out[in] = 1'b1;
	else 
	out = {len{1'bz}};
end
endmodule
