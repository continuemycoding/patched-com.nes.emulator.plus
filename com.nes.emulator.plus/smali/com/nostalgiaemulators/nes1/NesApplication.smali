.class public abstract Lcom/nostalgiaemulators/nes1/NesApplication;
.super Lcom/nostalgiaemulators/framework/EmulatorApplication;
.source "NesApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdProvider()Lcom/nostalgiaemulators/framework/AdProvider;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/nostalgiaemulators/framework/AdProvider;->MOPUB:Lcom/nostalgiaemulators/framework/AdProvider;

    return-object v0
.end method

.method public hasGameMenu()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
