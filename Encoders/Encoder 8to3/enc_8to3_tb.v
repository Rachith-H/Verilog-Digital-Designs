module enc_8to3_tb;
reg [7:0]in;
reg en;
wire valid;
wire [2:0]out;

enc_8to3 enc(.in(in) ,.valid(valid) ,.en(en) ,.out(out));

integer i;
initial begin 
	$dumpfile("simu.vcd");
	$dumpvars(0,enc_8to3_tb);
	en = 0;
	in = 8'h00; #10;
	for(i=0;i<8;i=i+1) begin
	in = 1<<i ; #5; end
	en = 1;
	in = 8'h00; #10;
	for(i=0;i<8;i=i+1) begin
	in = 1<<i ; #5; end
	#5 $finish;
end
endmodule
