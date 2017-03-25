.class Lcom/xiaoqi/gamepad/sdk/WrapActivity;
.super Ljava/lang/Object;
.source "WrapActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field isXperiaPlay:Z

.field private final mContext:Landroid/content/Context;

.field mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/input/InputObjectFactory;->getInstance(Landroid/content/Context;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800i"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "R800at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SO-01D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "zeus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->isXperiaPlay:Z

    .line 33
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private onKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 149
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 150
    .local v0, "inputDevice":Landroid/view/InputDevice;
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 151
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDeviceId(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, "devId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 153
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v5

    .line 154
    .local v5, "action":Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    invoke-static {p1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v6

    .line 156
    .local v6, "code":Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .line 157
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 156
    invoke-direct/range {v1 .. v6}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;-><init>(JLjava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)V

    .line 158
    .local v1, "bie":Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v2}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadEventInjectInterface()Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    move-result-object v2

    .line 159
    invoke-interface {v2, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onButtonInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V

    .line 162
    .end local v1    # "bie":Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;
    .end local v4    # "devId":Ljava/lang/String;
    .end local v5    # "action":Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .end local v6    # "code":Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    :cond_0
    return-void
.end method


# virtual methods
.method getButtonBDownEventInCoolpad(Landroid/view/KeyEvent;)Landroid/view/KeyEvent;
    .locals 14
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x0

    .line 130
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isCoolpad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 133
    const-string v0, "www."

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-interface {v0, v2}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getInputDeviceId()I

    move-result v10

    .line 136
    .local v10, "id":I
    new-instance v1, Landroid/view/KeyEvent;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    .line 137
    const/16 v7, 0x61

    .line 138
    const/16 v11, 0x131

    const/16 v12, 0x8

    .line 139
    const/16 v13, 0x501

    move v8, v6

    move v9, v6

    .line 136
    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 145
    .end local v10    # "id":I
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isXperiaPlay()Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->isXperiaPlay:Z

    return v0
.end method

.method onCreate()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method onDestroy()V
    .locals 0

    .prologue
    .line 41
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->exit()V

    .line 42
    return-void
.end method

.method onGenericMotionEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 54
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v13

    .line 55
    .local v13, "inputDevice":Landroid/view/InputDevice;
    invoke-static {v13}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-static {v13}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->getDeviceId(Landroid/view/InputDevice;)Ljava/lang/String;

    move-result-object v4

    .line 57
    .local v4, "devId":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 58
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v2, v4}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadDevice(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;

    move-result-object v0

    .line 59
    .local v0, "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v2

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_ADB:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-eq v2, v3, :cond_0

    .line 60
    invoke-interface {v0}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;->getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v2

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_RFCOMM:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-ne v2, v3, :cond_1

    .line 87
    .end local v0    # "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .end local v4    # "devId":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 62
    .restart local v0    # "dev":Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .restart local v4    # "devId":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v5

    .line 63
    .local v5, "x":F
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 64
    .local v6, "y":F
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    .line 65
    .local v7, "z":F
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 67
    .local v8, "rz":F
    const/4 v2, 0x0

    cmpl-float v2, v8, v2

    if-nez v2, :cond_2

    .line 68
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ_MTK:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v8

    .line 71
    :cond_2
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v9

    .line 72
    .local v9, "hatx":F
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v10

    .line 73
    .local v10, "haty":F
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getMapping4GettingFromHid(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    .line 75
    .local v11, "lt":F
    const/4 v2, 0x0

    cmpl-float v2, v11, v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v11

    .line 77
    :cond_3
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getMapping4GettingFromHid(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    .line 78
    .local v12, "rt":F
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v12

    .line 80
    :cond_4
    new-instance v1, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .line 81
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 80
    invoke-direct/range {v1 .. v12}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;-><init>(JLjava/lang/String;FFFFFFFF)V

    .line 83
    .local v1, "aie":Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;
    iget-object v2, p0, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->mDeviceManager:Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;

    invoke-interface {v2}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceManager;->getGamepadEventInjectInterface()Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;

    move-result-object v2

    .line 84
    invoke-interface {v2, v1}, Lcom/xiaoqi/gamepad/sdk/input/GamepadDeviceInputListener;->onAxisInputEvent(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V

    goto/16 :goto_0
.end method

.method onKeyDown(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyEvent(ILandroid/view/KeyEvent;)V

    .line 91
    return-void
.end method

.method onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyEvent(ILandroid/view/KeyEvent;)V

    .line 95
    return-void
.end method

.method onPause()V
    .locals 0

    .prologue
    .line 46
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->pause()V

    .line 47
    return-void
.end method

.method onResume()V
    .locals 0

    .prologue
    .line 50
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/Gamepad;->resume()V

    .line 51
    return-void
.end method

.method passThrough(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "e"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 102
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xc

    if-lt v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->isXperiaPlay()Z

    move-result v3

    if-nez v3, :cond_0

    .line 104
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 112
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    .line 114
    .local v0, "inputDevice":Landroid/view/InputDevice;
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/input/InputDeviceUtil;->isGamePad(Landroid/view/InputDevice;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 126
    .end local v0    # "inputDevice":Landroid/view/InputDevice;
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 117
    .restart local v0    # "inputDevice":Landroid/view/InputDevice;
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyDown(ILandroid/view/KeyEvent;)V

    move v1, v2

    .line 118
    goto :goto_0

    .line 120
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/xiaoqi/gamepad/sdk/WrapActivity;->onKeyUp(ILandroid/view/KeyEvent;)V

    move v1, v2

    .line 121
    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
