.class public final Lcom/db/android/api/bitmap/core/r;
.super Ljava/lang/Object;


# static fields
.field public static bD:Lcom/db/android/api/bitmap/core/f;


# instance fields
.field private K:Lcom/db/android/api/bitmap/core/r;

.field private bC:Lcom/db/android/api/bitmap/core/v;

.field private bE:Lcom/db/android/api/bitmap/core/l;

.field private bF:Z

.field private bG:Z

.field private final bH:Ljava/lang/Object;

.field private bI:Z

.field private bJ:Ljava/util/concurrent/ExecutorService;

.field private bK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/db/android/api/bitmap/core/i;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/r;->bI:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/db/android/api/bitmap/core/v;

    invoke-direct {v0, p0, p1}, Lcom/db/android/api/bitmap/core/v;-><init>(Lcom/db/android/api/bitmap/core/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    const-string v0, "afinalCache"

    invoke-static {p1, v0}, Lcom/db/android/api/utils/k;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/db/android/api/bitmap/core/r;->r(Ljava/lang/String;)Lcom/db/android/api/bitmap/core/r;

    new-instance v0, Lcom/db/android/api/bitmap/display/a;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/display/a;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-object v0, v1, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    new-instance v0, Lcom/db/android/api/bitmap/download/b;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/download/b;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-object v0, v1, Lcom/db/android/api/bitmap/core/v;->bV:Lcom/db/android/api/bitmap/download/a;

    return-void
.end method

.method private I()Lcom/db/android/api/bitmap/core/r;
    .locals 6

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bI:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/db/android/api/bitmap/core/g;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bT:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/db/android/api/bitmap/core/g;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->bX:F

    float-to-double v2, v1

    const-wide v4, 0x3fa999999999999aL    # 0.05

    cmpl-double v1, v2, v4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->bX:F

    float-to-double v2, v1

    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v2, v2, Lcom/db/android/api/bitmap/core/v;->bX:F

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/bitmap/core/g;->a(Landroid/content/Context;F)V

    :goto_0
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->am:I

    const/high16 v2, 0x500000

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->am:I

    iput v1, v0, Lcom/db/android/api/bitmap/core/g;->am:I

    :cond_0
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-boolean v1, v1, Lcom/db/android/api/bitmap/core/v;->ar:Z

    iput-boolean v1, v0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    new-instance v1, Lcom/db/android/api/bitmap/core/f;

    invoke-direct {v1, v0}, Lcom/db/android/api/bitmap/core/f;-><init>(Lcom/db/android/api/bitmap/core/g;)V

    sput-object v1, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v0, v0, Lcom/db/android/api/bitmap/core/v;->bY:I

    new-instance v1, Lcom/db/android/api/bitmap/core/s;

    invoke-direct {v1, p0}, Lcom/db/android/api/bitmap/core/s;-><init>(Lcom/db/android/api/bitmap/core/r;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bJ:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/db/android/api/bitmap/core/l;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bV:Lcom/db/android/api/bitmap/download/a;

    sget-object v2, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/bitmap/core/l;-><init>(Lcom/db/android/api/bitmap/download/a;Lcom/db/android/api/bitmap/core/f;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bI:Z

    :cond_1
    return-object p0

    :cond_2
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->al:I

    const/high16 v2, 0x200000

    if-le v1, v2, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget v1, v1, Lcom/db/android/api/bitmap/core/v;->al:I

    iput v1, v0, Lcom/db/android/api/bitmap/core/g;->al:I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    const v2, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1, v2}, Lcom/db/android/api/bitmap/core/g;->a(Landroid/content/Context;F)V

    goto :goto_0
.end method

.method private J()Lcom/db/android/api/bitmap/core/i;
    .locals 2

    new-instance v0, Lcom/db/android/api/bitmap/core/i;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/i;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->r()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->h(I)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->g(I)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->p()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->f(I)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v1}, Lcom/db/android/api/bitmap/core/i;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method private static K()V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->clearCache()V

    :cond_0
    return-void
.end method

.method private static L()V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->h()V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    :cond_0
    return-void
.end method

.method private N()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/bitmap/core/l;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    new-instance v1, Lcom/db/android/api/bitmap/core/v;

    invoke-direct {v1, p0, p2}, Lcom/db/android/api/bitmap/core/v;-><init>(Lcom/db/android/api/bitmap/core/r;Landroid/content/Context;)V

    iget-object v1, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1, v1}, Lcom/db/android/api/bitmap/core/l;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/t;)Landroid/graphics/drawable/Drawable;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    :cond_0
    new-instance v0, Lcom/db/android/api/bitmap/core/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/db/android/api/bitmap/core/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/t;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Landroid/graphics/NinePatch;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v0, v2}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    new-instance v0, Lcom/db/android/api/bitmap/core/c;

    invoke-direct {v0, v1, p2}, Lcom/db/android/api/bitmap/core/c;-><init>(Landroid/graphics/NinePatch;Lcom/db/android/api/bitmap/core/t;)V

    goto :goto_0
