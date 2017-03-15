.class public Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Ad"


# instance fields
.field private appUrl:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private impressionReported:Z

.field private impressionUrl:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private supportedVersion:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionReported:Z

    .line 42
    return-void
.end method

.method public static allFromJSON(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ads/appnext/Ad;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 70
    if-nez p0, :cond_1

    move-object v7, v9

    .line 110
    :cond_0
    :goto_0
    return-object v7

    .line 74
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v7, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ads/appnext/Ad;>;"
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 78
    .local v5, "jsonObj":Lorg/json/JSONObject;
    const-string v8, "apps"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 79
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 81
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_0

    .line 82
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONObject;

    .line 83
    .local v6, "o":Lorg/json/JSONObject;
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;-><init>()V

    .line 84
    .local v0, "ad":Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    const-string v8, "title"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->title:Ljava/lang/String;

    .line 85
    const-string v8, "urlApp"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->appUrl:Ljava/lang/String;

    .line 87
    const-string v8, "pixelImp"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 88
    const-string v8, "pixelImp"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionUrl:Ljava/lang/String;

    .line 91
    :cond_2
    const-string v8, "desc"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->description:Ljava/lang/String;

    .line 93
    const-string v8, "urlImg"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 94
    const-string v8, "urlImg"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->iconUrl:Ljava/lang/String;

    .line 97
    :cond_3
    const-string v8, "supportedVersion"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->supportedVersion:Ljava/lang/String;

    .line 98
    const-string v8, "androidPackage"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iput-object v8, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->packageName:Ljava/lang/String;

    .line 100
    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->isSupported()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 101
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 105
    .end local v0    # "ad":Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v5    # "jsonObj":Lorg/json/JSONObject;
    .end local v6    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v9

    .line 107
    goto/16 :goto_0
.end method

.method private canOpen()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionUrl:Ljava/lang/String;

    if-eqz v3, :cond_1

    move v0, v2

    .line 126
    .local v0, "needsImpressionReporting":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 127
    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionReported:Z

    if-nez v3, :cond_2

    .line 126
    :cond_0
    :goto_1
    return v1

    .end local v0    # "needsImpressionReporting":Z
    :cond_1
    move v0, v1

    .line 125
    goto :goto_0

    .restart local v0    # "needsImpressionReporting":Z
    :cond_2
    move v1, v2

    .line 126
    goto :goto_1
.end method

.method static compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 203
    const-string v5, "[^\\d.]"

    const-string v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 204
    const-string v5, "[^\\d.]"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 205
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "s1":Ljava/util/Scanner;
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, p1}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "s2":Ljava/util/Scanner;
    const-string v5, "\\."

    invoke-virtual {v0, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 208
    const-string v5, "\\."

    invoke-virtual {v1, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-nez v5, :cond_2

    .line 222
    :cond_1
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextInt()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 225
    :goto_0
    return v4

    .line 211
    :cond_2
    invoke-virtual {v0}, Ljava/util/Scanner;->nextInt()I

    move-result v2

    .line 212
    .local v2, "v1":I
    invoke-virtual {v1}, Ljava/util/Scanner;->nextInt()I

    move-result v3

    .line 214
    .local v3, "v2":I
    if-ge v2, v3, :cond_3

    .line 215
    const/4 v4, -0x1

    goto :goto_0

    .line 217
    :cond_3
    if-le v2, v3, :cond_0

    goto :goto_0

    .line 225
    .end local v2    # "v1":I
    .end local v3    # "v2":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static createFallbackAd(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    invoke-direct {v0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;-><init>()V

    .line 47
    .local v0, "ad":Lcom/nostalgiaemulators/framework/ads/appnext/Ad;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 46
    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 48
    .local v1, "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getFullStoreUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->appUrl:Ljava/lang/String;

    .line 49
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 51
    .local v2, "r":I
    packed-switch v2, :pswitch_data_0

    .line 61
    const-string v3, "Remove ads"

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->title:Ljava/lang/String;

    .line 62
    const-string v3, "Purchase the Pro version to remove ads and support the continued development of the emu."

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->description:Ljava/lang/String;

    .line 66
    :goto_0
    return-object v0

    .line 53
    :pswitch_0
    const-string v3, "Hate ads?"

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->title:Ljava/lang/String;

    .line 54
    const-string v3, "We have an ad-free version, too."

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->description:Ljava/lang/String;

    goto :goto_0

    .line 57
    :pswitch_1
    const-string v3, "Do you like this emulator?"

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->title:Ljava/lang/String;

    .line 58
    const-string v3, "The full version is even better :) Check it out."

    iput-object v3, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->description:Ljava/lang/String;

    goto :goto_0

    .line 51
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isSupported()Z
    .locals 4

    .prologue
    .line 185
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 188
    .local v0, "androidVersion":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->supportedVersion:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    .local v1, "compare":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 191
    const/4 v3, 0x0

    .line 198
    .end local v1    # "compare":I
    :goto_0
    return v3

    .line 194
    :catch_0
    move-exception v2

    .line 195
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->title:Ljava/lang/String;

    return-object v0
.end method

.method public open(Landroid/app/Activity;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->canOpen()Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    const-string v3, "Ad"

    const-string v4, "impression"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 137
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->appUrl:Ljava/lang/String;

    .line 138
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 140
    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 142
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Ad"

    const-string v4, "failed to open ad target url"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public reportImpression()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 114
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionReported:Z

    .line 119
    new-instance v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;-><init>(Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;)V

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->impressionUrl:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad$ReportImpressionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
