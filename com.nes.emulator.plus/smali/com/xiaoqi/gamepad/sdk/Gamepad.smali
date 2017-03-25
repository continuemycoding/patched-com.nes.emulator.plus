.class public final Lcom/xiaoqi/gamepad/sdk/Gamepad;
.super Ljava/lang/Object;
.source "Gamepad.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$GamepadNumber:[I

.field public static final First:Lcom/xiaoqi/gamepad/sdk/Gamepad;

.field public static final Forth:Lcom/xiaoqi/gamepad/sdk/Gamepad;

.field public static final Second:Lcom/xiaoqi/gamepad/sdk/Gamepad;

.field public static final Third:Lcom/xiaoqi/gamepad/sdk/Gamepad;

.field static mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

.field static mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;


# instance fields
.field mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field mdevType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;


# direct methods
.method static synthetic $SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$GamepadNumber()[I
    .locals 3

    .prologue
    .line 19
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$GamepadNumber:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Forth:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Second:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Third:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$GamepadNumber:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-direct {v0}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    .line 26
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-direct {v0, v1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;-><init>(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->First:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    .line 27
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Second:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-direct {v0, v1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;-><init>(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Second:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    .line 28
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Third:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-direct {v0, v1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;-><init>(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Third:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    .line 29
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Forth:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-direct {v0, v1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;-><init>(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Forth:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    return-void
.end method

.method constructor <init>(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 1
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mdevType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 32
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 33
    return-void
.end method

.method public static Map(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 137
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v0, p0, p1}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setAxisAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)V

    .line 138
    return-void
.end method

.method public static Map(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .param p2, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 147
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setAxisAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 148
    return-void
.end method

.method public static Map(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 118
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v0, p0, p1}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setButtonAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V

    .line 119
    return-void
.end method

.method public static Map(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 1
    .param p0, "alias"    # Ljava/lang/String;
    .param p1, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .param p2, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 128
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->setButtonAlias(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 129
    return-void
.end method

.method public static addListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    .prologue
    .line 76
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->addListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V

    .line 77
    return-void
.end method

.method public static exit()V
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->exit()V

    .line 51
    return-void
.end method

.method public static getAxis(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "axisCode"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 176
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v1, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    .line 177
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 179
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v1

    goto :goto_0
.end method

.method public static getAxis(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)F
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 189
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v1, p1, p0}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->getAxis(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    move-result-object v0

    .line 190
    .local v0, "code":Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    invoke-static {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v1

    return v1
.end method

.method public static getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 200
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v1, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    .line 201
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-nez v0, :cond_0

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 203
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v1

    goto :goto_0
.end method

.method public static getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 213
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v1, p1, p0}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->getButton(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v0

    .line 214
    .local v0, "code":Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    invoke-static {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v1

    return-object v1
.end method

.method public static getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 225
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v1, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    .line 226
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 228
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0, p1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z

    move-result v1

    goto :goto_0
.end method

.method public static getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)Z
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 239
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mMapper:Lcom/xiaoqi/gamepad/sdk/AliasMapper;

    invoke-virtual {v1, p1, p0}, Lcom/xiaoqi/gamepad/sdk/AliasMapper;->getButton(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v0

    .line 240
    .local v0, "code":Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    invoke-static {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z

    move-result v1

    return v1
.end method

.method public static getGamepad(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/Gamepad;
    .locals 3
    .param p0, "num"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    const/4 v0, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 107
    :goto_0
    return-object v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->$SWITCH_TABLE$com$xiaoqi$gamepad$sdk$constant$GamepadNumber()[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->First:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    goto :goto_0

    .line 100
    :pswitch_1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Second:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    goto :goto_0

    .line 102
    :pswitch_2
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Third:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    goto :goto_0

    .line 104
    :pswitch_3
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->Forth:Lcom/xiaoqi/gamepad/sdk/Gamepad;

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p0}, Lcom/xiaoqi/gamepad/sdk/input/InputObjectFactory;->getInstance(Landroid/content/Context;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    move-result-object v0

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    .line 43
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->init()V

    .line 44
    return-void
.end method

.method public static isConnected(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Z
    .locals 2
    .param p0, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    .line 165
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v1, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    .line 166
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static pause()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->pause()V

    .line 60
    :cond_0
    return-void
.end method

.method public static removeListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/xiaoqi/gamepad/sdk/GamepadListener;

    .prologue
    .line 84
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0, p0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->removeListener(Lcom/xiaoqi/gamepad/sdk/GamepadListener;)V

    .line 85
    return-void
.end method

.method public static resetButtonUp()V
    .locals 1

    .prologue
    .line 247
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->resetGamepadsButtonUpCached()V

    .line 248
    return-void
.end method

.method public static resume()V
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    if-eqz v0, :cond_0

    .line 67
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->resume()V

    .line 69
    :cond_0
    return-void
.end method


# virtual methods
.method public anyButtonDown()Z
    .locals 2

    .prologue
    .line 265
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-interface {v0, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->isAnyButtonDown(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Z

    move-result v0

    return v0
.end method

.method public getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F
    .locals 1
    .param p1, "axisCode"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxis(Ljava/lang/String;)F
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getAxisHatX()F
    .locals 1

    .prologue
    .line 361
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisHatY()F
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisLTrigger()F
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisRTrigger()F
    .locals 1

    .prologue
    .line 373
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisRZ()F
    .locals 1

    .prologue
    .line 357
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisX()F
    .locals 1

    .prologue
    .line 345
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisY()F
    .locals 1

    .prologue
    .line 349
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getAxisZ()F
    .locals 1

    .prologue
    .line 353
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F

    move-result v0

    return v0
.end method

.method public getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButton(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonA()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_A:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonB()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_B:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonDown(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z
    .locals 2
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonDown(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getButtonL1()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonL2()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 397
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonR1()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonR2()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 405
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonSelect()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 417
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_SELECT:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonStart()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 421
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_START:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonThumbL()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_L:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonThumbR()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 413
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_R:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z
    .locals 1
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 330
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z

    move-result v0

    return v0
.end method

.method public getButtonUp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p1}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getButtonX()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_X:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public getButtonY()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 389
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_Y:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-virtual {p0, v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/Gamepad;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->isConnected(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Z

    move-result v0

    return v0
.end method
