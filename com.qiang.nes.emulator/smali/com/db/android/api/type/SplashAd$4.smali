.class Lcom/db/android/api/type/SplashAd$4;
.super Lcom/db/android/api/callback/b;


# instance fields
.field final synthetic this$0:Lcom/db/android/api/type/SplashAd;

.field final synthetic val$isAutoRemove:Z


# direct methods
.method constructor <init>(Lcom/db/android/api/type/SplashAd;Z)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iput-boolean p2, p0, Lcom/db/android/api/type/SplashAd$4;->val$isAutoRemove:Z

    invoke-direct {p0}, Lcom/db/android/api/callback/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v0, v0, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v0, v0, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v0, v0, Lcom/db/android/api/type/SplashAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/AdSystem;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-boolean v1, p0, Lcom/db/android/api/type/SplashAd$4;->val$isAutoRemove:Z

    iput-boolean v1, v0, Lcom/db/android/api/type/SplashAd;->isAutoRemove:Z

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/SplashAd;->getFromLoc()V

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/SplashAd;->getDataFromNet()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v0, v0, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/SplashAd$4;->this$0:Lcom/db/android/api/type/SplashAd;

    iget-object v0, v0, Lcom/db/android/api/type/SplashAd;->mListener:Lcom/db/android/api/listener/AdListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0
.end method
