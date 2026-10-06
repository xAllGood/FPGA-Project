set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports clk_in1_0]
create_clock -period 20.000 -name sys_clk_pin -waveform {0.000 10.000} -add [get_ports clk_in1_0]

# ---------------------------------------------------------------------------
# 2. System Reset 
# ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN L5 IOSTANDARD LVCMOS33 } [get_ports reset_rtl_0]

# ---------------------------------------------------------------------------
# 3. Output LEDs (Argmax Output)
# ---------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN J3 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[0]}]
set_property -dict { PACKAGE_PIN H3 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[1]}]
set_property -dict { PACKAGE_PIN J1 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[2]}]
set_property -dict { PACKAGE_PIN K1 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[3]}]
set_property -dict { PACKAGE_PIN L3 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[4]}]
set_property -dict { PACKAGE_PIN L2 IOSTANDARD LVCMOS33 } [get_ports {led_out_0[5]}]