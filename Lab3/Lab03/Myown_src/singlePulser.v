`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:52:46 PM
// Design Name: 
// Module Name: singlePulser
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

module singlePulser(
    input press,     // Input signal for button press
    input clk,       // Clock signal
    output reg d     // Output signal
);
    
    reg state;
    
    initial begin
        d = 0;
        state = 0;  // Initialize state to 0
    end
    
    always @(posedge clk) begin
        case ({press, state})
            2'b00: begin
                d = 0;
                state = 0;
            end
            2'b01: begin
                d = 0;
                state = 0;
            end
            2'b10: begin 
                state = 1;
                d = 1; 
            end
            2'b11: begin
                d = 0;
                state = 1;
            end
        endcase
    end
    
endmodule
