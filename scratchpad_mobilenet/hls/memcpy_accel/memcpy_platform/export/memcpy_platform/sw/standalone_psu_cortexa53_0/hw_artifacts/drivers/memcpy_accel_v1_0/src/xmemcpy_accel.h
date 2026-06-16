// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef XMEMCPY_ACCEL_H
#define XMEMCPY_ACCEL_H

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
#include "xmemcpy_accel_hw.h"

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
} XMemcpy_accel_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XMemcpy_accel;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XMemcpy_accel_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XMemcpy_accel_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XMemcpy_accel_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XMemcpy_accel_ReadReg(BaseAddress, RegOffset) \
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
int XMemcpy_accel_Initialize(XMemcpy_accel *InstancePtr, UINTPTR BaseAddress);
XMemcpy_accel_Config* XMemcpy_accel_LookupConfig(UINTPTR BaseAddress);
#else
int XMemcpy_accel_Initialize(XMemcpy_accel *InstancePtr, u16 DeviceId);
XMemcpy_accel_Config* XMemcpy_accel_LookupConfig(u16 DeviceId);
#endif
int XMemcpy_accel_CfgInitialize(XMemcpy_accel *InstancePtr, XMemcpy_accel_Config *ConfigPtr);
#else
int XMemcpy_accel_Initialize(XMemcpy_accel *InstancePtr, const char* InstanceName);
int XMemcpy_accel_Release(XMemcpy_accel *InstancePtr);
#endif

void XMemcpy_accel_Start(XMemcpy_accel *InstancePtr);
u32 XMemcpy_accel_IsDone(XMemcpy_accel *InstancePtr);
u32 XMemcpy_accel_IsIdle(XMemcpy_accel *InstancePtr);
u32 XMemcpy_accel_IsReady(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_EnableAutoRestart(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_DisableAutoRestart(XMemcpy_accel *InstancePtr);

void XMemcpy_accel_Set_src(XMemcpy_accel *InstancePtr, u64 Data);
u64 XMemcpy_accel_Get_src(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_Set_dst(XMemcpy_accel *InstancePtr, u64 Data);
u64 XMemcpy_accel_Get_dst(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_Set_length_r(XMemcpy_accel *InstancePtr, u32 Data);
u32 XMemcpy_accel_Get_length_r(XMemcpy_accel *InstancePtr);

void XMemcpy_accel_InterruptGlobalEnable(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_InterruptGlobalDisable(XMemcpy_accel *InstancePtr);
void XMemcpy_accel_InterruptEnable(XMemcpy_accel *InstancePtr, u32 Mask);
void XMemcpy_accel_InterruptDisable(XMemcpy_accel *InstancePtr, u32 Mask);
void XMemcpy_accel_InterruptClear(XMemcpy_accel *InstancePtr, u32 Mask);
u32 XMemcpy_accel_InterruptGetEnabled(XMemcpy_accel *InstancePtr);
u32 XMemcpy_accel_InterruptGetStatus(XMemcpy_accel *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
