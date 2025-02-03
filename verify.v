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
   

   
    dual_counter_with_overflow_clock uut (
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
        
        rst = 1;
        #10;               
        rst = 0;

        
    end
endmodule

