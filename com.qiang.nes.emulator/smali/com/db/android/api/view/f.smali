.class final Lcom/db/android/api/view/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, p3}, Lcom/db/android/api/view/DBVideoView;->g(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, p4}, Lcom/db/android/api/view/DBVideoView;->h(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->j(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v3}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v3

    if-ne v3, p3, :cond_3

    iget-object v3, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v3}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v3

    if-ne v3, p4, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->g(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    iget-object v1, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->g(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/DBVideoView;->seekTo(I)V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->start()V

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, p1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->n(Lcom/db/android/api/view/DBVideoView;)V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    iget-object v1, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v1}, Lcom/db/android/api/view/DBVideoView;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Lcom/db/android/api/view/DBVideoView;->fl:I

    iget-object v0, p0, Lcom/db/android/api/view/f;->fu:Lcom/db/android/api/view/DBVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/DBVideoView;->k(Z)V

    return-void
.end method
