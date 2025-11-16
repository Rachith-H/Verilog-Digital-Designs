module dec_5to32_tb;
reg [4:0]in;
reg en;
wire [31:0]out;

dec_5to32 dec(.en(en), .in(in), .out(out));

integer i;
initial begin
$monitor($time, "%b %b %b", en,in,out);
$dumpfile("sim.vcd");
$dumpvars(0,dec_5to32_tb);
	en = 1'b0;
	for(i=0 ; i<32 ; i=i+1) begin
	in = i; #10; end
	en = 1'b1;
	for(i=0 ; i<32 ; i=i+1) begin
	in = i; #10 ; end
end
endmodule
