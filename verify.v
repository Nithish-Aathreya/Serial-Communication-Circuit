`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 13:16:09
// Design Name: 
// Module Name: verify
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench;
    reg clk;            // Clock signal
    reg rst;            // Reset signal
    wire [4:0] TL1;     // Output from Counter 1 (TL1)
    wire [7:0] TH1;     // Output from Counter 2 (TH1)
    wire TF1;           // Timer flag output (TF1)

    // Instantiate the dual counter module
    dual_counter_with_overflow_clock uut (
        .clk(clk),
        .rst(rst),
        .TL1(TL1),
        .TH1(TH1),
        .TF1(TF1)
    );

    // Generate clock signal with 10 ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Toggle clk every 5ns (10ns period)
    end

    // Test sequence
    initial begin
        // Initialize signals
        rst = 1;
        #10;                    // Hold reset for 10ns
        rst = 0;

        // Monitor the output values
        $monitor("Time = %0dns, TL1 = %b, TH1 = %b, TF1 = %b", $time, TL1, TH1, TF1);

        // Run simulation for a sufficient time to observe multiple overflows
                      // Simulate for 1000 ns

                       // End simulation
    end
endmodule

