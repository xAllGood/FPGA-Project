`timescale 1ns / 1ps

module sobel_3x3(
    input clk,
    input rst,
    input [7:0] row1_blur,    // Top row from Blur Line Buffer
    input [7:0] row2_blur,    // Middle row from Blur Line Buffer
    input [7:0] row3_blur,    // Bottom row from Blur Line Buffer (live stream)
    output reg [7:0] edge_out // Final Binary Edge Pixel (8'h00 or 8'hFF)
);

    // 3x3 Sliding Window Matrix for Blurred Pixels
    reg [7:0] b11, b12, b13;
    reg [7:0] b21, b22, b23;
    reg [7:0] b31, b32, b33;

    // Signed registers for positive/negative gradient math
    reg signed [10:0] Gx;
    reg signed [10:0] Gy;
    
    // Absolute magnitude registers
    reg [10:0] abs_Gx;
    reg [10:0] abs_Gy;
    reg [10:0] magnitude;

    // 1. Sliding Window Shift Registers
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            {b11, b12, b13} <= 24'h0;
            {b21, b22, b23} <= 24'h0;
            {b31, b32, b33} <= 24'h0;
        end else begin
            // Shift data right-to-left
            b11 <= b12; b12 <= b13; b13 <= row1_blur;
            b21 <= b22; b22 <= b23; b23 <= row2_blur;
            b31 <= b32; b32 <= b33; b33 <= row3_blur;
        end
    end

    // 2. Parallel Sobel Convolution Math (Executes in 1 clock cycle)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            Gx <= 11'd0;
            Gy <= 11'd0;
        end else begin
            // Gx Matrix Weights: [-1 0 1] / [-2 0 2] / [-1 0 1]
            Gx <= ($signed({3'b0, b13}) - $signed({3'b0, b11})) +
                  (($signed({3'b0, b23}) - $signed({3'b0, b21})) << 1) +
                  ($signed({3'b0, b33}) - $signed({3'b0, b31}));

            // Gy Matrix Weights: [-1 -2 -1] / [ 0  0  0] / [ 1  2  1]
            Gy <= ($signed({3'b0, b31}) - $signed({3'b0, b11})) +
                  (($signed({3'b0, b32}) - $signed({3'b0, b12})) << 1) +
                  ($signed({3'b0, b33}) - $signed({3'b0, b13}));
        end
    end

    // 3. Magnitude Calculation & Thresholding (Executes in 1 clock cycle)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            abs_Gx     <= 11'd0;
            abs_Gy     <= 11'd0;
            magnitude  <= 11'd0;
            edge_out   <= 8'd0;
        end else begin
            // Calculate absolute values safely for signed vectors
            abs_Gx <= (Gx[10] == 1'b1) ? -Gx : Gx;
            abs_Gy <= (Gy[10] == 1'b1) ? -Gy : Gy;
            
            // Hardware Approximation: Magnitude = |Gx| + |Gy|
            magnitude <= abs_Gx + abs_Gy;

            // Apply your exact Python Canny Thresholds: 35 and 95
            if (magnitude > 11'd95) begin
                edge_out <= 8'hFF; // Strong Edge (White)
            end else if (magnitude < 11'd35) begin
                edge_out <= 8'h00; // No Edge (Black)
            end else begin
                // Simple thresholding bypass for weak edges to mirror the layout
                edge_out <= 8'hFF; 
            end
        end
    end

endmodule
