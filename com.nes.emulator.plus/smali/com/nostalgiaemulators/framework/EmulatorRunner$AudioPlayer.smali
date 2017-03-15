.class Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;
.super Ljava/lang/Thread;
.source "EmulatorRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/EmulatorRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioPlayer"
.end annotation


# instance fields
.field private isAfterReset:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;)V
    .locals 1

    .prologue
    .line 534
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 540
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isAfterReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 606
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;)V
    .locals 0

    .prologue
    .line 534
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;-><init>(Lcom/nostalgiaemulators/framework/EmulatorRunner;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    .line 598
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 600
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$3(Lcom/nostalgiaemulators/framework/EmulatorRunner;Z)V

    .line 602
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 600
    monitor-exit v1

    .line 604
    return-void

    .line 600
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onGameReset()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isAfterReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 538
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 544
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 545
    const-string v5, "emudroid:audioPlayer"

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->setName(Ljava/lang/String;)V

    .line 546
    const/4 v4, 0x0

    .line 547
    .local v4, "volume":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v5, v8}, Lcom/nostalgiaemulators/framework/Emulator;->setVolume(F)V

    .line 548
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 550
    .local v2, "startTime":J
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_1

    .line 589
    :try_start_0
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/nostalgiaemulators/framework/Emulator;->setVolume(F)V

    .line 590
    const-wide/16 v6, 0x96

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 595
    :goto_1
    return-void

    .line 551
    :cond_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 552
    :goto_2
    :try_start_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReady:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$4(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 561
    :goto_3
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$3(Lcom/nostalgiaemulators/framework/EmulatorRunner;Z)V

    .line 551
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->isPaused:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$5(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 565
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->isAfterReset:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v10, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 566
    const/4 v4, 0x0

    .line 567
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v5, v8}, Lcom/nostalgiaemulators/framework/Emulator;->setVolume(F)V

    .line 570
    const-wide/16 v6, 0x96

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 575
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 578
    :cond_2
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v5}, Lcom/nostalgiaemulators/framework/Emulator;->renderSfx()V

    .line 580
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v4, v5

    if-gez v5, :cond_0

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    long-to-float v5, v6

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float v4, v5, v6

    .line 582
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->volumeModifier:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$6(Lcom/nostalgiaemulators/framework/EmulatorRunner;)F

    move-result v5

    mul-float v1, v4, v5

    .line 583
    .local v1, "vol":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/EmulatorRunner;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v5, v1}, Lcom/nostalgiaemulators/framework/Emulator;->setVolume(F)V

    goto :goto_0

    .line 554
    .end local v1    # "vol":F
    :cond_3
    :try_start_3
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorRunner$AudioPlayer;->this$0:Lcom/nostalgiaemulators/framework/EmulatorRunner;

    # getter for: Lcom/nostalgiaemulators/framework/EmulatorRunner;->sfxReadyLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/EmulatorRunner;->access$2(Lcom/nostalgiaemulators/framework/EmulatorRunner;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 556
    :catch_0
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 551
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 572
    :catch_1
    move-exception v5

    goto :goto_4

    .line 593
    :catch_2
    move-exception v5

    goto :goto_1
.end method
