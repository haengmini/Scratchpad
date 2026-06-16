// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2024.2 (64-bit)
// Tool Version Limit: 2024.11
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#ifdef SDT
#include "xparameters.h"
#endif
#include "xmobilenet_block_accel.h"

extern XMobilenet_block_accel_Config XMobilenet_block_accel_ConfigTable[];

#ifdef SDT
XMobilenet_block_accel_Config *XMobilenet_block_accel_LookupConfig(UINTPTR BaseAddress) {
	XMobilenet_block_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMobilenet_block_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMobilenet_block_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMobilenet_block_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMobilenet_block_accel_Initialize(XMobilenet_block_accel *InstancePtr, UINTPTR BaseAddress) {
	XMobilenet_block_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMobilenet_block_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMobilenet_block_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMobilenet_block_accel_Config *XMobilenet_block_accel_LookupConfig(u16 DeviceId) {
	XMobilenet_block_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMOBILENET_BLOCK_ACCEL_NUM_INSTANCES; Index++) {
		if (XMobilenet_block_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMobilenet_block_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMobilenet_block_accel_Initialize(XMobilenet_block_accel *InstancePtr, u16 DeviceId) {
	XMobilenet_block_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMobilenet_block_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMobilenet_block_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

