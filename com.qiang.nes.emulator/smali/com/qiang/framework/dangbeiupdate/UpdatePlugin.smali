.class public Lcom/qiang/framework/dangbeiupdate/UpdatePlugin;
.super Ljava/lang/Object;
.source "UpdatePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/qiang/framework/listener/UpdateManagerListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "updateManagerListener"    # Lcom/qiang/framework/listener/UpdateManagerListener;

    .prologue
    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiang/framework/recommend/ProductManager;->getProduct(Ljava/lang/String;)Lcom/qiang/framework/recommend/Product;

    move-result-object v0

    .line 22
    .local v0, "product":Lcom/qiang/framework/recommend/Product;
    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/listener/UpdateManagerListener;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/listener/UpdateManagerListener;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/qiang/framework/recommend/Product;
    .param p2, "updateManagerListener"    # Lcom/qiang/framework/listener/UpdateManagerListener;

    .prologue
    .line 30
    iget v1, p1, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    if-nez v1, :cond_1

    .line 32
    if-eqz p2, :cond_0

    .line 33
    invoke-interface {p2}, Lcom/qiang/framework/listener/UpdateManagerListener;->onNoUpdateAvailable()V

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    new-instance v0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;

    invoke-direct {v0, p1, p2}, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;-><init>(Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/listener/UpdateManagerListener;)V

    .line 62
    .local v0, "downloadItem":Lcom/qiang/framework/download/DownloadItem;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://api.dangbei.net/dbapinew/view_app.php?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/qiang/framework/recommend/Product;->dangbei_appId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qiang/framework/download/DownloadItem;->url:Ljava/lang/String;

    .line 64
    new-instance v1, Lcom/qiang/framework/download/DownloadFileFromURL;

    invoke-direct {v1}, Lcom/qiang/framework/download/DownloadFileFromURL;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/qiang/framework/download/DownloadItem;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/qiang/framework/download/DownloadFileFromURL;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
