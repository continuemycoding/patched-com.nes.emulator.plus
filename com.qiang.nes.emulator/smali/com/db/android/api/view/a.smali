.class final Lcom/db/android/api/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field private synthetic fu:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method constructor <init>(Lcom/db/android/api/view/DBVideoView;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;I)I

    iget-object v0, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v0}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v1}, Lcom/db/android/api/view/DBVideoView;->a(Lcom/db/android/api/view/DBVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/db/android/api/view/a;->fu:Lcom/db/android/api/view/DBVideoView;

    invoke-static {v2}, Lcom/db/android/api/view/DBVideoView;->b(Lcom/db/android/api/view/DBVideoView;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_0
    return-void
.end method
