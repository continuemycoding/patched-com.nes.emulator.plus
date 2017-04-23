.class public Lcom/nostalgiaemulators/nes1/NesGalleryActivity;
.super Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
.source "NesGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;
    }
.end annotation


# static fields
.field private static final REQUEST_CHECK_OPENGL:I = 0xc8


# instance fields
.field isAdOpening:Z

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qiang.nes.emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->finish()V

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 97
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->isAdOpening:Z

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onBackPressed()V

    .line 56
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.qiang.nes.emulator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity$SplashAdListener;-><init>(Lcom/nostalgiaemulators/nes1/NesGalleryActivity;)V

    invoke-static {p0, v0}, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->show(Landroid/app/Activity;Lcom/db/android/api/listener/AdListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method public onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 2
    .param p1, "gameMenu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 103
    const v0, 0x7f0870ab

    const v1, 0x7f027095

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 108
    const v0, 0x7f0870a5

    const v1, 0x7f0270af

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 110
    const v0, 0x7f0870a0

    const v1, 0x7f02709b

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 114
    return-void
.end method

.method startNesEmulatorActivity()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/game.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "path":Ljava/lang/String;
    const v2, 0x7f06000b

    invoke-static {p0, v2, v1}, Lcom/qiang/framework/helpers/FileHelper;->copyResource(Landroid/content/Context;ILjava/lang/String;)Z

    .line 82
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "game"

    new-instance v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 84
    const-string v2, "slot"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v2, "fromGallery"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, v0, v5}, Lcom/nostalgiaemulators/nes1/NesGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 87
    return-void
.end method
