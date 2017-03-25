.class public Lcom/xiaoqi/gamepad/sdk/input/InputObjectFactory;
.super Ljava/lang/Object;
.source "InputObjectFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGamepadDevice(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    .line 14
    invoke-static {p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->createInstance(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-static {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->getInstance(Landroid/content/Context;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    move-result-object v0

    return-object v0
.end method
