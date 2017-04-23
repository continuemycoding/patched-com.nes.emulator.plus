.class Lcom/db/android/api/type/SplashAd$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/SplashAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/SplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-wide v4, v4, Lcom/db/android/api/type/SplashAd;->openTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-wide v4, v4, Lcom/db/android/api/type/SplashAd;->openTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget v4, v4, Lcom/db/android/api/type/SplashAd;->showTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget v2, v2, Lcom/db/android/api/type/SplashAd;->mAdType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iput-boolean v0, v2, Lcom/db/android/api/type/SplashAd;->isShowing:Z

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->adId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v0, v2, :cond_4

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-static {v2}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v2

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->adId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getClickparams()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/db/android/api/utils/k;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v3}, Lcom/db/android/api/listener/AdListener;->onAdClick()V

    :cond_3
    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getClickparams()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/db/android/api/utils/k;->e(Landroid/content/Context;Ljava/lang/String;)Z

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v3

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getClickUrls()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/db/android/api/b;->d(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getClicktimes()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/db/android/api/entity/InfoEntity;->setClicktimes(I)V

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-static {v3}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v3, v3, Lcom/db/android/api/type/SplashAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$8;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method
