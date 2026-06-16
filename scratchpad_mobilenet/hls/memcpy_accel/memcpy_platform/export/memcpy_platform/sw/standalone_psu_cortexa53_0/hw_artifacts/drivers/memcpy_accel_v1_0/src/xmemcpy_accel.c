// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xmemcpy_accel.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XMemcpy_accel_CfgInitialize(XMemcpy_accel *InstancePtr, XMemcpy_accel_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XMemcpy_accel_Start(XMemcpy_accel *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL) & 0x80;
    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XMemcpy_accel_IsDone(XMemcpy_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XMemcpy_accel_IsIdle(XMemcpy_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XMemcpy_accel_IsReady(XMemcpy_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XMemcpy_accel_EnableAutoRestart(XMemcpy_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XMemcpy_accel_DisableAutoRestart(XMemcpy_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_AP_CTRL, 0);
}

void XMemcpy_accel_Set_src(XMemcpy_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_SRC_DATA, (u32)(Data));
    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_SRC_DATA + 4, (u32)(Data >> 32));
}

u64 XMemcpy_accel_Get_src(XMemcpy_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_SRC_DATA);
    Data += (u64)XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_SRC_DATA + 4) << 32;
    return Data;
}

void XMemcpy_accel_Set_dst(XMemcpy_accel *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_DST_DATA, (u32)(Data));
    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_DST_DATA + 4, (u32)(Data >> 32));
}

u64 XMemcpy_accel_Get_dst(XMemcpy_accel *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_DST_DATA);
    Data += (u64)XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_DST_DATA + 4) << 32;
    return Data;
}

void XMemcpy_accel_Set_length_r(XMemcpy_accel *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_LENGTH_R_DATA, Data);
}

u32 XMemcpy_accel_Get_length_r(XMemcpy_accel *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_LENGTH_R_DATA);
    return Data;
}

void XMemcpy_accel_InterruptGlobalEnable(XMemcpy_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_GIE, 1);
}

void XMemcpy_accel_InterruptGlobalDisable(XMemcpy_accel *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_GIE, 0);
}

void XMemcpy_accel_InterruptEnable(XMemcpy_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_IER);
    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_IER, Register | Mask);
}

void XMemcpy_accel_InterruptDisable(XMemcpy_accel *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_IER);
    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_IER, Register & (~Mask));
}

void XMemcpy_accel_InterruptClear(XMemcpy_accel *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XMemcpy_accel_WriteReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_ISR, Mask);
}

u32 XMemcpy_accel_InterruptGetEnabled(XMemcpy_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_IER);
}

u32 XMemcpy_accel_InterruptGetStatus(XMemcpy_accel *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XMemcpy_accel_ReadReg(InstancePtr->Control_BaseAddress, XMEMCPY_ACCEL_CONTROL_ADDR_ISR);
}

