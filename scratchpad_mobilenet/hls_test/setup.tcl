# MobileNet HLS Project Setup Script
open_project -reset mobilenet_hls
set_top dw_conv_accel
add_files dw_conv_accel.cpp
open_solution -reset "solution1"
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
exit
