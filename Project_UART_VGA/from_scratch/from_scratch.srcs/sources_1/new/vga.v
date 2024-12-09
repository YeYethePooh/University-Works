module vga(
    input clk_100MHz,
    input reset,
    input [7:0] data, // ASCII character input
    input change,       // signal to write character or newline
    output hsync,
    output vsync,
    output [11:0] rgb
);

    // Signal Declarations
    reg [11:0] rgb_reg;
    wire video_on;
    wire [9:0] x, y;
    wire p_tick;

    // Parameters
    localparam VGA_SCREEN_WIDTH = 640;
    localparam VGA_SCREEN_HEIGHT = 480;
    localparam CHAR_WIDTH = 8;
    localparam CHAR_HEIGHT = 16;
    localparam SCREEN_COLS = 10; // Number of columns in write zone
    localparam SCREEN_ROWS = 3; // Number of rows in write zone
    
    // Offset for the write zone to be centered on the screen
    // Offset for the write zone to be centered on the screen
    // Offset for the write zone to be centered on the screen
    // Width of the write zone -> SCREEN_COLS * CHAR_WIDTH = 10 * 8 = 80 pixels.
    // Height of the write zone -> SCREEN_ROWS * CHAR_HEIGHT = 3 * 16 = 48 pixels.
    // Horizontal center: (640 - 80) / 2 = 280 pixels.
    // Vertical center: (480 - 48) / 2 = 216 pixels. 
    localparam WRITE_ZONE_X_OFFSET = (VGA_SCREEN_WIDTH - SCREEN_COLS * CHAR_WIDTH) / 2;  // Horizontal offset
    localparam WRITE_ZONE_Y_OFFSET = (VGA_SCREEN_HEIGHT - SCREEN_ROWS * CHAR_HEIGHT) / 2;  // Vertical offset

    reg [7:0] char_buffer[SCREEN_ROWS-1:0][SCREEN_COLS-1:0]; // Character buffer
    reg [9:0] cursor_x = 0;
    reg [9:0] cursor_y = 0;

    // VGA Controller
    vga_controller vga_c(
        .clk_100MHz(clk_100MHz),
        .reset(reset),
        .video_on(video_on),
        .hsync(hsync),
        .vsync(vsync),
        .p_tick(p_tick),
        .x(x),
        .y(y)
    );

    // Character ROM lookup (should fetch 8 bits per character row)
    wire [7:0] rom_data;
    wire [3:0] y_in_char_row = (y - WRITE_ZONE_Y_OFFSET) % CHAR_HEIGHT;  // This ensures y maps to 0–15 for the row in the character
    wire [3:0] x_in_char_col = (x - WRITE_ZONE_X_OFFSET) % CHAR_WIDTH;
    
    wire [10:0] rom_addr = {current_char, y_in_char_row};

