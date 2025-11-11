module dec_2to4_tb;
reg [1:0]I;
reg ctrl;
wire[3:0]D;

dec_2to4 dec (ctrl,I,D);

initial begin
$monitor($time,"%b %b %b",ctrl,I,D);
$dumpfile("sim.vcd");
$dumpvars(0,dec_2to4_tb);
ctrl=0;
I=2'b00; #10;
I=2'b01; #10;
I=2'b10; #10;
I=2'b11; #10;
ctrl=1;
I=2'b00; #10;
I=2'b01; #10;
I=2'b10; #10;
I=2'b11; #10;
$finish;
end

endmodule
