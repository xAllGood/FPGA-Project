`timescale 1ns / 1ps

module binarize_solid #(
    parameter DATA_WIDTH = 8,
    parameter WIDTH      = 377,
    parameter PTR_WIDTH  = 9,
    parameter THRESHOLD  = 110 // Fine-tune between 90-130 depending on image contrast
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [DATA_WIDTH-1:0] raw_pixel_in,
    output reg  [DATA_WIDTH-1:0] solid_pixel_out
);

    // 1. Invert pixel polarity (Black ink on White BG -> White ink on Black BG)
    wire [DATA_WIDTH-1:0] pixel_inverted = ~raw_pixel_in;

    // 2. Line Buffer for 3x3 Gaussian Kernel
    wire [DATA_WIDTH-1:0] r1, r2, r3;
    
    line_buffer #(
        .WIDTH(WIDTH),
        .PTR_WIDTH(PTR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_line_buf (
        .clk(clk),
        .rst(rst),
        .pixel_in(pixel_inverted),
        .row1_pixel(r1),
        .row2_pixel(r2),
        .row3_pixel(r3)
    );

    // 3. Gaussian Blur Filter
    wire [DATA_WIDTH-1:0] blurred_pixel;
    
    gaussian_3x3 #(
        .DATA_WIDTH(DATA_WIDTH)
    ) u_gaussian (
        .clk(clk),
        .rst(rst),
        .row1_pixel(r1),
        .row2_pixel(r2),
        .row3_pixel(r3),
        .blurred_out(blurred_pixel)
    );

    // 4. Thresholding to create the solid mask
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            solid_pixel_out <= 8'h00;
        end else begin
            if (blurred_pixel >= THRESHOLD) begin
                solid_pixel_out <= 8'hFF; // Solid foreground (white)
            end else begin
                solid_pixel_out <= 8'h00; // Background (black)
            end
        end
    end

endmodule