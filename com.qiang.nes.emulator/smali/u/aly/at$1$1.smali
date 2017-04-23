.class Lu/aly/at$1$1;
.super Lu/aly/f;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/aly/at$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lu/aly/at$1;


# direct methods
.method constructor <init>(Lu/aly/at$1;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lu/aly/at$1$1;->a:Lu/aly/at$1;

    invoke-direct {p0}, Lu/aly/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 348
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    :cond_0
    return-void
.end method
