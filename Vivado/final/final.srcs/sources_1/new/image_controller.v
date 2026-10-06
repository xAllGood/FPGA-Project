`timescale 1ns / 1ps

module image_controller (
    input wire clk,
    input wire resetn,
    
    // Block-level control signals
    output reg ap_start,
    input wire ap_done,
    input wire ap_ready,
    input wire ap_idle,
    
    // AXI4-Stream Input (Feeding pixels to the ML block)
    output reg [15:0] global_in_TDATA,
    output reg global_in_TVALID,
    output reg global_in_TLAST,   // <--- Added TLAST pin
    input wire global_in_TREADY
    
    // AXI4-Stream Output (Receiving predictions from the ML block)
);


    reg [15:0] image_rom [0:783];
    
    initial begin
        $readmemh("D:/College/Projects/VLSI_Project/Softwares/OpenCV/python/emnist_input.mem", image_rom); 
    end

    reg [1:0] state;
    integer pixel_idx;

    always @(posedge clk) begin
        if (!resetn) begin
            ap_start <= 0;
            global_in_TDATA <= 0;
            global_in_TVALID <= 0;
            global_in_TLAST <= 0;
            state <= 0;
            pixel_idx <= 0;
        end else begin
            case (state)
                0: begin
                    if (ap_idle == 1'b1) begin
                        ap_start <= 1;
                        state <= 1;
                        pixel_idx <= 0;
                        global_in_TDATA <= image_rom[0];
                        global_in_TVALID <= 1;
                        global_in_TLAST <= 0;
                    end
                end
                
                1: begin
                    ap_start <= 1; 
                    
                    // Only advance if the CNN actually accepted the data!
                    if (global_in_TVALID && global_in_TREADY) begin
                        if (pixel_idx == 783) begin
                            // The final pixel was accepted. Close the stream!
                            global_in_TVALID <= 0;
                            global_in_TLAST <= 0;
                            state <= 2;
                        end else begin
                            // Advance to the next pixel
                            pixel_idx <= pixel_idx + 1;
                            global_in_TDATA <= image_rom[pixel_idx + 1];
                            
                            // Trigger TLAST if this new pixel is the final one
                            if (pixel_idx + 1 == 783) begin
                                global_in_TLAST <= 1;
                            end
                        end
                    end
                end
                
                2: begin
                    ap_start <= 1; // KEEP ENABLE HIGH until processing finishes
                    if (ap_done) begin
                        ap_start <= 0;
                        state <= 0; 
                    end
                end
            endcase
        end
    end
endmodule