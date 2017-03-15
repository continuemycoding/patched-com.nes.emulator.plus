.class public abstract Lcom/nostalgiaemulators/framework/base/JniEmulator;
.super Ljava/lang/Object;
.source "JniEmulator.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/Emulator;


# static fields
.field private static final SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.JniEmulator"

.field private static md5s:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private audioBufferLens:[I

.field private audioBuffers:[[S

.field private baseDir:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private cur:I

.field private fastForward:Z

.field private gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

.field private gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

.field private jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

.field private keys:I

.field listener:Lcom/nostalgiaemulators/framework/FrameListener;

.field private loadFailed:Z

.field private loadLock:Ljava/lang/Object;

.field private numFastForwardFrames:I

.field paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field ready:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sfx:Lcom/nostalgiaemulators/framework/SfxProfile;

.field private sfxBuffer:[S

.field private sfxLock:Ljava/lang/Object;

.field startTime:J

.field private track:Landroid/media/AudioTrack;

.field private turbos:I

.field private useOpenGL:Z

.field private viewPortHeight:I

.field private viewPortLock:Ljava/lang/Object;

.field private viewPortWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 617
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->md5s:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 166
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 299
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadFailed:Z

    .line 380
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    .line 504
    iput v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->cur:I

    .line 505
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    .line 531
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->startTime:J

    .line 560
    const/high16 v0, 0x10000

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    .line 561
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    .line 628
    const/4 v0, -0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->turbos:I

    .line 629
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortLock:Ljava/lang/Object;

    .line 51
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getBridge()Lcom/nostalgiaemulators/framework/base/JniBridge;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    .line 52
    return-void
.end method

.method private createBitmap(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 564
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 568
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    .line 569
    return-void
.end method

.method private getMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 605
    if-nez p1, :cond_0

    .line 606
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getLoadedGame()Lcom/nostalgiaemulators/framework/GameInfo;

    move-result-object v1

    iget-object p1, v1, Lcom/nostalgiaemulators/framework/GameInfo;->path:Ljava/lang/String;

    .line 609
    :cond_0
    sget-object v1, Lcom/nostalgiaemulators/framework/base/JniEmulator;->md5s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 610
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/Utils;->getMD5Checksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 611
    .local v0, "md5":Ljava/lang/String;
    sget-object v1, Lcom/nostalgiaemulators/framework/base/JniEmulator;->md5s:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    .end local v0    # "md5":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/nostalgiaemulators/framework/base/JniEmulator;->md5s:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private initSound(Lcom/nostalgiaemulators/framework/SfxProfile;)V
    .locals 10
    .param p1, "sfx"    # Lcom/nostalgiaemulators/framework/SfxProfile;

    .prologue
    const/4 v4, 0x3

    .line 572
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    monitor-enter v9

    .line 573
    :try_start_0
    iget-boolean v0, p1, Lcom/nostalgiaemulators/framework/SfxProfile;->isStereo:Z

    if-eqz v0, :cond_0

    const/16 v3, 0xc

    .line 575
    .local v3, "format":I
    :goto_0
    iget-object v0, p1, Lcom/nostalgiaemulators/framework/SfxProfile;->encoding:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    sget-object v1, Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;->PCM8:Lcom/nostalgiaemulators/framework/SfxProfile$SoundEncoding;

    if-ne v0, v1, :cond_1

    .line 577
    .local v4, "encoding":I
    :goto_1
    iget v0, p1, Lcom/nostalgiaemulators/framework/SfxProfile;->rate:I

    invoke-static {v0, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    .line 580
    .local v5, "minSize":I
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 581
    :try_start_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    const/4 v2, 0x0

    const/4 v6, 0x0

    aput v6, v0, v2

    .line 582
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    const/4 v2, 0x1

    const/4 v6, 0x0

    aput v6, v0, v2

    .line 584
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/high16 v0, 0x10000

    if-lt v8, v0, :cond_2

    .line 580
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :try_start_2
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    iget v2, p1, Lcom/nostalgiaemulators/framework/SfxProfile;->rate:I

    .line 591
    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 590
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 594
    :try_start_3
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 600
    :try_start_4
    const-string v0, "com.nostalgiaemulators.framework.base.JniEmulator"

    const-string v1, "sound init OK"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 602
    return-void

    .line 574
    .end local v3    # "format":I
    .end local v4    # "encoding":I
    .end local v5    # "minSize":I
    .end local v8    # "i":I
    :cond_0
    const/4 v3, 0x4

    goto :goto_0

    .line 576
    .restart local v3    # "format":I
    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 585
    .restart local v4    # "encoding":I
    .restart local v5    # "minSize":I
    .restart local v8    # "i":I
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    const/4 v2, 0x0

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aput-short v2, v0, v8

    .line 586
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const/4 v2, 0x0

    aput-short v2, v0, v8

    .line 584
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 580
    .end local v8    # "i":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    .line 572
    .end local v3    # "format":I
    .end local v4    # "encoding":I
    .end local v5    # "minSize":I
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 596
    .restart local v3    # "format":I
    .restart local v4    # "encoding":I
    .restart local v5    # "minSize":I
    .restart local v8    # "i":I
    :catch_0
    move-exception v7

    .line 597
    .local v7, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "Sound init failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
.end method


# virtual methods
.method public abstract autoDetectGfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/GfxProfile;
.end method

.method public abstract autoDetectSfx(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)Lcom/nostalgiaemulators/framework/SfxProfile;
.end method

.method public draw(Landroid/graphics/Canvas;II)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 451
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->useOpenGL:Z

    if-eqz v0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 459
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    int-to-float v1, p2

    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public emulateFrame(I)V
    .locals 3
    .param p1, "numFramesToSkip"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->fastForward:Z

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    if-le p1, v0, :cond_2

    .line 413
    iget p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->numFastForwardFrames:I

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    iget v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->turbos:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->emulate(III)Z

    move-result v0

    if-nez v0, :cond_3

    .line 417
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "emulateframe failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->listener:Lcom/nostalgiaemulators/framework/FrameListener;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->listener:Lcom/nostalgiaemulators/framework/FrameListener;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/FrameListener;->onFrameReady()V

    goto :goto_0
.end method

.method public enableCheat(Ljava/lang/String;)V
    .locals 2
    .param p1, "gg"    # Ljava/lang/String;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->enableCheat(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v1, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_invalid_cheat:I

    invoke-direct {v0, v1, p1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 467
    :cond_0
    return-void
.end method

.method public enableRawCheat(III)V
    .locals 4
    .param p1, "addr"    # I
    .param p2, "val"    # I
    .param p3, "comp"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/base/JniBridge;->enableRawCheat(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v1, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_invalid_cheat:I

    .line 473
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 475
    :cond_0
    return-void
.end method

.method public fireZapper(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    .line 387
    cmpl-float v2, p1, v3

    if-eqz v2, :cond_0

    cmpl-float v2, p2, v3

    if-nez v2, :cond_1

    .line 388
    :cond_0
    const/4 v0, -0x1

    .line 389
    .local v0, "emuX":I
    const/4 v1, -0x1

    .line 396
    .local v1, "emuY":I
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v2, v0, v1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->fireZapper(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    new-instance v2, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v3, "firezapper failed"

    invoke-direct {v2, v3}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 392
    .end local v0    # "emuX":I
    .end local v1    # "emuY":I
    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v2

    iget v2, v2, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v0, v2

    .line 393
    .restart local v0    # "emuX":I
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v2

    iget v2, v2, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    .restart local v1    # "emuY":I
    goto :goto_0

    .line 399
    :cond_2
    return-void
.end method

.method public getActiveGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    return-object v0
.end method

.method public getActiveSfxProfile()Lcom/nostalgiaemulators/framework/SfxProfile;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfx:Lcom/nostalgiaemulators/framework/SfxProfile;

    return-object v0
.end method

.method public abstract getBridge()Lcom/nostalgiaemulators/framework/base/JniBridge;
.end method

.method public getHistoryItemCount()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/JniBridge;->getHistoryItemCount()I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLoadedGame()Lcom/nostalgiaemulators/framework/GameInfo;
    .locals 2

    .prologue
    .line 107
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    monitor-exit v1

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isGameLoaded()Z
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public loadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "batteryDir"    # Ljava/lang/String;
    .param p3, "batterySaveFullPath"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v1, p1, p2, p3}, Lcom/nostalgiaemulators/framework/base/JniBridge;->loadGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 250
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadFailed:Z

    .line 251
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 249
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    new-instance v1, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_load_game_failed:I

    invoke-direct {v1, v2}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v1

    .line 249
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 257
    :cond_0
    new-instance v0, Lcom/nostalgiaemulators/framework/GameInfo;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/GameInfo;-><init>()V

    .line 258
    .local v0, "gi":Lcom/nostalgiaemulators/framework/GameInfo;
    iput-object p1, v0, Lcom/nostalgiaemulators/framework/GameInfo;->path:Ljava/lang/String;

    .line 259
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/GameInfo;->md5:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v2

    .line 262
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadFailed:Z

    .line 263
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    .line 264
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 261
    monitor-exit v2

    .line 266
    return-void

    .line 261
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public loadHistoryState(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->loadHistoryState(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "load history state failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    return-void
.end method

.method public loadState(I)V
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 234
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->baseDir:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "fileName":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    :cond_0
    return-void

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v1, v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->loadState(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_load_state_failed:I

    invoke-direct {v1, v2}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v1
.end method

.method public onEmulationPaused()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 521
    :cond_0
    return-void
.end method

.method public onEmulationResumed()V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 513
    :cond_0
    return-void
.end method

.method public processCommand(Ljava/lang/String;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->processCommand(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "process command failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method public readPalette([I)V
    .locals 2
    .param p1, "result"    # [I

    .prologue
    .line 302
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 305
    :try_start_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    if-nez p1, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 302
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    if-eqz v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->readPalette([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 318
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "error reading palette"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_2
    return-void

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public readSfxData()V
    .locals 8

    .prologue
    .line 479
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_0

    .line 502
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxBuffer:[S

    invoke-virtual {v3, v4}, Lcom/nostalgiaemulators/framework/base/JniBridge;->readSfxBuffer([S)I

    move-result v1

    .line 487
    .local v1, "length":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    monitor-enter v4

    .line 488
    :try_start_0
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->cur:I

    .line 489
    .local v0, "back":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    aget v2, v3, v0

    .line 491
    .local v2, "slen":I
    if-lez v1, :cond_1

    .line 492
    add-int v3, v2, v1

    const/high16 v5, 0x10000

    if-ge v3, v5, :cond_2

    .line 493
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxBuffer:[S

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    aget-object v6, v6, v0

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    aput v1, v3, v0

    .line 487
    :cond_1
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "back":I
    .end local v2    # "slen":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 498
    .restart local v0    # "back":I
    .restart local v2    # "slen":I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    const/4 v5, 0x0

    aput v5, v3, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public renderGfx()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->render(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortWidth:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortHeight:I

    invoke-direct {p0, v0, v1}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->createBitmap(II)V

    .line 436
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->render(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 437
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "render failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    return-void
.end method

.method public renderGfxGL()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/JniBridge;->renderGL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "render failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_0
    return-void
.end method

.method public renderHistoryScreenshot(Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "pos"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/nostalgiaemulators/framework/base/JniBridge;->renderHistory(Landroid/graphics/Bitmap;III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "render history failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    return-void
.end method

.method public renderSfx()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 535
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    if-nez v3, :cond_1

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->cur:I

    .line 542
    .local v0, "cur":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    monitor-enter v3

    .line 543
    :try_start_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    aget v1, v4, v0

    .line 545
    .local v1, "slen":I
    if-lez v1, :cond_3

    .line 546
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBufferLens:[I

    const/4 v5, 0x0

    aput v5, v4, v0

    .line 547
    if-nez v0, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->cur:I

    .line 542
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    if-lez v1, :cond_0

    .line 552
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    monitor-enter v3

    .line 553
    :try_start_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->flush()V

    .line 554
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->audioBuffers:[[S

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v1}, Landroid/media/AudioTrack;->write([SII)I

    .line 552
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 542
    .end local v1    # "slen":I
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 154
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 151
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/JniBridge;->reset()Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "reset failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 163
    return-void
.end method

.method public resetKeys()V
    .locals 1

    .prologue
    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    .line 404
    return-void
.end method

.method public saveState(I)V
    .locals 12
    .param p1, "slot"    # I

    .prologue
    const/4 v10, 0x0

    .line 179
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->baseDir:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getSlotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "fileName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 183
    .local v6, "screen":Landroid/graphics/Bitmap;
    :try_start_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    iget v7, v7, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    .line 184
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    iget v8, v8, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 183
    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v6

    .line 189
    :goto_0
    if-eqz v6, :cond_0

    .line 190
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    iget v8, v8, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenWidth:I

    .line 191
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    iget v9, v9, Lcom/nostalgiaemulators/framework/GfxProfile;->originalScreenHeight:I

    .line 190
    invoke-virtual {v7, v6, v8, v9}, Lcom/nostalgiaemulators/framework/base/JniBridge;->renderVP(Landroid/graphics/Bitmap;II)Z

    move-result v7

    .line 191
    if-nez v7, :cond_0

    .line 192
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v8, Lcom/nostalgiaemulators/framework/R$string;->act_game_screenshot_failed:I

    invoke-direct {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v7

    .line 196
    :cond_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v7, v2, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->saveState(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 197
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v8, Lcom/nostalgiaemulators/framework/R$string;->act_emulator_save_state_failed:I

    invoke-direct {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v7

    .line 200
    :cond_1
    if-eqz v6, :cond_4

    .line 201
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->baseDir:Ljava/lang/String;

    .line 202
    invoke-direct {p0, v10}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 201
    invoke-static {v7, v8, p1}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->getScreenshotPath(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 203
    .local v5, "pngFileName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 206
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_2
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x3c

    invoke-virtual {v6, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 213
    if-eqz v4, :cond_2

    .line 215
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 216
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 223
    :cond_2
    :goto_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 224
    .local v1, "file":Ljava/io/File;
    const-string v7, "com.nostalgiaemulators.framework.base.JniEmulator"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SCREEN: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    return-void

    .line 209
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v8, Lcom/nostalgiaemulators/framework/R$string;->act_game_screenshot_failed:I

    invoke-direct {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 213
    :goto_3
    if-eqz v3, :cond_3

    .line 215
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 216
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 221
    :cond_3
    :goto_4
    throw v7

    .line 228
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "pngFileName":Ljava/lang/String;
    :cond_4
    new-instance v7, Lcom/nostalgiaemulators/framework/EmulatorException;

    sget v8, Lcom/nostalgiaemulators/framework/R$string;->act_game_screenshot_failed:I

    invoke-direct {v7, v8}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(I)V

    throw v7

    .line 218
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "pngFileName":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v8

    goto :goto_4

    .line 212
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 209
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 186
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v5    # "pngFileName":Ljava/lang/String;
    :catch_4
    move-exception v7

    goto/16 :goto_0
.end method

.method public setBaseDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->baseDir:Ljava/lang/String;

    .line 172
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/JniBridge;->setBaseDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "could not set base dir"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_0
    return-void
.end method

.method public setFastForwardEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 525
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->fastForward:Z

    .line 526
    return-void
.end method

.method public setFastForwardFrameCount(I)V
    .locals 0
    .param p1, "frames"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->numFastForwardFrames:I

    .line 71
    return-void
.end method

.method public setFrameListener(Lcom/nostalgiaemulators/framework/FrameListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/FrameListener;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->listener:Lcom/nostalgiaemulators/framework/FrameListener;

    .line 429
    return-void
.end method

.method public setKeyPressed(IIZ)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "key"    # I
    .param p3, "isPressed"    # Z

    .prologue
    .line 270
    mul-int/lit8 v0, p1, 0x8

    .line 272
    .local v0, "n":I
    const/16 v1, 0x3e8

    if-lt p2, v1, :cond_0

    .line 273
    add-int/lit16 p2, p2, -0x3e8

    .line 274
    invoke-virtual {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->setTurboEnabled(IIZ)V

    .line 277
    :cond_0
    if-eqz p3, :cond_1

    .line 278
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    shl-int v2, p2, v0

    or-int/2addr v1, v2

    iput v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_1
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    shl-int v2, p2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->keys:I

    goto :goto_0
.end method

.method public setTurboEnabled(IIZ)V
    .locals 3
    .param p1, "port"    # I
    .param p2, "key"    # I
    .param p3, "isEnabled"    # Z

    .prologue
    .line 286
    mul-int/lit8 v0, p1, 0x8

    .line 287
    .local v0, "n":I
    iget v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->turbos:I

    xor-int/lit8 v1, v2, -0x1

    .line 289
    .local v1, "t":I
    if-eqz p3, :cond_0

    .line 290
    shl-int v2, p2, v0

    or-int/2addr v1, v2

    .line 296
    :goto_0
    xor-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->turbos:I

    .line 297
    return-void

    .line 293
    :cond_0
    shl-int v2, p2, v0

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public setViewPortSize(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0, p1, p2}, Lcom/nostalgiaemulators/framework/base/JniBridge;->setViewPortSize(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "set view port size failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortLock:Ljava/lang/Object;

    monitor-enter v1

    .line 330
    :try_start_0
    iput p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortWidth:I

    .line 331
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->viewPortHeight:I

    .line 329
    monitor-exit v1

    .line 333
    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVolume(F)V
    .locals 4
    .param p1, "vol"    # F

    .prologue
    .line 336
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 338
    :try_start_0
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    sub-float/2addr v1, v3

    .line 337
    mul-float/2addr v1, p1

    .line 339
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    .line 337
    add-float v0, v1, v3

    .line 340
    .local v0, "volume":F
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 336
    monitor-exit v2

    .line 342
    return-void

    .line 336
    .end local v0    # "volume":F
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Lcom/nostalgiaemulators/framework/GfxProfile;Lcom/nostalgiaemulators/framework/SfxProfile;Lcom/nostalgiaemulators/framework/EmulatorSettings;)V
    .locals 4
    .param p1, "gfx"    # Lcom/nostalgiaemulators/framework/GfxProfile;
    .param p2, "sfx"    # Lcom/nostalgiaemulators/framework/SfxProfile;
    .param p3, "settings"    # Lcom/nostalgiaemulators/framework/EmulatorSettings;

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 115
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->setFastForwardEnabled(Z)V

    .line 117
    if-eqz p2, :cond_0

    .line 118
    iget v0, p2, Lcom/nostalgiaemulators/framework/SfxProfile;->bufferSize:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxBuffer:[S

    .line 119
    invoke-direct {p0, p2}, Lcom/nostalgiaemulators/framework/base/JniEmulator;->initSound(Lcom/nostalgiaemulators/framework/SfxProfile;)V

    .line 122
    :cond_0
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfx:Lcom/nostalgiaemulators/framework/SfxProfile;

    .line 123
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gfx:Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 125
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/GfxProfile;->toInt()I

    move-result v2

    if-nez p2, :cond_1

    const/4 v0, -0x1

    .line 126
    :goto_0
    invoke-virtual {p3}, Lcom/nostalgiaemulators/framework/EmulatorSettings;->toInt()I

    move-result v3

    .line 125
    invoke-virtual {v1, v2, v0, v3}, Lcom/nostalgiaemulators/framework/base/JniBridge;->start(III)Z

    move-result v0

    .line 126
    if-nez v0, :cond_2

    .line 127
    new-instance v0, Lcom/nostalgiaemulators/framework/EmulatorException;

    const-string v1, "init failed"

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_1
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/SfxProfile;->toInt()I

    move-result v0

    goto :goto_0

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 135
    return-void

    .line 130
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->ready:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 349
    const-string v0, "com.nostalgiaemulators.framework.base.JniEmulator"

    const-string v1, "bitmap recycled"

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->sfxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 356
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 357
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 362
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 363
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->track:Landroid/media/AudioTrack;

    .line 352
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->jni:Lcom/nostalgiaemulators/framework/base/JniBridge;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/JniBridge;->stop()Z

    .line 369
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->loadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->gameInfo:Lcom/nostalgiaemulators/framework/GameInfo;

    .line 369
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 373
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/JniEmulator;->bitmap:Landroid/graphics/Bitmap;

    .line 374
    return-void

    .line 352
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 369
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 359
    :catch_0
    move-exception v0

    goto :goto_0
.end method
