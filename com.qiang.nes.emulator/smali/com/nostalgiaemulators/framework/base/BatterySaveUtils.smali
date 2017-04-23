.class public Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;
.super Ljava/lang/Object;
.source "BatterySaveUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static createSavFileCopyIfNeeded(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameFilePath"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v2, "gameFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/nostalgiaemulators/framework/utils/Utils;->stripExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".sav"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .local v0, "batterySavFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_0

    .line 52
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getMD5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "sourceMD5":Ljava/lang/String;
    invoke-static {p0, v0, v3}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->needsRewrite(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .local v1, "copyFile":Ljava/io/File;
    :try_start_0
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 60
    invoke-static {p0, v0, v3}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->saveMD5Meta(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getBatterySaveDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gameFilePath"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "directory":Ljava/lang/String;
    move-object v0, v1

    .line 140
    .local v0, "batteryPath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v3

    .line 142
    .local v3, "isWriteable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    if-nez v4, :cond_0

    .line 143
    new-instance v4, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_sd_card_not_mounted:I

    invoke-direct {v4, v5}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v4

    .line 146
    :cond_0
    if-eqz v3, :cond_1

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v4

    .line 148
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 148
    if-eqz v4, :cond_2

    .line 149
    :cond_1
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 152
    :cond_2
    return-object v0
.end method

.method private static getMetaFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batterySavFile"    # Ljava/io/File;

    .prologue
    .line 132
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".meta"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static needsRewrite(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sourceBatteryFile"    # Ljava/io/File;
    .param p2, "sourceMD5"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 92
    const/4 v6, 0x0

    .line 93
    .local v6, "previousSourceMD5":Ljava/lang/String;
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->getMetaFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 94
    .local v5, "metaFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    .line 95
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    .line 94
    invoke-direct {v7, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .local v7, "targetFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v8

    .line 101
    :cond_1
    const/4 v3, 0x0

    .line 102
    .local v3, "fileReader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 105
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .local v4, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 107
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 114
    if-eqz v4, :cond_2

    .line 115
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 118
    :cond_2
    if-eqz v1, :cond_3

    .line 119
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 127
    :cond_3
    :goto_1
    const-string v9, "MD5"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "source: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " old: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    .line 109
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 114
    .local v2, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v3, :cond_4

    .line 115
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 118
    :cond_4
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 122
    :catch_1
    move-exception v9

    goto :goto_0

    .line 112
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 114
    :goto_3
    if-eqz v3, :cond_5

    .line 115
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 118
    :cond_5
    if-eqz v0, :cond_6

    .line 119
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 124
    :cond_6
    :goto_4
    throw v8

    .line 122
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_2
    move-exception v9

    goto :goto_1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 112
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_3

    .line 109
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "fileReader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "fileReader":Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v3, v4

    .end local v4    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "fileReader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private static saveMD5Meta(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "batterySavFile"    # Ljava/io/File;
    .param p2, "md5"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/base/BatterySaveUtils;->getMetaFile(Landroid/content/Context;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 70
    .local v2, "metaFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 73
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 74
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 75
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v0    # "fw":Ljava/io/FileWriter;
    .local v1, "fw":Ljava/io/FileWriter;
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 88
    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v3

    .line 81
    :goto_1
    if-eqz v0, :cond_0

    .line 82
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 85
    :catch_1
    move-exception v3

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v3

    .line 81
    :goto_2
    if-eqz v0, :cond_1

    .line 82
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 87
    :cond_1
    :goto_3
    throw v3

    .line 85
    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_2
    move-exception v3

    move-object v0, v1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    goto :goto_0

    :catch_3
    move-exception v4

    goto :goto_3

    .line 79
    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    goto :goto_2

    .line 78
    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :catch_4
    move-exception v3

    move-object v0, v1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    goto :goto_1

    .end local v0    # "fw":Ljava/io/FileWriter;
    .restart local v1    # "fw":Ljava/io/FileWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "fw":Ljava/io/FileWriter;
    .restart local v0    # "fw":Ljava/io/FileWriter;
    goto :goto_0
.end method
