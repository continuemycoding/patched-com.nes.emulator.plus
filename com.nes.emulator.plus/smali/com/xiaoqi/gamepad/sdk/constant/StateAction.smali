.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
.super Ljava/lang/Enum;
.source "StateAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/StateAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

.field public static final enum ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

.field public static final SIZE:I = 0x2

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/StateAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    const-string v3, "ACTION_DISCONNECTED"

    invoke-direct {v2, v3, v4, v4}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 7
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    const-string v3, "ACTION_CONNECTED"

    invoke-direct {v2, v3, v5, v5}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_DISCONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    aput-object v3, v2, v4

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ACTION_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    aput-object v3, v2, v5

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    .line 9
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->mapping:Landroid/util/SparseArray;

    .line 12
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->values()[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    move-result-object v1

    .line 13
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 31
    return-void

    .line 14
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "code"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->mCode:I

    .line 21
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/StateAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/StateAction;->mCode:I

    return v0
.end method
