.class public Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher;
.super Ljava/lang/Object;
.source "AdFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;
    }
.end annotation


# static fields
.field public static final SHOW_ICON:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fetchAd(Ljava/lang/String;Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;)V
    .locals 2
    .param p0, "appNextId"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;

    .prologue
    .line 34
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;-><init>(Ljava/lang/String;Lcom/nostalgiaemulators/framework/ads/appnext/AdListener;)V

    .line 35
    .local v0, "task":Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 36
    return-void
.end method

.method public static invalidate()V
    .locals 2

    .prologue
    .line 39
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ads/appnext/AdFetcher$AdFetcherTask;->access$3(J)V

    .line 40
    return-void
.end method
