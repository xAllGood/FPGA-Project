`timescale 1ns / 1ps

module argmax (
    input wire clk,
    input wire resetn,

    // AXI-Stream Input from hls4ml (47 classes * 16 bits = 752 bits)
    input wire [751:0] s_axis_tdata,
    input wire s_axis_tvalid,
    output wire s_axis_tready,

    // 6-bit output to physical LEDs (can represent up to 63)
    output reg [5:0] led_out
);

    assign s_axis_tready = 1'b1; // Always ready to receive the classification

    integer i;
    reg signed [15:0] current_val;
    reg signed [15:0] max_val;
    reg [5:0] max_idx;

    always @(posedge clk) begin
        if (!resetn) begin
            led_out <= 6'b000000;
        end else if (s_axis_tvalid) begin
            max_val = -32768; // Minimum possible 16-bit signed integer
            max_idx = 0;
            
            // Sweep through all 47 16-bit chunks
            for (i = 0; i < 47; i = i + 1) begin
                current_val = $signed(s_axis_tdata[i*16 +: 16]);
                if (current_val > max_val) begin
                    max_val = current_val;
                    max_idx = i[5:0];
                end
            end
            
            // Latch the winning index to the LEDs
            led_out <= max_idx;
        end
    end
endmodule