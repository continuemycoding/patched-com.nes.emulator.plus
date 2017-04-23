.class public Lu/aly/bz$e;
.super Lu/aly/bz$h;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:Lu/aly/be;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-wide/32 v0, 0x15f90

    sput-wide v0, Lu/aly/bz$e;->a:J

    .line 102
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lu/aly/bz$e;->b:J

    return-void
.end method

.method public constructor <init>(Lu/aly/be;J)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    .line 108
    iput-object p1, p0, Lu/aly/bz$e;->d:Lu/aly/be;

    .line 109
    invoke-virtual {p0, p2, p3}, Lu/aly/bz$e;->a(J)V

    .line 110
    return-void
.end method

.method public static a(I)Z
    .locals 4

    .prologue
    .line 133
    int-to-long v0, p0

    sget-wide v2, Lu/aly/bz$e;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    .prologue
    .line 121
    sget-wide v0, Lu/aly/bz$e;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lu/aly/bz$e;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 122
    iput-wide p1, p0, Lu/aly/bz$e;->c:J

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sget-wide v0, Lu/aly/bz$e;->a:J

    iput-wide v0, p0, Lu/aly/bz$e;->c:J

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/bz$e;->d:Lu/aly/be;

    iget-wide v2, v2, Lu/aly/be;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lu/aly/bz$e;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lu/aly/bz$e;->c:J

    return-wide v0
.end method
