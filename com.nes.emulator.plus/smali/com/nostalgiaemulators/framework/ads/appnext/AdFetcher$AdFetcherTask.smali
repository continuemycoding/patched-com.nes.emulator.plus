.class Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;
.super Landroid/os/AsyncTask;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdFetcherTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/nostalgiaemulators/framework/ads/appnext/Ad;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdFetcherTask"

.field private static sLastFetchTime:J

.field private static sLastJson:Ljava/lang/String;


# instance fields
.field adListener:Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

.field private placementId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastJson:Ljava/lang/String;

    .line 47
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastFetchTime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;)V
    .locals 3
    .param p1, "placementId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->adListener:Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

    .line 51
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->placementId:Ljava/lang/String;

    .line 52
    const-string v0, "AdFetcherTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method static synthetic access$2()J
    .locals 2

    .prologue
    .line 47
    sget-wide v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastFetchTime:J

    return-wide v0
.end method

.method static synthetic access$3(J)V
    .locals 0

    .prologue
    .line 47
    sput-wide p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastFetchTime:J

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ads/appnext/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const-wide/16 v2, 0x12c

    .line 60
    .local v2, "minDelay":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sget-wide v10, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastFetchTime:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    cmp-long v7, v8, v2

    if-lez v7, :cond_1

    const/4 v4, 0x1

    .line 61
    .local v4, "shouldFetchNewAds":Z
    :goto_0
    const/4 v0, 0x0

    .line 63
    .local v0, "json":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 64
    const/4 v1, 0x5

    .line 65
    .local v1, "numAds":I
    const/4 v6, 0x1

    .line 66
    .local v6, "useImageImpressionReporting":Z
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->placementId:Ljava/lang/String;

    invoke-static {v7, v1, v6}, Lcom/nostalgiaemulators/framework/ads/appnext/RequestUrlBuilder;->buildUrl(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v5

    .line 68
    .local v5, "url":Ljava/lang/String;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/utils/UrlDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastJson:Ljava/lang/String;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastFetchTime:J

    .line 80
    .end local v1    # "numAds":I
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "useImageImpressionReporting":Z
    :cond_0
    :goto_1
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->allFromJSON(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    return-object v7

    .line 60
    .end local v0    # "json":Ljava/lang/String;
    .end local v4    # "shouldFetchNewAds":Z
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 76
    .restart local v0    # "json":Ljava/lang/String;
    .restart local v4    # "shouldFetchNewAds":Z
    :cond_2
    const-string v7, "AdFetcherTask"

    const-string v8, "using cached ads"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget-object v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->sLastJson:Ljava/lang/String;

    goto :goto_1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onPostExecute(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ads/appnext/Ad;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ads/appnext/Ad;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 88
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 89
    .local v1, "random":I
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    .line 90
    .local v0, "ad":Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->adListener:Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

    invoke-interface {v2, v0}, Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;->onAdFetched(Lcom/nostalgiaemulators/framework/ads/appnext/Ad;)V

    .line 95
    .end local v0    # "ad":Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    .end local v1    # "random":I
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->adListener:Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;->onFailedToFetchAd()V

    goto :goto_0
.end method
