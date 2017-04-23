.class public Lcom/nostalgiaemulators/framework/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;,
        Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;
    }
.end annotation


# static fields
.field private static final MD5_BYTES_COUNT:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.Utils"

.field private static size:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 281
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/utils/Utils;->size:Landroid/graphics/Point;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    return-void
.end method

.method public static checkGL20Support(Landroid/content/Context;)Z
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0xa

    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v11, 0x4

    .line 199
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 200
    .local v0, "egl":Ljavax/microedition/khronos/egl/EGL10;
    sget-object v10, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v10}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v1

    .line 201
    .local v1, "display":Ljavax/microedition/khronos/egl/EGLDisplay;
    new-array v7, v12, [I

    .line 202
    .local v7, "version":[I
    invoke-interface {v0, v1, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 203
    const/4 v6, 0x4

    .line 204
    .local v6, "EGL_OPENGL_ES2_BIT":I
    const/16 v10, 0x9

    new-array v2, v10, [I

    const/16 v10, 0x3024

    aput v10, v2, v9

    aput v11, v2, v8

    const/16 v10, 0x3023

    aput v10, v2, v12

    const/4 v10, 0x3

    aput v11, v2, v10

    .line 205
    const/16 v10, 0x3022

    aput v10, v2, v11

    const/4 v10, 0x5

    aput v11, v2, v10

    const/4 v10, 0x6

    const/16 v11, 0x3040

    aput v11, v2, v10

    const/4 v10, 0x7

    .line 206
    aput v6, v2, v10

    const/16 v10, 0x8

    const/16 v11, 0x3038

    aput v11, v2, v10

    .line 208
    .local v2, "configAttribs":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 209
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    new-array v5, v8, [I

    .line 210
    .local v5, "num_config":[I
    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 211
    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 212
    aget v4, v5, v9

    if-lez v4, :cond_0

    move v4, v8

    :goto_0
    return v4

    :cond_0
    move v4, v9

    goto :goto_0
.end method

.method private static countMD5(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 12
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    const/16 v10, 0x2800

    .line 139
    :try_start_0
    const-string v9, "MD5"

    invoke-static {v9}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 140
    .local v4, "md":Ljava/security/MessageDigest;
    const/16 v9, 0x2800

    new-array v0, v9, [B

    .line 141
    .local v0, "buffer":[B
    const/4 v5, 0x0

    .line 142
    .local v5, "readCount":I
    const/4 v7, 0x0

    .line 143
    .local v7, "totalCount":I
    const/4 v8, 0x0

    .line 145
    .local v8, "updateCount":I
    :cond_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_1

    .line 159
    :goto_0
    if-lt v7, v10, :cond_4

    .line 160
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 161
    .local v1, "digest":[B
    const-string v6, ""

    .line 163
    .local v6, "result":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v9, v1

    if-lt v3, v9, :cond_3

    .line 181
    .end local v0    # "buffer":[B
    .end local v1    # "digest":[B
    .end local v3    # "i":I
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "readCount":I
    .end local v6    # "result":Ljava/lang/String;
    .end local v7    # "totalCount":I
    .end local v8    # "updateCount":I
    :goto_2
    return-object v6

    .line 146
    .restart local v0    # "buffer":[B
    .restart local v4    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "readCount":I
    .restart local v7    # "totalCount":I
    .restart local v8    # "updateCount":I
    :cond_1
    move v8, v5

    .line 148
    add-int v9, v7, v5

    if-le v9, v10, :cond_2

    .line 149
    rsub-int v8, v7, 0x2800

    .line 152
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    .line 153
    add-int/2addr v7, v8

    .line 155
    if-lt v7, v10, :cond_0

    goto :goto_0

    .line 164
    .restart local v1    # "digest":[B
    .restart local v3    # "i":I
    .restart local v6    # "result":Ljava/lang/String;
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v10, v1, v3

    and-int/lit16 v10, v10, 0xff

    add-int/lit16 v10, v10, 0x100

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v10

    .line 165
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 164
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 171
    .end local v1    # "digest":[B
    .end local v3    # "i":I
    .end local v6    # "result":Ljava/lang/String;
    :cond_4
    const-string v6, "small file"

    goto :goto_2

    .line 174
    .end local v0    # "buffer":[B
    .end local v4    # "md":Ljava/security/MessageDigest;
    .end local v5    # "readCount":I
    .end local v7    # "totalCount":I
    .end local v8    # "updateCount":I
    :catch_0
    move-exception v2

    .line 175
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v9, "com.nostalgiaemulators.framework.utils.Utils"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 181
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_3
    const-string v6, ""

    goto :goto_2

    .line 177
    :catch_1
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/IOException;
    const-string v9, "com.nostalgiaemulators.framework.utils.Utils"

    const-string v10, ""

    invoke-static {v9, v10, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static createScreenshotBitmap(Landroid/content/Context;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Z)Landroid/graphics/Bitmap;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .param p2, "watermark"    # Z

    .prologue
    .line 460
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    const/4 v15, 0x0

    .line 459
    invoke-static {v13, v14, v15}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getScreenshotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "path":Ljava/lang/String;
    invoke-static {v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 462
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 463
    .local v12, "w":I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 464
    .local v5, "h":I
    mul-int/lit8 v8, v12, 0x2

    .line 465
    .local v8, "newW":I
    mul-int/lit8 v7, v5, 0x2

    .line 466
    .local v7, "newH":I
    new-instance v4, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v4, v13, v14, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 467
    .local v4, "from":Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v13, v14, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 468
    .local v11, "to":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    mul-int/lit8 v13, v13, 0x2

    .line 469
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    mul-int/lit8 v14, v14, 0x2

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 468
    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 470
    .local v6, "largeBitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 471
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 472
    .local v9, "p":Landroid/graphics/Paint;
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setDither(Z)V

    .line 473
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 474
    invoke-virtual {v2, v1, v4, v11, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 476
    if-eqz p2, :cond_0

    .line 477
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 478
    sget-object v13, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 479
    const/high16 v13, 0x41f00000    # 30.0f

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 480
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 481
    .local v3, "font":Landroid/graphics/Typeface;
    invoke-virtual {v9, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 482
    const/high16 v13, 0x40800000    # 4.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, -0x1000000

    move/from16 v0, v16

    invoke-virtual {v9, v13, v14, v15, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 483
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/nostalgiaemulators/framework/R$string;->app_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 484
    add-int/lit8 v14, v8, -0xa

    int-to-float v14, v14

    add-int/lit8 v15, v7, -0xa

    int-to-float v15, v15

    .line 483
    invoke-virtual {v2, v13, v14, v15, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 487
    .end local v3    # "font":Landroid/graphics/Typeface;
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    return-object v6
.end method

.method public static extractFile(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .locals 9
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "entryName"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const-string v6, "com.nostalgiaemulators.framework.utils.Utils"

    .line 218
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "extract "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 219
    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 218
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 217
    invoke-static {v6, v7}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 221
    .local v4, "zipFile2":Ljava/util/zip/ZipFile;
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 223
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    if-eqz v3, :cond_0

    .line 224
    invoke-virtual {v4, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    .line 225
    .local v5, "zis":Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 226
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/16 v6, 0x800

    new-array v0, v6, [B

    .line 227
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 229
    .local v1, "count":I
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 233
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 234
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 235
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 237
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "zis":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 230
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "zis":Ljava/io/InputStream;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static getBroadcastAddress(Landroid/content/Context;)Ljava/net/InetAddress;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getNetPrefix(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".255"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "ip":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 346
    :goto_0
    return-object v2

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCrc(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p0, "dir"    # Ljava/lang/String;
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 186
    :try_start_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 187
    .local v4, "zf":Ljava/util/zip/ZipFile;
    invoke-virtual {v4, p1}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    .line 188
    .local v3, "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getCrc()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 192
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v4    # "zf":Ljava/util/zip/ZipFile;
    :goto_0
    return-wide v0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    .local v2, "e":Ljava/lang/Exception;
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static getDeviceType(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 269
    const-string v1, "android.hardware.telephony"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 269
    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    .line 277
    :goto_0
    return-object v0

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 273
    const-string v1, "android.hardware.touchscreen"

    .line 272
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 273
    if-eqz v0, :cond_1

    .line 274
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tablet:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    goto :goto_0

    .line 277
    :cond_1
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->tv:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    goto :goto_0
.end method

.method public static getDisplayHeight(Landroid/view/Display;)I
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 298
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 299
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils;->size:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 300
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 303
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public static getDisplayWidth(Landroid/view/Display;)I
    .locals 2
    .param p0, "display"    # Landroid/view/Display;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-lt v0, v1, :cond_0

    .line 287
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils;->size:Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 288
    sget-object v0, Lcom/nostalgiaemulators/framework/utils/Utils;->size:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 291
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public static getExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 253
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 255
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 256
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static getIP()Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    .locals 17
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 372
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x9

    if-le v12, v13, :cond_5

    .line 374
    :try_start_0
    new-instance v10, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;

    invoke-direct {v10}, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;-><init>()V

    .line 376
    .local v10, "result":Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    .line 378
    .local v4, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    if-nez v13, :cond_1

    .line 419
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    :goto_0
    new-instance v10, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;

    .end local v10    # "result":Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    invoke-direct {v10}, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;-><init>()V

    .line 422
    :goto_1
    return-object v10

    .line 378
    .restart local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v10    # "result":Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    :cond_1
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/NetworkInterface;

    .line 380
    .local v5, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v13

    .line 379
    invoke-static {v13}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 381
    .local v2, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    const/4 v8, 0x0

    .line 383
    .local v8, "j":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 384
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v14

    if-nez v14, :cond_4

    .line 385
    const v9, 0x7fffffff

    .line 388
    .local v9, "prefixLen":I
    invoke-virtual {v5}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 387
    :cond_2
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_3

    .line 395
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v11

    .line 396
    .local v11, "sAddr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    .line 397
    .local v6, "ip":[B
    const/4 v14, 0x0

    aget-byte v14, v6, v14

    shl-int/lit8 v14, v14, 0x18

    const/high16 v15, -0x1000000

    and-int/2addr v14, v15

    .line 398
    const/4 v15, 0x1

    aget-byte v15, v6, v15

    shl-int/lit8 v15, v15, 0x10

    const/high16 v16, 0xff0000

    and-int v15, v15, v16

    .line 397
    or-int/2addr v14, v15

    .line 399
    const/4 v15, 0x2

    aget-byte v15, v6, v15

    shl-int/lit8 v15, v15, 0x8

    const v16, 0xff00

    and-int v15, v15, v16

    .line 397
    or-int/2addr v14, v15

    .line 400
    const/4 v15, 0x3

    aget-byte v15, v6, v15

    shl-int/lit8 v15, v15, 0x0

    and-int/lit16 v15, v15, 0xff

    .line 397
    or-int v3, v14, v15

    .line 402
    .local v3, "iAddr":I
    invoke-static {v11}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v7

    .line 404
    .local v7, "isIPv4":Z
    if-eqz v7, :cond_4

    .line 405
    iput-object v11, v10, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->sAddress:Ljava/lang/String;

    .line 406
    iput v3, v10, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->address:I

    .line 407
    invoke-virtual {v10, v9}, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->setPrefixLen(I)V

    goto :goto_1

    .line 416
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "iAddr":I
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    .end local v6    # "ip":[B
    .end local v7    # "isIPv4":Z
    .end local v8    # "j":I
    .end local v9    # "prefixLen":I
    .end local v11    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v12

    goto :goto_0

    .line 388
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .restart local v5    # "intf":Ljava/net/NetworkInterface;
    .restart local v8    # "j":I
    .restart local v9    # "prefixLen":I
    :cond_3
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 389
    .local v1, "address":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v15

    if-ge v15, v9, :cond_2

    .line 391
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v9

    .line 390
    goto :goto_3

    .line 412
    .end local v1    # "address":Ljava/net/InterfaceAddress;
    .end local v9    # "prefixLen":I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 422
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v2    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v4    # "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    .end local v5    # "intf":Ljava/net/NetworkInterface;
    .end local v8    # "j":I
    .end local v10    # "result":Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1
.end method

.method public static getIpAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 445
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 444
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 446
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 447
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 448
    .local v0, "ip":I
    const-string v4, "%d.%d.%d.%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    and-int/lit16 v7, v0, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 449
    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v7, v0, 0x10

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    shr-int/lit8 v7, v0, 0x18

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 448
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .end local v0    # "ip":I
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/utils/Utils;->getIP()Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;

    move-result-object v4

    iget-object v1, v4, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->sAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getMD5Checksum(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 114
    .local v1, "fis":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    .end local v1    # "fis":Ljava/io/InputStream;
    .local v2, "fis":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/utils/Utils;->countMD5(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 122
    if-eqz v2, :cond_0

    .line 123
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    move-object v1, v2

    .line 129
    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v1    # "fis":Ljava/io/InputStream;
    :goto_1
    return-object v3

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v3, "com.nostalgiaemulators.framework.utils.Utils"

    const-string v4, ""

    invoke-static {v3, v4, v0}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    if-eqz v1, :cond_1

    .line 123
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 129
    :cond_1
    :goto_3
    const-string v3, ""

    goto :goto_1

    .line 120
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 122
    :goto_4
    if-eqz v1, :cond_2

    .line 123
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 127
    :cond_2
    :goto_5
    throw v3

    .line 125
    .end local v1    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catch_1
    move-exception v4

    goto :goto_0

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "fis":Ljava/io/InputStream;
    :catch_2
    move-exception v3

    goto :goto_3

    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    goto :goto_5

    .line 120
    .end local v1    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v1    # "fis":Ljava/io/InputStream;
    goto :goto_4

    .line 117
    .end local v1    # "fis":Ljava/io/InputStream;
    .restart local v2    # "fis":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fis":Ljava/io/InputStream;
    .restart local v1    # "fis":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getMD5Checksum(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .param p0, "zis"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->countMD5(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNetPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 426
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x9

    if-ge v4, v5, :cond_0

    .line 428
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 427
    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 429
    .local v3, "wifii":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 430
    .local v0, "d":Landroid/net/DhcpInfo;
    iget v4, v0, Landroid/net/DhcpInfo;->netmask:I

    iget v5, v0, Landroid/net/DhcpInfo;->ipAddress:I

    and-int v2, v4, v5

    .line 431
    .local v2, "prefix":I
    new-instance v4, Ljava/lang/StringBuilder;

    and-int/lit16 v5, v2, 0xff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 432
    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 431
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 437
    .end local v0    # "d":Landroid/net/DhcpInfo;
    .end local v3    # "wifii":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v4

    .line 435
    .end local v2    # "prefix":I
    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/utils/Utils;->getIP()Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;

    move-result-object v1

    .line 436
    .local v1, "info":Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;
    iget v4, v1, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->address:I

    iget v5, v1, Lcom/nostalgiaemulators/framework/utils/Utils$IpInfo;->netmask:I

    and-int v2, v4, v5

    .line 437
    .restart local v2    # "prefix":I
    new-instance v4, Ljava/lang/StringBuilder;

    shr-int/lit8 v5, v2, 0x18

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x10

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 438
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 437
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static isAdvertisingVersion(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 493
    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 493
    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 495
    .local v0, "ea":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v1

    return v1
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-eqz p0, :cond_0

    .line 90
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 91
    const/4 v4, 0x1

    .line 90
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 94
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 89
    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    .line 94
    goto :goto_0
.end method

.method public static isBeta(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 514
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 515
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 514
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 516
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "beta"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 519
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return v2

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "debuggable":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 314
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 313
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 315
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 320
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return v1

    .restart local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    move v1, v3

    .line 315
    goto :goto_0

    .line 317
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 503
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 505
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000

    .line 504
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 506
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 324
    .line 325
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 324
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 327
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 328
    .local v0, "activeNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWifiAvailable(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 332
    .line 333
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 332
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 334
    .local v1, "wifii":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 335
    .local v0, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v2, v3

    .line 336
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v5

    if-eqz v5, :cond_1

    .line 335
    :goto_1
    and-int/2addr v2, v3

    return v2

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    move v3, v4

    .line 336
    goto :goto_1
.end method

.method public static removeExt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 241
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 243
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 247
    .end local p0    # "fileName":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public static sendSilentException(Landroid/content/Context;Ljava/lang/Exception;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 525
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    .line 528
    :cond_0
    return-void
.end method

.method public static stripExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 99
    if-nez p0, :cond_1

    .line 100
    const/4 p0, 0x0

    .line 107
    .end local p0    # "str":Ljava/lang/String;
    .local v0, "pos":I
    :cond_0
    :goto_0
    return-object p0

    .line 102
    .end local v0    # "pos":I
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 104
    .restart local v0    # "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 107
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
