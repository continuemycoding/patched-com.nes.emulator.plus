.class public interface abstract Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
.super Ljava/lang/Object;
.source "GamepadDevice.java"


# virtual methods
.method public abstract getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F
.end method

.method public abstract getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
.end method

.method public abstract getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
.end method

.method public abstract getInputDeviceId()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumber()Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
.end method

.method public abstract getState(Lcom/xiaoqi/gamepad/sdk/constant/StateCode;)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
.end method

.method public abstract reset()V
.end method

.method public abstract resetButtonUp()V
.end method

.method public abstract updateAxis(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
.end method

.method public abstract updateButton(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
.end method

.method public abstract updateState(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
.end method
