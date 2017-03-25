.class public interface abstract Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;
.super Ljava/lang/Object;
.source "GamepadDeviceManager.java"


# virtual methods
.method public abstract addListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
.end method

.method public abstract countGamepads()I
.end method

.method public abstract exit()V
.end method

.method public abstract getBlockConnections()Z
.end method

.method public abstract getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
.end method

.method public abstract getGamepadDevice(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
.end method

.method public abstract getGamepadEventInjectInterface()Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;
.end method

.method public abstract getGamepadNames()[Ljava/lang/String;
.end method

.method public abstract getServiceMode()Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
.end method

.method public abstract init()V
.end method

.method public abstract isAnyButtonDown(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Z
.end method

.method public abstract pause()V
.end method

.method public abstract removeListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
.end method

.method public abstract removeListeners()V
.end method

.method public abstract resetGamepadsButtonUpCached()V
.end method

.method public abstract resume()V
.end method

.method public abstract setBlockConnections(Z)V
.end method
