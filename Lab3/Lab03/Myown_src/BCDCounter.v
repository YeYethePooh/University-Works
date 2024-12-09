`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:36:52 PM
// Design Name: 
// Module Name: BCDCounter
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


module BCDCounter(
    output reg[3:0] outputs,
    output reg cout,
    output reg bout,
    input up,
    input down,
    input set9,
    input set0,
    input clk
    );
    
    initial begin
        outputs = 4'b0000;
        cout = 0;
        bout = 0;
    end
    
    always @(posedge clk) begin
        cout = 0;
        bout = 0;
        case ({up, down, set9, set0})
            4'b1000: begin
                cout = (outputs == 9);
                outputs = (outputs + 1)%10;
                end
            4'b0100: begin
                bout = (outputs == 0);
                outputs = (outputs + 9)%10;
                end
            4'b0010: begin
                outputs = 9;
                end
            4'b0001: begin
                outputs = 0;
                end
        endcase
    end    
    
endmodule
