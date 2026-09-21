`timescale 1ns / 1ps

module thinning_3x3 #(
    parameter DATA_WIDTH = 8,
    parameter WIDTH      = 377,
    parameter PTR_WIDTH  = 9
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [DATA_WIDTH-1:0] edge_in,
    output reg  [DATA_WIDTH-1:0] thin_out
);

    wire [DATA_WIDTH-1:0] r1, r2, r3;

    line_buffer #(.WIDTH(WIDTH), .PTR_WIDTH(PTR_WIDTH), .DATA_WIDTH(DATA_WIDTH)) u_thin_lb (
        .clk(clk), .rst(rst), .pixel_in(edge_in), .row1_pixel(r1), .row2_pixel(r2), .row3_pixel(r3)
    );

    reg [DATA_WIDTH-1:0] e11, e12, e13, e21, e22, e23, e31, e32, e33;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            {e11, e12, e13} <= 0; {e21, e22, e23} <= 0; {e31, e32, e33} <= 0;
            thin_out <= 8'h00;
        end else begin
            e11 <= e12; e12 <= e13; e13 <= r1;
            e21 <= e22; e22 <= e23; e23 <= r2;
            e31 <= e32; e32 <= e33; e33 <= r3;

            if ((e22 == 8'hFF) && !(e12 == 8'hFF && e32 == 8'hFF && e21 == 8'hFF && e23 == 8'hFF))
                thin_out <= 8'hFF;
            else
                thin_out <= 8'h00;
        end
    end

endmodule