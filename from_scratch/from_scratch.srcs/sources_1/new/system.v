module system(
    input  wire clk,    // System clock
    output wire [0:0] JA,     // UART TX (Transmit)
    input  wire [0:0] JB,     // UART RX (Receive)
    input  wire [7:0] sw,     // Switches for transmitting data
    input  wire btnC,   // Button to trigger transmission
    input  wire btnU,   // Button to reset VGA
    output wire [6:0] seg,    // Seven-segment display segments
    output wire dp,     // Decimal point
    output wire [3:0] an,     // Seven-segment display anodes
    output wire Hsync, Vsync,  // VGA synchronization signals
    output wire [3:0] vgaRed, vgaGreen, vgaBlue
);

    // Internal Signals
    wire [7:0] data_receive;  // Data received via UART
    wire valid;               // Signal for valid received data
    wire [7:0] data_transmit; // Data to transmit (from switches)
    assign data_transmit = sw;  // Map switches to transmit data
    assign data_receive = sw;   // For simplicity, assign switches to received data

    // Clock Divider for Seven-Segment Display
    wire clkDiv;
    ClockDiv clock_divider (
        .clkDiv(clkDiv), 
        .clk(clk)
    );

    // Seven-Segment Display
    QuadSevenSegmentDisplay seven_segment_display (
        .seg(seg),
        .dp(dp),
        .an(an),
        .num3(data_receive[7:4]),  // High nibble of received data
        .num2(data_receive[3:0]),  // Low nibble of received data
        .num1(data_transmit[7:4]), // High nibble of transmitted data
        .num0(data_transmit[3:0]), // Low nibble of transmitted data
        .clk(clkDiv)
    );

    // VGA Display
    wire [11:0] rgb;
    vga vga_display (
        .clk_100MHz(clk),        // System clock
        .reset(btnU),            // Reset signal from button
        .data(data_receive),     // ASCII character input from received UART data
        .btnC(btnC),             // Button C to change character in VGA
        .hsync(Hsync),           // Horizontal sync output
        .vsync(Vsync),           // Vertical sync output
        .rgb(rgb)                // RGB output
    );


    // Assign RGB signals to VGA output
    assign vgaRed   = rgb[11:8];
    assign vgaGreen = rgb[7:4];
    assign vgaBlue  = rgb[3:0];

endmodule
