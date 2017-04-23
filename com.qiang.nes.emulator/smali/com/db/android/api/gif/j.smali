.class final Lcom/db/android/api/gif/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/db/android/api/gif/b;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final ad()V
    .locals 0

    return-void
.end method

.method public final ae()V
    .locals 0

    return-void
.end method

.method public final g(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final s(I)[B
    .locals 1

    new-array v0, p1, [B

    return-object v0
.end method

.method public final t(I)[I
    .locals 1

    new-array v0, p1, [I

    return-object v0
.end method
