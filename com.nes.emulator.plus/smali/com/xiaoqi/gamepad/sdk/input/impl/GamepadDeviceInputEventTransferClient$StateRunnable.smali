.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;
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
    name = "StateRunnable"
.end annotation


# instance fields
.field final mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method public constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .line 316
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 322
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    invoke-interface {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V

    .line 324
    :cond_0
    return-void
.end method
