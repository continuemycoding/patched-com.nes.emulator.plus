.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;
.super Ljava/lang/Enum;
.source "ActivityState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CREATE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum DESTROY:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum PAUSE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum RESUME:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum SERVICE_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum START:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field public static final enum STOP:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

.field private static mapping:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 6
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "CREATE"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v6}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->CREATE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 7
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "DESTROY"

    invoke-direct {v2, v3, v6, v7}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->DESTROY:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 8
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "START"

    invoke-direct {v2, v3, v7, v8}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->START:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 9
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "STOP"

    invoke-direct {v2, v3, v8, v9}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->STOP:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 10
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "RESUME"

    invoke-direct {v2, v3, v9, v10}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->RESUME:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 11
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "PAUSE"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v10, v4}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->PAUSE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 12
    new-instance v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const-string v3, "SERVICE_CONNECTED"

    const/4 v4, 0x6

    const/4 v5, 0x7

    invoke-direct {v2, v3, v4, v5}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->SERVICE_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const/4 v2, 0x7

    new-array v2, v2, [Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    const/4 v3, 0x0

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->CREATE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v4, v2, v3

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->DESTROY:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v3, v2, v6

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->START:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v3, v2, v7

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->STOP:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v3, v2, v8

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->RESUME:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v3, v2, v9

    sget-object v3, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->PAUSE:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v3, v2, v10

    const/4 v3, 0x6

    sget-object v4, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->SERVICE_CONNECTED:Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    aput-object v4, v2, v3

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    .line 14
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->mapping:Landroid/util/SparseArray;

    .line 17
    invoke-static {}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->values()[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    move-result-object v1

    .line 18
    .local v1, "values":[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 21
    return-void

    .line 19
    :cond_0
    sget-object v2, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->mapping:Landroid/util/SparseArray;

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->getValue()I

    move-result v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "state"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->mState:I

    .line 26
    return-void
.end method

.method public static valueOf(I)Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->mapping:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/ActivityState;->mState:I

    return v0
.end method
