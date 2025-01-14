`timescale 1ns / 1ns

module dead_tb;

    // Parameters
    parameter CLK_PERIOD = 10; // Clock period in ns

    // Signals
    reg clk = 0;
    reg rstn = 1;
    reg start = 0;
    reg [1:0] reg_igbt = 0;
    reg fault = 0;
    reg fault1 = 0;
    reg fault2 = 0;
    reg fault3 = 0;
    reg fault4 = 0;
    reg chkflt = 0;

    wire [3:0] igbt_rst;
    wire chkflt_over;
    wire K_1;
    wire K_2;
    wire K_3;
    wire K_4;

    // Instantiate the module under test
    dead dut (
        .clk(clk),
        .rstn(rstn),
        .start(start),
        .reg_igbt(reg_igbt),
        .fault(fault),
        .fault1(fault1),
        .fault2(fault2),
        .fault3(fault3),
        .fault4(fault4),
        .chkflt(chkflt),
        .igbt_rst(igbt_rst),
        .chkflt_over(chkflt_over),
        .K_1(K_1),
        .K_2(K_2),
        .K_3(K_3),
        .K_4(K_4)
    );

    // Clock generation
    always #((CLK_PERIOD)/2) clk = ~clk;

    // Stimulus
    initial begin
        // Reset sequence
        rstn = 0;
        start = 0;
        reg_igbt = 0;
        fault = 0;
        fault1 = 0;
        fault2 = 0;
        fault3 = 0;
        fault4 = 0;
        chkflt = 0;
        #20;
        rstn = 1;
        #20;

        // Test cases
        // You can add your test scenarios here
        // For example:
        // start = 1;
         reg_igbt = 2'b01;
        // fault1 = 1;
        // chkflt = 1;
        // #100;
         start = 1;
        // reg_igbt = 2'b10;
        // fault2 = 1;
        // chkflt = 1;
        // #100;

        // Add more test cases as needed
        
        // End simulation
        #10000;
		 reg_igbt = 2'b00;
		    #10000;
		 reg_igbt = 2'b10;
		     #10000;
		 reg_igbt = 2'b11;
      //  $finish;
    end

endmodule
