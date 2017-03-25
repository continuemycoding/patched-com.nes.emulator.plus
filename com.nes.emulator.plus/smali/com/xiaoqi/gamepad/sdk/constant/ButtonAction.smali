.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
.super Ljava/lang/Enum;
.source "ButtonAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

.field public static final enum BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    const-string v3, "BTN_ACTION_DOWN"

    invoke-direct {v2, v3, v4, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 7
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    const-string v3, "BTN_ACTION_UP"

    invoke-direct {v2, v3, v5, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_DOWN:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    aput-object v3, v2, v4

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    aput-object v3, v2, v5

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    .line 9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->mapping:Landroid/util/SparseArray;

    .line 11
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->values()[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    move-result-object v1

    .line 12
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 15
    return-void

    .line 13
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "action"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->mAction:I

    .line 20
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 27
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->mapping:Landroid/util/SparseArray;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->BTN_ACTION_UP:Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/ButtonAction;->mAction:I

    return v0
.end method
