.class public final Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;
.super Ljava/lang/Object;
.source "GamepadDeviceManagerImpl.java"

# interfaces
.implements Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;


# instance fields
.field final TAG:Ljava/lang/String;

.field mBlockConnections:Z

.field final mContext:Landroid/content/Context;

.field mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

.field mDeviceMonitorThread:Ljava/lang/Thread;

.field mGamepadButtonDownCount:[I

.field mGamepadDeviceIdCache:[Ljava/lang/String;

.field final mGamepadListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/GamepadListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mGamepadNameCache:[Ljava/lang/String;

.field final mGamepads:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;",
            ">;"
        }
    .end annotation
.end field

.field mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

.field mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

.field final mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-class v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    .line 37
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    .line 39
    iput-boolean v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mBlockConnections:Z

    .line 41
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    .line 46
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;

    .line 47
    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceMonitorThread:Ljava/lang/Thread;

    .line 50
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;-><init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .line 62
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-direct {v0, p1, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;-><init>(Landroid/content/Context;Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    .line 64
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-direct {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .line 58
    :cond_0
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    return-object v0
.end method


# virtual methods
.method addGamepad(Ljava/lang/String;ILjava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 14
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "inputDeviceId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 194
    :cond_0
    const/4 v11, 0x0

    .line 237
    :goto_0
    return-object v11

    .line 199
    :cond_1
    iget-object v13, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v13

    .line 202
    :try_start_0
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v11

    .line 204
    .local v11, "numIfExist":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v11, :cond_2

    .line 205
    monitor-exit v13

    goto :goto_0

    .line 199
    .end local v11    # "numIfExist":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :catchall_0
    move-exception v4

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 208
    .restart local v11    # "numIfExist":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mBlockConnections:Z

    if-nez v4, :cond_3

    .line 209
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getRemainNumbers()I

    move-result v4

    if-nez v4, :cond_4

    .line 210
    :cond_3
    monitor-exit v13

    const/4 v11, 0x0

    goto :goto_0

    .line 213
    :cond_4
    move-object/from16 v0, p4

    invoke-static {p1, v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->distribute(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v12

    .line 215
    .local v12, "number":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v12, :cond_5

    .line 216
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {p1, v12, v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/InputObjectFactory;->createGamepadDevice(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v2

    .line 218
    .local v2, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    move-object v0, v2

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;

    move-object v4, v0

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->setInputDeviceId(I)V

    .line 219
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v12}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->setCache(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v3, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 224
    sget-object v8, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 225
    sget-object v9, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-object v6, p1

    move-object/from16 v7, p3

    move-object/from16 v10, p4

    .line 222
    invoke-direct/range {v3 .. v10}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V

    .line 227
    .local v3, "event":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    invoke-interface {v2, v3}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->updateState(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V

    .line 229
    sget-boolean v4, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v4, :cond_5

    .line 230
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v12}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    sget-object v6, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    invoke-virtual {v6}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->getValue()I

    move-result v6

    sget-object v7, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v7}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->getValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateState(III)V

    .line 231
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v12}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->getValue()I

    move-result v6

    invoke-virtual {v12}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getHidNumber()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadDeviceInfo(III)V

    .line 232
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadsCount(I)V

    .line 233
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadNames([Ljava/lang/String;)V

    .line 237
    .end local v2    # "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .end local v3    # "event":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    :cond_5
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v11, v12

    goto/16 :goto_0
.end method

.method public declared-synchronized addListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public countGamepads()I
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public exit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;->stop()V

    .line 90
    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->exit()V

    .line 93
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->reset()V

    .line 95
    sput-object v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mInstance:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .line 96
    return-void
.end method

.method public getBlockConnections()Z
    .locals 2

    .prologue
    .line 112
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v1

    .line 113
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mBlockConnections:Z

    monitor-exit v1

    return v0

    .line 112
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .locals 3
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 135
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v1

    .line 136
    if-eqz p1, :cond_0

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    monitor-exit v1

    .line 139
    :goto_0
    return-object v0

    :cond_0
    monitor-exit v1

    const/4 v0, 0x0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGamepadDevice(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .locals 4
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 119
    if-nez p1, :cond_0

    .line 129
    :goto_0
    return-object v1

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v2

    .line 124
    :try_start_0
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v0

    .line 125
    .local v0, "number":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    monitor-exit v2

    goto :goto_0

    .line 122
    .end local v0    # "number":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 129
    .restart local v0    # "number":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getGamepadDeviceIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    return-object v0
.end method

.method public getGamepadEventInjectInterface()Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    return-object v0
.end method

.method public getGamepadNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    return-object v0
.end method

.method public getServiceMode()Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->getServiceMode()Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->init()V

    .line 68
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->setListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Landroid/os/Handler;)V

    .line 70
    sget-boolean v0, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_HIDDEVICE_LOCAL_MONITOR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceMonitorThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceMonitorThread:Ljava/lang/Thread;

    .line 72
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceLocalMonitor:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mListener:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    invoke-interface {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;->registerListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;)V

    .line 73
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mDeviceMonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 77
    return-void
.end method

.method public isAnyButtonDown(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    const/4 v1, 0x0

    .line 151
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v0

    .line 153
    .local v0, "index":I
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lez v2, :cond_0

    const/4 v1, 0x1

    .line 155
    .end local v0    # "index":I
    :cond_0
    return v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->pause()V

    .line 81
    return-void
.end method

.method removeGamepad(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 6
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v2

    .line 250
    :try_start_0
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v1

    if-nez v1, :cond_1

    .line 252
    monitor-exit v2

    goto :goto_0

    .line 249
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 256
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v0

    .line 258
    .local v0, "number":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 260
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, ""

    aput-object v4, v1, v3

    .line 262
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, ""

    aput-object v4, v1, v3

    .line 264
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->release(Ljava/lang/String;)V

    .line 266
    sget-boolean v1, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    invoke-virtual {v4}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->getValue()I

    move-result v4

    sget-object v5, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v5}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->getValue()I

    move-result v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateState(III)V

    .line 268
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadDeviceInfo(III)V

    .line 269
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadsCount(I)V

    .line 270
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    iget-object v3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateGamepadNames([Ljava/lang/String;)V

    .line 273
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void
.end method

.method public removeListeners()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 189
    return-void
.end method

.method public resetGamepadsButtonUpCached()V
    .locals 3

    .prologue
    .line 412
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v2

    .line 413
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 412
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    sget-boolean v1, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->resetButtonUpCached()V

    .line 421
    :cond_0
    return-void

    .line 414
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    invoke-interface {v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->resetButtonUp()V

    .line 413
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mTransferClient:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;

    invoke-virtual {v0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceInputEventTransferClient;->resume()V

    .line 85
    return-void
.end method

.method public setBlockConnections(Z)V
    .locals 2
    .param p1, "blockConnections"    # Z

    .prologue
    .line 105
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    monitor-enter v1

    .line 106
    :try_start_0
    iput-boolean p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mBlockConnections:Z

    .line 105
    monitor-exit v1

    .line 108
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setCache(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 279
    .local v0, "index":I
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    .line 283
    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 284
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadNameCache:[Ljava/lang/String;

    aput-object p2, v1, v0

    .line 288
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadDeviceIdCache:[Ljava/lang/String;

    aput-object p3, v1, v0

    .line 289
    return-void
.end method
