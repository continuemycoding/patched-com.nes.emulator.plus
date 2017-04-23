.class public final Lcom/db/android/api/bitmap/core/l;
.super Ljava/lang/Object;


# static fields
.field private static final aI:I = 0x4

.field private static final aJ:I = 0x32000

.field private static final aK:Lcom/db/android/api/bitmap/core/m;


# instance fields
.field private aG:Lcom/db/android/api/bitmap/download/a;

.field private aH:Lcom/db/android/api/bitmap/core/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/db/android/api/bitmap/core/m;

    const/4 v1, 0x4

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/bitmap/core/m;-><init>(II)V

    sput-object v0, Lcom/db/android/api/bitmap/core/l;->aK:Lcom/db/android/api/bitmap/core/m;

    return-void
.end method

.method public constructor <init>(Lcom/db/android/api/bitmap/download/a;Lcom/db/android/api/bitmap/core/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/l;->aG:Lcom/db/android/api/bitmap/download/a;

    iput-object p2, p0, Lcom/db/android/api/bitmap/core/l;->aH:Lcom/db/android/api/bitmap/core/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/db/android/api/bitmap/core/l;->b(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/l;->aG:Lcom/db/android/api/bitmap/download/a;

    iget-object v2, p2, Lcom/db/android/api/bitmap/core/i;->as:Lcom/db/android/api/bitmap/core/k;

    invoke-interface {v1, p1, v2}, Lcom/db/android/api/bitmap/download/a;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/k;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->p()I

    move-result v2

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->q()I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Lcom/db/android/api/bitmap/core/d;->a([BIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/db/android/api/bitmap/core/l;->aH:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v2, p1, v1}, Lcom/db/android/api/bitmap/core/f;->a(Ljava/lang/String;[B)V

    :cond_0
    return-object v0

    :cond_1
    array-length v0, v1

    invoke-static {v1, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Lcom/db/android/api/bitmap/core/i;)Landroid/graphics/Bitmap;
    .locals 6

    sget-object v0, Lcom/db/android/api/bitmap/core/l;->aK:Lcom/db/android/api/bitmap/core/m;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/m;->A()Lcom/db/android/api/bitmap/core/o;

    move-result-object v1

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/db/android/api/bitmap/core/l;->aH:Lcom/db/android/api/bitmap/core/f;

    invoke-virtual {v2, p1, v1}, Lcom/db/android/api/bitmap/core/f;->a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/o;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Lcom/db/android/api/bitmap/core/o;->length:I

    iget v3, v1, Lcom/db/android/api/bitmap/core/o;->offset:I

    sub-int/2addr v2, v3

    if-lez v2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/db/android/api/bitmap/core/o;->data:[B

    iget v2, v1, Lcom/db/android/api/bitmap/core/o;->offset:I

    iget v3, v1, Lcom/db/android/api/bitmap/core/o;->length:I

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->p()I

    move-result v4

    invoke-virtual {p2}, Lcom/db/android/api/bitmap/core/i;->q()I

    move-result v5

    invoke-static {v0, v2, v3, v4, v5}, Lcom/db/android/api/bitmap/core/d;->a([BIIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :cond_0
    :goto_0
    sget-object v2, Lcom/db/android/api/bitmap/core/l;->aK:Lcom/db/android/api/bitmap/core/m;

    invoke-virtual {v2, v1}, Lcom/db/android/api/bitmap/core/m;->a(Lcom/db/android/api/bitmap/core/o;)V

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iget-object v2, v1, Lcom/db/android/api/bitmap/core/o;->data:[B

    iget v3, v1, Lcom/db/android/api/bitmap/core/o;->offset:I

    iget v4, v1, Lcom/db/android/api/bitmap/core/o;->length:I

    invoke-static {v2, v3, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v2, Lcom/db/android/api/bitmap/core/l;->aK:Lcom/db/android/api/bitmap/core/m;

    invoke-virtual {v2, v1}, Lcom/db/android/api/bitmap/core/m;->a(Lcom/db/android/api/bitmap/core/o;)V

    throw v0
.end method
