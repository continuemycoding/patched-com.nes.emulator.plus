.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private numOk:I

.field private numTests:I

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numTests:I

    .line 315
    iput v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    return-void
.end method


# virtual methods
.method public onBenchmarkEnded(Lcom/nostalgiaemulators/framework/base/Benchmark;IJ)V
    .locals 5
    .param p1, "benchmark"    # Lcom/nostalgiaemulators/framework/base/Benchmark;
    .param p2, "steps"    # I
    .param p3, "totalTime"    # J

    .prologue
    const/high16 v4, 0x41880000    # 17.0f

    const/4 v3, 0x2

    .line 286
    long-to-float v1, p3

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 287
    .local v0, "millisPerFrame":F
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numTests:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numTests:I

    .line 289
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/Benchmark;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openGL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    cmpg-float v1, v0, v4

    if-gez v1, :cond_0

    .line 291
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    .line 295
    :cond_0
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/Benchmark;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "emulation"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 297
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    .line 301
    :cond_1
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numTests:I

    if-ne v1, v3, :cond_2

    .line 302
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setBenchmarked(Landroid/content/Context;Z)V

    .line 304
    iget v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->numOk:I

    if-ne v1, v3, :cond_2

    .line 305
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/EmulatorView;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->setQuality(I)V

    .line 307
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setEmulationQuality(Landroid/content/Context;I)V

    .line 312
    :cond_2
    return-void
.end method

.method public onBenchmarkReset(Lcom/nostalgiaemulators/framework/base/Benchmark;)V
    .locals 0
    .param p1, "benchmark"    # Lcom/nostalgiaemulators/framework/base/Benchmark;

    .prologue
    .line 281
    return-void
.end method
