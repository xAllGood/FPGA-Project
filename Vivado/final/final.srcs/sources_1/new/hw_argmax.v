module hw_argmax (
    input wire clk,
    input wire [751:0] tdata, // 47 classes * 16 bits = 752 bits
    input wire tvalid,
    output wire tready,       // <-- ADDED THIS
    output reg [5:0] led_out
);
    assign tready = 1'b1;     // <-- ADDED THIS (Always ready to receive data)

    integer i, best_idx;
    reg signed [15:0] current_val, max_val;

    always @(posedge clk) begin
        if (tvalid) begin
            max_val = -32768;
            best_idx = 0;
            for (i = 0; i < 47; i = i + 1) begin
                current_val = tdata[(i*16) +: 16];
                if (current_val > max_val) begin
                    max_val = current_val;
                    best_idx = i;
                end
            end
            led_out <= best_idx[5:0]; // Output the 6-bit binary index
        end
    end
endmodule