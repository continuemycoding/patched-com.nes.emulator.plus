.class Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;
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
    name = "SaveStatesMigrator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/MigrationManager$SaveStatesMigrator;-><init>()V

    return-void
.end method


# virtual methods
.method public doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetDir"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, "sSource":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 69
    .local v2, "files":[Ljava/io/File;
    :try_start_0
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 81
    return-void

    .line 69
    :cond_0
    aget-object v1, v2, v6

    .line 70
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 69
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, p2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .local v3, "newFile":Ljava/io/File;
    invoke-static {v1, v3}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 78
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "newFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 85
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v5, "source":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 87
    .local v2, "files":[Ljava/io/File;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, "targetDir":Ljava/lang/String;
    :try_start_0
    array-length v8, v2

    const/4 v7, 0x0

    :goto_0
    if-lt v7, v8, :cond_0

    .line 103
    return-void

    .line 90
    :cond_0
    aget-object v1, v2, v7

    .line 91
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "name":Ljava/lang/String;
    const-string v9, ".state"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ".png"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 94
    const-string v9, ".sav"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, ".rom"

    invoke-virtual {v3, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .local v4, "newFile":Ljava/io/File;
    invoke-static {v1, v4}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v4    # "newFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method
