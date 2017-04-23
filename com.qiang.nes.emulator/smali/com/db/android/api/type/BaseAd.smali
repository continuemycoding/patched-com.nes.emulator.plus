.class public Lcom/db/android/api/type/BaseAd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/db/android/api/factory/a;
.implements Lcom/db/android/api/inter/a;


# static fields
.field public static final AD_END:I = 0x0

.field public static final AD_EXIT:I = -0x2

.field public static final FORBIDDEN_TIME:I = 0x4b0

.field public static final NO_AD_MESSAGE:I = -0x1


# instance fields
.field protected adId:Ljava/lang/String;

.field protected config:Lcom/db/android/api/ui/factory/ViewConfig;

.field protected isAutoRemove:Z

.field protected isShowing:Z

.field protected mAdType:I

.field protected mAdView:Lcom/db/android/api/view/BaseAdView;

.field protected mAdmediaurl:Ljava/lang/String;

.field protected mContext:Landroid/app/Activity;

.field protected mHandler:Landroid/os/Handler;

.field protected mListener:Lcom/db/android/api/listener/AdListener;

.field protected mModel:I

.field protected mViewParent:Landroid/view/ViewGroup;

.field protected openTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/db/android/api/type/BaseAd$MyHandler;

    invoke-direct {v0, p0}, Lcom/db/android/api/type/BaseAd$MyHandler;-><init>(Lcom/db/android/api/inter/a;)V

    iput-object v0, p0, Lcom/db/android/api/type/BaseAd;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/db/android/api/retry/c;->n(Landroid/content/Context;)V

    new-instance v0, Lcom/db/android/api/type/BaseAd$MyHandler;

    invoke-direct {v0, p0}, Lcom/db/android/api/type/BaseAd$MyHandler;-><init>(Lcom/db/android/api/inter/a;)V

    iput-object v0, p0, Lcom/db/android/api/type/BaseAd;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/db/android/api/retry/c;->n(Landroid/content/Context;)V

    new-instance v0, Lcom/db/android/api/type/BaseAd$MyHandler;

    invoke-direct {v0, p0}, Lcom/db/android/api/type/BaseAd$MyHandler;-><init>(Lcom/db/android/api/inter/a;)V

    iput-object v0, p0, Lcom/db/android/api/type/BaseAd;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/db/android/api/type/BaseAd;->mViewParent:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public generateAd(I)Lcom/db/android/api/view/BaseAdView;
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/db/android/api/type/BaseAd;->mModel:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget v2, p0, Lcom/db/android/api/type/BaseAd;->mModel:I

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/PictureAdView;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_1
    new-instance v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget v2, p0, Lcom/db/android/api/type/BaseAd;->mModel:I

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/VideoAdView;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/db/android/api/view/GifAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget v2, p0, Lcom/db/android/api/type/BaseAd;->mModel:I

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/GifAdView;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v1, :cond_1

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/db/android/api/type/BaseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/PictureAdView;-><init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/db/android/api/type/BaseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/VideoAdView;-><init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/db/android/api/view/GifAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/db/android/api/type/BaseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    invoke-direct {v0, v1, v2}, Lcom/db/android/api/view/GifAdView;-><init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V

    goto :goto_0

    :cond_1
    packed-switch p1, :pswitch_data_2

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/db/android/api/view/PictureAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/db/android/api/view/PictureAdView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v0, Lcom/db/android/api/view/VideoAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/db/android/api/view/VideoAdView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v0, Lcom/db/android/api/view/GifAdView;

    iget-object v1, p0, Lcom/db/android/api/type/BaseAd;->mContext:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/db/android/api/view/GifAdView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public getDataFromNet()V
    .locals 0

    return-void
.end method

.method public getFromLoc()V
    .locals 0

    return-void
.end method

.method public handleCmd(Landroid/os/Message;)V
    .locals 0

    return-void
.end method

.method public initView(I)V
    .locals 1

    iput p1, p0, Lcom/db/android/api/type/BaseAd;->mAdType:I

    invoke-virtual {p0, p1}, Lcom/db/android/api/type/BaseAd;->generateAd(I)Lcom/db/android/api/view/BaseAdView;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/type/BaseAd;->mAdView:Lcom/db/android/api/view/BaseAdView;

    return-void
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onClear()V
    .locals 0

    return-void
.end method

.method public onKeyBackDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMenuDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyOkDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/db/android/api/type/BaseAd;->open(Z)V

    return-void
.end method

.method public open(Z)V
    .locals 0

    return-void
.end method

.method public postDataToNet()V
    .locals 0

    return-void
.end method

.method public setConfig(Lcom/db/android/api/ui/factory/ViewConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/BaseAd;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    return-void
.end method

.method public setmListener(Lcom/db/android/api/listener/AdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/db/android/api/type/BaseAd;->mListener:Lcom/db/android/api/listener/AdListener;

    return-void
.end method

.method public setmModel(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/type/BaseAd;->mModel:I

    return-void
.end method
