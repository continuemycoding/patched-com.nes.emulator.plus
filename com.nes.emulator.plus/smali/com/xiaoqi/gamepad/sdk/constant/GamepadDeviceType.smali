.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
.super Ljava/lang/Enum;
.source "GamepadDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field public static final enum BLUETOOTH_RFCOMM:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field public static final enum USB_ADB:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field public static final enum USB_OTG:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 11
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    const-string v3, "BLUETOOTH_HID"

    invoke-direct {v2, v3, v7, v4}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 12
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    const-string v3, "BLUETOOTH_RFCOMM"

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_RFCOMM:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 13
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    const-string v3, "USB_OTG"

    invoke-direct {v2, v3, v5, v6}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_OTG:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 14
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    const-string v3, "USB_ADB"

    invoke-direct {v2, v3, v6, v8}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_ADB:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    new-array v2, v8, [Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_HID:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    aput-object v3, v2, v7

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->BLUETOOTH_RFCOMM:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    aput-object v3, v2, v4

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_OTG:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    aput-object v3, v2, v5

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->USB_ADB:Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    aput-object v3, v2, v6

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    .line 16
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->mapping:Landroid/util/SparseArray;

    .line 19
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    move-result-object v1

    .line 20
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 23
    return-void

    .line 21
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->mType:I

    .line 28
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 35
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadDeviceType;->mType:I

    return v0
.end method
