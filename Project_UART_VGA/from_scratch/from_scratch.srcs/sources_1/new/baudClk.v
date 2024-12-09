`timescale 1ns / 1ps

module baudClk(
    output reg baud,
    input clk
    );
    // freq_clk = 10^8
    // baudrate = 9600
    // Oversampling = 16x baudrate
    // Therefore: freq_baud = 16 * baudrate = 153,600
    // Therefore: count = freq_clk / freq_baud = 651.04
    // But baud = ~ baud is only half a cycle
    // Therefore: count/2 = 325
    
     // Parameters
    localparam freq_clk = 100000000;
    localparam baudrate = 9600;
    localparam Oversampling = 16;
    localparam count_total = (freq_clk / (baudrate * Oversampling)) / 2;
    
    integer count;
    always @(posedge clk) begin
        count = count + 1;
        if (count == count_total) begin 
            count = 0;
            baud = ~baud; 
        end
    end
    
endmodule
