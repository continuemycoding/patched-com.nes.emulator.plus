.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
.super Ljava/lang/Enum;
.source "GamepadNumber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field public static final enum First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field public static final enum Forth:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field public static final SIZE:I = 0x4

.field public static final enum Second:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field public static final enum Third:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHidNumber:I

.field private mNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 6
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    const-string v3, "First"

    invoke-direct {v2, v3, v7, v4}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 7
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    const-string v3, "Second"

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Second:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 8
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    const-string v3, "Third"

    invoke-direct {v2, v3, v5, v6}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Third:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 9
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    const-string v3, "Forth"

    invoke-direct {v2, v3, v6, v8}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Forth:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    new-array v2, v8, [Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->First:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    aput-object v3, v2, v7

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Second:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    aput-object v3, v2, v4

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Third:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    aput-object v3, v2, v5

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->Forth:Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    aput-object v3, v2, v6

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    .line 11
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mapping:Landroid/util/SparseArray;

    .line 14
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    move-result-object v1

    .line 15
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 43
    return-void

    .line 16
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "gamepadNumber"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mNumber:I

    .line 23
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 40
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getHidNumber()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mHidNumber:I

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mNumber:I

    return v0
.end method

.method public setHidNumber(I)V
    .locals 0
    .param p1, "hidNumber"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/xiaoqi/gamepad/sdk/constant/GamepadNumber;->mHidNumber:I

    .line 28
    return-void
.end method
