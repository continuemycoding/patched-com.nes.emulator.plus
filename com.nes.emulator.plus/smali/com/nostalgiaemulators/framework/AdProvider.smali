.class public final enum Lcom/nostalgiaemulators/framework/AdProvider;
.super Ljava/lang/Enum;
.source "AdProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/AdProvider;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/AdProvider;

.field public static final enum LEADBOLT:Lcom/nostalgiaemulators/framework/AdProvider;

.field public static final enum MOPUB:Lcom/nostalgiaemulators/framework/AdProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/nostalgiaemulators/framework/AdProvider;

    const-string v1, "LEADBOLT"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/AdProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/AdProvider;->LEADBOLT:Lcom/nostalgiaemulators/framework/AdProvider;

    new-instance v0, Lcom/nostalgiaemulators/framework/AdProvider;

    const-string v1, "MOPUB"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/AdProvider;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/AdProvider;->MOPUB:Lcom/nostalgiaemulators/framework/AdProvider;

    .line 21
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/AdProvider;

    sget-object v1, Lcom/nostalgiaemulators/framework/AdProvider;->LEADBOLT:Lcom/nostalgiaemulators/framework/AdProvider;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/AdProvider;->MOPUB:Lcom/nostalgiaemulators/framework/AdProvider;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nostalgiaemulators/framework/AdProvider;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/AdProvider;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/AdProvider;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/AdProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/AdProvider;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/AdProvider;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/AdProvider;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/AdProvider;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/AdProvider;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
