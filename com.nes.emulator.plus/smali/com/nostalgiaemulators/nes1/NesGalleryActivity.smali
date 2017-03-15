.class public Lcom/nostalgiaemulators/nes1/NesGalleryActivity;
.super Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
.source "NesGalleryActivity.java"


# static fields
.field private static final REQUEST_CHECK_OPENGL:I = 0xc8


# instance fields
.field wifiControllerServer:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerServer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBiosName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    const-string v0, "disksys.rom"

    return-object v0
.end method

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
    .line 43
    const-class v0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    return-object v0
.end method

.method public getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInstance()Lcom/nostalgiaemulators/framework/base/JniEmulator;

    move-result-object v0

    return-object v0
.end method

.method protected getRomExtensions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "nes"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "fds"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    return-object v0
.end method
