// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.2
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

/***************************** Include Files *********************************/
#include "xdummy1.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XDummy1_CfgInitialize(XDummy1 *InstancePtr, XDummy1_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Ctrl_BaseAddress = ConfigPtr->Ctrl_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XDummy1_Start(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL) & 0x80;
    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XDummy1_IsDone(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XDummy1_IsIdle(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XDummy1_IsReady(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XDummy1_EnableAutoRestart(XDummy1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL, 0x80);
}

void XDummy1_DisableAutoRestart(XDummy1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_AP_CTRL, 0);
}

void XDummy1_Set_addr(XDummy1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_ADDR_DATA, Data);
}

u32 XDummy1_Get_addr(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_ADDR_DATA);
    return Data;
}

void XDummy1_Set_val_r(XDummy1 *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_VAL_R_DATA, Data);
}

u32 XDummy1_Get_val_r(XDummy1 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_VAL_R_DATA);
    return Data;
}

void XDummy1_InterruptGlobalEnable(XDummy1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_GIE, 1);
}

void XDummy1_InterruptGlobalDisable(XDummy1 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_GIE, 0);
}

void XDummy1_InterruptEnable(XDummy1 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_IER);
    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_IER, Register | Mask);
}

void XDummy1_InterruptDisable(XDummy1 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_IER);
    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_IER, Register & (~Mask));
}

void XDummy1_InterruptClear(XDummy1 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XDummy1_WriteReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_ISR, Mask);
}

u32 XDummy1_InterruptGetEnabled(XDummy1 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_IER);
}

u32 XDummy1_InterruptGetStatus(XDummy1 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XDummy1_ReadReg(InstancePtr->Ctrl_BaseAddress, XDUMMY1_CTRL_ADDR_ISR);
}

