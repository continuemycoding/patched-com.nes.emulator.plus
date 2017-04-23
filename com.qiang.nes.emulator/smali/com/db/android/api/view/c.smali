.class final Lcom/db/android/api/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->c(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->c(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->f(Lcom/db/android/api/view/DBVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->k(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->k(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/c;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->e(Lcom/db/android/api/view/DBVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
