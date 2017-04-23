.class Lu/aly/at$1;
.super Lu/aly/ca;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/at;->a(Ljava/util/List;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lu/aly/at;


# direct methods
.method constructor <init>(Lu/aly/at;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lu/aly/at$1;->b:Lu/aly/at;

    iput-object p2, p0, Lu/aly/at$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Lu/aly/ca;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 345
    iget-object v0, p0, Lu/aly/at$1;->b:Lu/aly/at;

    invoke-static {v0}, Lu/aly/at;->a(Lu/aly/at;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    new-instance v1, Lu/aly/at$1$1;

    invoke-direct {v1, p0}, Lu/aly/at$1$1;-><init>(Lu/aly/at$1;)V

    iget-object v2, p0, Lu/aly/at$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lu/aly/m;->a(Lu/aly/f;Ljava/util/Map;)V

    .line 352
    return-void
.end method
