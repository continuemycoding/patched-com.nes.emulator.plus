.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;
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
    name = "ButtonRunnable"
.end annotation


# instance fields
.field final mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method public constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
    .locals 0
    .param p2, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .line 284
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 290
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->mEvent:Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    invoke-interface {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onButtonInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V

    .line 292
    :cond_0
    return-void
.end method
