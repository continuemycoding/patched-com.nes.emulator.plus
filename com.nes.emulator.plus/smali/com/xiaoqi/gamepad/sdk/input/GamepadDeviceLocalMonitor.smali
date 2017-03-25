.class public interface abstract Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;
.super Ljava/lang/Object;
.source "GamepadDeviceLocalMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# virtual methods
.method public abstract isRunning()Z
.end method

.method public abstract registerListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;)V
.end method

.method public abstract stop()V
.end method

.method public abstract unregisterListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;)V
.end method
