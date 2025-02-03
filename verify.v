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
     reg clk,            
    reg rst,           
   wire [3:0] counter1,      
   wire [7:0] counter2,      
    wire overflow2   

   
   dual_counter_with_overflow_clock uut ( clk,rst,counter1,counter2,overflow2
    );

    
    initial begin
        clk = 0;
        forever #5 clk = ~clk; 
    end

    
    initial begin
        
        rst = 1;
        #10;               
        rst = 0;
   $finish;
        
    end
endmodule

