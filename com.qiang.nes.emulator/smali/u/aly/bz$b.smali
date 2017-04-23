.class public Lu/aly/bz$b;
.super Lu/aly/bz$h;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lu/aly/bh;

.field private b:Lu/aly/be;


# direct methods
.method public constructor <init>(Lu/aly/be;Lu/aly/bh;)V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    .line 174
    iput-object p1, p0, Lu/aly/bz$b;->b:Lu/aly/be;

    .line 175
    iput-object p2, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    .line 176
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    invoke-virtual {v0}, Lu/aly/bh;->d()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    .prologue
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 180
    iget-object v2, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    invoke-virtual {v2}, Lu/aly/bh;->b()J

    move-result-wide v2

    .line 182
    iget-object v4, p0, Lu/aly/bz$b;->b:Lu/aly/be;

    iget-wide v4, v4, Lu/aly/be;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
