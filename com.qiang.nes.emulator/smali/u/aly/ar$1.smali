.class Lu/aly/ar$1;
.super Lu/aly/ca;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/ar;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lu/aly/ar;


# direct methods
.method constructor <init>(Lu/aly/ar;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lu/aly/ar$1;->b:Lu/aly/ar;

    iput-object p2, p0, Lu/aly/ar$1;->a:Ljava/lang/Object;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lu/aly/ar$1;->b:Lu/aly/ar;

    invoke-static {v0}, Lu/aly/ar;->a(Lu/aly/ar;)Lu/aly/au;

    move-result-object v0

    iget-object v1, p0, Lu/aly/ar$1;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lu/aly/au;->a(Ljava/lang/Object;)V

    .line 46
    return-void
.end method
