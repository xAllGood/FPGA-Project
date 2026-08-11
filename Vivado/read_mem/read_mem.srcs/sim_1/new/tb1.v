`timescale 1ns / 1ps

module tb_read_mem();
    reg clk;
    reg rst;
    reg [21:0] data_in;                  
    wire [7:0] data_out;
    
    // Interconnect Wires for Gaussian Stage
    wire [7:0] pixel_in, r1, r2;
    wire [7:0] blurred_out;
    
    // Interconnect Wires for Sobel Stage
    wire [7:0] blur_pixel_in, blur_r1, blur_r2;
    wire [7:0] edge_pixel;
    wire [7:0] final_pixel_out; // Added: Output of bitwise inverter

    integer i;
    integer filehandle;

    // 1. Core Image RAM Reader
    read_mem uut (
        .data_in(data_in),
        .clk(clk),
        .rst(rst),
        .data_out(data_out)
    );
        
    // 2. Line Buffer 1: Delays Raw Pixels to create 3 Rows for Gaussian
    line_buffer uut1 (
        .clk(clk),
        .rst(rst),
        .pixel_in(data_out),
        .row1_pixel(r1),
        .row2_pixel(r2),
        .row3_pixel(pixel_in)
    );

    // 3. Gaussian 3x3 Module
    gaussian_3x3 uut2 (
        .clk(clk),
        .rst(rst),
        .row1_pixel(r1), 
        .row2_pixel(r2), 
        .row3_pixel(pixel_in),
        .blurred_out(blurred_out)
    );
    
    // 4. Added: Line Buffer 2 (Delays Blurred Pixels to create 3 Rows for Sobel)
    line_buffer uut3 (
        .clk(clk),
        .rst(rst),
        .pixel_in(blurred_out), // Hooked directly to the output of the Gaussian block
        .row1_pixel(blur_r1),
        .row2_pixel(blur_r2),
        .row3_pixel(blur_pixel_in)
    );

    // 5. Added: Sobel 3x3 Module (Thresholds 35, 95)
    sobel_3x3 uut4 (
        .clk(clk),
        .rst(rst),
        .row1_blur(blur_r1),
        .row2_blur(blur_r2),
        .row3_blur(blur_pixel_in),
        .edge_out(edge_pixel)
    );
    
    // 6. Added: Bitwise Inverter Node (Replaces OpenCV c.bitwise_not)
    assign final_pixel_out = ~edge_pixel;
        
    // 100 MHz Oscillator Configuration Loop
    always begin
        #5 clk = ~clk;
    end

    initial begin
        clk = 0;
        data_in = 0;
        rst = 1; 

        $display("Simulation started - Full Cascaded Pipeline Active");
        filehandle = $fopen("D:/College/Projects/VLSI_Project/Softwares/output/vivado/Hari3.txt", "w");
        
        if(filehandle == 0) begin
            $display("Error opening file!");
            $finish;
        end
        
        #10;
        rst = 0; // Release system master reset
        #10;     

        // Loop extended to 2,566,406 cycles to account for full multi-stage pipeline depth
        for(i = 0; i < 2566406; i = i + 1) begin
            data_in = i;
            @(posedge clk);
            #1;
            
            // System warmup requires exactly 6406 clock cycles 
            // Saving output data beyond this threshold strips out all raw garbage entries!
            if (i >= 6406 && i < 2566406) begin
                $fwrite(filehandle, "%h\n", final_pixel_out); // Changed: Now writing the inverted edge pixels
            end
        end
        
        $fclose(filehandle);
        $display("Simulation Completed successfully. Exactly 2,560,000 edge-detected pixels saved.");
        $finish;
    end

endmodule
