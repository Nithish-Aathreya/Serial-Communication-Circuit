`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2024 12:53:24
// Design Name: 
// Module Name: timer
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


module dual_counter_with_overflow_clock (
    input wire clk,            
    input wire rst,           
    output reg [3:0] counter1,      
    output reg [7:0] counter2,      
    output reg overflow2            
);
wire overflow1;

always @(posedge clk or posedge rst) begin
        if (rst) 
        begin
            counter1 <= 4'b0000;    
        end 
        else if (counter1 == 4'b1111) 
        begin
            counter1 <= 4'b0000;     
        end 
        else 
        begin
            counter1 <= counter1 + 1;      
        end
    end

    assign overflow1 = (counter1 == 4'b1111);

    always @(posedge overflow1 or posedge rst) begin
        if (rst) begin
            counter2 <= 8'b00000000;   
            overflow2 <= 1'b0;         
        end else if (counter2 == 8'b11111111) begin
            counter2 <= 8'b00000000;  
            overflow2 <= 1'b1;          
        end else begin
            counter2 <= counter2 + 1;       
            overflow2 <= 1'b0;         
        end
    end

endmodule


