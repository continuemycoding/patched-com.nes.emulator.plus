.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;
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
    name = "ServiceConnectionRetryRunnable"
.end annotation


# instance fields
.field MY_PKG_NAME:Ljava/lang/String;

.field private isStop:Z

.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V
    .locals 1

    .prologue
    .line 363
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->isStop:Z

    .line 366
    const-string v0, "com.xiaoqi.gamepad.service.StartService"

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->MY_PKG_NAME:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 374
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    const-string v2, "Retry to connect the gamepad input event transfer service."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    iget-boolean v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->isStop:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-boolean v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    if-eqz v1, :cond_1

    .line 407
    :cond_0
    return-void

    .line 378
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryHandler:Landroid/os/Handler;

    new-instance v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;

    invoke-direct {v2, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 397
    const-wide/16 v2, 0x7d0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->isStop:Z

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->isStop:Z

    .line 370
    return-void
.end method
