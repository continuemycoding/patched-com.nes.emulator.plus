.class Lcom/db/android/api/type/TitleAd$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/TitleAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/TitleAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v0, v0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->pause()V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v0, v0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->stopPlayback()V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/db/android/api/type/TitleAd;->isShowing:Z

    const-string v0, "clear:mOnErrorListener"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: what:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",extra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v2, v2, Lcom/db/android/api/type/TitleAd;->adId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "onError: what:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/db/android/api/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->adId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$3;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v1, v1, Lcom/db/android/api/type/TitleAd;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    :cond_0
    return v3
.end method
