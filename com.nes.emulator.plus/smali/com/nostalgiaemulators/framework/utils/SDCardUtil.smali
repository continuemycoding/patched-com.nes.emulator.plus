.class public Lcom/nostalgiaemulators/framework/utils/SDCardUtil;
.super Ljava/lang/Object;
.source "SDCardUtil.java"


# static fields
.field public static final EXTERNAL_SD_CARD:Ljava/lang/String; = "externalSdCard"

.field public static final SD_CARD:Ljava/lang/String; = "sdCard"

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.SDCardUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllStorageLocations()Ljava/util/HashSet;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 30
    .local v10, "sdcards":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v11, "/mnt/sdcard"

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v11, "/proc/mounts"

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v5, "mountFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 35
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v5}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 36
    .local v9, "scanner":Ljava/util/Scanner;
    :cond_0
    :goto_0
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_3

    .line 58
    .end local v5    # "mountFile":Ljava/io/File;
    .end local v9    # "scanner":Ljava/util/Scanner;
    :cond_1
    :goto_1
    :try_start_1
    invoke-static {v10}, Lcom/nostalgiaemulators/framework/utils/SDCardUtil;->getSDCardsPaths1(Ljava/util/HashSet;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    :goto_2
    :try_start_2
    invoke-static {v10}, Lcom/nostalgiaemulators/framework/utils/SDCardUtil;->getSDCardsPaths2(Ljava/util/HashSet;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    :goto_3
    :try_start_3
    invoke-static {v10}, Lcom/nostalgiaemulators/framework/utils/SDCardUtil;->getSDCardsPaths3(Ljava/util/HashSet;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 73
    :goto_4
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v11

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 75
    .local v7, "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_5

    .line 85
    return-object v7

    .line 37
    .end local v7    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    .restart local v5    # "mountFile":Ljava/io/File;
    .restart local v9    # "scanner":Ljava/util/Scanner;
    :cond_3
    :try_start_4
    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, "lineLower":Ljava/lang/String;
    const-string v11, "vfat"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 44
    const-string v11, "exfat"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 45
    const-string v11, "fuse"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 46
    const-string v11, "sdcardfs"

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 47
    :cond_4
    const-string v11, " "

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, "lineElements":[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v6, v2, v11

    .line 49
    .local v6, "path":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 53
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "lineElements":[Ljava/lang/String;
    .end local v3    # "lineLower":Ljava/lang/String;
    .end local v5    # "mountFile":Ljava/io/File;
    .end local v6    # "path":Ljava/lang/String;
    .end local v9    # "scanner":Ljava/util/Scanner;
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "com.nostalgiaemulators.framework.utils.SDCardUtil"

    const-string v12, ""

    invoke-static {v11, v12, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 59
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 60
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 64
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 65
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 69
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 70
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 75
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v7    # "result":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/io/File;>;"
    :cond_5
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 76
    .local v4, "mount":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 80
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    .local v8, "root":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 82
    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_5
.end method

.method private static getSDCardsPaths1(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v0, Ljava/io/File;

    const-string v3, "/storage"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 91
    .local v0, "mnt":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 92
    new-instance v0, Ljava/io/File;

    .end local v0    # "mnt":Ljava/io/File;
    const-string v3, "/mnt"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .restart local v0    # "mnt":Ljava/io/File;
    :cond_0
    new-instance v3, Lcom/nostalgiaemulators/framework/utils/SDCardUtil$1;

    invoke-direct {v3}, Lcom/nostalgiaemulators/framework/utils/SDCardUtil$1;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 103
    .local v2, "roots":[Ljava/io/File;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_1

    .line 106
    return-void

    .line 103
    :cond_1
    aget-object v1, v2, v3

    .line 104
    .local v1, "root":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static getSDCardsPaths2(Ljava/util/HashSet;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/io/File;

    const-string v10, "/system/etc/vold.fstab"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v4, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 161
    .local v5, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 164
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "fr":Ljava/io/FileReader;
    .local v6, "fr":Ljava/io/FileReader;
    move-object v5, v6

    .line 170
    .end local v6    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :goto_0
    if-eqz v5, :cond_0

    .line 172
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "defaultExternalStorage":Ljava/lang/String;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    .line 175
    .local v8, "s":Ljava/lang/String;
    :goto_1
    if-nez v8, :cond_3

    move-object v0, v1

    .line 191
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "defaultExternalStorage":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_0
    if-eqz v5, :cond_1

    .line 192
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 194
    :cond_1
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 201
    :cond_2
    :goto_2
    return-void

    .line 165
    :catch_0
    move-exception v3

    .line 166
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "defaultExternalStorage":Ljava/lang/String;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_3
    :try_start_4
    const-string v10, "dev_mount"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 177
    const-string v10, "\\s"

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "tokens":[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v7, v9, v10

    .line 179
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 180
    invoke-virtual {p0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v7    # "path":Ljava/lang/String;
    .end local v9    # "tokens":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v8

    goto :goto_1

    .line 187
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "defaultExternalStorage":Ljava/lang/String;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 188
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    if-eqz v5, :cond_5

    .line 192
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 194
    :cond_5
    if-eqz v0, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 197
    :catch_2
    move-exception v3

    .line 198
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 191
    :goto_4
    if-eqz v5, :cond_6

    .line 192
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 194
    :cond_6
    if-eqz v0, :cond_7

    .line 195
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 200
    :cond_7
    :goto_5
    throw v10

    .line 197
    :catch_3
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 198
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "defaultExternalStorage":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_4

    .line 187
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private static getSDCardsPaths3(Ljava/util/HashSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 112
    .local v6, "state":Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 113
    const-string v7, "mounted_ro"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 125
    .local v5, "primaryExternalStorage":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .local v1, "externalStorageRootDir":Ljava/lang/String;
    if-nez v1, :cond_2

    .line 129
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v1    # "externalStorageRootDir":Ljava/lang/String;
    .end local v5    # "primaryExternalStorage":Ljava/io/File;
    :cond_1
    return-void

    .line 131
    .restart local v1    # "externalStorageRootDir":Ljava/lang/String;
    .restart local v5    # "primaryExternalStorage":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "externalStorageRoot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 135
    .local v3, "files":[Ljava/io/File;
    array-length v8, v3

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v2, v3, v7

    .line 136
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 140
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 141
    .local v4, "fs":[Ljava/io/File;
    if-eqz v4, :cond_3

    array-length v9, v4

    if-lez v9, :cond_3

    .line 144
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    .end local v4    # "fs":[Ljava/io/File;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static isSymlink(Ljava/io/File;)Z
    .locals 7
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x0

    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "canon":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 215
    move-object v0, p0

    .line 226
    :goto_0
    return v4

    .line 218
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, "canonDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v0    # "canon":Ljava/io/File;
    .local v1, "canon":Ljava/io/File;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    :goto_1
    move-object v0, v1

    .line 220
    .end local v1    # "canon":Ljava/io/File;
    .restart local v0    # "canon":Ljava/io/File;
    goto :goto_0

    .end local v0    # "canon":Ljava/io/File;
    .restart local v1    # "canon":Ljava/io/File;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    .line 222
    .end local v1    # "canon":Ljava/io/File;
    .end local v2    # "canonDir":Ljava/io/File;
    .restart local v0    # "canon":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 223
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_0

    .line 222
    .end local v0    # "canon":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "canon":Ljava/io/File;
    .restart local v2    # "canonDir":Ljava/io/File;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "canon":Ljava/io/File;
    .restart local v0    # "canon":Ljava/io/File;
    goto :goto_2
.end method
