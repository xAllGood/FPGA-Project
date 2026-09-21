`timescale 1ns / 1ps

module read_mem #(
    parameter TOTAL_PIXELS = 72761,
    parameter ADDR_WIDTH   = 17,
    parameter DATA_WIDTH   = 8,
    parameter LOCATION     = "image.mem"
)(
    input  wire                  clk,
    input  wire                  rst,
    input  wire [ADDR_WIDTH-1:0] data_in,
    output reg  [DATA_WIDTH-1:0] data_out
);

    (* ram_style = "block" *) reg [DATA_WIDTH-1:0] mem_array [0:TOTAL_PIXELS-1];

    initial begin
        $readmemh(LOCATION, mem_array);
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            data_out <= {DATA_WIDTH{1'b0}};
        end else begin
            data_out <= (data_in >= TOTAL_PIXELS) ? mem_array[TOTAL_PIXELS - 1] : mem_array[data_in];
        end
    end

endmodule