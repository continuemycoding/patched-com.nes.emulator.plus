.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;
.super Ljava/lang/Object;
.source "GamepadDeviceInputEventTransferClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GamepadInputEventTansferConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-boolean v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 345
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    .line 336
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    .line 337
    invoke-static {p2}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    move-result-object v1

    .line 336
    iput-object v1, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    .line 338
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->REMOTE:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    iput-object v1, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    .line 339
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->unregisterListener()V

    .line 340
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->registerListener()V

    .line 341
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    const-string v1, "Gamepad input event transfer service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->addExistGamepadDiscoveryByServiceSide()V

    .line 344
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->transConnectedStateToService(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 349
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-boolean v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    if-nez v1, :cond_0

    .line 360
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    .line 354
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    .line 356
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    new-instance v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {v2, v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V

    iput-object v2, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    .line 357
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 358
    .local v0, "retryThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 359
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    const-string v2, "Gamepad input event transfer service disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
