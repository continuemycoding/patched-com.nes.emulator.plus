.class Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;
.super Lcom/nostalgiaemulators/framework/GfxProfile;
.source "NesEmulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/nes1/NesEmulator$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NesGfxProfile"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/GfxProfile;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;)V
    .locals 0

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesGfxProfile;->fps:I

    const/16 v1, 0x32

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
