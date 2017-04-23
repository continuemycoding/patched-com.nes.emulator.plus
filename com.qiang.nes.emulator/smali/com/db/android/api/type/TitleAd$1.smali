.class Lcom/db/android/api/type/TitleAd$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/TitleAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/TitleAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/TitleAd;->isAutoRemove:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v0, v0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0}, Lcom/db/android/api/view/DBVideoView;->stopPlayback()V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    const-string v0, "clear:onCompletionListener"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v2, v2, Lcom/db/android/api/type/TitleAd;->adId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " OnCompletion"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/db/android/api/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$1;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v0, "onCompletion:"

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    return-void
.end method
