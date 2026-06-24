module testbench;

    reg  RESET,CLK;
    reg  RXD;
    wire TXD;

    /* SPI wires */
    wire SCLK;
    wire MOSI;
    wire MISO;
    wire CS_N;

    /* ------------------------------------------------
       DUT
       ------------------------------------------------ */
    SOC uut (
        .RESET     (RESET),
        .RXD       (RXD),
        .TXD       (TXD),
	.CLK(CLK),
        .sclk  (SCLK),
        .mosi  (MOSI),
        .miso (MISO),
        .cs_n (CS_N)
    );

    /* ------------------------------------------------
       SPI loopback for simulation
       (REMOVE this in real hardware)
       ------------------------------------------------ */
    
	always #5 CLK= ~CLK;
    /* ------------------------------------------------
       Stimulus
       ------------------------------------------------ */
    initial begin
        $dumpfile("soc_spi_test.vcd");
        $dumpvars(0, testbench);
	CLK = 0;
        // Init
        RXD   = 1'b0;
        RESET = 1'b1;

        // Reset pulse
        #100 RESET = 1'b0;
        #100 RESET = 1'b1;

        // Let firmware run
        #15000;

        $finish;
    end

endmodule
