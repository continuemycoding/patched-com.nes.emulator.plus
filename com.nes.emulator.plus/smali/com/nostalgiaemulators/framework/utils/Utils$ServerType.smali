.class public final enum Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;
.super Ljava/lang/Enum;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/utils/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

.field public static final enum mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

.field public static final enum tablet:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

.field public static final enum tv:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 264
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    const-string v1, "mobile"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    new-instance v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    const-string v1, "tablet"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tablet:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    new-instance v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    const-string v1, "tv"

    invoke-direct {v0, v1, v4}, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tv:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tablet:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tv:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
