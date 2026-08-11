module line_buffer #(
    parameter image_width =1599
    )(
    input clk,
    input rst,                  
    input [7:0] pixel_in,       
    output [7:0] row1_pixel,    
    output [7:0] row2_pixel,    
    output [7:0] row3_pixel     
);

    reg [7:0] lb1 [0:image_width]; 
    reg [7:0] lb2 [0:image_width]; 
    
    reg [11:0] write_ptr;
    reg [7:0] r1_reg;
    reg [7:0] r2_reg;

    assign row3_pixel = pixel_in;
    assign row2_pixel = r1_reg; 
    assign row1_pixel = r2_reg; 

    always @(posedge clk or posedge rst) begin 
        if (rst) begin
            write_ptr <= 11'd0;
            r2_reg    <= 8'd0;
            r1_reg    <= 8'd0;
        end else begin
            r2_reg <= lb1[write_ptr];
            r1_reg <= lb2[write_ptr];

            lb1[write_ptr] <= pixel_in; 
            lb2[write_ptr] <= r2_reg;   

            if (write_ptr == 11'd1599) 
                write_ptr <= 11'd0;
            else
                write_ptr <= write_ptr + 11'd1;
        end
    end
endmodule