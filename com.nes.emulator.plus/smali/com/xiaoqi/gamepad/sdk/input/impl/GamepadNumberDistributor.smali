.class public Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;
.super Ljava/lang/Object;
.source "GamepadNumberDistributor.java"


# static fields
.field private static final STATE_FREE:I = 0x0

.field private static final STATE_INUSE:I = 0x1

.field static final TAG:Ljava/lang/String;

.field private static final devidAdded:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;",
            ">;"
        }
    .end annotation
.end field

.field private static final hidNumberState:[I

.field private static final idNumMapping4HidCached:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final idNumMappingCached:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;",
            ">;"
        }
    .end annotation
.end field

.field private static numberRemain:I

.field private static final numberState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 14
    const-class v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->TAG:Ljava/lang/String;

    .line 18
    new-array v0, v1, [I

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMappingCached:Ljava/util/HashMap;

    .line 22
    new-array v0, v1, [I

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMapping4HidCached:Ljava/util/HashMap;

    .line 25
    sput v1, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    .line 28
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->reset()V

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static distribute(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 6
    .param p0, "devId"    # Ljava/lang/String;
    .param p1, "deviceType"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 83
    :cond_0
    :goto_0
    return-object v1

    .line 36
    :cond_1
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 37
    .local v1, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-nez v1, :cond_0

    .line 41
    sget v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    if-nez v3, :cond_2

    move-object v1, v2

    .line 42
    goto :goto_0

    .line 44
    :cond_2
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMappingCached:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    check-cast v1, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 46
    .restart local v1    # "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v1, :cond_5

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    if-nez v3, :cond_5

    .line 47
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    invoke-virtual {v1}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v5, v2, v3

    .line 48
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-eq p1, v2, :cond_3

    .line 50
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_OTG:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-ne p1, v2, :cond_4

    .line 51
    :cond_3
    invoke-static {p0, v1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->distributeHidNumber(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    .line 58
    :cond_4
    sget v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    goto :goto_0

    .line 61
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    array-length v3, v3

    if-lt v0, v3, :cond_6

    move-object v1, v2

    .line 83
    goto :goto_0

    .line 62
    :cond_6
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    aget v3, v3, v0

    if-nez v3, :cond_8

    .line 63
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    aput v5, v2, v0

    .line 64
    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMappingCached:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    .line 74
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-eq p1, v2, :cond_7

    .line 75
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_OTG:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    if-ne p1, v2, :cond_0

    .line 76
    :cond_7
    invoke-static {p0, v1}, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->distributeHidNumber(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V

    goto :goto_0

    .line 61
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static distributeHidNumber(Ljava/lang/String;Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;)V
    .locals 5
    .param p0, "devId"    # Ljava/lang/String;
    .param p1, "mainNumber"    # Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .prologue
    const/4 v4, 0x1

    .line 88
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMapping4HidCached:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 90
    .local v0, "hidNum":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-nez v2, :cond_1

    .line 91
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v4, v2, v3

    .line 92
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->setHidNumber(I)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 100
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    aget v2, v2, v1

    if-nez v2, :cond_2

    .line 101
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    aput v4, v2, v1

    .line 102
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 103
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMapping4HidCached:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->setHidNumber(I)V

    goto :goto_0

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getMappingNumber(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 3
    .param p0, "devId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    :goto_0
    return-object v1

    .line 145
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 146
    .local v0, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v0, :cond_1

    .end local v0    # "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0    # "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected static getRemainNumbers()I
    .locals 1

    .prologue
    .line 138
    sget v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    return v0
.end method

.method protected static release(Ljava/lang/String;)V
    .locals 7
    .param p0, "devId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMappingCached:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 120
    .local v2, "num":Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 122
    .local v1, "index":I
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    aget v3, v3, v1

    if-ne v3, v6, :cond_0

    .line 124
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    aput v5, v3, v1

    .line 125
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    .line 128
    invoke-virtual {v2}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getHidNumber()I

    move-result v0

    .line 129
    .local v0, "hidNumber":I
    if-lez v0, :cond_0

    const/4 v3, 0x4

    if-gt v0, v3, :cond_0

    .line 130
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    if-ne v3, v6, :cond_0

    .line 131
    sget-object v3, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    add-int/lit8 v4, v0, -0x1

    aput v5, v3, v4

    goto :goto_0
.end method

.method public static reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->hidNumberState:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 151
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberState:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 152
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->devidAdded:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 153
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMappingCached:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 154
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->idNumMapping4HidCached:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 155
    const/4 v0, 0x4

    sput v0, Lcom/xiaoqi/gamepad/sdk/input/impl/GamepadNumberDistributor;->numberRemain:I

    .line 156
    return-void
.end method
