.class Lu/aly/ar$3;
.super Lu/aly/ca;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/ar;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/ar;


# direct methods
.method constructor <init>(Lu/aly/ar;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lu/aly/ar$3;->a:Lu/aly/ar;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lu/aly/ar$3;->a:Lu/aly/ar;

    invoke-static {v0}, Lu/aly/ar;->a(Lu/aly/ar;)Lu/aly/au;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/au;->b()V

    .line 65
    return-void
.end method
