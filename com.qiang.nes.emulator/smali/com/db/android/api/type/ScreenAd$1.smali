.class Lcom/db/android/api/type/ScreenAd$1;
.super Lcom/db/android/api/callback/a;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/ScreenAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/ScreenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    invoke-direct {p0}, Lcom/db/android/api/callback/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v1, v1, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v1, v1, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onImageSuccess(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iput-boolean v1, v0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/db/android/api/type/ScreenAd;->openTime:J

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd$1;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget v1, v1, Lcom/db/android/api/type/ScreenAd;->showTime:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
