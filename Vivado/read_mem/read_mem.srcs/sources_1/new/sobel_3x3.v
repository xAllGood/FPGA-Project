`timescale 1ns / 1ps

module sobel_3x3 #(
    parameter DATA_WIDTH = 8,
    parameter WIDTH      = 377,
    parameter PTR_WIDTH  = 9,
    parameter THRESHOLD  = 130
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [DATA_WIDTH-1:0] row1_blur,
    input  wire [DATA_WIDTH-1:0] row2_blur,
    input  wire [DATA_WIDTH-1:0] row3_blur,
    output reg  [DATA_WIDTH-1:0] edge_out
);

    reg [DATA_WIDTH-1:0] b11, b12, b13, b21, b22, b23, b31, b32, b33;
    reg signed [10:0] Gx, Gy;
    reg [10:0] abs_Gx, abs_Gy, mag;
    reg [1:0] dir;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            {b11, b12, b13} <= 0; {b21, b22, b23} <= 0; {b31, b32, b33} <= 0;
            Gx <= 0; Gy <= 0; abs_Gx <= 0; abs_Gy <= 0; mag <= 0; dir <= 0;
        end else begin
            b11 <= b12; b12 <= b13; b13 <= row1_blur;
            b21 <= b22; b22 <= b23; b23 <= row2_blur;
            b31 <= b32; b32 <= b33; b33 <= row3_blur;

            Gx <= ($signed({{(11-DATA_WIDTH){1'b0}}, b13}) - $signed({{(11-DATA_WIDTH){1'b0}}, b11})) +
                  (($signed({{(11-DATA_WIDTH){1'b0}}, b23}) - $signed({{(11-DATA_WIDTH){1'b0}}, b21})) << 1) +
                  ($signed({{(11-DATA_WIDTH){1'b0}}, b33}) - $signed({{(11-DATA_WIDTH){1'b0}}, b31}));

            Gy <= ($signed({{(11-DATA_WIDTH){1'b0}}, b31}) - $signed({{(11-DATA_WIDTH){1'b0}}, b11})) +
                  (($signed({{(11-DATA_WIDTH){1'b0}}, b32}) - $signed({{(11-DATA_WIDTH){1'b0}}, b12})) << 1) +
                  ($signed({{(11-DATA_WIDTH){1'b0}}, b33}) - $signed({{(11-DATA_WIDTH){1'b0}}, b13}));

            abs_Gx <= (Gx[10]) ? -Gx : Gx;
            abs_Gy <= (Gy[10]) ? -Gy : Gy;
            mag    <= abs_Gx + abs_Gy;

            if (abs_Gy < (abs_Gx >> 1))
                dir <= 2'b00; 
            else if (abs_Gx < (abs_Gy >> 1))
                dir <= 2'b10; 
            else if ((Gx[10] ^ Gy[10]) == 1'b0)
                dir <= 2'b01; 
            else
                dir <= 2'b11; 
        end
    end

    wire [10:0] mag_r1, mag_r2, mag_r3;
    wire [1:0]  dir_r1, dir_r2, dir_r3;

    line_buffer #(.WIDTH(WIDTH), .PTR_WIDTH(PTR_WIDTH), .DATA_WIDTH(11)) u_mag_lb (
        .clk(clk), .rst(rst), .pixel_in(mag), .row1_pixel(mag_r1), .row2_pixel(mag_r2), .row3_pixel(mag_r3)
    );

    line_buffer #(.WIDTH(WIDTH), .PTR_WIDTH(PTR_WIDTH), .DATA_WIDTH(2)) u_dir_lb (
        .clk(clk), .rst(rst), .pixel_in(dir), .row1_pixel(dir_r1), .row2_pixel(dir_r2), .row3_pixel(dir_r3)
    );

    reg [10:0] m11, m12, m13, m21, m22, m23, m31, m32, m33;
    reg [1:0] dir_center;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            {m11, m12, m13, m21, m22, m23, m31, m32, m33} <= 0;
            dir_center <= 0;
        end else begin
            m11 <= m12; m12 <= m13; m13 <= mag_r1;
            m21 <= m22; m22 <= m23; m23 <= mag_r2;
            m31 <= m32; m32 <= m33; m33 <= mag_r3;
            dir_center <= dir_r2;
        end
    end

    reg is_max;
    always @(*) begin
        case (dir_center)
            2'b00:   is_max = (m22 > m21) && (m22 > m23);
            2'b01:   is_max = (m22 > m31) && (m22 > m13);
            2'b10:   is_max = (m22 > m12) && (m22 > m32);
            2'b11:   is_max = (m22 > m11) && (m22 > m33);
            default: is_max = 1'b0;
        endcase
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            edge_out <= 8'h00;
        end else begin
            edge_out <= (is_max && (m22 >= THRESHOLD)) ? 8'hFF : 8'h00;
        end
    end

endmodule