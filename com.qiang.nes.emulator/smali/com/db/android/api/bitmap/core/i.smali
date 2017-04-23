.class public final Lcom/db/android/api/bitmap/core/i;
.super Ljava/lang/Object;


# instance fields
.field private aA:Lcom/db/android/api/bitmap/core/k;

.field private aB:Z

.field private aC:Z

.field public as:Lcom/db/android/api/bitmap/core/k;

.field public at:Lcom/db/android/api/bitmap/core/x;

.field private au:I

.field private av:I

.field private aw:Landroid/view/animation/Animation;

.field private ax:I

.field private ay:Landroid/graphics/Bitmap;

.field private az:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/bitmap/core/i;->aB:Z

    return-void
.end method

.method private a(Lcom/db/android/api/bitmap/core/k;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    return-void
.end method

.method private a(Lcom/db/android/api/bitmap/core/x;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    return-void
.end method

.method private j()Lcom/db/android/api/bitmap/core/k;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    return-object v0
.end method

.method private k()Lcom/db/android/api/bitmap/core/x;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->at:Lcom/db/android/api/bitmap/core/x;

    return-object v0
.end method


# virtual methods
.method public final b(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->ay:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final b(Lcom/db/android/api/bitmap/core/k;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->aA:Lcom/db/android/api/bitmap/core/k;

    return-void
.end method

.method public final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/bitmap/core/i;->aC:Z

    return-void
.end method

.method public final c(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->az:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/bitmap/core/i;->aB:Z

    return-void
.end method

.method public final f(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/i;->au:I

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/i;->av:I

    return-void
.end method

.method public final getAnimation()Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->aw:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/i;->ax:I

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/i;->aC:Z

    return v0
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/db/android/api/bitmap/core/i;->aB:Z

    return v0
.end method

.method public final n()Lcom/db/android/api/bitmap/core/k;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->aA:Lcom/db/android/api/bitmap/core/k;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->aA:Lcom/db/android/api/bitmap/core/k;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/bitmap/core/i;->au:I

    return v0
.end method

.method public final q()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/bitmap/core/i;->av:I

    return v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/bitmap/core/i;->ax:I

    return v0
.end method

.method public final s()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->ay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/i;->aw:Landroid/view/animation/Animation;

    return-void
.end method

.method public final t()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/i;->az:Landroid/graphics/Bitmap;

    return-object v0
.end method
