module column_feature_extractor #(
    parameter HEIGHT     = 193,
    parameter DATA_WIDTH = 8
)(
    input  wire              clk,
    input  wire              rst,
    input  wire              col_valid,
    input  wire [HEIGHT-1:0] col_pixels,
    output reg  [5:0]        feature_out
);

    integer y;
    reg [8:0]  pixel_count;
    reg [16:0] weighted_y_sum;
    reg [3:0]  transitions;
    reg [16:0] avg_y;

    // Combinational calculation of column descriptors
    always @(*) begin
        pixel_count    = 0;
        weighted_y_sum = 0;
        transitions    = 0;

        for (y = 0; y < HEIGHT; y = y + 1) begin
            if (col_pixels[y]) begin
                pixel_count    = pixel_count + 1'b1;
                weighted_y_sum = weighted_y_sum + y;
            end
            if (y > 0 && (col_pixels[y] == 1'b1 && col_pixels[y-1] == 1'b0)) begin
                transitions = transitions + 1'b1;
            end
        end

        avg_y = (pixel_count > 0) ? (weighted_y_sum / pixel_count) : 17'b0;
    end

    // Sequential output latch
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            feature_out <= 6'b000000;
        end else if (col_valid) begin
            feature_out <= {
                pixel_count[3:2],    
                avg_y[7:6],          
                transitions[1:0]     
            };
        end
    end

endmodule