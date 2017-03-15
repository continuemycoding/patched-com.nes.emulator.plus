.class public Lcom/nostalgiaemulators/framework/base/SlotUtils;
.super Ljava/lang/Object;
.source "SlotUtils.java"


# static fields
.field public static final NUM_SLOTS:I = 0x8

.field private static final SCREENSHOT_SUFFIX:Ljava/lang/String; = ".png"

.field private static final SLOT_SUFFIX:Ljava/lang/String; = ".state"

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.SlotUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static autoSaveExists(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static createPackFile(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/SlotInfo;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Ljava/io/File;
    .locals 16
    .param p0, "context"    # Landroid/app/Activity;
    .param p1, "info"    # Lcom/nostalgiaemulators/framework/SlotInfo;
    .param p2, "desc"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/SlotInfo;->path:Ljava/lang/String;

    .line 146
    .local v12, "slotFilePath":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v13, "."

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v13

    check-cast v13, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 148
    invoke-virtual {v13}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackFileSuffix()Ljava/lang/String;

    move-result-object v13

    .line 147
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 146
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 149
    .local v9, "packFileSuffix":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v13

    .line 150
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 149
    invoke-direct {v8, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 151
    .local v8, "outFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 152
    new-instance v4, Ljava/io/DataOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    .line 153
    invoke-direct {v13, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 152
    invoke-direct {v4, v13}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 154
    .local v4, "dos":Ljava/io/DataOutputStream;
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 155
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v11, "slotFile":Ljava/io/File;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 157
    .local v7, "json":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v10, "root":Lorg/json/JSONObject;
    const-string v13, "format-description"

    const-string v14, "nostalgia slot fileformat"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v13, "format-version"

    const/4 v14, 0x1

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 160
    const-string v13, "game-name"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v13, "game-hash"

    move-object/from16 v0, p2

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v13, "slot-size"

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v10, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    const-string v13, "screenshot-included"

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 164
    const-string v13, "nness"

    invoke-virtual {v7, v13, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 166
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 167
    .local v6, "fis":Ljava/io/FileInputStream;
    const/16 v13, 0x400

    new-array v2, v13, [B

    .line 168
    .local v2, "buffer":[B
    const/4 v3, 0x0

    .line 170
    .local v3, "count":I
    :goto_0
    invoke-virtual {v6, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v13, -0x1

    if-ne v3, v13, :cond_0

    .line 174
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 175
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 176
    return-object v8

    .line 171
    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v4, v2, v13, v3}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v2    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "json":Lorg/json/JSONObject;
    .end local v8    # "outFile":Ljava/io/File;
    .end local v9    # "packFileSuffix":Ljava/lang/String;
    .end local v10    # "root":Lorg/json/JSONObject;
    .end local v11    # "slotFile":Ljava/io/File;
    .end local v12    # "slotFilePath":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 179
    .local v5, "e":Lorg/json/JSONException;
    const-string v13, "com.nostalgiaemulators.framework.base.SlotUtils"

    const-string v14, "Tohle se nema jak stat"

    invoke-static {v13, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    throw v5
.end method

.method public static getAutoSaveSlot(Ljava/lang/String;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/SlotInfo;
    .locals 1
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlot(Ljava/lang/String;Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/SlotInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getGameDataFilePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScreenshotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getGameDataFilePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlot(Ljava/lang/String;Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/SlotInfo;
    .locals 13
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "idx"    # I

    .prologue
    .line 89
    new-instance v9, Lcom/nostalgiaemulators/framework/SlotInfo;

    invoke-direct {v9}, Lcom/nostalgiaemulators/framework/SlotInfo;-><init>()V

    .line 90
    .local v9, "slot":Lcom/nostalgiaemulators/framework/SlotInfo;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 91
    .local v7, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    iput-boolean v10, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    .line 93
    iget-boolean v10, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    if-eqz v10, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    :goto_0
    iput-wide v10, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->lastModified:J

    .line 94
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->path:Ljava/lang/String;

    .line 95
    iput p2, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->id:I

    .line 97
    iget-boolean v10, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->isUsed:Z

    if-eqz v10, :cond_0

    .line 98
    new-instance v8, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v8, "screenShot":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 102
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .line 108
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 106
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 110
    .local v5, "newScreenshot":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 111
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 112
    .local v1, "c":Landroid/graphics/Canvas;
    const/16 v10, 0x14

    new-array v4, v10, [F

    fill-array-data v4, :array_0

    .line 118
    .local v4, "matrix":[F
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 119
    .local v6, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 121
    new-instance v10, Landroid/graphics/ColorMatrixColorFilter;

    .line 122
    new-instance v11, Landroid/graphics/ColorMatrix;

    invoke-direct {v11, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-direct {v10, v11}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 121
    invoke-virtual {v6, v10}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 123
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v1, v0, v10, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 124
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 125
    iput-object v5, v9, Lcom/nostalgiaemulators/framework/SlotInfo;->screenShot:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "c":Landroid/graphics/Canvas;
    .end local v4    # "matrix":[F
    .end local v5    # "newScreenshot":Landroid/graphics/Bitmap;
    .end local v6    # "paint":Landroid/graphics/Paint;
    .end local v8    # "screenShot":Ljava/io/File;
    :cond_0
    :goto_1
    return-object v9

    .line 93
    :cond_1
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 129
    .restart local v8    # "screenShot":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    const-string v10, "com.nostalgiaemulators.framework.base.SlotUtils"

    const-string v11, ""

    invoke-static {v10, v11, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 112
    nop

    :array_0
    .array-data 4
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x3e991687    # 0.299f
        0x3f1645a2    # 0.587f
        0x3de978d5    # 0.114f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method public static getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getGameDataFilePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".state"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSlots(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "md5"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/SlotInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/SlotInfo;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x9

    if-lt v0, v3, :cond_0

    .line 71
    return-object v1

    .line 67
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlot(Ljava/lang/String;Ljava/lang/String;I)Lcom/nostalgiaemulators/framework/SlotInfo;

    move-result-object v2

    .line 68
    .local v2, "slot":Lcom/nostalgiaemulators/framework/SlotInfo;
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static unpackFile(Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 12
    .param p0, "baseDir"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 187
    const-string v9, "com.nostalgiaemulators.framework.base.SlotUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "import file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 189
    .local v3, "is":Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    .line 190
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 191
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "jsonTxt":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, "json":Lorg/json/JSONObject;
    const-string v9, "nness"

    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 194
    .local v7, "root":Lorg/json/JSONObject;
    const-string v9, "game-name"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "gameName":Ljava/lang/String;
    const-string v9, "game-hash"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "gameHash":Ljava/lang/String;
    const-string v9, "com.nostalgiaemulators.framework.base.SlotUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "game:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " gameHash:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    invoke-static {p0, v1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getAutoSaveSlot(Ljava/lang/String;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/SlotInfo;

    move-result-object v8

    .line 198
    .local v8, "slotInfo":Lcom/nostalgiaemulators/framework/SlotInfo;
    new-instance v6, Ljava/io/File;

    iget-object v9, v8, Lcom/nostalgiaemulators/framework/SlotInfo;->path:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .local v6, "outFileName":Ljava/io/File;
    invoke-static {v3, v6}, Lcom/nostalgiaemulators/framework/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/io/File;)V

    .line 200
    const-string v9, "com.nostalgiaemulators.framework.base.SlotUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "file copy to "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-object v1
.end method