.end method

.method private a(F)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput p1, v0, Lcom/db/android/api/bitmap/core/v;->bX:F

    return-object p0
.end method

.method private a(Lcom/db/android/api/bitmap/display/a;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-object p1, v0, Lcom/db/android/api/bitmap/core/v;->bU:Lcom/db/android/api/bitmap/display/a;

    return-object p0
.end method

.method private a(Lcom/db/android/api/bitmap/download/a;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-object p1, v0, Lcom/db/android/api/bitmap/core/v;->bV:Lcom/db/android/api/bitmap/download/a;

    return-object p0
.end method

.method private static a(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;
    .locals 2

    if-eqz p0, :cond_1

    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Lcom/db/android/api/bitmap/core/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/db/android/api/bitmap/core/a;

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/a;->g()Lcom/db/android/api/bitmap/core/t;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/bitmap/core/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/r;->J()Lcom/db/android/api/bitmap/core/i;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/db/android/api/bitmap/core/i;->g(I)V

    invoke-virtual {v0, p3}, Lcom/db/android/api/bitmap/core/i;->f(I)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;IILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/bitmap/core/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/r;->J()Lcom/db/android/api/bitmap/core/i;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/db/android/api/bitmap/core/i;->g(I)V

    invoke-virtual {v0, p3}, Lcom/db/android/api/bitmap/core/i;->f(I)V

    invoke-virtual {v0, p5}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p6}, Lcom/db/android/api/bitmap/core/i;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/bitmap/core/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/r;->J()Lcom/db/android/api/bitmap/core/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/bitmap/core/i;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/r;->J()Lcom/db/android/api/bitmap/core/i;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p4}, Lcom/db/android/api/bitmap/core/i;->c(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bK:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method static synthetic a(Lcom/db/android/api/bitmap/core/r;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->clearCache()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/f;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/Object;Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/t;->a(Lcom/db/android/api/bitmap/core/t;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    invoke-virtual {v1, v0}, Lcom/db/android/api/bitmap/core/t;->cancel(Z)Z

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/db/android/api/bitmap/core/r;
    .locals 2

    new-instance v0, Lcom/db/android/api/bitmap/core/r;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/db/android/api/bitmap/core/r;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1}, Lcom/db/android/api/bitmap/core/r;->r(Ljava/lang/String;)Lcom/db/android/api/bitmap/core/r;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/r;->I()Lcom/db/android/api/bitmap/core/r;

    return-object v0
.end method

.method static synthetic b(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;
    .locals 1

    invoke-static {p0}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/db/android/api/bitmap/core/r;->bI:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/r;->I()Lcom/db/android/api/bitmap/core/r;

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-nez p3, :cond_3

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object p3, v1, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->t()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/x;->e()V

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v1, :cond_7

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p2}, Lcom/db/android/api/bitmap/core/f;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_7
    if-eqz v0, :cond_a

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->o()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->n()Lcom/db/android/api/bitmap/core/k;

    move-result-object v0

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/k;->u()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_2
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_9

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    invoke-interface {v0, v1, p2}, Lcom/db/android/api/bitmap/core/x;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_9
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    invoke-static {p1}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/view/View;)Lcom/db/android/api/bitmap/core/t;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/t;->a(Lcom/db/android/api/bitmap/core/t;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    :cond_b
    invoke-virtual {v0, v3}, Lcom/db/android/api/bitmap/core/t;->cancel(Z)Z

    :cond_c
    move v0, v3

    :goto_4
    if-eqz v0, :cond_1

    new-instance v4, Lcom/db/android/api/bitmap/core/t;

    invoke-direct {v4, p0, p1, p3}, Lcom/db/android/api/bitmap/core/t;-><init>(Lcom/db/android/api/bitmap/core/r;Landroid/view/View;Lcom/db/android/api/bitmap/core/i;)V

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->s()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/db/android/api/bitmap/core/r;->a(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/t;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_5
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_10

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bJ:Ljava/util/concurrent/ExecutorService;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/db/android/api/bitmap/core/t;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_d
    move v0, v2

    goto :goto_4

    :cond_e
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    new-instance v1, Lcom/db/android/api/bitmap/core/b;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {v1, v5, v0, v4}, Lcom/db/android/api/bitmap/core/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;Lcom/db/android/api/bitmap/core/t;)V

    move-object v0, v1

    goto :goto_5

    :cond_f
    new-instance v0, Lcom/db/android/api/bitmap/core/b;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p3}, Lcom/db/android/api/bitmap/core/i;->s()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v0, v1, v5, v4}, Lcom/db/android/api/bitmap/core/b;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/db/android/api/bitmap/core/t;)V

    goto :goto_5

    :cond_10
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_11
    move-object v1, v0

    goto/16 :goto_2
