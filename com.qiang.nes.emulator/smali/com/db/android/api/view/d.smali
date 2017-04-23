.class final Lcom/db/android/api/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->l(Lcom/db/android/api/view/DBVideoView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, v3}, Lcom/db/android/api/view/DBVideoView;->c(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, v3}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->m(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->m(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/d;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_1
    return v4
.end method
