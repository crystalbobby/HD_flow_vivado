#---------------------------------------
# Create Clock Constraints - U_PR_B 
#---------------------------------------
create_clock -period 5.500 -name vid_clk.clk [get_ports {clk}] -waveform {0.000 2.750}
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports {clk}]
set_system_jitter 0.0
set_clock_latency -source -max 4.7330000000000005 [get_clocks {vid_clk.clk}]
set_clock_latency -source -min 3.665 [get_clocks {vid_clk.clk}]
set_clock_uncertainty 0.035 [get_clocks {vid_clk.clk}]
