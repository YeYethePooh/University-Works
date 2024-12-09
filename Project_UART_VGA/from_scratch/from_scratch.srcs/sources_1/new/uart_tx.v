`timescale 1ns / 1ps

module uart_tx(
    input clk,
    input [7:0] data_transmit,
    input ena, // Button to send data
    output reg sent,
    output reg bit_out
    );

    reg last_ena;
    reg sending = 0;
    reg [7:0] count;
    reg [7:0] temp;

    always@(posedge clk) begin
        if (~sending & ~last_ena & ena) begin
            temp <= data_transmit;
            sending <= 1;
            sent <= 0;
            count <= 0;
        end

        last_ena <= ena;

        if (sending)    count <= count + 1;
        else            begin count <= 0; bit_out <= 1; end

        // sampling every 16 ticks
        case (count)
            8'd8: bit_out <= 0;
            8'd24: bit_out <= temp[0];
            8'd40: bit_out <= temp[1];
            8'd56: bit_out <= temp[2];
            8'd72: bit_out <= temp[3];
            8'd88: bit_out <= temp[4];
            8'd104: bit_out <= temp[5];
            8'd120: bit_out <= temp[6];
            8'd136: bit_out <= temp[7];
            8'd152: begin sent <= 1; sending <= 0; end
        endcase
    end
endmodule