// Deprecated
//    ascii_rom my_ascii_rom(
//        .clk(p_tick),
//        .addr(rom_addr),
//        .data(rom_data)
//    );

    font_rom ascii_font_rom(
        .clk(p_tick),
        .addr(rom_addr),
        .data(rom_data)
    );

    // Corrected character grid addressing
    wire [9:0] char_x = (x - WRITE_ZONE_X_OFFSET) / CHAR_WIDTH;  // Adjust for the offset
    wire [9:0] char_y = (y - WRITE_ZONE_Y_OFFSET) / CHAR_HEIGHT;  // Adjust for the offset

    // Character that should be displayed at the current pixel position
    wire [7:0] current_char = char_buffer[char_y][char_x];

    // RGB Logic (for all characters in the buffer)
    always @(posedge p_tick or posedge reset) begin
        if (reset) begin
            rgb_reg <= 12'h920; // Color on reset
        end else if (video_on) begin
            // Frame Logic
            if ((x >= WRITE_ZONE_X_OFFSET - 4 && x < WRITE_ZONE_X_OFFSET) ||  // Left frame
                (x >= WRITE_ZONE_X_OFFSET + SCREEN_COLS * CHAR_WIDTH && x < WRITE_ZONE_X_OFFSET + SCREEN_COLS * CHAR_WIDTH + 4) ||  // Right frame
                (y >= WRITE_ZONE_Y_OFFSET - 4 && y < WRITE_ZONE_Y_OFFSET) ||  // Top frame
                (y >= WRITE_ZONE_Y_OFFSET + SCREEN_ROWS * CHAR_HEIGHT && y < WRITE_ZONE_Y_OFFSET + SCREEN_ROWS * CHAR_HEIGHT + 4)) begin // Bottom frame
                rgb_reg <= 12'hB10; // Pink
            end
            // Stand Logic
            else if ((y >= WRITE_ZONE_Y_OFFSET + SCREEN_ROWS * CHAR_HEIGHT + 4 && y < WRITE_ZONE_Y_OFFSET + SCREEN_ROWS * CHAR_HEIGHT + 12) &&  // Vertical position for the stand
                     (x >= (WRITE_ZONE_X_OFFSET + SCREEN_COLS * CHAR_WIDTH / 2 - 10) && 
                      x < (WRITE_ZONE_X_OFFSET + SCREEN_COLS * CHAR_WIDTH / 2 + 10))) begin // Horizontal position for the stand (20-pixel width centered)
                rgb_reg <= 12'hC11; // Pink
            end
            // Character Rendering Logic
            else if ((x >= WRITE_ZONE_X_OFFSET) && (x < (WRITE_ZONE_X_OFFSET + SCREEN_COLS * CHAR_WIDTH)) &&
                     (y >= WRITE_ZONE_Y_OFFSET) && (y < (WRITE_ZONE_Y_OFFSET + SCREEN_ROWS * CHAR_HEIGHT))) begin
                // Get the current character from the buffer
                if (rom_data[8 - x_in_char_col])  // 8 - x because bit to use for x = 0 is the most sig bit 8'b10000000;
                    rgb_reg <= 12'h7FF; // Light Green for active pixels
                else
                    rgb_reg <= 12'h127; // Dark Blue for background
            end 
            // Background Logic
            else begin
                // Light cream and wood brown checker pattern
                if ((x / 80 + y / 80) % 2 == 0) 
                    rgb_reg <= 12'hFEE;
                else 
                    rgb_reg <= 12'hB77;
            end
        end
    end

    // Button Debounce and Edge Detection
    reg change_d;
    reg change_edge;
    always @(posedge clk_100MHz or posedge reset) begin
        if (reset) begin
            change_d <= 1'b0;
            change_edge <= 1'b0;
        end else begin
            change_d <= change;
            change_edge <= change && !change_d;
        end
    end

    // Update cursor position based on the character grid size
    always @(posedge clk_100MHz or posedge reset) begin
        if (reset) begin
            cursor_x <= 0; // Set cursor to the top-left corner (0, 0) relative to write zone
            cursor_y <= 0; // Set cursor to the top-left corner (0, 0) relative to write zone
        end else if (change_edge) begin
            if (data == 8'h0D) begin // Newline (ASCII 13)
                cursor_x <= 0; // Reset to horizontal start
                begin
                    if (cursor_y < SCREEN_ROWS - 1)
                        cursor_y <= cursor_y + 1;
                    else // Loop back to Row 0
                        cursor_y <= 0;
                end;
            end else begin
                // Update the character buffer at the cursor location
                char_buffer[cursor_y][cursor_x] <= data;
    
                // Move the cursor to the next position
                if (cursor_x < SCREEN_COLS - 1)
                    cursor_x <= cursor_x + 1;
                else begin
                    cursor_x <= 0; // Reset to horizontal start
                    begin
                        if (cursor_y < SCREEN_ROWS - 1)
                            cursor_y <= cursor_y + 1;
                        else // Loop back to Row 0
                            cursor_y <= 0;
                    end;
                end
            end
        end
    end

    assign rgb = rgb_reg;

endmodule
