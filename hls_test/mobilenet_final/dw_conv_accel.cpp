#include <stdint.h>
#include <ap_int.h>

// MobileNetV1 Depthwise Convolution 3x3
// Input/Output: 8-bit Quantized
// Constraints: Optimized for ZCU104 (MPSoC)

void dw_conv_accel(
    int8_t *input,
    int8_t *weights,
    int8_t *output,
    int height,
    int width,
    int channels
) {
    // Interfaces
    #pragma HLS INTERFACE m_axi port=input offset=slave bundle=gmem0 depth=1024
    #pragma HLS INTERFACE m_axi port=weights offset=slave bundle=gmem1 depth=9
    #pragma HLS INTERFACE m_axi port=output offset=slave bundle=gmem0 depth=1024
    
    #pragma HLS INTERFACE s_axilite port=height
    #pragma HLS INTERFACE s_axilite port=width
    #pragma HLS INTERFACE s_axilite port=channels
    #pragma HLS INTERFACE s_axilite port=return

    // Local Buffers (Line Buffer for 3x3 Window)
    int8_t line_buf[3][320]; // Supports up to 320px width
    #pragma HLS ARRAY_PARTITION variable=line_buf complete dim=1

    // Window Buffer
    int8_t window[3][3];
    #pragma HLS ARRAY_PARTITION variable=window complete dim=0

    // Depthwise Convolution Logic
    // Each channel is processed independently
    for (int c = 0; c < channels; c++) {
        for (int h = 0; h < height; h++) {
            for (int w = 0; w < width; w++) {
                #pragma HLS PIPELINE II=1
                
                // Read Input & Shift Line Buffer
                int8_t in_val = input[c * height * width + h * width + w];
                
                // Shift Window and Line Buffer (Simplified for logic)
                for (int i = 0; i < 2; i++) {
                    line_buf[i][w] = line_buf[i+1][w];
                }
                line_buf[2][w] = in_val;

                // Update Window
                for (int i = 0; i < 3; i++) {
                    window[i][0] = window[i][1];
                    window[i][1] = window[i][2];
                    window[i][2] = line_buf[i][w];
                }

                // Compute MAC (Valid for h >= 2, w >= 2)
                if (h >= 2 && w >= 2) {
                    int32_t sum = 0;
                    for (int kh = 0; kh < 3; kh++) {
                        for (int kw = 0; kw < 3; kw++) {
                            sum += window[kh][kw] * weights[c * 9 + kh * 3 + kw];
                        }
                    }
                    // Simple Quantization (Placeholder)
                    output[c * height * width + (h-1) * width + (w-1)] = (int8_t)(sum >> 8);
                }
            }
        }
    }
}
