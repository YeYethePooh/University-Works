`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Module Name: baudrate_gen
// Description: Generates a baud rate clock from the system clock.
// Parameters:
//  - CLK_FREQ: Frequency of the input clock in Hz.
//  - BAUD_RATE: Desired baud rate.
// The output `baud` toggles at half the baud rate frequency.
//////////////////////////////////////////////////////////////////////////////////


module baudrate_gen(
    input clk,
    output reg baud
    );

    integer counter;
    always @(posedge clk) begin
        counter = counter + 1;
        if (counter == 325) begin counter = 0; baud = ~baud; end 
        // Clock = 10ns
        // ClockFreq = 1/10ns = 100 MHz
        // Baudrate = 9600
        // counter = ClockFreq/Baudrate/16/2
        // sampling every 16 ticks
    end

endmodule
