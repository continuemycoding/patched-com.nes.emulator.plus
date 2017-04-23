.class final Lcom/db/android/api/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->c(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    iget-object v2, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2, v3}, Lcom/db/android/api/view/DBVideoView;->c(Lcom/db/android/api/view/DBVideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;Z)Z

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->d(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->d(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/MediaController;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->g(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v1, v0}, Lcom/db/android/api/view/DBVideoView;->seekTo(I)V

    :cond_2
    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v1}, Lcom/db/android/api/view/DBVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v3}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->h(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->i(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->j(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->start()V

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v1, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v1}, Lcom/db/android/api/view/DBVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->j(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/db/android/api/view/b;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->start()V

    goto :goto_0
.end method
