`timescale 1ns / 1ps

module font_rom(
    input clk, 
    input wire [10:0] addr,  // 11-bit address supports up to 2^11 = 2048 locations
    output reg [7:0] data   // 8-bit data
);

    // Declare memory array
    reg [7:0] rom_eng [0:2047];
    reg [7:0] rom_thai [0:2047];
    
    // Load memory contents from the font.mem file
    initial begin
        $readmemd("font_eng.mem", rom_eng); // Load ENG the deci file into 'rom'
        $readmemh("font_thai.mem", rom_thai); // Load THAI the hex file into 'rom'
    end

    // Read the data at the specified address
    always @(posedge clk) begin
        if (addr >= 12'h320 && addr <= 12'h94F)// ENG
            data <= rom_eng[addr - 12'h320]; // Adjusted so the fisrt ACII char (32) is at line 0 of font.mem
        else if (addr >= 12'h950)
            data <= rom_thai[addr - 12'h950];
    end

endmodule
