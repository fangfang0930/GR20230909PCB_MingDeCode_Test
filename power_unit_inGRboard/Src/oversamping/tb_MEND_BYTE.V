// MSEND_BYTE Testbench Module
module MSEND_BYTE_tb;
    
    // Define the required inputs for DUT (Device Under Test)
    reg clk;
    reg rstn;
    reg unit_en;
    reg send_start;
    reg [23:0] send_data;
    
    // Declare outputs to observe from DUT
    wire sending;
    wire send_done;
    wire sent;

    // Instantiate the device under test (DUT)
    MSEND_BYTE DUT (
        .clk          (clk),
        .rstn         (rstn),
        .unit_en      (unit_en),
        .send_start   (send_start),
        .send_data    (send_data),
        .sending      (sending),
        .send_done    (send_done),
        .sent         (sent)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // Assuming a 10ns period clock
    end
    
    // Reset initialization
    initial begin
        rstn = 0;
        #20; // Hold reset for 200ns
        rstn = 1;
    end

    // Test stimulus
    initial begin
        // Initialize signals
        unit_en = 1'b1;
        send_start = 1'b0;
        send_data = 24'h000000;

        // Sequence of operations
        // Example sequence:
        // 1. Start transmission after reset release
        #100; // Wait some time
        send_start = 1'b1;

        // 2. Load data and wait for transmission to complete
        send_data = 24'h12345678; // Replace with desired test data
        @(posedge send_done); // Wait for the transmission to finish
        
        // 3. Check the expected output states
        //assert(sending == 1'b1); // Check sending signal during transmission
       // assert(sent == 1'b1); // Check that the last bit was sent out
        
       // $display("Transmission test completed.");
       // #1000; // Wait before finishing the simulation
       // $finish;
    end
endmodule