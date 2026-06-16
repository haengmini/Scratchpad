# MobileNet Ultra HLS Synthesis Script (Bypass Mode)
open_project -reset hls_project
set_top mobilenet_block_accel
add_files src/mobilenet_block_accel.cpp
add_files src/mobilenet_block_accel.hpp
open_solution -reset "solution1"
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default

# Run C-Synthesis
csynth_design

# Export IP (Generates drivers and Vivado IP)
export_design -format ip_catalog -description "MobileNet DW-PW Unified Accelerator"

exit
