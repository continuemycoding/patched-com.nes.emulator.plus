.class public Lcom/db/android/api/type/ScreenAd;
.super Lcom/db/android/api/type/BaseAd;


# instance fields
.field entry:Lcom/db/android/api/entity/InfoEntity;

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/db/android/api/entity/InfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public picIndex:I

.field public showTime:I

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
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/db/android/api/type/BaseAd;-><init>(Landroid/app/Activity;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->showTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/type/BaseAd;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    const/4 v0, 0x6

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->showTime:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    return-void
.end method


# virtual methods
.method public getDataFromNet()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v1, "adposition"

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v1

    sget-object v2, Lcom/db/android/api/url/a;->ef:Ljava/lang/String;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    new-instance v3, Lcom/db/android/api/type/ScreenAd$4;

    invoke-direct {v3, p0}, Lcom/db/android/api/type/ScreenAd$4;-><init>(Lcom/db/android/api/type/ScreenAd;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void
.end method

.method public getFromLoc()V
    .locals 7

    const/4 v6, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/db/android/api/q;->b(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/db/android/api/type/ScreenAd;->openTime:J

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    iget v3, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/entity/InfoEntity;

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/ScreenAd;->initView(I)V

    iget-object v3, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getIscloseadtag()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/db/android/api/view/BaseAdView;->j(Z)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getSeconds()I

    move-result v0

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->showTime:I

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->loadData()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_1
.end method

.method public handleCmd(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCmd:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->n(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getOnposeUrls()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/b;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getShowTimes()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/db/android/api/entity/InfoEntity;->setShowTimes(I)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->b(Lcom/db/android/api/entity/InfoEntity;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/ScreenAd;->postDatatoNet(Lcom/db/android/api/entity/InfoEntity;)V

    :cond_3
    iget v0, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-boolean v0, p0, Lcom/db/android/api/type/ScreenAd;->isAutoRemove:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    :cond_4
    iput-boolean v3, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getSeconds()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdScreenEnd(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0}, Lcom/db/android/api/listener/AdListener;->onAdCloseed()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v2}, Lcom/db/android/api/entity/InfoEntity;->getSeconds()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/db/android/api/listener/AdListener;->onAdCloseed(Ljava/lang/String;I)V

    :cond_6
    iget v0, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mData:Ljava/util/List;

    iget v1, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/db/android/api/type/ScreenAd;->picIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/entity/InfoEntity;

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getSeconds()I

    move-result v0

    iput v0, p0, Lcom/db/android/api/type/ScreenAd;->showTime:I

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->loadData()V

    goto/16 :goto_0

    :cond_7
    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iput-boolean v3, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clearFocus()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v3}, Lcom/db/android/api/view/BaseAdView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0}, Lcom/db/android/api/listener/AdListener;->onAdKeyDownExit()V

    :cond_a
    iput-boolean v3, p0, Lcom/db/android/api/type/ScreenAd;->isShowing:Z

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clearFocus()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v3}, Lcom/db/android/api/view/BaseAdView;->setFocusable(Z)V

    iget-boolean v0, p0, Lcom/db/android/api/type/ScreenAd;->isAutoRemove:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    goto :goto_1
.end method

.method public initView(I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1}, Lcom/db/android/api/type/BaseAd;->initView(I)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mViewParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mViewParent:Landroid/view/ViewGroup;

    :cond_0
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v1, v0}, Lcom/db/android/api/view/BaseAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    const/high16 v1, 0x60000

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/BaseAdView;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    new-instance v1, Lcom/db/android/api/type/ScreenAd$2;

    invoke-direct {v1, p0}, Lcom/db/android/api/type/ScreenAd$2;-><init>(Lcom/db/android/api/type/ScreenAd;)V

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/BaseAdView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    new-instance v1, Lcom/db/android/api/type/ScreenAd$3;

    invoke-direct {v1, p0}, Lcom/db/android/api/type/ScreenAd$3;-><init>(Lcom/db/android/api/type/ScreenAd;)V

    invoke-virtual {v0, v1}, Lcom/db/android/api/view/BaseAdView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->aT()V

    return-void
.end method

.method public loadData()V
    .locals 4

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdMediaUrls()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/entity/InfoEntity;->parJSONArray(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/l;->d()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v0}, Lcom/db/android/api/entity/InfoEntity;->getAdType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    invoke-static {v0}, Lcom/db/android/api/utils/k;->a(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v1

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    check-cast v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v2, v0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->urls:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/db/android/api/type/ScreenAd$1;

    invoke-direct {v3, p0}, Lcom/db/android/api/type/ScreenAd$1;-><init>(Lcom/db/android/api/type/ScreenAd;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/db/android/api/l;->a(Landroid/widget/ImageView;Ljava/lang/String;Lcom/db/android/api/callback/a;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/q;->d(Landroid/content/Context;)Lcom/db/android/api/q;

    move-result-object v0

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->entry:Lcom/db/android/api/entity/InfoEntity;

    invoke-virtual {v1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/db/android/api/q;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onClear()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mViewParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    invoke-virtual {v0}, Lcom/db/android/api/view/BaseAdView;->clear()V

    iput-object v2, p0, Lcom/db/android/api/type/ScreenAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/l;->c(Landroid/content/Context;)Lcom/db/android/api/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/l;->d()V

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

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/ScreenAd;->open(Z)V

    return-void
.end method

.method public open(Z)V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/db/android/api/AdSystem;->isInit:Z

    if-eqz v0, :cond_1

    :try_start_0
    iput-boolean p1, p0, Lcom/db/android/api/type/ScreenAd;->isAutoRemove:Z

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->getFromLoc()V

    invoke-virtual {p0}, Lcom/db/android/api/type/ScreenAd;->getDataFromNet()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mListener:Lcom/db/android/api/listener/AdListener;

    invoke-virtual {v0, v1}, Lcom/db/android/api/listener/AdListener;->onAdOpened(Z)V

    goto :goto_0
.end method

.method public postDatatoNet(Lcom/db/android/api/entity/InfoEntity;)V
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/db/android/api/b;->a(Ljava/util/Map;)V

    const-string v0, "adid"

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "showtimes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getShowTimes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "clicktimes"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getClicktimes()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "adposition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getAdPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    sget-boolean v0, Lcom/db/android/api/AdSystem;->isLoadLib:Z

    if-eqz v0, :cond_0

    const-string v0, "dbadvalidate"

    invoke-virtual {p1}, Lcom/db/android/api/entity/InfoEntity;->getCipherkey()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/db/android/api/AdSystem;->getParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/db/android/api/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/db/android/api/type/ScreenAd;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/db/android/api/b;->a(Landroid/content/Context;)Lcom/db/android/api/b;

    move-result-object v0

    sget-object v2, Lcom/db/android/api/url/a;->eg:Ljava/lang/String;

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/f;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    new-instance v3, Lcom/db/android/api/type/ScreenAd$5;

    invoke-direct {v3, p0, p1}, Lcom/db/android/api/type/ScreenAd$5;-><init>(Lcom/db/android/api/type/ScreenAd;Lcom/db/android/api/entity/InfoEntity;)V

    invoke-virtual {v0, v2, v1, v3}, Lcom/db/android/api/b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/db/android/api/callback/b;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
