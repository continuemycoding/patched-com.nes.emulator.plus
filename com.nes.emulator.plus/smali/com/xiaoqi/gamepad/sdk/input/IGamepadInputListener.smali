.class public interface abstract Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;
.super Ljava/lang/Object;
.source "IGamepadInputListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAxisInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onButtonInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
