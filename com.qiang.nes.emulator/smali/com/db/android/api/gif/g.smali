.class final Lcom/db/android/api/gif/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic dA:Lcom/db/android/api/gif/GifImageView;


# direct methods
.method constructor <init>(Lcom/db/android/api/gif/GifImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/gif/g;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/db/android/api/gif/g;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/db/android/api/gif/g;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;Lcom/db/android/api/gif/a;)Lcom/db/android/api/gif/a;

    iget-object v0, p0, Lcom/db/android/api/gif/g;->dA:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v0, v1}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/db/android/api/gif/g;->dA:Lcom/db/android/api/gif/GifImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/db/android/api/gif/GifImageView;->a(Lcom/db/android/api/gif/GifImageView;Z)Z

    return-void
.end method
