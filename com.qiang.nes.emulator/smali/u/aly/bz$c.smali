.class public Lu/aly/bz$c;
.super Lu/aly/bz$h;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:J

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .prologue
    .line 199
    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    .line 197
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bz$c;->b:J

    .line 200
    int-to-long v0, p1

    iput-wide v0, p0, Lu/aly/bz$c;->a:J

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/bz$c;->b:J

    .line 202
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/bz$c;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lu/aly/bz$c;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/bz$c;->b:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lu/aly/bz$c;->a:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
