.class public Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;
.super Landroid/os/FileObserver;
.source "FilePathWacher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

.field private static flags:I


# instance fields
.field private exts:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->flags:I

    .line 41
    const/16 v0, 0xfff

    sput v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->flags:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashSet;Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "exts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 47
    sget v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->flags:I

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->exts:Ljava/util/HashSet;

    .line 48
    const-string v0, "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "create watcher "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->exts:Ljava/util/HashSet;

    .line 52
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;

    .line 53
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v1, "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-static {p2}, Lcom/nostalgiaemulators/framework/utils/Utils;->getExt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    .local v0, "ext":Ljava/lang/String;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->exts:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

    const-string v2, "SD card filesystem change"

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher;->listener:Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/FilePathWacher$OnSDCardChangeListener;->onSDCardChange()V

    .line 79
    .end local v0    # "ext":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public startWatching()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 59
    return-void
.end method

.method public stopWatching()V
    .locals 2

    .prologue
    .line 63
    const-string v0, "com.nostalgiaemulators.framework.ui.gamegallery.FilePathWacher"

    const-string v1, "stop"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 65
    return-void
.end method
