`timescale 1ns / 1ps

module otsu_threshold #(
    parameter DATA_WIDTH = 8,
    parameter OFFSET     = 15
)(
    input  wire                  clk,
    input  wire                  rst,
    
    // Pixel Stream
    input  wire [DATA_WIDTH-1:0] pixel_in,
    input  wire                  valid_in,
    input  wire                  vsync_in,  // Frame boundary (Active High during VBLANK)

    // Output Interface
    output reg  [DATA_WIDTH-1:0] binarized_out,
    output reg  [DATA_WIDTH-1:0] computed_thresh
);

    // =========================================================================
    // 1. Histogram RAM & Frame Pixel Counter
    // =========================================================================
    reg [19:0] histogram [0:255];
    reg [19:0] total_pixels;
    reg [19:0] current_count;

    // FSM States for Threshold Calculation
    localparam IDLE      = 2'b00;
    localparam COMPUTE   = 2'b01;
    localparam APPLY     = 2'b10;

    reg [1:0] state;
    reg [8:0] t_idx; // Histogram iterator (0 to 255)

    // Pixel accumulation during active frame
    integer i;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            total_pixels <= 0;
            for (i = 0; i < 256; i = i + 1) begin
                histogram[i] <= 20'd0;
            end
        end else if (vsync_in) begin
            // VSYNC active: reset histogram for next frame computation
            total_pixels <= 0;
        end else if (valid_in) begin
            histogram[pixel_in] <= histogram[pixel_in] + 1'b1;
            total_pixels        <= total_pixels + 1'b1;
        end
    end

    // =========================================================================
    // 2. Otsu Between-Class Variance Calculation State Machine
    // =========================================================================
    reg [19:0] weight_background;
    reg [31:0] sum_background;
    reg [31:0] sum_total;
    
    reg [63:0] max_variance;
    reg [7:0]  best_threshold;

    // Fixed-point intermediary values
    reg [63:0] var_between;
    reg [31:0] mean_diff;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state             <= IDLE;
            t_idx             <= 0;
            weight_background <= 0;
            sum_background    <= 0;
            sum_total         <= 0;
            max_variance      <= 0;
            best_threshold    <= 8'd128; // Safe default
            computed_thresh   <= 8'd128;
        end else begin
            case (state)
                IDLE: begin
                    if (vsync_in) begin
                        state             <= COMPUTE;
                        t_idx             <= 0;
                        weight_background <= 0;
                        sum_background    <= 0;
                        max_variance      <= 0;
                    end
                end

                COMPUTE: begin
                    if (t_idx < 256) begin
                        weight_background <= weight_background + histogram[t_idx];
                        sum_background    <= sum_background + (t_idx * histogram[t_idx]);
                        
                        // Simplified variance score calculation:
                        // var_between ~ (sum_total * weight_bg - sum_bg * total_pixels)^2 / (weight_bg * (total_pixels - weight_bg))
                        if (weight_background > 0 && weight_background < total_pixels) begin
                            mean_diff <= (sum_background * total_pixels) - (sum_total * weight_background);
                            var_between <= (mean_diff * mean_diff) / (weight_background * (total_pixels - weight_background));

                            if (var_between > max_variance) begin
                                max_variance   <= var_between;
                                best_threshold <= t_idx[7:0];
                            end
                        end
                        t_idx <= t_idx + 1'b1;
                    end else begin
                        // Apply Python offset: adjusted_thresh = otsu_thresh + 15
                        if (best_threshold + OFFSET > 255)
                            computed_thresh <= 8'd255;
                        else
                            computed_thresh <= best_threshold + OFFSET[7:0];

                        state <= APPLY;
                    end
                end

                APPLY: begin
                    if (!vsync_in) begin
                        state <= IDLE;
                    end
                end
            endcase
        end
    end

    // =========================================================================
    // 3. Streaming Binarization
    // =========================================================================
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            binarized_out <= 8'd0;
        end else if (valid_in) begin
            // Apply computed threshold from previous frame
            if (pixel_in > computed_thresh)
                binarized_out <= 8'hFF;
            else
                binarized_out <= 8'h00;
        end
    end

endmodule