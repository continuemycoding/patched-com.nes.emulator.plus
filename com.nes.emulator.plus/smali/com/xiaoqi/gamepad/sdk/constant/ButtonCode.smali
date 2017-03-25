.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
.super Ljava/lang/Enum;
.source "ButtonCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BTN_A:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_B:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_L1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_L2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_R1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_R2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_SELECT:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_START:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_THUMB_L:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_THUMB_R:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_X:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field public static final enum BTN_Y:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mButton:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_A"

    const/16 v4, 0x60

    invoke-direct {v2, v3, v6, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_A:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 7
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_B"

    const/16 v4, 0x61

    invoke-direct {v2, v3, v7, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_B:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 8
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_X"

    const/16 v4, 0x63

    invoke-direct {v2, v3, v8, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_X:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 9
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_Y"

    const/16 v4, 0x64

    invoke-direct {v2, v3, v9, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_Y:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 10
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_L1"

    const/16 v4, 0x66

    invoke-direct {v2, v3, v10, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 11
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_R1"

    const/4 v4, 0x5

    const/16 v5, 0x67

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 12
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_L2"

    const/4 v4, 0x6

    const/16 v5, 0x68

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 13
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_R2"

    const/4 v4, 0x7

    const/16 v5, 0x69

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 14
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_THUMB_L"

    const/16 v4, 0x8

    const/16 v5, 0x6a

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_L:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 15
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_THUMB_R"

    const/16 v4, 0x9

    const/16 v5, 0x6b

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_R:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 16
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_START"

    const/16 v4, 0xa

    const/16 v5, 0x6c

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_START:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 17
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const-string v3, "BTN_SELECT"

    const/16 v4, 0xb

    const/16 v5, 0x6d

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_SELECT:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    const/16 v2, 0xc

    new-array v2, v2, [Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_A:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v3, v2, v6

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_B:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v3, v2, v7

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_X:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v3, v2, v8

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_Y:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v3, v2, v9

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v3, v2, v10

    const/4 v3, 0x5

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R1:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_L2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/4 v3, 0x7

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_R2:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x8

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_L:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/16 v3, 0x9

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_THUMB_R:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xa

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_START:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    const/16 v3, 0xb

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->BTN_SELECT:Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    aput-object v4, v2, v3

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    .line 20
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->mapping:Landroid/util/SparseArray;

    .line 23
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->values()[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    move-result-object v1

    .line 24
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 27
    return-void

    .line 25
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "button"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->mButton:I

    .line 31
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 38
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonCode;->mButton:I

    return v0
.end method
