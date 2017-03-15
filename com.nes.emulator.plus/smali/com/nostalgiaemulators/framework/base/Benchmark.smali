.class public Lcom/nostalgiaemulators/framework/base/Benchmark;
.super Ljava/lang/Object;
.source "Benchmark.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;
    }
.end annotation


# instance fields
.field private callback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

.field private isRunning:Z

.field private name:Ljava/lang/String;

.field private numSteps:I

.field private startTime:J

.field private steps:I

.field private totalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;ILcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "numSteps"    # I
    .param p3, "callback"    # Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    .prologue
    const/4 v2, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->isRunning:Z

    .line 75
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->startTime:J

    .line 76
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->totalTime:J

    .line 77
    iput v2, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    .line 78
    iput v2, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->numSteps:I

    .line 23
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->name:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->callback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    .line 25
    iput p2, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->numSteps:I

    .line 26
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->name:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFrameEnd()V
    .locals 6

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->isRunning:Z

    if-nez v0, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->startTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 50
    iget-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->totalTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->totalTime:J

    .line 53
    :cond_2
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->numSteps:I

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->callback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    iget v1, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    iget-wide v2, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->totalTime:J

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;->onBenchmarkEnded(Lcom/nostalgiaemulators/framework/base/Benchmark;IJ)V

    .line 55
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/Benchmark;->stop()V

    goto :goto_0
.end method

.method public notifyFrameStart()V
    .locals 2

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->isRunning:Z

    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->startTime:J

    .line 41
    iget v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 29
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->startTime:J

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->steps:I

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->totalTime:J

    .line 32
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->callback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;->onBenchmarkReset(Lcom/nostalgiaemulators/framework/base/Benchmark;)V

    .line 33
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/Benchmark;->isRunning:Z

    .line 61
    return-void
.end method
