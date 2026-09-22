`timescale 1ns / 1ps

module top #(
    parameter WIDTH         = 377,
    parameter HEIGHT        = 193,
    parameter DATA_WIDTH    = 8,
    parameter THRESHOLD     = 110, // Tune between 90-130 for desired stroke thickness
    parameter LOCATION      = "image.mem",
    parameter CODEBOOK_FILE = "codebook.mem"
)(
    input  wire                                 clk,
    input  wire                                 rst,
    input  wire [$clog2(WIDTH*HEIGHT)-1:0]      data_in,
    output wire [DATA_WIDTH-1:0]                final_pixel_out,
    output wire                                 hmm_symbol_valid,
    output wire [3:0]                           hmm_symbol_out
);

    localparam TOTAL_PIXELS = WIDTH * HEIGHT;
    localparam ADDR_WIDTH   = $clog2(TOTAL_PIXELS);
    localparam PTR_WIDTH    = $clog2(WIDTH);

    // Hardware Pipeline Wires
    wire [DATA_WIDTH-1:0] raw_data;
    wire [DATA_WIDTH-1:0] raw_data_inverted;
    wire [DATA_WIDTH-1:0] r1, r2, r3;
    wire [DATA_WIDTH-1:0] blurred_out;
    reg  [DATA_WIDTH-1:0] solid_pixel_reg;

    // 1. Memory Reader
    read_mem #(
        .TOTAL_PIXELS(TOTAL_PIXELS),
        .ADDR_WIDTH(ADDR_WIDTH),
        .DATA_WIDTH(DATA_WIDTH),
        .LOCATION(LOCATION)
    ) u_read_mem (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .data_out(raw_data)
    );

    // Invert polarity: converts black text on white background -> white text on black background
    assign raw_data_inverted = ~raw_data;

    // 2. Gaussian Smoothing Window
    line_buffer #(
        .WIDTH(WIDTH), 
        .PTR_WIDTH(PTR_WIDTH), 
        .DATA_WIDTH(DATA_WIDTH)
    ) u_line_buf1 (
        .clk(clk), 
        .rst(rst), 
        .pixel_in(raw_data_inverted), 
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

    // 3. Direct Threshold Binarization (Generates solid white characters on black background)
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            solid_pixel_reg <= {DATA_WIDTH{1'b0}};
        end else begin
            if (blurred_out >= THRESHOLD) begin
                solid_pixel_reg <= 8'hFF; // Solid foreground
            end else begin
                solid_pixel_reg <= 8'h00; // Background
            end
        end
    end

    // Route solid binarized image directly to final output
    assign final_pixel_out = solid_pixel_reg;

    // ------------------------------------------------------------------------
    // Continuous Real-Time Column Accumulation & Downstream HMM Logic
    // ------------------------------------------------------------------------
    reg [HEIGHT-1:0] col_shift_reg [0:WIDTH-1];
    reg [$clog2(WIDTH)-1:0] x_cnt;
    reg [$clog2(HEIGHT)-1:0] y_cnt;
    
    reg [$clog2(TOTAL_PIXELS)-1:0] valid_counter;
    reg col_ready_pulse;
    reg [HEIGHT-1:0] active_col_pixels;

    localparam MIN_DELAY = (2 * WIDTH) + 10;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x_cnt             <= 0;
            y_cnt             <= 0;
            valid_counter     <= 0;
            col_ready_pulse   <= 1'b0;
            active_col_pixels <= 0;
        end else begin
            if (valid_counter < TOTAL_PIXELS + MIN_DELAY) begin
                valid_counter <= valid_counter + 1'b1;
            end

            col_shift_reg[x_cnt][y_cnt] <= (solid_pixel_reg == 8'hFF);

            if (x_cnt == WIDTH - 1) begin
                x_cnt <= 0;
                if (y_cnt == HEIGHT - 1) begin
                    y_cnt <= 0;
                end else begin
                    y_cnt <= y_cnt + 1'b1;
                end
            end else begin
                x_cnt <= x_cnt + 1'b1;
            end

            if (valid_counter >= MIN_DELAY) begin
                active_col_pixels <= col_shift_reg[x_cnt];
                col_ready_pulse   <= 1'b1;
            end else begin
                col_ready_pulse   <= 1'b0;
            end
        end
    end

    // Feature Extractor & Vector Quantizer Modules
    wire [5:0] feature_vector;

    column_feature_extractor #(
        .HEIGHT(HEIGHT),
        .DATA_WIDTH(DATA_WIDTH)
    ) u_feature_extractor (
        .clk(clk),
        .rst(rst),
        .col_valid(col_ready_pulse),
        .col_pixels(active_col_pixels),
        .feature_out(feature_vector)
    );

    vector_quantizer #(
        .FEATURE_WIDTH(6),
        .SYMBOL_WIDTH(4),
        .MEM_FILE(CODEBOOK_FILE)
    ) u_vector_quantizer (
        .clk(clk),
        .rst(rst),
        .col_valid(col_ready_pulse),
        .feature_in(feature_vector),
        .symbol_valid(hmm_symbol_valid),
        .symbol_out(hmm_symbol_out)
    );

endmodule