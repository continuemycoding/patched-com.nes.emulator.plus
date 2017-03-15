.class public Lcom/nostalgiaemulators/framework/base/Manager;
.super Lcom/nostalgiaemulators/framework/EmulatorRunner;
.source "Manager.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;)V
    .locals 1
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/EmulatorRunner;-><init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;)V

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/Manager;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public copyAutoSave(I)V
    .locals 10
    .param p1, "slot"    # I

    .prologue
    .line 53
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/Manager;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/Emulator;->isGameLoaded()Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v8, "game not loaded"

    invoke-direct {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 57
    :cond_0
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/Manager;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 58
    :try_start_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/Manager;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/Emulator;->getLoadedGame()Lcom/nostalgiaemulators/framework/GameInfo;

    move-result-object v7

    iget-object v2, v7, Lcom/nostalgiaemulators/framework/GameInfo;->md5:Ljava/lang/String;

    .line 59
    .local v2, "md5":Ljava/lang/String;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/Manager;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "base":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "source":Ljava/lang/String;
    invoke-static {v0, v2, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 62
    .local v5, "target":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v0, v2, v7}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getScreenshotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "sourcePng":Ljava/lang/String;
    invoke-static {v0, v2, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getScreenshotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 66
    .local v6, "targetPng":Ljava/lang/String;
    :try_start_1
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 67
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v9}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :try_start_2
    monitor-exit v8

    .line 74
    return-void

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    .line 71
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_save_state_failed:I

    .line 70
    invoke-direct {v7, v9}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v7

    .line 57
    .end local v0    # "base":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "md5":Ljava/lang/String;
    .end local v3    # "source":Ljava/lang/String;
    .end local v4    # "sourcePng":Ljava/lang/String;
    .end local v5    # "target":Ljava/lang/String;
    .end local v6    # "targetPng":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method public enableCheats(Landroid/content/Context;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 79
    .local v2, "numCheats":I
    iget-object v4, p2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {p1, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->getAllEnableCheats(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 108
    return v2

    .line 79
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    .local v0, "cheatChars":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 81
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->supportsRawCheats()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 82
    const/4 v3, 0x0

    .line 85
    .local v3, "rawValues":[I
    :try_start_0
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->rawToValues(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 92
    if-eqz v3, :cond_1

    .line 93
    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/nostalgiaemulators/framework/base/Manager;->enableRawCheat(III)V

    .line 105
    .end local v3    # "rawValues":[I
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .restart local v3    # "rawValues":[I
    :catch_0
    move-exception v1

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/nostalgiaemulators/framework/EmulatorException;

    .line 89
    sget v5, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_invalid_cheat:I

    .line 88
    invoke-direct {v4, v5, v0}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "rawValues":[I
    :cond_2
    new-instance v4, Lcom/nostalgiaemulators/framework/EmulatorException;

    .line 98
    sget v5, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_invalid_cheat:I

    .line 97
    invoke-direct {v4, v5, v0}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 102
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/base/Manager;->enableCheat(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFastForwardEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 41
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/Manager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/Manager;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->setFastForwardEnabled(Z)V

    .line 41
    monitor-exit v1

    .line 44
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFastForwardFrameCount(I)V
    .locals 2
    .param p1, "frames"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/Manager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/Manager;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/Emulator;->setFastForwardFrameCount(I)V

    .line 47
    monitor-exit v1

    .line 50
    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
