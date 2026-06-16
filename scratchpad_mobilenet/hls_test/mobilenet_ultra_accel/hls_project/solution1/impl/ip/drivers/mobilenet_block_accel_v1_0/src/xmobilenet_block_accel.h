// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMOBILENET_BLOCK_ACCEL_H
#define XMOBILENET_BLOCK_ACCEL_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xmobilenet_block_accel_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
#ifdef SDT
    char *Name;
#else
    u16 DeviceId;
#endif
    u64 Control_BaseAddress;
} XMobilenet_block_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMobilenet_block_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMobilenet_block_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMobilenet_block_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMobilenet_block_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMobilenet_block_accel_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
#ifdef SDT
int XMobilenet_block_accel_Initialize(XMobilenet_block_accel *InstancePtr, UINTPTR BaseAddress);
XMobilenet_block_accel_Config* XMobilenet_block_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XMobilenet_block_accel_Initialize(XMobilenet_block_accel *InstancePtr, u16 DeviceId);
XMobilenet_block_accel_Config* XMobilenet_block_accel_LookupConfig(u16 DeviceId);
#endif
int XMobilenet_block_accel_CfgInitialize(XMobilenet_block_accel *InstancePtr, XMobilenet_block_accel_Config *ConfigPtr);
#else
int XMobilenet_block_accel_Initialize(XMobilenet_block_accel *InstancePtr, const char* InstanceName);
int XMobilenet_block_accel_Release(XMobilenet_block_accel *InstancePtr);
#endif

void XMobilenet_block_accel_Start(XMobilenet_block_accel *InstancePtr);
u32 XMobilenet_block_accel_IsDone(XMobilenet_block_accel *InstancePtr);
u32 XMobilenet_block_accel_IsIdle(XMobilenet_block_accel *InstancePtr);
u32 XMobilenet_block_accel_IsReady(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_EnableAutoRestart(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_DisableAutoRestart(XMobilenet_block_accel *InstancePtr);

void XMobilenet_block_accel_Set_input_r(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_input_r(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_weights(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_dw_weights(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_bias(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_dw_bias(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_weights(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_pw_weights(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_bias(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_pw_bias(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_output_r(XMobilenet_block_accel *InstancePtr, u64 Data);
u64 XMobilenet_block_accel_Get_output_r(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_height(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_height(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_width(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_width(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_c_in(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_c_in(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_c_out(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_c_out(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_in_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_in_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_w_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_w_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_out_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_out_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_multiplier(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_multiplier(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_shift(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_shift(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_dw_apply_relu6(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_dw_apply_relu6(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_act_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_act_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_wgt_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_wgt_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_out_zp(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_out_zp(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_M_mantissa(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_M_mantissa(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_M_shift(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_M_shift(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_Set_pw_use_bias(XMobilenet_block_accel *InstancePtr, u32 Data);
u32 XMobilenet_block_accel_Get_pw_use_bias(XMobilenet_block_accel *InstancePtr);

void XMobilenet_block_accel_InterruptGlobalEnable(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_InterruptGlobalDisable(XMobilenet_block_accel *InstancePtr);
void XMobilenet_block_accel_InterruptEnable(XMobilenet_block_accel *InstancePtr, u32 Mask);
void XMobilenet_block_accel_InterruptDisable(XMobilenet_block_accel *InstancePtr, u32 Mask);
void XMobilenet_block_accel_InterruptClear(XMobilenet_block_accel *InstancePtr, u32 Mask);
u32 XMobilenet_block_accel_InterruptGetEnabled(XMobilenet_block_accel *InstancePtr);
u32 XMobilenet_block_accel_InterruptGetStatus(XMobilenet_block_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
