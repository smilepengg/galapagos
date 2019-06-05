// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xdummy1.h"

extern XDummy1_Config XDummy1_ConfigTable[];

XDummy1_Config *XDummy1_LookupConfig(u16 DeviceId) {
	XDummy1_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XDUMMY1_NUM_INSTANCES; Index++) {
		if (XDummy1_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XDummy1_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XDummy1_Initialize(XDummy1 *InstancePtr, u16 DeviceId) {
	XDummy1_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XDummy1_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XDummy1_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

