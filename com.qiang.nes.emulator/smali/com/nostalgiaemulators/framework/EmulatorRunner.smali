.class public Lcom/nostalgiaemulators/framework/EmulatorRunner;
.super Ljava/lang/Object;
.source "EmulatorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;,
        Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;
    }
.end annotation


# static fields
.field private static final AUTO_SAVE_SLOT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.EmulatorRunner"


# instance fields
.field private audioEnabled:Z

.field private audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

.field private benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

.field private context:Landroid/content/Context;

.field protected emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field private isDestroyed:Z

.field private isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final lock:Ljava/lang/Object;

.field private pauseLock:Ljava/lang/Object;

.field private sfxReady:Z

.field private sfxReadyLock:Ljava/lang/Object;

.field private updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

.field private volumeModifier:F


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;)V
    .locals 2
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->pauseLock:Ljava/lang/Object;

    .line 611
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;

    .line 612
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReady:Z

    .line 615
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    .line 619
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 42
    invoke-static {p2}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nostalgiaemulators/framework/Emulator;->setBaseDir(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->fixBatterySaveBug()V

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioEnabled:Z

    return v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/EmulatorRunner;Z)V
    .locals 0

    .prologue
    .line 612
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReady:Z

    return-void
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReady:Z

    return v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 619
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/EmulatorRunner;)F
    .locals 1

    .prologue
    .line 624
    iget v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->volumeModifier:F

    return v0
.end method

.method private checkGameLoaded()V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->isGameLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    return-void
.end method

