//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
//Date        : Tue Oct  6 20:28:53 2026
//Host        : AllGood running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_0,
    led_out_0,
    reset_rtl_0);
  input clk_in1_0;
  output [5:0]led_out_0;
  input reset_rtl_0;

  wire clk_in1_0;
  wire [5:0]led_out_0;
  wire reset_rtl_0;

  design_1 design_1_i
       (.clk_in1_0(clk_in1_0),
        .led_out_0(led_out_0),
        .reset_rtl_0(reset_rtl_0));
endmodule
