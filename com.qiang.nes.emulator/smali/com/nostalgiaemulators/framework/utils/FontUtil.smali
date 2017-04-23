.class public Lcom/nostalgiaemulators/framework/utils/FontUtil;
.super Ljava/lang/Object;
.source "FontUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.FontUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const-string v0, "Roboto-BoldCondensed.ttf"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFontFace(Landroid/content/Context;Z)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "force"    # Z

    .prologue
    .line 38
    const-string v0, "Roboto-BoldCondensed.ttf"

    invoke-static {v0, p0, p1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static createFontFace(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Typeface;
    .locals 11
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "force"    # Z

    .prologue
    .line 47
    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->useSystemFont(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 48
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 101
    :goto_0
    return-object v5

    .line 51
    :cond_0
    const/4 v9, 0x1

    invoke-static {p1, v9}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->getExternalCacheDir(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v1

    .line 52
    .local v1, "cacheDir":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 56
    const/4 v8, 0x0

    .line 57
    .local v8, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 60
    .local v6, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    invoke-virtual {v9, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 61
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_1
    new-array v0, v9, [B

    .line 63
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 65
    .local v2, "count":I
    :goto_1
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    const/4 v9, -0x1

    if-ne v2, v9, :cond_3

    .line 73
    if-eqz v8, :cond_1

    .line 74
    :try_start_2
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_1
    if-eqz v7, :cond_2

    .line 78
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 87
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    :cond_2
    :goto_2
    const/4 v5, 0x0

    .line 89
    .local v5, "font":Landroid/graphics/Typeface;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 91
    :try_start_3
    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    goto :goto_0

    .line 66
    .end local v5    # "font":Landroid/graphics/Typeface;
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :cond_3
    const/4 v9, 0x0

    :try_start_4
    invoke-virtual {v7, v0, v9, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 69
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    :catch_0
    move-exception v3

    move-object v6, v7

    .line 70
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/IOException;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    const-string v9, "com.nostalgiaemulators.framework.utils.FontUtil"

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    if-eqz v8, :cond_4

    .line 74
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_4
    if-eqz v6, :cond_2

    .line 78
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 82
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 83
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_4
    const-string v9, "com.nostalgiaemulators.framework.utils.FontUtil"

    const-string v10, ""

    invoke-static {v9, v10, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 72
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 73
    :goto_5
    if-eqz v8, :cond_5

    .line 74
    :try_start_7
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 77
    :cond_5
    if-eqz v6, :cond_6

    .line 78
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 80
    :cond_6
    throw v9
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 93
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v5    # "font":Landroid/graphics/Typeface;
    :catch_2
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/Exception;
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 97
    goto :goto_0

    .line 98
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    .line 82
    .end local v5    # "font":Landroid/graphics/Typeface;
    .restart local v0    # "buffer":[B
    .restart local v2    # "count":I
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 72
    .end local v0    # "buffer":[B
    .end local v2    # "count":I
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v6, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 69
    :catch_4
    move-exception v3

    goto :goto_3
.end method

.method public static createHintFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const-string v0, "Roboto-Regular.ttf"

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Ljava/lang/String;Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method
