.class Lcom/db/android/api/type/ScreenAd$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/ScreenAd;


# direct methods
.method constructor <init>(Lcom/db/android/api/type/ScreenAd;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/ScreenAd$2;->this$0:Lcom/db/android/api/type/ScreenAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/db/android/api/type/ScreenAd$2;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-wide v2, v2, Lcom/db/android/api/type/ScreenAd;->openTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd$2;->this$0:Lcom/db/android/api/type/ScreenAd;

    iget-object v0, v0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
