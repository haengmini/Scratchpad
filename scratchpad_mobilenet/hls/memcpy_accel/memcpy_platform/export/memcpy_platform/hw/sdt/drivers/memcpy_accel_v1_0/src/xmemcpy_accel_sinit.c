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
#include "xmemcpy_accel.h"

extern XMemcpy_accel_Config XMemcpy_accel_ConfigTable[];

#ifdef SDT
XMemcpy_accel_Config *XMemcpy_accel_LookupConfig(UINTPTR BaseAddress) {
	XMemcpy_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = (u32)0x0; XMemcpy_accel_ConfigTable[Index].Name != NULL; Index++) {
		if (!BaseAddress || XMemcpy_accel_ConfigTable[Index].Control_BaseAddress == BaseAddress) {
			ConfigPtr = &XMemcpy_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMemcpy_accel_Initialize(XMemcpy_accel *InstancePtr, UINTPTR BaseAddress) {
	XMemcpy_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMemcpy_accel_LookupConfig(BaseAddress);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMemcpy_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#else
XMemcpy_accel_Config *XMemcpy_accel_LookupConfig(u16 DeviceId) {
	XMemcpy_accel_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XMEMCPY_ACCEL_NUM_INSTANCES; Index++) {
		if (XMemcpy_accel_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XMemcpy_accel_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XMemcpy_accel_Initialize(XMemcpy_accel *InstancePtr, u16 DeviceId) {
	XMemcpy_accel_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XMemcpy_accel_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XMemcpy_accel_CfgInitialize(InstancePtr, ConfigPtr);
}
#endif

#endif

