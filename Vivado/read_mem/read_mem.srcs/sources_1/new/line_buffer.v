module line_buffer #(
    parameter WIDTH      = 377,
    parameter PTR_WIDTH  = 9,
    parameter DATA_WIDTH = 8
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [DATA_WIDTH-1:0] pixel_in,
    output wire [DATA_WIDTH-1:0] row1_pixel,
    output wire [DATA_WIDTH-1:0] row2_pixel,
    output wire [DATA_WIDTH-1:0] row3_pixel
);

    reg [DATA_WIDTH-1:0] lb1 [0:WIDTH-1];
    reg [DATA_WIDTH-1:0] lb2 [0:WIDTH-1];

    reg [PTR_WIDTH-1:0]  write_ptr;
    reg [DATA_WIDTH-1:0] r1_reg, r2_reg;

    assign row3_pixel = pixel_in;
    assign row2_pixel = r1_reg;
    assign row1_pixel = r2_reg;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            write_ptr <= {PTR_WIDTH{1'b0}};
            r2_reg    <= {DATA_WIDTH{1'b0}};
            r1_reg    <= {DATA_WIDTH{1'b0}};
        end else begin
            r2_reg <= lb1[write_ptr];
            r1_reg <= lb2[write_ptr];

            lb1[write_ptr] <= pixel_in;
            lb2[write_ptr] <= r2_reg;

            if (write_ptr == WIDTH - 1)
                write_ptr <= {PTR_WIDTH{1'b0}};
            else
                write_ptr <= write_ptr + 1'b1;
        end
    end
endmodule