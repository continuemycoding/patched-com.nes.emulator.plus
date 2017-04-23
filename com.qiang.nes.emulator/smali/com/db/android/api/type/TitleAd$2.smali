.class Lcom/db/android/api/type/TitleAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/TitleAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/TitleAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPrepared: length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mContext:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AdId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v2, v2, Lcom/db/android/api/type/TitleAd;->adId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onPrepared"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/db/android/api/b;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget v1, v1, Lcom/db/android/api/type/TitleAd;->showTime:I

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iput-boolean v4, v0, Lcom/db/android/api/type/TitleAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/db/android/api/type/TitleAd;->openTime:J

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/TitleAd$2;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v0, v0, Lcom/db/android/api/type/TitleAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v4}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
