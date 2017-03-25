.class Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;
.super Ljava/lang/Object;
.source "GamepadDeviceManagerImpl.java"

# interfaces
.implements Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GamepadInputListenerImpl"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$ButtonAction:[I

.field private static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateAction:[I

.field private static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateCode:[I


# instance fields
.field final synthetic this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;


# direct methods
.method static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$ButtonAction()[I
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$ButtonAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->values()[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$ButtonAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateAction()[I
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->values()[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateAction:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateCode()[I
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateCode:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->values()[Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->STATE_CONNECTION:Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateCode:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAxisInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .prologue
    .line 333
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-static {v4}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v3

    .line 338
    .local v3, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v3, :cond_0

    .line 339
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    .line 341
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->updateAxis(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V

    .line 343
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    .line 344
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 345
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 351
    sget-boolean v4, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v4, :cond_0

    .line 352
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisCodes()[I

    move-result-object v6

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValues()[F

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateAxis(I[I[F)V

    goto :goto_0

    .line 347
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 348
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    invoke-virtual {p1, v3}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->toAxisEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaoqi/gamepad/sdk/GamepadListener;->onAxisEvent(Lcom/xiaoqi/gamepad/sdk/event/AxisEvent;)V

    goto :goto_1
.end method

.method public onButtonInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .prologue
    .line 295
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v4

    if-nez v4, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 300
    invoke-static {v4}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v3

    .line 302
    .local v3, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v3, :cond_0

    .line 303
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    .line 304
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->updateButton(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V

    .line 308
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    .line 309
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 310
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 316
    sget-boolean v4, Lcom/xiaoqi/gamepad/sdk/Configs;->USE_JNI:Z

    if-eqz v4, :cond_2

    .line 317
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mJNIBridge:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v6

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->getValue()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadJNIBridge;->updateButton(III)V

    .line 320
    :cond_2
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$ButtonAction()[I

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 322
    :pswitch_0
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v4, v5

    .line 324
    :pswitch_1
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v4, v4, v5

    if-lez v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v4, v4, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget v6, v4, v5

    add-int/lit8 v6, v6, -0x1

    aput v6, v4, v5

    goto/16 :goto_0

    .line 312
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 313
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    invoke-virtual {p1, v3}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->toButtonEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaoqi/gamepad/sdk/GamepadListener;->onButtonEvent(Lcom/xiaoqi/gamepad/sdk/event/ButtonEvent;)V

    goto :goto_1

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStateInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    .locals 10
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .prologue
    .line 359
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 360
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v5

    if-nez v5, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateCode()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 366
    :pswitch_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$StateAction()[I

    move-result-object v5

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 388
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->removeGamepad(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v4

    .line 389
    .local v4, "numRemoved":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v4, :cond_0

    .line 391
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    .line 392
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 393
    .local v2, "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 399
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadButtonDownCount:[I

    invoke-virtual {v4}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    goto :goto_0

    .line 368
    .end local v2    # "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    .end local v4    # "numRemoved":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :pswitch_2
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepads:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 371
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 372
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getInputDeviceId()I

    move-result v7

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v9

    .line 371
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->addGamepad(Ljava/lang/String;ILjava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v3

    .line 374
    .local v3, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v3, :cond_0

    .line 376
    iget-object v5, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl$GamepadInputListenerImpl;->this$0:Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;

    iget-object v5, v5, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceManagerImpl;->mGamepadListeners:Ljava/util/HashMap;

    .line 377
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 378
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 381
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    invoke-virtual {p1, v3}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->toStateEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/StateEvent;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaoqi/gamepad/sdk/GamepadListener;->onStateEvent(Lcom/xiaoqi/gamepad/sdk/event/StateEvent;)V

    goto :goto_2

    .line 395
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    .end local v3    # "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .restart local v2    # "iterator2":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;>;"
    .restart local v4    # "numRemoved":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/xiaoqi/gamepad/sdk/GamepadListener;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    invoke-virtual {p1, v4}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->toStateEvent(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/event/StateEvent;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/xiaoqi/gamepad/sdk/GamepadListener;->onStateEvent(Lcom/xiaoqi/gamepad/sdk/event/StateEvent;)V

    goto :goto_1

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 366
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
