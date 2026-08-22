module read_mem #(
    parameter TOTAL_PIXELS = 72761,
    parameter ADDR_WIDTH   = 17,
    parameter DATA_WIDTH   = 8
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [ADDR_WIDTH-1:0] data_in,
    output reg  [DATA_WIDTH-1:0] data_out
);

    reg [DATA_WIDTH-1:0] mem_array [0:TOTAL_PIXELS-1];

    initial begin
        $readmemh("D:/College/Projects/VLSI_Project/Softwares/OpenCV/python/image.mem1", mem_array);
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= {DATA_WIDTH{1'b0}};
        end else begin
            if (data_in >= TOTAL_PIXELS)
                data_out <= mem_array[TOTAL_PIXELS - 1];
            else
                data_out <= mem_array[data_in];
        end
    end
endmodule