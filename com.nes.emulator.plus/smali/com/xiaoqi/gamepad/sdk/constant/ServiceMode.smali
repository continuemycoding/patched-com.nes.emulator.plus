.class public final enum Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
.super Ljava/lang/Enum;
.source "ServiceMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

.field public static final enum LOCAL:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

.field public static final enum REMOTE:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    const-string v1, "REMOTE"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->REMOTE:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    .line 5
    new-instance v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    const-string v1, "LOCAL"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->LOCAL:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->REMOTE:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->LOCAL:Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    iput p3, p0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->mValue:I

    .line 10
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    return-object v0
.end method

.method public static values()[Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->ENUM$VALUES:[Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/xiaoqi/gamepad/sdk/constant/ServiceMode;->mValue:I

    return v0
.end method
