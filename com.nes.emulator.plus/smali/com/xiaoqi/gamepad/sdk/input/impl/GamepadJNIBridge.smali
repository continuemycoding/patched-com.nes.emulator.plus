.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;
.super Ljava/lang/Object;
.source "GamepadJNIBridge.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    sget-boolean v0, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v0, :cond_0

    .line 18
    const-string v0, "gamepad"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native exit()V
.end method

.method public native resetButtonUpCached()V
.end method

.method public native updateAxis(I[I[F)V
.end method

.method public native updateButton(III)V
.end method

.method public native updateGamepadDeviceInfo(III)V
.end method

.method public native updateGamepadNames([Ljava/lang/String;)V
.end method

.method public native updateGamepadsCount(I)V
.end method

.method public native updateState(III)V
.end method
