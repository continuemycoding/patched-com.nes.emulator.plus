.class public Lcom/xiaoqi/gamepad/sdk/event/StateEvent;
.super Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;
.source "StateEvent.java"


# instance fields
.field final mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

.field final mDevType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field final mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;


# direct methods
.method public constructor <init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V
    .locals 1
    .param p1, "eventTime"    # J
    .param p3, "gamepadNumber"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p4, "state"    # Lcom/xiaoqi/gamepad/sdk/constant/StateCode;
    .param p5, "action"    # Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .param p6, "connType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/event/BaseEvent;-><init>(JLcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 17
    iput-object p4, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 18
    iput-object p5, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 19
    iput-object p6, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mDevType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 20
    return-void
.end method


# virtual methods
.method public final getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mAction:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    return-object v0
.end method

.method public final getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mDevType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    return-object v0
.end method

.method public final getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/event/StateEvent;->mState:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    return-object v0
.end method
