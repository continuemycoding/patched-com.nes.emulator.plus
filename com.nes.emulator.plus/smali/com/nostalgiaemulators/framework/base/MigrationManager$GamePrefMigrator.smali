.class Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;
.super Ljava/lang/Object;
.source "MigrationManager.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/Migrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/MigrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GamePrefMigrator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;-><init>()V

    return-void
.end method

.method private doImport(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "baseDir"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "importSuffix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 134
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, "dir":Ljava/io/File;
    new-instance v5, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;

    invoke-direct {v5, p0, p3}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator$1;-><init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "files":[Ljava/lang/String;
    array-length v7, v2

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 149
    return-void

    .line 142
    :cond_0
    aget-object v1, v2, v5

    .line 143
    .local v1, "file":Ljava/lang/String;
    move-object v4, v1

    .line 144
    .local v4, "prefName":Ljava/lang/String;
    invoke-virtual {p2, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 146
    .local v3, "pref":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    sget-object v9, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->FAIL:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 146
    invoke-static {v3, v8, v9}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->importPreferences(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 111
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 112
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/RomsFinder;->getAllGames(Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;)Ljava/util/ArrayList;

    move-result-object v2

    .line 114
    .local v2, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 124
    return-void

    .line 114
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 116
    .local v1, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".cheats"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p1, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 117
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    const-string v7, ".cheats"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 117
    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->exportPreferences(Landroid/content/SharedPreferences;Ljava/io/File;)V

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".gamepref"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-virtual {p1, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 121
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    const-string v7, ".gamepref"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 121
    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->exportPreferences(Landroid/content/SharedPreferences;Ljava/io/File;)V

    goto :goto_0
.end method

.method public doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, ".cheats"

    invoke-direct {p0, p2, p1, v0}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;->doImport(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    const-string v0, ".gamepref"

    invoke-direct {p0, p2, p1, v0}, Lcom/nostalgiaemulators/framework/base/MigrationManager$GamePrefMigrator;->doImport(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 130
    return-void
.end method
