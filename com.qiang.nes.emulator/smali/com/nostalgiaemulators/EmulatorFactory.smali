.class public Lcom/nostalgiaemulators/EmulatorFactory;
.super Ljava/lang/Object;
.source "EmulatorFactory.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/EmulatorFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInstance()Lcom/nostalgiaemulators/framework/base/JniEmulator;

    move-result-object v0

    return-object v0
.end method
