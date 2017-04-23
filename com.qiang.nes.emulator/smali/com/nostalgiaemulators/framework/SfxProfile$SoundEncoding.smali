.class public final enum Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;
.super Ljava/lang/Enum;
.source "SfxProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/SfxProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundEncoding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

.field public static final enum PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

.field public static final enum PCM8:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    const-string v1, "PCM8"

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM8:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    new-instance v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    const-string v1, "PCM16"

    invoke-direct {v0, v1, v3}, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    sget-object v1, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM8:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM16:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    aput-object v1, v0, v3

    sput-object v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    return-object v0
.end method

.method public static values()[Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->ENUM$VALUES:[Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    array-length v1, v0

    new-array v2, v1, [Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
