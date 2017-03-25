.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
.super Ljava/lang/Enum;
.source "AxisCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;",
        ">;"
    }
.end annotation


# static fields
.field private static AXIS_BRAKE:I

.field private static AXIS_GAS:I

.field public static final enum AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_RZ_MTK:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field public static final enum AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

.field private static codeMap4GettingFromHid:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAxis:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 8
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_X"

    invoke-direct {v2, v3, v6, v6}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 9
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_Y"

    invoke-direct {v2, v3, v7, v7}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 10
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_Z"

    const/16 v4, 0xb

    invoke-direct {v2, v3, v8, v4}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 11
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_RZ_MTK"

    const/16 v4, 0xc

    invoke-direct {v2, v3, v9, v4}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ_MTK:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 12
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_RZ"

    const/16 v4, 0xe

    invoke-direct {v2, v3, v10, v4}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 13
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_HAT_X"

    const/4 v4, 0x5

    const/16 v5, 0xf

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 14
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_HAT_Y"

    const/4 v4, 0x6

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 15
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_L_TRIGGER"

    const/4 v4, 0x7

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 16
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const-string v3, "AXIS_R_TRIGGER"

    const/16 v4, 0x8

    const/16 v5, 0x12

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    const/16 v2, 0x9

    new-array v2, v2, [Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v3, v2, v6

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v3, v2, v7

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_Z:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v3, v2, v8

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ_MTK:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v3, v2, v9

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_RZ:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_X:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_HAT_Y:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    aput-object v4, v2, v3

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .line 18
    const/16 v2, 0x17

    sput v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_GAS:I

    .line 19
    const/16 v2, 0x16

    sput v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_BRAKE:I

    .line 21
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->mapping:Landroid/util/SparseArray;

    .line 22
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->codeMap4GettingFromHid:Ljava/util/HashMap;

    .line 25
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->values()[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    move-result-object v1

    .line 26
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 30
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->codeMap4GettingFromHid:Ljava/util/HashMap;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_L_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    sget v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_GAS:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->codeMap4GettingFromHid:Ljava/util/HashMap;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_R_TRIGGER:Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    sget v4, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->AXIS_BRAKE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void

    .line 27
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "axis"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->mAxis:I

    .line 37
    return-void
.end method

.method public static getMapping4GettingFromHid(Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;)I
    .locals 1
    .param p0, "code"    # Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    .prologue
    .line 48
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->codeMap4GettingFromHid:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->codeMap4GettingFromHid:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 44
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/AxisCode;->mAxis:I

    return v0
.end method
