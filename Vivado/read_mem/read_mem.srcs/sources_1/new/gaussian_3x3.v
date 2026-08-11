module gaussian_3x3(
    input clk,
    input rst,
    input [7:0] row1_pixel,
    input [7:0] row2_pixel,
    input [7:0] row3_pixel,
    output reg [7:0] blurred_out
);
    
    reg [11:0] kernel_sum;
    reg [7:0] p11, p12, p13, p21, p22, p23, p31, p32, p33;
    
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            {p11, p12, p13} <= 24'h0;
            {p21, p22, p23} <= 24'h0;
            {p31, p32, p33} <= 24'h0;
        end else begin
            p11 <= p12; p12 <= p13; p13 <= row1_pixel;
            p21 <= p22; p22 <= p23; p23 <= row2_pixel;
            p31 <= p32; p32 <= p33; p33 <= row3_pixel;
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            kernel_sum  <= 12'd0;
            blurred_out <= 8'd0;
        end else begin
            kernel_sum  <= p11 + (p12 << 1) + p13 +
                           (p21 << 1) + (p22 << 2) + (p23 << 1) +
                           p31 + (p32 << 1) + p33;
            blurred_out <= kernel_sum >> 4;
        end                 
    end
endmodule