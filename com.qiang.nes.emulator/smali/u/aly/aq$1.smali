.class Lu/aly/aq$1;
.super Lu/aly/ca;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/aq;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aq;


# direct methods
.method constructor <init>(Lu/aly/aq;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lu/aly/aq$1;->a:Lu/aly/aq;

    invoke-virtual {v0}, Lu/aly/aq;->a()V

    .line 172
    return-void
.end method
