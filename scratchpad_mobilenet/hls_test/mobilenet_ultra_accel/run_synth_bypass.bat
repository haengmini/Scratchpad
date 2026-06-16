@echo off
echo !!! STARTING MOBILENET HLS SYNTHESIS (VITIS_HLS ENGINE) !!!
:: Use vitis_hls directly since it's already in the PATH
vitis_hls -f run_synth.tcl
echo.
echo !!! SYNTHESIS FINISHED. CHECK hls_project/solution1/syn/report/mobilenet_block_accel_csynth.rpt !!!
pause
