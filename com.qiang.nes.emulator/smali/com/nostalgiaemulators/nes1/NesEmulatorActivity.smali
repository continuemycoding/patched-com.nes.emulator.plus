.class public Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;
.super Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
.source "NesEmulatorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/nostalgiaemulators/nes1/NesEmulator;->getInstance()Lcom/nostalgiaemulators/framework/base/JniEmulator;

    move-result-object v0

    return-object v0
.end method

.method getInsertedDisk()I
    .locals 3

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->isFdsInited()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    const/4 v0, -0x1

    .line 107
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v2, "FDS_INSERTED_DISK"

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/Manager;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "insertedDisk":I
    goto :goto_0
.end method

.method getSelectedDisk()I
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->isFdsInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    const/4 v0, -0x1

    .line 135
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v1, "FDS_SELECTED_DISK"

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method getTotalSides()I
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->isFdsInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, -0x1

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v1, "FDS_TOTAL_SIDES"

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method isDiskEjected()Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->isFdsInited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->getInsertedDisk()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDiskInserted()Z
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->isFdsInited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->getInsertedDisk()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFdsInited()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 119
    iget-object v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v2, "FDS_INITED"

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/Manager;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 52
    const-string v0, "DEBUG"

    invoke-static {v0}, Lcom/qiang/framework/helpers/MetaDataHelper;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UMENG_CHANNEL"

    invoke-static {v0}, Lcom/qiang/framework/helpers/MetaDataHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dangbei"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getLastUpdateTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b77400

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/qiang/framework/recommend/RecommendManager;->showDialog(Landroid/app/Activity;)V

    .line 56
    :goto_0
    return-void

    .line 55
    :cond_1
    invoke-static {p0}, Lcom/qiang/framework/helpers/SystemHelper;->showQuitDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    new-instance v0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$MyUpdateManagerListener;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;)V

    invoke-static {p0, v0}, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin;->start(Landroid/content/Context;Lcom/qiang/framework/listener/UpdateManagerListener;)V

    .line 33
    return-void
.end method

.method protected onFailedToLoadGame()Z
    .locals 3

    .prologue
    .line 88
    iget-object v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".fds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v2, "/disksys.rom"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "disksysPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    const-string v1, "In order to run FDS games, you need to provide the FDS BIOS file called \'disksys.rom\'. Put it into any folder, tap \'Search Device For ROMs\' and re-run the game."

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->showErrorAlert(Ljava/lang/String;)V

    .line 94
    const/4 v1, 0x1

    .line 98
    .end local v0    # "disksysPath":Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    .line 41
    return-void
.end method

.method public onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
    .locals 4
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;
    .param p2, "item"    # Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V

    .line 69
    :try_start_0
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v2

    sget v3, Lcom/nostalgiaemulators/nes1/R$string;->game_menu_fds_eject_disk:I

    if-eq v2, v3, :cond_0

    .line 70
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v2

    sget v3, Lcom/nostalgiaemulators/nes1/R$string;->game_menu_fds_insert_disk:I

    if-ne v2, v3, :cond_2

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v3, "FDS_INSERT_EJECT"

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/base/Manager;->processCommand(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->getInsertedDisk()I

    move-result v0

    .line 73
    .local v0, "disk":I
    const-string v2, "Inserted"

    const-string v3, ""

    invoke-virtual {p0, v2, v0, v3}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->showFdsToast(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    .end local v0    # "disk":I
    :cond_1
    :goto_0
    return-void

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v2

    sget v3, Lcom/nostalgiaemulators/nes1/R$string;->game_menu_fds_switch_side:I

    if-ne v2, v3, :cond_1

    .line 76
    iget-object v2, p0, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const-string v3, "FDS_SWITCH_SIDE"

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/base/Manager;->processCommand(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->getSelectedDisk()I

    move-result v0

    .line 78
    .restart local v0    # "disk":I
    const-string v2, "Selected"

    const-string v3, " (not inserted)"

    invoke-virtual {p0, v2, v0, v3}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->showFdsToast(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    .end local v0    # "disk":I
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_0
.end method

.method public onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 2
    .param p1, "gameMenu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 68
    const v0, 0x7f080053

    const v1, 0x7f0200af

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 69
    const v0, 0x7f080055

    const v1, 0x7f0200b1

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 70
    const v0, 0x7f080054

    const v1, 0x7f0200a3

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 71
    const v0, 0x7f080058

    const v1, 0x7f02009b

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 73
    return-void
.end method

.method showFdsToast(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "disk"    # I
    .param p3, "suffix"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0xff

    if-ne p2, v2, :cond_0

    .line 142
    const-string v0, "Disk ejected"

    .line 149
    :goto_0
    move-object v1, v0

    .line 150
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;

    invoke-direct {v2, p0, v1}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity$1;-><init>(Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/nes1/NesEmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 157
    return-void

    .line 145
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " disk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    shr-int/lit8 v3, p2, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Side: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 146
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_1

    const-string v2, "A"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 146
    :cond_1
    const-string v2, "B"

    goto :goto_1
.end method