.end method

.method static synthetic b(Lcom/db/android/api/bitmap/core/r;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/db/android/api/bitmap/core/r;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/f;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    invoke-virtual {v0, p1, p2}, Lcom/db/android/api/bitmap/core/l;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lcom/db/android/api/bitmap/core/k;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->b(Lcom/db/android/api/bitmap/core/k;)V

    return-object p0
.end method

.method static synthetic c(Lcom/db/android/api/bitmap/core/r;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->h()V

    :cond_0
    return-void
.end method

.method private clearCache()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private d(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/db/android/api/bitmap/core/l;->b(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private d(Landroid/graphics/Bitmap;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private d(Lcom/db/android/api/bitmap/core/k;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iput-object p1, v0, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    return-object p0
.end method

.method private d(Z)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->c(Z)V

    return-object p0
.end method

.method static synthetic d(Lcom/db/android/api/bitmap/core/r;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    return-object v0
.end method

.method private e(Landroid/graphics/Bitmap;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->c(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private e(Z)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-boolean p1, v0, Lcom/db/android/api/bitmap/core/v;->ar:Z

    return-object p0
.end method

.method static synthetic e(Lcom/db/android/api/bitmap/core/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    return v0
.end method

.method private f(Z)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->b(Z)V

    return-object p0
.end method

.method static synthetic f(Lcom/db/android/api/bitmap/core/r;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    return v0
.end method

.method static synthetic g(Lcom/db/android/api/bitmap/core/r;)Lcom/db/android/api/bitmap/core/v;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    return-object v0
.end method

.method private g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    return-void
.end method

.method private h(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static i(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p0}, Lcom/db/android/api/bitmap/core/f;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static i()V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/f;->i()V

    :cond_0
    return-void
.end method

.method private i(Z)V
    .locals 2

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bG:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j(I)Lcom/db/android/api/bitmap/core/r;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->b(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private j(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private k(I)Lcom/db/android/api/bitmap/core/r;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/r;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/i;->c(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private static declared-synchronized k(Landroid/content/Context;)Lcom/db/android/api/bitmap/core/r;
    .locals 3

    const-class v1, Lcom/db/android/api/bitmap/core/r;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/db/android/api/bitmap/core/r;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/db/android/api/bitmap/core/r;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private l(I)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->g(I)V

    return-object p0
.end method

.method private static l(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p0}, Lcom/db/android/api/bitmap/core/f;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private m(I)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/i;->f(I)V

    return-object p0
.end method

.method private n(I)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput p1, v0, Lcom/db/android/api/bitmap/core/v;->al:I

    return-object p0
.end method

.method private o(I)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput p1, v0, Lcom/db/android/api/bitmap/core/v;->am:I

    return-object p0
.end method

.method private onDestroy()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private onPause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    return-void
.end method

.method private onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/r;->bF:Z

    return-void
.end method

.method private p(I)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput p1, v0, Lcom/db/android/api/bitmap/core/v;->bY:I

    :cond_0
    return-object p0
.end method

.method private r(Ljava/lang/String;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iput-object p1, v0, Lcom/db/android/api/bitmap/core/v;->bT:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private static s(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p0}, Lcom/db/android/api/bitmap/core/f;->j(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static t(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p0}, Lcom/db/android/api/bitmap/core/f;->k(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private u(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/db/android/api/bitmap/core/r;->bD:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v0, p1}, Lcom/db/android/api/bitmap/core/f;->i(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/db/android/api/bitmap/core/r;->v(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/r;->b(Landroid/view/View;Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)V

    return-void
.end method

.method public final b(Lcom/db/android/api/bitmap/core/x;)Lcom/db/android/api/bitmap/core/r;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bC:Lcom/db/android/api/bitmap/core/v;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/v;->bW:Lcom/db/android/api/bitmap/core/i;

    iput-object p1, v0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    return-object p0
.end method

.method public final h()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/db/android/api/bitmap/core/u;

    invoke-direct {v0, p0, v3}, Lcom/db/android/api/bitmap/core/u;-><init>(Lcom/db/android/api/bitmap/core/r;B)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/db/android/api/bitmap/core/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final v(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/r;->bE:Lcom/db/android/api/bitmap/core/l;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/db/android/api/bitmap/core/l;->b(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
