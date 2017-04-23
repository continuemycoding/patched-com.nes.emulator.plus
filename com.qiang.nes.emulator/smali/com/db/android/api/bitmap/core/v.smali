.class public final Lcom/db/android/api/bitmap/core/v;
.super Ljava/lang/Object;


# instance fields
.field public al:I

.field public am:I

.field public ar:Z

.field private synthetic bL:Lcom/db/android/api/bitmap/core/r;

.field public bT:Ljava/lang/String;

.field public bU:Lcom/db/android/api/bitmap/display/a;

.field public bV:Lcom/db/android/api/bitmap/download/a;

.field public bW:Lcom/db/android/api/bitmap/core/i;

.field public bX:F

.field public bY:I


# direct methods
.method public constructor <init>(Lcom/db/android/api/bitmap/core/r;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/db/android/api/bitmap/core/v;->bY:I

    iput-boolean v2, p0, Lcom/db/android/api/bitmap/core/v;->ar:Z

    new-instance v0, Lcom/db/android/api/bitmap/core/i;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/i;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, v2}, Lcom/db/android/api/bitmap/core/i;->h(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1, v0}, Lcom/db/android/api/bitmap/core/i;->g(I)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1, v0}, Lcom/db/android/api/bitmap/core/i;->f(I)V

    return-void
.end method
