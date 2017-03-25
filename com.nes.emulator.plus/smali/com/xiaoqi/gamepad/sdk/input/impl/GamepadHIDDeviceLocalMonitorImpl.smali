.class public Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;
.super Ljava/lang/Object;
.source "GamepadHIDDeviceLocalMonitorImpl.java"

# interfaces
.implements Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceLocalMonitor;


# instance fields
.field final TAG:Ljava/lang/String;

.field final XIAOQI_DEVICE_NAME_KEY:Ljava/lang/String;

.field private mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

.field private mIdleTime:J

.field private mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLocker:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V
    .locals 2
    .param p1, "deviceManager"    # Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->TAG:Ljava/lang/String;

    .line 27
    const-string v0, "XiaoQi"

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->XIAOQI_DEVICE_NAME_KEY:Ljava/lang/String;

    .line 28
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIdleTime:J

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mLocker:Ljava/lang/Object;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    .line 39
    return-void
.end method

.method private discoveryInputDevice()V
    .locals 14

    .prologue
    .line 97
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isSpecialMTKPlatform()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v13, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mLocker:Ljava/lang/Object;

    monitor-enter v13

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v2, v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 101
    :cond_1
    monitor-exit v13

    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 103
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v11

    .line 104
    .local v11, "ids":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v2, v11

    if-lt v10, v2, :cond_3

    .line 99
    monitor-exit v13

    goto :goto_0

    .line 105
    :cond_3
    aget v2, v11, v10

    invoke-static {v2}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 107
    .local v0, "dev":Landroid/view/InputDevice;
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDeviceId(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v4

    .line 109
    .local v4, "deviceId":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    .line 110
    .local v5, "name":Ljava/lang/String;
    sget-object v8, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 112
    .local v8, "deviceType":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {v2, v4}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->getGamepadDevice(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 104
    .end local v4    # "deviceId":Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v8    # "deviceType":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 114
    .restart local v4    # "deviceId":Ljava/lang/String;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v8    # "deviceType":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    :cond_5
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 116
    sget-object v6, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 117
    sget-object v7, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 114
    invoke-direct/range {v1 .. v8}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V

    .line 118
    .local v1, "event":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->setInputDeviceId(I)V

    .line 120
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    .line 121
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 122
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 125
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    invoke-interface {v2, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private discoveryInputDeviceDisconnect()V
    .locals 21

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mLocker:Ljava/lang/Object;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 139
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v20

    .line 190
    :goto_0
    return-void

    .line 142
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {v4}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->getGamepadDeviceIds()[Ljava/lang/String;

    move-result-object v4

    .line 143
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {v5}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->getGamepadDeviceIds()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    .line 141
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 145
    .local v11, "devIds":[Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    array-length v4, v11

    if-lt v15, v4, :cond_1

    .line 137
    monitor-exit v20

    goto :goto_0

    .end local v11    # "devIds":[Ljava/lang/String;
    .end local v15    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 146
    .restart local v11    # "devIds":[Ljava/lang/String;
    .restart local v15    # "i":I
    :cond_1
    const/4 v13, 0x0

    .line 147
    .local v13, "found":Z
    :try_start_1
    aget-object v6, v11, v15

    .line 148
    .local v6, "devId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 150
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {v4, v6}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->getGamepadDevice(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v14

    .line 151
    .local v14, "gd":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    const/16 v19, 0x0

    .line 153
    .local v19, "type":Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    if-eqz v14, :cond_4

    .line 154
    invoke-interface {v14}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v19

    .line 155
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v16

    .line 156
    .local v16, "ids":[I
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move-object/from16 v0, v16

    array-length v4, v0

    move/from16 v0, v18

    if-lt v0, v4, :cond_5

    .line 168
    .end local v16    # "ids":[I
    .end local v18    # "j":I
    :cond_4
    :goto_3
    if-nez v13, :cond_2

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_RFCOMM:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-object/from16 v0, v19

    if-eq v0, v4, :cond_2

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_ADB:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-object/from16 v0, v19

    if-eq v0, v4, :cond_2

    .line 173
    new-instance v3, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v7, 0x0

    .line 175
    sget-object v8, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .line 176
    sget-object v9, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    const/4 v10, 0x0

    .line 173
    invoke-direct/range {v3 .. v10}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/StateCode;Lcom/xiaoqi/gamepad/sdk/constant/StateAction;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V

    .line 178
    .local v3, "event":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    .line 179
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 180
    .local v17, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;>;"
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 183
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    invoke-interface {v4, v3}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V

    goto :goto_4

    .line 157
    .end local v3    # "event":Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;"
    .end local v17    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;Ljava/lang/Integer;>;>;"
    .restart local v16    # "ids":[I
    .restart local v18    # "j":I
    :cond_5
    aget v4, v16, v18

    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v2

    .line 158
    .local v2, "dev":Landroid/view/InputDevice;
    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 159
    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDeviceId(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-eqz v4, :cond_6

    .line 160
    const/4 v13, 0x1

    .line 161
    goto :goto_3

    .line 156
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto :goto_2
.end method

.method private declared-synchronized getIdleTime()J
    .locals 2

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIdleTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .prologue
    .line 68
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v1

    .line 74
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 47
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->discoveryInputDeviceDisconnect()V

    .line 50
    invoke-direct {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->discoveryInputDevice()V

    .line 52
    invoke-direct {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->getIdleTime()J

    move-result-wide v0

    .line 53
    .local v0, "idleTime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 55
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 94
    return-void
.end method

.method public unregisterListener(Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    .prologue
    .line 78
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadHIDDeviceLocalMonitorImpl;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    monitor-exit v1

    .line 84
    return-void

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
