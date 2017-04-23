.class public Lcom/db/android/api/type/PauseAd;
.super Lcom/db/android/api/type/BaseAd;


# instance fields
.field private urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/db/android/api/type/BaseAd;-><init>(Landroid/app/Activity;)V

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/type/BaseAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/widget/RelativeLayout;Lcom/db/android/api/ui/factory/ViewConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/type/BaseAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p3}, Lcom/db/android/api/type/PauseAd;->setConfig(Lcom/db/android/api/ui/factory/ViewConfig;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/db/android/api/type/PauseAd;->openTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4b0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public getDataFromNet()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v1, "adposition"

    const-string v2, "4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    sget-object v2, Lcom/db/android/api/url/a;->ef:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lcom/db/android/api/type/PauseAd$2;

    invoke-direct {v3, p0}, Lcom/db/android/api/type/PauseAd$2;-><init>(Lcom/db/android/api/type/PauseAd;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void
.end method

.method public getFromLoc()V
    .locals 9

    const/4 v1, 0x1

    const/4 v8, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/db/android/api/q;->a(I)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/db/android/api/type/PauseAd;->openTime:J

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/PauseAd;->initView(I)V

    iget-object v4, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getIscloseadtag()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Lcom/db/android/api/view/BaseAdView;->j(Z)V

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/PauseAd;->adId:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/PauseAd;->urls:Ljava/util/List;

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->loadData()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/utils/k;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_5

    invoke-static {v1}, Lcom/db/android/api/utils/k;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getMd5s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/db/android/api/entity/InfoEntity;->getMd5s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/GifAdView;

    iget-object v0, v0, Lcom/db/android/api/view/GifAdView;->fv:Lcom/db/android/api/gif/GifImageView;

    invoke-static {v1}, Lcom/db/android/api/utils/k;->b(Ljava/io/File;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/gif/GifImageView;->setBytes([B)V

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->loadData()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/db/android/api/q;->g(Lcom/db/android/api/entity/InfoEntity;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/db/android/api/q;->g(Lcom/db/android/api/entity/InfoEntity;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto/16 :goto_1
.end method

.method public handleCmd(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v1

    iget-object v2, p0, Lcom/db/android/api/type/PauseAd;->adId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v1

    iget-boolean v2, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    if-eqz v2, :cond_2

    if-gtz v0, :cond_0

    :cond_2
    iget-boolean v2, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    if-eqz v2, :cond_5

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clearFocus()V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v3}, Lcom/db/android/api/view/BaseAdView;->setFocusable(Z)V

    iput-boolean v3, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    iget-boolean v0, p0, Lcom/db/android/api/type/PauseAd;->isAutoRemove:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->onClear()V

    :cond_3
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getOnposeUrls()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/db/android/api/b;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getShowTimes()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/db/android/api/entity/InfoEntity;->setShowTimes(I)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->a(Lcom/db/android/api/entity/InfoEntity;)V

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->postDataToNet()V

    :cond_4
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0}, Lcom/db/android/api/listener/AdListener;->onAdCloseed()V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->urls:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getSeconds()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdCloseed(Ljava/lang/String;I)V

    goto :goto_0

    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clearFocus()V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v3}, Lcom/db/android/api/view/BaseAdView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->onClear()V

    goto/16 :goto_0
.end method

.method public initView(I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/db/android/api/type/BaseAd;->initView(I)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mViewParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/db/android/api/type/PauseAd;->mViewParent:Landroid/view/ViewGroup;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->width:I

    iget-object v2, p0, Lcom/db/android/api/type/PauseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v2, v2, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v1, v0}, Lcom/db/android/api/view/BaseAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/BaseAdView;->setDescendantFocusability(I)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v0, v0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v0, v0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->aT()V

    return-void

    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method public loadData()V
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v2

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v3, v0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->urls:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lcom/db/android/api/type/PauseAd$1;

    invoke-direct {v4, p0, v1}, Lcom/db/android/api/type/PauseAd$1;-><init>(Lcom/db/android/api/type/PauseAd;Lcom/db/android/api/entity/InfoEntity;)V

    invoke-virtual {v2, v3, v0, v4}, Lcom/db/android/api/l;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/db/android/api/callback/a;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/GifAdView;

    iget-object v0, v0, Lcom/db/android/api/view/GifAdView;->fv:Lcom/db/android/api/gif/GifImageView;

    invoke-virtual {v0}, Lcom/db/android/api/gif/GifImageView;->as()V

    iget-boolean v0, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/db/android/api/type/PauseAd;->isShowing:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/db/android/api/type/PauseAd;->openTime:J

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v3}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0
.end method

.method public onClear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clear()V

    iput-object v2, p0, Lcom/db/android/api/type/PauseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    :cond_0
    return-void
.end method

.method public onKeyMenuDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/PauseAd;->open(Z)V

    return-void
.end method

.method public open(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/db/android/api/AdSystem;->isInit:Z

    if-eqz v0, :cond_1

    :try_start_0
    iput-boolean p1, p0, Lcom/db/android/api/type/PauseAd;->isAutoRemove:Z

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->getFromLoc()V

    invoke-virtual {p0}, Lcom/db/android/api/type/PauseAd;->getDataFromNet()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0
.end method

.method public postDataToNet()V
    .locals 5

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/PauseAd;->adId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->f(Ljava/lang/String;)Lcom/db/android/api/entity/InfoEntity;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v0, "adid"

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "showtimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getShowTimes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clicktimes"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getClicktimes()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adposition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    if-eqz v0, :cond_0

    const-string v0, "dbadvalidate"

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getCipherkey()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/db/android/api/AdSystem;->getParams()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/db/android/api/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/db/android/api/type/PauseAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    sget-object v3, Lcom/db/android/api/url/a;->eg:Ljava/lang/String;

    invoke-static {v2}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    new-instance v4, Lcom/db/android/api/type/PauseAd$3;

    invoke-direct {v4, p0, v1}, Lcom/db/android/api/type/PauseAd$3;-><init>(Lcom/db/android/api/type/PauseAd;Lcom/db/android/api/entity/InfoEntity;)V

    invoke-virtual {v0, v3, v2, v4}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
