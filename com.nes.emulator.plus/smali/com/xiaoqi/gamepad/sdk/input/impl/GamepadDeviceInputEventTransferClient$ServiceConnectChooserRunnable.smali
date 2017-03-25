.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;
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
    name = "ServiceConnectChooserRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V
    .locals 0

    .prologue
    .line 411
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 415
    .local v0, "startTime":J
    const-wide/16 v2, 0x14

    .line 418
    .local v2, "waitTime":J
    :goto_0
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-boolean v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    if-nez v4, :cond_0

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 418
    cmp-long v4, v4, v2

    if-ltz v4, :cond_1

    .line 430
    :cond_0
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-boolean v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    if-nez v4, :cond_2

    .line 431
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    sget-object v5, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->LOCAL:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    iput-object v5, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    .line 436
    :goto_1
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Run in mode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v6, v6, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    return-void

    .line 421
    :cond_1
    const-wide/16 v4, 0x1

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    :catch_0
    move-exception v4

    goto :goto_0

    .line 433
    :cond_2
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    sget-object v5, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->REMOTE:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    iput-object v5, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    goto :goto_1
.end method
