//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2026.1 (win64) Build 6511674 Tue Jun 16 11:02:23 MDT 2026
//Date        : Tue Oct  6 20:28:53 2026
//Host        : AllGood running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    led_out_0,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  output [5:0]led_out_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_rtl_0;

  wire [447:0]axis_dwidth_converter_0_M_AXIS_TDATA;
  wire axis_dwidth_converter_0_M_AXIS_TREADY;
  wire axis_dwidth_converter_0_M_AXIS_TVALID;
  wire axis_dwidth_converter_0_s_axis_tready;
  wire clk_in1_0;
  wire clk_wiz_1_locked;
  wire image_controller_0_ap_start;
  wire [15:0]image_controller_0_global_in_TDATA;
  wire image_controller_0_global_in_TLAST;
  wire image_controller_0_global_in_TVALID;
  wire [5:0]led_out_0;
  wire microblaze_0_Clk;
  wire myproject_0_ap_done;
  wire myproject_0_ap_idle;
  wire myproject_0_ap_ready;
  wire [751:0]myproject_0_layer24_out_TDATA;
  wire myproject_0_layer24_out_TREADY;
  wire myproject_0_layer24_out_TVALID;
  wire reset_rtl_0;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;

  design_1_axis_dwidth_converter_0_0 axis_dwidth_converter_0
       (.aclk(microblaze_0_Clk),
        .aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .m_axis_tdata(axis_dwidth_converter_0_M_AXIS_TDATA),
        .m_axis_tready(axis_dwidth_converter_0_M_AXIS_TREADY),
        .m_axis_tvalid(axis_dwidth_converter_0_M_AXIS_TVALID),
        .s_axis_tdata(image_controller_0_global_in_TDATA),
        .s_axis_tlast(image_controller_0_global_in_TLAST),
        .s_axis_tready(axis_dwidth_converter_0_s_axis_tready),
        .s_axis_tvalid(image_controller_0_global_in_TVALID));
  design_1_clk_wiz_1_1 clk_wiz_1
       (.clk_in1(clk_in1_0),
        .clk_out1(microblaze_0_Clk),
        .locked(clk_wiz_1_locked),
        .resetn(reset_rtl_0));
  design_1_hw_argmax_0_0 hw_argmax_0
       (.clk(microblaze_0_Clk),
        .led_out(led_out_0),
        .tdata(myproject_0_layer24_out_TDATA),
        .tready(myproject_0_layer24_out_TREADY),
        .tvalid(myproject_0_layer24_out_TVALID));
  design_1_image_controller_0_0 image_controller_0
       (.ap_done(myproject_0_ap_done),
        .ap_idle(myproject_0_ap_idle),
        .ap_ready(myproject_0_ap_ready),
        .ap_start(image_controller_0_ap_start),
        .clk(microblaze_0_Clk),
        .global_in_TDATA(image_controller_0_global_in_TDATA),
        .global_in_TLAST(image_controller_0_global_in_TLAST),
        .global_in_TREADY(axis_dwidth_converter_0_s_axis_tready),
        .global_in_TVALID(image_controller_0_global_in_TVALID),
        .resetn(rst_clk_wiz_1_100M_peripheral_aresetn));
  design_1_myproject_0_16 myproject_0
       (.ap_clk(microblaze_0_Clk),
        .ap_done(myproject_0_ap_done),
        .ap_idle(myproject_0_ap_idle),
        .ap_ready(myproject_0_ap_ready),
        .ap_rst_n(rst_clk_wiz_1_100M_peripheral_aresetn),
        .ap_start(image_controller_0_ap_start),
        .global_in_TDATA(axis_dwidth_converter_0_M_AXIS_TDATA),
        .global_in_TREADY(axis_dwidth_converter_0_M_AXIS_TREADY),
        .global_in_TVALID(axis_dwidth_converter_0_M_AXIS_TVALID),
        .layer24_out_TDATA(myproject_0_layer24_out_TDATA),
        .layer24_out_TREADY(myproject_0_layer24_out_TREADY),
        .layer24_out_TVALID(myproject_0_layer24_out_TVALID));
  design_1_rst_clk_wiz_1_100M_1 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_rtl_0),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_0_Clk));
endmodule
