.class public Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;
.super Ljava/lang/Object;
.source "GamepadDeviceImpl.java"

# interfaces
.implements Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;


# instance fields
.field private final MAX_AXIS_CODE:I

.field private final MAX_BUTTON_CODE:I

.field private mAxisValue:[F

.field private mButtonUpCache:[Z

.field private mButtonValue:[I

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field private mInputDeviceId:I

.field private mName:Ljava/lang/String;

.field private mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field final mState:[I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V
    .locals 2
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    const/16 v1, 0x104

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/16 v0, 0x103

    iput v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->MAX_BUTTON_CODE:I

    .line 19
    const/16 v0, 0x2f

    iput v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->MAX_AXIS_CODE:I

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mInputDeviceId:I

    .line 26
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonValue:[I

    .line 27
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonUpCache:[Z

    .line 28
    const/16 v0, 0x30

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mAxisValue:[F

    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mState:[I

    .line 37
    iput-object p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mDeviceId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mName:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 40
    iput-object p4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 41
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->reset()V

    .line 42
    return-void
.end method

.method public static createInstance(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/input/GamepadDevice;
    .locals 1
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "number"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    .line 33
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;-><init>(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)V

    return-object v0
.end method


# virtual methods
.method public getAxis(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)F
    .locals 2
    .param p1, "axisCode"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mAxisValue:[F

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getButton(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 3
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 69
    :goto_0
    return-object v1

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonValue:[I

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v2

    aget v0, v1, v2

    .line 69
    .local v0, "action":I
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v1

    goto :goto_0
.end method

.method public getButtonUp(Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;)Z
    .locals 2
    .param p1, "buttonCode"    # Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .prologue
    .line 74
    if-nez p1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonUpCache:[Z

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v1

    aget-boolean v0, v0, v1

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mDeviceType:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    return-object v0
.end method

.method public getInputDeviceId()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mInputDeviceId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mNumber:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    return-object v0
.end method

.method public getState(Lcom/xiaoqi/gamepad/sdk/constant/StateCode;)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 3
    .param p1, "stateCode"    # Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    const/4 v1, 0x0

    .line 91
    :goto_0
    return-object v1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mState:[I

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->getValue()I

    move-result v2

    aget v0, v1, v2

    .line 91
    .local v0, "action":I
    invoke-static {v0}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v1

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->resetButtonUp()V

    .line 138
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonValue:[I

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->getValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 139
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mAxisValue:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 140
    return-void
.end method

.method public resetButtonUp()V
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonUpCache:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 133
    return-void
.end method

.method public setInputDeviceId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mInputDeviceId:I

    .line 149
    return-void
.end method

.method public updateAxis(Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;)V
    .locals 5
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 119
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->values()[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    move-result-object v0

    .line 114
    .local v0, "axes":[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_0

    .line 115
    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v1

    .line 116
    .local v1, "axis":I
    invoke-virtual {p1, v1}, Lcom/xiaoqi/gamepad/sdk/input/event/AxisInputEvent;->getAxisValue(I)F

    move-result v3

    .line 117
    .local v3, "value":F
    iget-object v4, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mAxisValue:[F

    aput v3, v4, v1

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateButton(Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonValue:[I

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->getValue()I

    move-result v2

    .line 100
    aput v2, v0, v1

    .line 103
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v0

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    if-ne v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mButtonUpCache:[Z

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/ButtonInputEvent;->getButtonCode()Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    goto :goto_0
.end method

.method public updateState(Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;

    .prologue
    .line 123
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v0

    if-nez v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadDeviceImpl;->mState:[I

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getState()Lcom/xiaoqi/gamepad/sdk/constant/StateCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/StateCode;->getValue()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaoqi/gamepad/sdk/input/event/StateInputEvent;->getAction()Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->getValue()I

    move-result v2

    aput v2, v0, v1

    goto :goto_0
.end method
