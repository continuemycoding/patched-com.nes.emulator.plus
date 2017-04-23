.class Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;
.super Landroid/os/AsyncTask;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReportImpressionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 153
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 154
    .local v0, "impressionUrl":Ljava/lang/String;
    const-string v2, "Ad"

    const-string v3, "reporting impression"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/UrlDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "result":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 158
    const-string v2, "Ad"

    const-string v3, "failed to report impression"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 161
    :cond_0
    const-string v2, "Ad"

    const-string v3, "impression successfully reported"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
