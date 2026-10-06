`timescale 1ns / 1ps

module tb_top();
    reg tb_clk;
    reg tb_reset;
    wire [5:0] tb_led;

    // Instantiate your block design wrapper
    design_1_wrapper dut (
        .clk_in1_0(tb_clk),
        .reset_rtl_0(tb_reset),
        .led_out_0(tb_led)
        // Note: If you kept the UART on your canvas, Vivado allows leaving 
        // uart_rtl_0 unconnected here in the testbench without throwing errors.
    );

    // Generate a 100 MHz clock (10ns period)
    initial begin
        tb_clk = 0;
        forever #5 tb_clk = ~tb_clk; 
    end

    // Auto-detect when the LED prediction changes and finish simulation
    always @(tb_led) begin
        if (tb_led !== 6'b000000 && tb_led !== 6'bXXXXXX) begin
            $display("====================================");
            $display("=== INFERENCE PIPELINE COMPLETE  ===");
            $display("=== Time: %0t ns", $time);
            $display("=== PREDICTED CLASS INDEX: %d ===", tb_led);
            $display("====================================");
            $finish;
        end
    end

    // Main Testbench Stimulus
    initial begin
        // 1. Assert Active-Low reset to clear the system
        $display("Applying Reset...");
        tb_reset = 0; 
        #200;        
        
        // 2. Release reset to 1 so the clock and CNN wake up!
        $display("Releasing Reset. Booting Neural Network...");
        tb_reset = 1; 
        
        // 3. Fallback timeout just in case it stalls 
        // (500,000 ns is plenty of time for the 784-pixel pipeline)
        #25000000;
        
        $display("ERROR: Simulation timed out. No prediction was made.");
        $display("Check if tready is tied high in hw_argmax!");
        $finish;
    end
endmodule