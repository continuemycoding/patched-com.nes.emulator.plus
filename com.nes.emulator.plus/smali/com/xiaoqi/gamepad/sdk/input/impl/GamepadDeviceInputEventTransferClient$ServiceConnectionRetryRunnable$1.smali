.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;
.super Ljava/lang/Object;
.source "GamepadDeviceInputEventTransferClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;


# direct methods
.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;->this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 381
    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;->this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    # getter for: Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
    invoke-static {v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->access$0(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_1

    .line 383
    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;->this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    # getter for: Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
    invoke-static {v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->access$0(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 385
    .local v2, "mActivityManager":Landroid/app/ActivityManager;
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 387
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 394
    .end local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :cond_1
    :goto_0
    return-void

    .line 387
    .restart local v1    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v2    # "mActivityManager":Landroid/app/ActivityManager;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 388
    .local v0, "appProcess":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;->this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->MY_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable$1;->this$1:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    # getter for: Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
    invoke-static {v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->access$0(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;)Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->bindService()V

    goto :goto_0
.end method
