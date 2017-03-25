.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;
.super Ljava/lang/Object;
.source "GamepadDeviceInputEventTransferClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AxisRunnable"
.end annotation


# instance fields
.field final mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method public constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 306
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    invoke-interface {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onAxisInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V

    .line 308
    :cond_0
    return-void
.end method
