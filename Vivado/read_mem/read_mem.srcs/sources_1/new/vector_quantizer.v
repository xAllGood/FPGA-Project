`timescale 1ns / 1ps

module vector_quantizer #(
    parameter FEATURE_WIDTH = 6,
    parameter SYMBOL_WIDTH  = 4,
    parameter MEM_FILE      = "codebook.mem"
)(
    input  wire                     clk,
    input  wire                     rst,
    input  wire                     col_valid,
    input  wire [FEATURE_WIDTH-1:0] feature_in,
    output reg                      symbol_valid,
    output reg  [SYMBOL_WIDTH-1:0]  symbol_out
);

    (* ram_style = "block" *) reg [SYMBOL_WIDTH-1:0] codebook_rom [0:(1<<FEATURE_WIDTH)-1];

    initial begin
        $readmemh(MEM_FILE, codebook_rom);
    end

    // Combinational ROM lookup eliminates race conditions with upstream feature_in updates
    wire [SYMBOL_WIDTH-1:0] symbol_lookup = codebook_rom[feature_in];

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            symbol_out   <= 0;
            symbol_valid <= 1'b0;
        end else begin
            symbol_valid <= col_valid;
            if (col_valid) begin
                symbol_out <= symbol_lookup;
            end else begin
                symbol_out <= 0;
            end
        end
    end

endmodule