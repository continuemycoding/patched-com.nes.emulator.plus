.class Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;
.super Lcom/nostalgiaemulators/framework/SfxProfile;
.source "NesEmulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/nes1/NesEmulator$Info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NesSfxProfile"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/SfxProfile;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;-><init>()V

    return-void
.end method


# virtual methods
.method public toInt()I
    .locals 2

    .prologue
    .line 201
    iget v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;->rate:I

    div-int/lit16 v0, v1, 0x2b11

    .line 202
    .local v0, "x":I
    iget v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulator$Info$NesSfxProfile;->quality:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    .line 203
    return v0
.end method
