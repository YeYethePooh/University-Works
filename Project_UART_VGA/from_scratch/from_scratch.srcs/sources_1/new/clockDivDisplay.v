`timescale 1ns / 1ps

module clockDivDisplay(
    output reg  clkDiv,
    input  wire clk
);
    reg [22:0] counter;

    initial begin
        counter <= 0;
    end

    always @(posedge clk) begin
        if (counter == 100000) begin
            counter <= 0;
            clkDiv  <= ~clkDiv;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
