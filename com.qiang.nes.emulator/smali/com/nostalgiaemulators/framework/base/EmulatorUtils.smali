.class public Lcom/nostalgiaemulators/framework/base/EmulatorUtils;
.super Ljava/lang/Object;
.source "EmulatorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBaseDir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static tryChangeWorkingDir(Landroid/content/Context;Ljava/io/File;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parentDir"    # Ljava/io/File;

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 33
    const/4 v6, 0x0

    .line 34
    .local v6, "isReset":Z
    const/4 v5, 0x0

    .line 36
    .local v5, "fullWorkingDir":Ljava/io/File;
    if-nez p1, :cond_3

    .line 37
    const/4 v6, 0x1

    .line 38
    invoke-virtual {p0, v13}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 40
    .local v0, "baseDir":Ljava/io/File;
    if-nez v0, :cond_1

    .line 113
    .end local v0    # "baseDir":Ljava/io/File;
    :cond_0
    :goto_0
    return v9

    .line 44
    .restart local v0    # "baseDir":Ljava/io/File;
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 50
    :cond_2
    move-object v5, v0

    .line 53
    .end local v0    # "baseDir":Ljava/io/File;
    :cond_3
    if-nez v6, :cond_5

    .line 54
    new-instance v5, Ljava/io/File;

    .end local v5    # "fullWorkingDir":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 54
    invoke-direct {v5, v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .restart local v5    # "fullWorkingDir":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.nostalgiaemulators."

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 58
    const-string v11, "Cannot create nested working dir"

    invoke-static {p0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 59
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 67
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    .line 68
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_5

    .line 69
    invoke-static {p0, v13}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWorkingDirParent(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Cannot create working dir in "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 70
    invoke-static {p0, v11, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    .line 72
    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    :cond_5
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isWorkingDirCopyContent(Landroid/content/Context;)Z

    move-result v1

    .line 80
    .local v1, "copyContent":Z
    if-eqz v1, :cond_6

    .line 81
    new-instance v8, Ljava/io/File;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v8, "previousWorkingDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 85
    .local v4, "files":[Ljava/io/File;
    :try_start_0
    array-length v11, v4

    :goto_1
    if-lt v9, v11, :cond_7

    .line 95
    const-string v9, "Files succesfully copied to new working directory"

    .line 96
    const/4 v11, 0x1

    .line 94
    invoke-static {p0, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 96
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v4    # "files":[Ljava/io/File;
    .end local v8    # "previousWorkingDir":Ljava/io/File;
    :cond_6
    :goto_2
    if-nez v6, :cond_9

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-static {p0, v9}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWorkingDirParent(Landroid/content/Context;Ljava/lang/String;)V

    :goto_3
    move v9, v10

    .line 113
    goto/16 :goto_0

    .line 85
    .restart local v4    # "files":[Ljava/io/File;
    .restart local v8    # "previousWorkingDir":Ljava/io/File;
    :cond_7
    :try_start_1
    aget-object v3, v4, v9

    .line 86
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 85
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 90
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v5, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v7, "newFile":Ljava/io/File;
    invoke-static {v3, v7}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 98
    .end local v3    # "file":Ljava/io/File;
    .end local v7    # "newFile":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Exception;
    const-string v9, "Error copying files to new working directory"

    .line 99
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 101
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 110
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "files":[Ljava/io/File;
    .end local v8    # "previousWorkingDir":Ljava/io/File;
    :cond_9
    invoke-static {p0, v13}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWorkingDirParent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3
.end method
