.class Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;
.super Ljava/lang/Thread;
.source "EmulatorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/EmulatorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmulatorThread"
.end annotation


# instance fields
.field private delayPerFrame:I

.field private exactDelayPerFrameE1:I

.field private expectedTimeE1:J

.field private isPaused:Z

.field private isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pauseLock:Ljava/lang/Object;

.field private startTime:J

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 406
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 527
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isPaused:Z

    .line 528
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 529
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;-><init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 521
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->unpause()V

    .line 522
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 514
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isPaused:Z

    .line 514
    monitor-exit v1

    .line 517
    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 24

    .prologue
    .line 415
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v19, "emudroid:gameLoop #"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v20

    const-wide v22, 0x408f400000000000L    # 1000.0

    mul-double v20, v20, v22

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->setName(Ljava/lang/String;)V

    .line 416
    const-string v18, "com.nostalgiaemulators.framework.EmulatorRunner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " started"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-wide/16 v14, 0x0

    .line 418
    .local v14, "skippedTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->unpause()V

    .line 419
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    .line 420
    const/4 v5, 0x0

    .line 421
    .local v5, "cnt":I
    const/4 v4, 0x0

    .line 423
    .local v4, "afterSkip":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-nez v18, :cond_0

    .line 501
    const-string v18, "com.nostalgiaemulators.framework.EmulatorRunner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->getName()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, " finished"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    return-void

    .line 424
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/base/Benchmark;->notifyFrameEnd()V

    .line 428
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 430
    .local v16, "time1":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 431
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isPaused:Z

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 430
    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    const/4 v10, 0x0

    .line 447
    .local v10, "numFramesToSkip":I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->startTime:J

    move-wide/from16 v18, v0

    sub-long v12, v16, v18

    .line 448
    .local v12, "realTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0xa

    div-long v18, v18, v20

    sub-long v8, v18, v12

    .line 449
    .local v8, "diff":J
    move-wide v6, v8

    .line 451
    .local v6, "delay":J
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-lez v18, :cond_8

    .line 453
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 465
    :goto_2
    neg-long v14, v8

    .line 467
    if-lez v4, :cond_2

    .line 468
    add-int/lit8 v4, v4, -0x1

    .line 471
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->delayPerFrame:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v14, v18

    if-ltz v18, :cond_3

    if-nez v4, :cond_3

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->delayPerFrame:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    div-long v18, v14, v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v18, v0

    add-int/lit8 v10, v18, -0x1

    .line 473
    move v11, v10

    .line 474
    .local v11, "originalSkipped":I
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 475
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->exactDelayPerFrameE1:I

    move/from16 v20, v0

    mul-int v20, v20, v10

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    .line 478
    .end local v11    # "originalSkipped":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/base/Benchmark;->notifyFrameStart()V

    .line 482
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->lock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 483
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/nostalgiaemulators/framework/Emulator;->emulateFrame(I)V

    .line 484
    add-int/lit8 v18, v10, 0x1

    add-int v5, v5, v18

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->audioEnabled:Z
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$1(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Z

    move-result v18

    if-eqz v18, :cond_5

    const/16 v18, 0x3

    move/from16 v0, v18

    if-lt v5, v0, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/Emulator;->readSfxData()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v20

    monitor-enter v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 490
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v21

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$3(Lcom/nostalgiaemulators/framework/EmulatorRunner;Z)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notifyAll()V

    .line 489
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 494
    const/4 v5, 0x0

    .line 482
    :cond_5
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 498
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->exactDelayPerFrameE1:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v18, v18, v20

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    goto/16 :goto_0

    .line 433
    .end local v6    # "delay":J
    .end local v8    # "diff":J
    .end local v10    # "numFramesToSkip":I
    .end local v12    # "realTime":J
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 438
    :goto_3
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    if-eqz v18, :cond_7

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    move-object/from16 v18, v0

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->benchmark:Lcom/nostalgiaemulators/framework/base/Benchmark;
    invoke-static/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$0(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Lcom/nostalgiaemulators/framework/base/Benchmark;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/nostalgiaemulators/framework/base/Benchmark;->reset()V

    .line 442
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    goto/16 :goto_1

    .line 430
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v18

    .line 459
    .restart local v6    # "delay":J
    .restart local v8    # "diff":J
    .restart local v10    # "numFramesToSkip":I
    .restart local v12    # "realTime":J
    :cond_8
    const-wide/16 v18, 0x1

    :try_start_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 461
    :catch_0
    move-exception v18

    goto/16 :goto_2

    .line 489
    :catchall_1
    move-exception v18

    :try_start_8
    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v18

    .line 482
    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v18

    .line 455
    :catch_1
    move-exception v18

    goto/16 :goto_2

    .line 435
    .end local v6    # "delay":J
    .end local v8    # "diff":J
    .end local v10    # "numFramesToSkip":I
    .end local v12    # "realTime":J
    :catch_2
    move-exception v18

    goto :goto_3
.end method

.method public setFps(I)V
    .locals 4
    .param p1, "fps"    # I

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 409
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->exactDelayPerFrameE1:I

    .line 410
    iget v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->exactDelayPerFrameE1:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->delayPerFrame:I

    .line 411
    return-void
.end method

.method public unpause()V
    .locals 4

    .prologue
    .line 505
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->startTime:J

    .line 507
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->expectedTimeE1:J

    .line 508
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->isPaused:Z

    .line 509
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$EmulatorThread;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 505
    monitor-exit v1

    .line 511
    return-void

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
