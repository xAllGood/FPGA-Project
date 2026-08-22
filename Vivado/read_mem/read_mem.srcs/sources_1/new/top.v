`timescale 1ns / 1ps

module top #(
    parameter WIDTH      = 377,
    parameter HEIGHT     = 193,
    parameter DATA_WIDTH = 8
)(
    input  wire                          clk,
    input  wire                          rst,
    input  wire [$clog2(WIDTH*HEIGHT)-1:0] data_in,
    output wire [DATA_WIDTH-1:0]          final_pixel_out
);

    // Derived Parameters
    localparam TOTAL_PIXELS = WIDTH * HEIGHT;
    localparam ADDR_WIDTH   = $clog2(TOTAL_PIXELS);
    localparam PTR_WIDTH    = $clog2(WIDTH);

    // Internal Wires
    wire [DATA_WIDTH-1:0] raw_data;
    wire [DATA_WIDTH-1:0] otsu_binary;
    wire [DATA_WIDTH-1:0] active_thresh;
    
    wire [DATA_WIDTH-1:0] r1, r2, r3;
    wire [DATA_WIDTH-1:0] blurred_out;
    wire [DATA_WIDTH-1:0] blur_r1, blur_r2, blur_r3;
    wire [DATA_WIDTH-1:0] edge_pixel;

    wire vsync_signal = (data_in == 0);

    // 1. Memory Read
    read_mem #(
        .TOTAL_PIXELS(TOTAL_PIXELS),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_read_mem (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .data_out(raw_data)
    );

    otsu_threshold #(
        .DATA_WIDTH(DATA_WIDTH),
        .OFFSET(15)
    ) u_otsu (
        .clk(clk),
        .rst(rst),
        .pixel_in(raw_data),
        .valid_in(1'b1),
        .vsync_in(vsync_signal),
        .binarized_out(otsu_binary),
        .computed_thresh(active_thresh)
    );

    line_buffer #(
        .WIDTH(WIDTH),
        .PTR_WIDTH(PTR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_line_buf1 (
        .clk(clk),
        .rst(rst),
        .pixel_in(otsu_binary),
        .row1_pixel(r1),
        .row2_pixel(r2),
        .row3_pixel(r3)
    );

    gaussian_3x3 #(
        .DATA_WIDTH(DATA_WIDTH)
    ) u_gaussian (
        .clk(clk),
        .rst(rst),
        .row1_pixel(r1),
        .row2_pixel(r2),
        .row3_pixel(r3),
        .blurred_out(blurred_out)
    );

    line_buffer #(
        .WIDTH(WIDTH),
        .PTR_WIDTH(PTR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_line_buf2 (
        .clk(clk),
        .rst(rst),
        .pixel_in(blurred_out),
        .row1_pixel(blur_r1),
        .row2_pixel(blur_r2),
        .row3_pixel(blur_r3)
    );

    sobel_3x3 #(
        .WIDTH(WIDTH),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_sobel (
        .clk(clk),
        .rst(rst),
        .row1_blur(blur_r1),
        .row2_blur(blur_r2),
        .row3_blur(blur_r3),
        .edge_out(edge_pixel)
    );

    assign final_pixel_out = ~edge_pixel;

endmodule