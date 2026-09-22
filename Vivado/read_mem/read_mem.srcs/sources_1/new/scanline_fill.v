`timescale 1ns / 1ps

module scanline_fill #(
    parameter WIDTH      = 377,
    parameter DATA_WIDTH = 8,
    parameter MAX_GAP    = 35  // Increased to accommodate thick cursive strokes
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire                  pixel_valid_in,
    input  wire [DATA_WIDTH-1:0] pixel_in,
    output reg                   pixel_valid_out,
    output reg  [DATA_WIDTH-1:0] pixel_out
);

    reg [$clog2(WIDTH)-1:0] col_cnt;
    reg                     prev_pixel_is_white;
    reg                     fill_active;
    reg [5:0]               gap_cnt; // 6-bit counter for wider gap coverage

    wire current_pixel_is_white = (pixel_in > 8'h7F);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            col_cnt             <= 0;
            prev_pixel_is_white <= 1'b0;
            fill_active         <= 1'b0;
            gap_cnt             <= 6'b0;
            pixel_valid_out     <= 1'b0;
            pixel_out           <= {DATA_WIDTH{1'b0}};
        end else begin
            pixel_valid_out <= pixel_valid_in;

            if (pixel_valid_in) begin
                if (col_cnt == 0) begin
                    prev_pixel_is_white <= current_pixel_is_white;
                    fill_active         <= current_pixel_is_white;
                    gap_cnt             <= 6'b0;
                    pixel_out           <= pixel_in;
                end else begin
                    // Black -> White Transition (Enter Stroke Boundary)
                    if (!prev_pixel_is_white && current_pixel_is_white) begin
                        fill_active <= 1'b1;
                        gap_cnt     <= 6'b0;
                    end 
                    // Inner Dark Gap (Bridge across interior)
                    else if (fill_active && !current_pixel_is_white) begin
                        if (gap_cnt < MAX_GAP) begin
                            gap_cnt <= gap_cnt + 1'b1;
                        end else begin
                            fill_active <= 1'b0; // Terminate fill when safely past stroke
                            gap_cnt     <= 6'b0;
                        end
                    end 
                    // Encountered inner edge or solid pixel inside stroke
                    else if (fill_active && current_pixel_is_white) begin
                        gap_cnt <= 6'b0;
                    end

                    prev_pixel_is_white <= current_pixel_is_white;

                    if (current_pixel_is_white || fill_active) begin
                        pixel_out <= 8'hFF;
                    end else begin
                        pixel_out <= 8'h00;
                    end
                end

                if (col_cnt == WIDTH - 1) begin
                    col_cnt     <= 0;
                    fill_active <= 1'b0;
                    gap_cnt     <= 6'b0;
                end else begin
                    col_cnt <= col_cnt + 1'b1;
                end
            end else begin
                pixel_valid_out <= 1'b0;
            end
        end
    end

endmodule