.method private fixBatterySaveBug()V
    .locals 13

    .prologue
    .line 48
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isBatterySaveBugFixed(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    .line 54
    .local v3, "dir":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 58
    new-instance v6, Lcom/nostalgiaemulators/framework/EmulatorRunner$1;

    invoke-direct {v6, p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$1;-><init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;)V

    .line 64
    .local v6, "filter":Ljava/io/FilenameFilter;
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, "cacheDir":Ljava/lang/String;
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, "baseDir":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "fileNames":[Ljava/lang/String;
    array-length v9, v4

    const/4 v8, 0x0

    :goto_1
    if-lt v8, v9, :cond_2

    .line 81
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setBatterySaveBugFixed(Landroid/content/Context;)V

    goto :goto_0

    .line 68
    :cond_2
    aget-object v5, v4, v8

    .line 69
    .local v5, "filename":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .local v7, "source":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .local v2, "dest":Ljava/io/File;
    :try_start_0
    invoke-static {v7, v2}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 74
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 75
    const-string v10, "SAV"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "copying: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 77
    :catch_0
    move-exception v10

    goto :goto_2
.end method

.method private saveAutoState()V
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->saveState(I)V

    .line 396
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    .line 89
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->destroy()V

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    :goto_0
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->destroy()V

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :goto_1
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    .line 112
    :cond_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    goto :goto_1

    .line 95
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public enableCheat(Ljava/lang/String;)V
    .locals 2
    .param p1, "gg"    # Ljava/lang/String;

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 314
    :goto_0
    return-void

    .line 309
    :cond_0
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->checkGameLoaded()V

    .line 311
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->enableCheat(Ljava/lang/String;)V

    .line 311
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableRawCheat(III)V
    .locals 2
    .param p1, "addr"    # I
    .param p2, "val"    # I
    .param p3, "comp"    # I

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 326
    :goto_0
    return-void

    .line 321
    :cond_0
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->checkGameLoaded()V

    .line 323
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/Emulator;->enableRawCheat(III)V

    .line 323
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHistoryItemCount()I
    .locals 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 346
    :goto_0
    return v0

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->getHistoryItemCount()I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 220
    const/4 v0, 0x0

    .line 224
    :goto_0
    return v0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->getInt(Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadHistoryState(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    return-void

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/nostalgiaemulators/framework/Emulator;->emulateFrame(I)V

    .line 357
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->loadHistoryState(I)V

    .line 355
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public loadState(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 372
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->isGameLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->checkGameLoaded()V

    .line 382
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    const/4 v2, -0x1

    invoke-interface {v0, v2}, Lcom/nostalgiaemulators/framework/Emulator;->emulateFrame(I)V

    .line 384
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->loadState(I)V

    .line 382
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pauseEmulation()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 117
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v2, :cond_0

    .line 135
    :goto_0
    return v0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->pauseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 122
    :try_start_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    if-nez v3, :cond_1

    .line 123
    monitor-exit v2

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 126
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 127
    const-string v0, "com.nostalgiaemulators.framework.EmulatorRunner"

    const-string v3, "--PAUSE EMULATION--"

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->onEmulationPaused()V

    .line 130
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pause()V

    .line 131
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->saveAutoState()V

    .line 132
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 135
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public processCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->processCommand(Ljava/lang/String;)V

    .line 213
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V
    .locals 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "pos"    # I

    .prologue
    .line 362
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1, p2}, Lcom/nostalgiaemulators/framework/Emulator;->renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V

    .line 366
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetEmulator()V
    .locals 2

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->reset()V

    .line 202
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->onGameReset()V

    .line 199
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeEmulation()V
    .locals 3

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    const-string v0, "com.nostalgiaemulators.framework.EmulatorRunner"

    const-string v2, "--UNPAUSE EMULATION--"

    invoke-static {v0, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->onEmulationResumed()V

    .line 148
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->unpause()V

    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 144
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveState(I)V
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->isGameLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->saveState(I)V

    .line 334
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBenchmark(Lcom/nostalgiaemulators/framework/base/Benchmark;)V
    .locals 0
    .param p1, "benchmark"    # Lcom/nostalgiaemulators/framework/base/Benchmark;

    .prologue
    .line 401
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;

    .line 402
    return-void
.end method

.method public startGame(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 14
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 229
    iget-boolean v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v7, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    if-eqz v7, :cond_2

    .line 236
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->destroy()V

    .line 239
    :try_start_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    if-eqz v7, :cond_3

    .line 246
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->destroy()V

    .line 249
    :try_start_1
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    :cond_3
    :goto_2
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 256
    :try_start_2
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-static {v7, v9, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getVideoProfile(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v2

    .line 258
    .local v2, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setLastGfxProfile(Landroid/content/Context;Lcom/nostalgiaemulators/framework/GfxProfile;)V

    .line 259
    new-instance v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;

    invoke-direct {v5}, Lcom/nostalgiaemulators/framework/EmulatorSettings;-><init>()V

    .line 260
    .local v5, "settings":Lcom/nostalgiaemulators/framework/EmulatorSettings;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    .line 261
    iget-object v9, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    .line 260
    invoke-static {v7, v9}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isZapperEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;->zapperEnabled:Z

    .line 263
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isTimeshiftEnabled(Landroid/content/Context;)Z

    move-result v7

    .line 262
    iput-boolean v7, v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;->historyEnabled:Z

    .line 264
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isLoadSavFiles(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;->loadSavFiles:Z

    .line 265
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isSaveSavFiles(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;->saveSavFiles:Z

    .line 266
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getSoundVolume(Landroid/content/Context;)F

    move-result v7

    iput v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->volumeModifier:F

    .line 267
    iget v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->volumeModifier:F

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->exp(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v10, v12

    const-wide v12, 0x3ffb7e151628aed2L    # 1.718281828459045

    div-double/2addr v10, v12

    double-to-float v7, v10

    iput v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->volumeModifier:F

    .line 268
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v7

    .line 269
    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableSfxProfiles()Ljava/util/List;

    move-result-object v4

    .line 270
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/SfxProfile;>;"
    const/4 v6, 0x0

    .line 271
    .local v6, "sfx":Lcom/nostalgiaemulators/framework/SfxProfile;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getEmulationQuality(Landroid/content/Context;)I

    move-result v1

    .line 272
    .local v1, "desiredQuality":I
    iput v1, v5, Lcom/nostalgiaemulators/framework/EmulatorSettings;->quality:I

    .line 273
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 274
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "sfx":Lcom/nostalgiaemulators/framework/SfxProfile;
    check-cast v6, Lcom/nostalgiaemulators/framework/SfxProfile;

    .line 276
    .restart local v6    # "sfx":Lcom/nostalgiaemulators/framework/SfxProfile;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 277
    const/4 v6, 0x0

    .line 280
    :cond_4
    if-eqz v6, :cond_5

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioEnabled:Z

    .line 281
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v7, v2, v6, v5}, Lcom/nostalgiaemulators/framework/Emulator;->start(Lcom/nostalgiaemulators/framework/GfxProfile;Lcom/nostalgiaemulators/framework/SfxProfile;Lcom/nostalgiaemulators/framework/EmulatorSettings;)V

    .line 282
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    iget-object v9, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-static {v7, v9}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->createSavFileCopyIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->context:Landroid/content/Context;

    .line 284
    iget-object v9, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 283
    invoke-static {v7, v9}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->getBatterySaveDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "batteryDir":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 286
    new-instance v9, Ljava/io/File;

    iget-object v10, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->getFileNameWithoutExt(Ljava/io/File;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 287
    const-string v9, ".sav"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 285
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, "possibleBatteryFileFullPath":Ljava/lang/String;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget-object v9, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-interface {v7, v9, v0, v3}, Lcom/nostalgiaemulators/framework/Emulator;->loadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Lcom/nostalgiaemulators/framework/Emulator;->emulateFrame(I)V

    .line 255
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 293
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;-><init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;)V

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    .line 294
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/Emulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v8

    iget v8, v8, Lcom/nostalgiaemulators/framework/GfxProfile;->fps:I

    invoke-virtual {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->setFps(I)V

    .line 295
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->start()V

    .line 297
    iget-boolean v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioEnabled:Z

    if-eqz v7, :cond_0

    .line 298
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;-><init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;)V

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    .line 299
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->start()V

    goto/16 :goto_0

    .line 280
    .end local v0    # "batteryDir":Ljava/lang/String;
    .end local v3    # "possibleBatteryFileFullPath":Ljava/lang/String;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 255
    .end local v1    # "desiredQuality":I
    .end local v2    # "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/SfxProfile;>;"
    .end local v5    # "settings":Lcom/nostalgiaemulators/framework/EmulatorSettings;
    .end local v6    # "sfx":Lcom/nostalgiaemulators/framework/SfxProfile;
    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    .line 251
    :catch_0
    move-exception v7

    goto/16 :goto_2

    .line 241
    :catch_1
    move-exception v7

    goto/16 :goto_1
.end method

.method public stopGame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->isDestroyed:Z

    if-eqz v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->resumeEmulation()V

    .line 163
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->destroy()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    :goto_1
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioPlayer:Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->destroy()V

    .line 179
    :try_start_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_2
    iput-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->updater:Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;

    .line 187
    :cond_2
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->saveAutoState()V

    .line 189
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 190
    :try_start_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/Emulator;->stop()V

    .line 189
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 181
    :catch_0
    move-exception v0

    goto :goto_2

    .line 169
    :catch_1
    move-exception v0

    goto :goto_1
.end method
