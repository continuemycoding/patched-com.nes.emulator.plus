.class public Lcom/qiang/framework/recommend/RecommendManager;
.super Ljava/lang/Object;
.source "RecommendManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showDialog(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 12
    invoke-static {p0}, Lcom/qiang/framework/helpers/SystemHelper;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-static {p0}, Lcom/qiang/framework/helpers/SystemHelper;->showQuitDialog(Landroid/app/Activity;)V

    .line 34
    :goto_0
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/qiang/framework/recommend/ProductManager;->getProducts()[Lcom/qiang/framework/recommend/Product;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    .line 20
    .local v0, "product":Lcom/qiang/framework/recommend/Product;
    iget v4, v0, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    if-nez v4, :cond_2

    .line 18
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_2
    iget-object v4, v0, Lcom/qiang/framework/recommend/Product;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/qiang/framework/helpers/SystemHelper;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u63a8\u8350\u4ea7\u54c1\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    .line 28
    invoke-static {p0, v0}, Lcom/qiang/framework/helpers/SystemHelper;->showCustomQuitDialog(Landroid/app/Activity;Lcom/qiang/framework/recommend/Product;)V

    goto :goto_0

    .line 33
    .end local v0    # "product":Lcom/qiang/framework/recommend/Product;
    :cond_3
    invoke-static {p0}, Lcom/qiang/framework/helpers/SystemHelper;->showQuitDialog(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public showMoreGames(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-static {p1}, Lcom/qiang/framework/helpers/SystemHelper;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "\u60a8\u5f53\u524d\u5728\u975ewifi\u72b6\u6001\u4e0b\uff0c\u8bf7\u8c28\u614e\u64cd\u4f5c"

    invoke-static {p1, v0}, Lcom/qiang/framework/helpers/SystemHelper;->showText(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_0
    return-void
.end method
