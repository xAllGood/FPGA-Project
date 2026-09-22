`timescale 1ns / 1ps

module tb_top();

    parameter WIDTH         = 131; 
    parameter HEIGHT        = 78; 
    parameter DATA_WIDTH    = 8;
    parameter THRESHOLD     = 30;
    parameter LOCATION      = "D:/College/Projects/VLSI_Project/Softwares/OpenCV/python/mem/image7.mem"; 
    parameter CODEBOOK_FILE = "D:/College/Projects/VLSI_Project/Softwares/output/vivado/vector/codebook.mem";
    parameter SAVE_LOCATION = "D:/College/Projects/VLSI_Project/Softwares/output/vivado/gaussian/Hari7.txt"; 
    parameter HMM_SAVE_LOC  = "D:/College/Projects/VLSI_Project/Softwares/output/vivado/HMM/output_symbols.txt";

    localparam TOTAL_PIXELS  = WIDTH * HEIGHT;
    localparam ADDR_WIDTH    = $clog2(TOTAL_PIXELS);
    
    localparam STAGE_DELAY   = (2 * WIDTH) + 12; 
    // Extended run time to allow full raster capture + complete 377-column readout pass
    localparam CAPTURE_DELAY = STAGE_DELAY + TOTAL_PIXELS + WIDTH + 100;

    reg clk;
    reg rst;
    reg [ADDR_WIDTH-1:0] data_in;
    wire [DATA_WIDTH-1:0] final_pixel_out;
    wire symbol_valid;
    wire [3:0] hmm_symbol;

    integer i;
    integer filehandle;
    integer hmm_filehandle;

    // Top Module Instance
    top #(
        .WIDTH(WIDTH),
        .HEIGHT(HEIGHT),
        .DATA_WIDTH(DATA_WIDTH),
        .THRESHOLD(THRESHOLD),
        .LOCATION(LOCATION),
        .CODEBOOK_FILE(CODEBOOK_FILE)
    ) uut (
        .clk(clk),
        .rst(rst),
        .data_in(data_in),
        .final_pixel_out(final_pixel_out),
        .hmm_symbol_valid(symbol_valid),
        .hmm_symbol_out(hmm_symbol)
    );
  
    // 100 MHz Clock Generator
    always #5 clk = ~clk;

    initial begin
        clk     = 0;
        data_in = 0;
        rst     = 1;

        filehandle     = $fopen(SAVE_LOCATION, "w");
        hmm_filehandle = $fopen(HMM_SAVE_LOC, "w");

        if (filehandle == 0 || hmm_filehandle == 0) begin
            $display("Error: Could not open output text files!");
            $finish;
        end

        #20;
        rst = 0;
        #10;

        for (i = 0; i < CAPTURE_DELAY; i = i + 1) begin
            // Hold address at last valid pixel once total memory range is processed
            data_in = (i < TOTAL_PIXELS) ? i[ADDR_WIDTH-1:0] : (TOTAL_PIXELS - 1);
            
            @(posedge clk);
            #1;

            if (i >= STAGE_DELAY && i < (STAGE_DELAY + TOTAL_PIXELS)) begin
                $fwrite(filehandle, "%h\n", final_pixel_out);
    // Add this for live waveform debugging:
                $display("i = %0d, data_in = %0d, final_pixel_out = %02h", i, data_in, final_pixel_out);
            end

            // Monitor and record valid generated HMM symbols
            if (symbol_valid) begin
                $fwrite(hmm_filehandle, "%X\n", hmm_symbol);
                $display("Time %0t ps: Emitted HMM Observation Symbol = %0X", $time, hmm_symbol);
            end
        end

        $fclose(filehandle);
        $fclose(hmm_filehandle);
        $display("Simulation Completed Successfully! Processed full frame.");
        $finish;
    end

endmodule