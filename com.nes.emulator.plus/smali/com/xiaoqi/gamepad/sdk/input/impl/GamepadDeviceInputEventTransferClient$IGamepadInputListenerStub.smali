.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;
.super Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;
.source "GamepadDeviceInputEventTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IGamepadInputListenerStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAxisInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v1, :cond_0

    .line 246
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {v0, v1, p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V

    .line 248
    .local v0, "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    .line 250
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    .end local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;
    :cond_0
    :goto_0
    return-void

    .line 252
    .restart local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;
    :cond_1
    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;->run()V

    goto :goto_0
.end method

.method public onButtonInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v1, :cond_0

    .line 229
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {v0, v1, p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V

    .line 231
    .local v0, "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    .line 233
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    .end local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;
    :cond_0
    :goto_0
    return-void

    .line 235
    .restart local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;
    :cond_1
    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;->run()V

    goto :goto_0
.end method

.method public onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v1, :cond_0

    .line 266
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {v0, v1, p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V

    .line 268
    .local v0, "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 269
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    .line 270
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 275
    .end local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;
    :cond_0
    :goto_0
    return-void

    .line 272
    .restart local v0    # "runnable":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;
    :cond_1
    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;->run()V

    goto :goto_0
.end method
