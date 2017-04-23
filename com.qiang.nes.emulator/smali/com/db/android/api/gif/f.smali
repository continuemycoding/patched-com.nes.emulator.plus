.class final Lcom/db/android/api/gif/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dA:Lcom/db/android/api/gif/GifImageView;


# direct methods
.method constructor <init>(Lcom/db/android/api/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/gif/f;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/gif/f;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v0}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/f;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v0}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/f;->dA:Lcom/db/android/api/gif/GifImageView;

    iget-object v1, p0, Lcom/db/android/api/gif/f;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v1}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/gif/GifImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
