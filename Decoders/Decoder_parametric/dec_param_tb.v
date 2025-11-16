module dec_param_tb;
reg [3:0]in;
reg en;
wire [15:0]out;

dec_param #(.width(4)) dec (.en(en),.in(in),.out(out));

integer i;
initial begin
$monitor($time, "en=%b, in=%b, out=%b", en,in,out);
$dumpfile("simulate.vcd");
$dumpvars(0,dec_param_tb);
	en=0;
	for(i=0;i<16;i=i+1) begin
	in = i; #5 ; 
	end
	en = 1;
	for(i=0;i<16;i=i+1) begin
	in = i; #5 ; 
	end
end
endmodule
