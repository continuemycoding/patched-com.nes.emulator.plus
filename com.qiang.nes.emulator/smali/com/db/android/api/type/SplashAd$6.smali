.class Lcom/db/android/api/type/SplashAd$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/SplashAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/SplashAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-wide v4, v4, Lcom/db/android/api/type/SplashAd;->openTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-wide v4, v4, Lcom/db/android/api/type/SplashAd;->openTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iget v4, v4, Lcom/db/android/api/type/SplashAd;->showTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iget v2, v2, Lcom/db/android/api/type/SplashAd;->mAdType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iput-boolean v0, v2, Lcom/db/android/api/type/SplashAd;->isShowing:Z

    iget-object v2, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v2, v2, Lcom/db/android/api/type/SplashAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    const/16 v0, 0x17

    if-eq p2, v0, :cond_2

    const/16 v0, 0x42

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$6;->this$0:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/db/android/api/type/SplashAd;->onKeyOkDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
