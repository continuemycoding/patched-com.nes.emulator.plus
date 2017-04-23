.class public Lcom/nostalgiaemulators/nes1/NesSlotImportActivity;
.super Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;
.source "NesSlotImportActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotImportActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmulatorActivityClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/nostalgiaemulators/framework/base/EmulatorActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    return-object v0
.end method

.method public getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInstance()Lcom/nostalgiaemulators/framework/base/JniEmulator;

    move-result-object v0

    return-object v0
.end method
