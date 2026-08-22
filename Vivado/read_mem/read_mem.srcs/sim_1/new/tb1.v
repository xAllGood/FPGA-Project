`timescale 1ns / 1ps

module tb_top();

    // Module Parameters matching top.v
    parameter WIDTH      = 377;
    parameter HEIGHT     = 193; 
    parameter DATA_WIDTH = 8;

    localparam TOTAL_PIXELS = WIDTH * HEIGHT;
    localparam ADDR_WIDTH   = $clog2(TOTAL_PIXELS);
    
    // Hardware Latency Pipeline Delay:
    // Line Buffer 1 (2*WIDTH + 1) + Gaussian (1) + Line Buffer 2 (2*WIDTH + 1) + Sobel NMS (2*WIDTH + 2)
    localparam STAGE_DELAY  = (6 * WIDTH) + 4; 
    localparam TOTAL_CYCLES = STAGE_DELAY + TOTAL_PIXELS;

    // Testbench Signals
    reg clk;
    reg rst;
    reg [ADDR_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] final_pixel_out;

    integer i;
    integer filehandle;
    integer written_pixels;

    // Instantiate Top Module
    top #(
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT),
        .DATA_WIDTH(DATA_WIDTH)
    ) uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .final_pixel_out(final_pixel_out)
    );

    // 100 MHz Clock Generation (10ns Period)
    always #5 clk = ~clk;

    initial begin
        // Signal Initialization
        clk            = 0;
        data_in        = 0;
        rst            = 1;
        written_pixels = 0;

        // Open Output File
        filehandle = $fopen("D:/College/Projects/VLSI_Project/Softwares/output/vivado/Hari4.txt", "w");

        if (filehandle == 0) begin
            $display("[ERROR] Could not open output text file for writing!");
            $finish;
        end

        // Apply Reset Pulse
        #20;
        rst = 0; 
        @(posedge clk);

        // =====================================================================
        // FRAME 1: Histogram Population & Otsu Threshold Calculation Pass
        // =====================================================================
        $display("[INFO] Frame 1 Started: Generating Otsu Histogram...");
        for (i = 0; i < TOTAL_PIXELS; i = i + 1) begin
            data_in <= i;
            @(posedge clk);
        end

        // VSYNC Trigger State: Reset data_in and allow state machine to compute threshold
        data_in <= 0;
        $display("[INFO] Computing optimal Otsu threshold...");
        repeat(300) @(posedge clk); // Wait for the COMPUTE state machine in u_otsu

        // =====================================================================
        // FRAME 2: Active Image Pipeline & File Generation
        // =====================================================================
        $display("[INFO] Frame 2 Started: Applying threshold, Gaussian blur, and NMS edge detection...");
        
        for (i = 0; i < TOTAL_CYCLES; i = i + 1) begin
            
            // Feed image addresses during the valid image window
            if (i < TOTAL_PIXELS)
                data_in <= i;
            else
                data_in <= 0; // Clamp address during pipeline flushing

            @(posedge clk);

            // Record pixel data once the hardware pipeline fills
            if (i >= STAGE_DELAY && written_pixels < TOTAL_PIXELS) begin
                $fwrite(filehandle, "%02h\n", final_pixel_out);
                written_pixels = written_pixels + 1;
            end
        end

        // Cleanup and Exit
        $fclose(filehandle);
        $display("[SUCCESS] Simulation Complete! Written %0d valid pixels to file.", written_pixels);
        $finish;
    end

endmodule