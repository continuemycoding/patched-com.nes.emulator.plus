.class Lcom/db/android/api/type/TitleAd$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/TitleAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/TitleAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

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

    iget-object v4, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-wide v4, v4, Lcom/db/android/api/type/TitleAd;->openTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4b0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-wide v4, v4, Lcom/db/android/api/type/TitleAd;->openTime:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iget v4, v4, Lcom/db/android/api/type/TitleAd;->showTime:I

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iget v2, v2, Lcom/db/android/api/type/TitleAd;->mAdType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iput-boolean v0, v2, Lcom/db/android/api/type/TitleAd;->isShowing:Z

    iget-object v2, p0, Lcom/db/android/api/type/TitleAd$7;->this$0:Lcom/db/android/api/type/TitleAd;

    iget-object v2, v2, Lcom/db/android/api/type/TitleAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
