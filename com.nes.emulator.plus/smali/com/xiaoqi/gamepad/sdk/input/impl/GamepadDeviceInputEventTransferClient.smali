.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;
.super Ljava/lang/Object;
.source "GamepadDeviceInputEventTransferClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$AxisRunnable;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ButtonRunnable;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;,
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$StateRunnable;
    }
.end annotation


# instance fields
.field final TAG:Ljava/lang/String;

.field isRegistered:Z

.field locker:Ljava/lang/Object;

.field mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mIsConnected:Z

.field mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

.field final mListenerStub:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;

.field mManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

.field mRetryHandler:Landroid/os/Handler;

.field mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

.field mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

.field mServiceConnection:Landroid/content/ServiceConnection;

.field mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-class v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    .line 29
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 31
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$IGamepadInputListenerStub;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListenerStub:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;

    .line 32
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 33
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    .line 34
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryHandler:Landroid/os/Handler;

    .line 35
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    .line 36
    iput-boolean v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->isRegistered:Z

    .line 38
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->PAUSE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 39
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->locker:Ljava/lang/Object;

    .line 42
    iput-boolean v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mIsConnected:Z

    .line 43
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->LOCAL:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    .line 47
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .line 49
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$GamepadInputEventTansferConnection;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 50
    return-void
.end method


# virtual methods
.method addExistGamepadDiscoveryByServiceSide()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    .line 195
    :try_start_0
    iget-object v6, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    invoke-interface {v6}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->getExistStateEventAtFirst()[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    move-result-object v2

    .line 201
    .local v2, "events":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 202
    array-length v6, v2

    :goto_0
    if-lt v5, v6, :cond_1

    .line 220
    .end local v2    # "events":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    :cond_0
    :goto_1
    return-void

    .line 202
    .restart local v2    # "events":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    :cond_1
    aget-object v1, v2, v5

    .line 203
    .local v1, "e":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "devId":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v4

    .line 207
    .local v4, "type":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    iget-object v7, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Gamepad request from service side id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", name="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 202
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 211
    :cond_3
    iget-object v7, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8, v3, v4}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->addGamepad(Ljava/lang/String;ILjava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 214
    .end local v0    # "devId":Ljava/lang/String;
    .end local v1    # "e":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    .end local v2    # "events":[Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "type":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method bindService()V
    .locals 6

    .prologue
    .line 64
    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->locker:Ljava/lang/Object;

    monitor-enter v3

    .line 65
    :try_start_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 66
    new-instance v1, Landroid/content/Intent;

    .line 67
    const-class v2, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.xiaoqi.gamepad"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 70
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 71
    const/4 v5, 0x1

    .line 70
    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 72
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;)V

    .line 73
    .local v0, "chooser":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;
    new-instance v2, Landroid/os/Handler;

    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;->run()V

    .line 64
    .end local v0    # "chooser":Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectChooserRunnable;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit v3

    .line 77
    return-void

    .line 64
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public canFeedback(I)Z
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->canFeedback(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 155
    :goto_0
    return v0

    .line 149
    :catch_0
    move-exception v0

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method exit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;->stop()V

    .line 90
    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryRunnable:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient$ServiceConnectionRetryRunnable;

    .line 93
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->setListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Landroid/os/Handler;)V

    .line 94
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 97
    :cond_1
    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mContext:Landroid/content/Context;

    .line 98
    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .line 99
    iput-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mRetryHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method

.method public forceFeedback(IIIJ)V
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "leftStrength"    # I
    .param p3, "rightStrength"    # I
    .param p4, "milliseconds"    # J

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->forceFeedback(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forceFeedbackCancel(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->forceFeedbackCancel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public forceFeedbackWithPattern(I[J[I[II)V
    .locals 6
    .param p1, "deviceId"    # I
    .param p2, "pattern"    # [J
    .param p3, "leftStrength"    # [I
    .param p4, "rightStregth"    # [I
    .param p5, "repeat"    # I

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->forceFeedbackWithPattern(I[J[I[II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getServiceMode()Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mServiceMode:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    return-object v0
.end method

.method init()V
    .locals 0

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->bindService()V

    .line 61
    return-void
.end method

.method pause()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->PAUSE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 81
    return-void
.end method

.method registerListener()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListenerStub:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;

    .line 107
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->getValue()I

    move-result v2

    .line 106
    invoke-interface {v0, v1, v2}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->registerListener(Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method resume()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->RESUME:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 85
    return-void
.end method

.method setListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->unregisterListener()V

    .line 54
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 55
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->registerListener()V

    .line 57
    return-void
.end method

.method public transConnectedStateToService(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->onConnected(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method unregisterListener()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mService:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mListenerStub:Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener$Stub;

    .line 122
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->mActivityState:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->getValue()I

    move-result v2

    .line 121
    invoke-interface {v0, v1, v2}, Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputEventTransferService;->unregisterListener(Lcom/xiaoqi/gamepad/sdk/input/IGamepadInputListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    goto :goto_0
.end method
