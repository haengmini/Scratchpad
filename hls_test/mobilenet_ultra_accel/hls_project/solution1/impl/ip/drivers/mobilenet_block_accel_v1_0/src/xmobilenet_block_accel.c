// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmobilenet_block_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMobilenet_block_accel_CfgInitialize(XMobilenet_block_accel *InstancePtr, XMobilenet_block_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMobilenet_block_accel_Start(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMobilenet_block_accel_IsDone(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMobilenet_block_accel_IsIdle(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMobilenet_block_accel_IsReady(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMobilenet_block_accel_EnableAutoRestart(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMobilenet_block_accel_DisableAutoRestart(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XMobilenet_block_accel_Set_input_r(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_INPUT_R_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_INPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_input_r(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_INPUT_R_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_INPUT_R_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_dw_weights(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_WEIGHTS_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_dw_weights(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_WEIGHTS_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_dw_bias(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_BIAS_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_dw_bias(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_BIAS_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_BIAS_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_pw_weights(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WEIGHTS_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_pw_weights(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WEIGHTS_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_pw_bias(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_BIAS_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_pw_bias(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_BIAS_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_BIAS_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_output_r(XMobilenet_block_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XMobilenet_block_accel_Get_output_r(XMobilenet_block_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_OUTPUT_R_DATA);
    Data += (u64)XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XMobilenet_block_accel_Set_height(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_HEIGHT_DATA, Data);
}

u32 XMobilenet_block_accel_Get_height(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_HEIGHT_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_width(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_WIDTH_DATA, Data);
}

u32 XMobilenet_block_accel_Get_width(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_WIDTH_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_c_in(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_C_IN_DATA, Data);
}

u32 XMobilenet_block_accel_Get_c_in(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_C_IN_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_c_out(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_C_OUT_DATA, Data);
}

u32 XMobilenet_block_accel_Get_c_out(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_C_OUT_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_in_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_IN_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_in_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_IN_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_w_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_W_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_w_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_W_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_out_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_OUT_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_out_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_OUT_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_multiplier(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_MULTIPLIER_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_multiplier(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_MULTIPLIER_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_shift(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_SHIFT_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_shift(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_SHIFT_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_dw_apply_relu6(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_APPLY_RELU6_DATA, Data);
}

u32 XMobilenet_block_accel_Get_dw_apply_relu6(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_DW_APPLY_RELU6_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_act_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_ACT_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_act_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_ACT_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_wgt_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WGT_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_wgt_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_WGT_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_out_zp(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_OUT_ZP_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_out_zp(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_OUT_ZP_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_M_mantissa(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_M_MANTISSA_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_M_mantissa(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_M_MANTISSA_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_M_shift(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_M_SHIFT_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_M_shift(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_M_SHIFT_DATA);
    return Data;
}

void XMobilenet_block_accel_Set_pw_use_bias(XMobilenet_block_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_USE_BIAS_DATA, Data);
}

u32 XMobilenet_block_accel_Get_pw_use_bias(XMobilenet_block_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_PW_USE_BIAS_DATA);
    return Data;
}

void XMobilenet_block_accel_InterruptGlobalEnable(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XMobilenet_block_accel_InterruptGlobalDisable(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XMobilenet_block_accel_InterruptEnable(XMobilenet_block_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_IER);
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XMobilenet_block_accel_InterruptDisable(XMobilenet_block_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_IER);
    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMobilenet_block_accel_InterruptClear(XMobilenet_block_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMobilenet_block_accel_WriteReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XMobilenet_block_accel_InterruptGetEnabled(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_IER);
}

u32 XMobilenet_block_accel_InterruptGetStatus(XMobilenet_block_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMobilenet_block_accel_ReadReg(InstancePtr->Control_BaseAddress, XMOBILENET_BLOCK_ACCEL_CONTROL_ADDR_ISR);
}

