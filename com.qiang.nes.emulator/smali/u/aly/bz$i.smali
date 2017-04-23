.class public Lu/aly/bz$i;
.super Lu/aly/bz$h;
.source "ReportPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 160
    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bz$i;->a:Landroid/content/Context;

    .line 161
    iput-object p1, p0, Lu/aly/bz$i;->a:Landroid/content/Context;

    .line 162
    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lu/aly/bz$i;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->k(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
