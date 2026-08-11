module read_mem(
    input [21:0] data_in,
    input clk,
    input rst,
    output reg [7:0] data_out 
);

    reg [7:0] mem_array [0:2559999];

    initial begin
        $readmemh("D:/College/Projects/VLSI_Project/Softwares/OpenCV/python/image.mem", mem_array);
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= 8'd0;
        end else begin
            // FIXED: If index exceeds 80 during pipeline flush, keep feeding the last valid pixel
            if (data_in > 22'd2559999)
                data_out <= mem_array[2559999];
            else
                data_out <= mem_array[data_in];
        end
    end
endmodule