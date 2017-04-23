.class Lcom/db/android/api/type/PopupAd$1;
.super Lcom/db/android/api/callback/a;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/PopupAd;

.field final synthetic val$e:Lcom/db/android/api/entity/InfoEntity;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/PopupAd;Lcom/db/android/api/entity/InfoEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iput-object p2, p0, Lcom/db/android/api/type/PopupAd$1;->val$e:Lcom/db/android/api/entity/InfoEntity;

    invoke-direct {p0}, Lcom/db/android/api/callback/a;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/PopupAd;->isShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/PopupAd$1;->val$e:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mListener:Lcom/db/android/api/listener/AdListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    return-void
.end method

.method public onImageSuccess(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-boolean v0, v0, Lcom/db/android/api/type/PopupAd;->isShowing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iput-boolean v4, v0, Lcom/db/android/api/type/PopupAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/db/android/api/type/PopupAd;->openTime:J

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget v1, v1, Lcom/db/android/api/type/PopupAd;->showTime:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PopupAd$1;->this$0:Lcom/db/android/api/type/PopupAd;

    iget-object v0, v0, Lcom/db/android/api/type/PopupAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v4}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    return-void
.end method
