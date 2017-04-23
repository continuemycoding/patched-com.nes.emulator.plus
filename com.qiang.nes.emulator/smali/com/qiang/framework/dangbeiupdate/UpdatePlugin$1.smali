.class final Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;
.super Lcom/qiang/framework/download/DownloadItem;
.source "UpdatePlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiang/framework/dangbeiupdate/UpdatePlugin;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/listener/UpdateManagerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$product:Lcom/qiang/framework/recommend/Product;

.field final synthetic val$updateManagerListener:Lcom/qiang/framework/listener/UpdateManagerListener;


# direct methods
.method constructor <init>(Lcom/qiang/framework/recommend/Product;Lcom/qiang/framework/listener/UpdateManagerListener;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iput-object p2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$updateManagerListener:Lcom/qiang/framework/listener/UpdateManagerListener;

    invoke-direct {p0}, Lcom/qiang/framework/download/DownloadItem;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p1}, Lcom/qiang/framework/helpers/FileHelper;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "json":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    const-class v3, Lcom/qiang/framework/recommend/Product;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiang/framework/recommend/Product;

    .line 46
    .local v1, "newProduct":Lcom/qiang/framework/recommend/Product;
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v1, Lcom/qiang/framework/recommend/Product;->download_url:Ljava/lang/String;

    iput-object v3, v2, Lcom/qiang/framework/recommend/Product;->url:Ljava/lang/String;

    .line 47
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v1, Lcom/qiang/framework/recommend/Product;->app_version:Ljava/lang/String;

    iput-object v3, v2, Lcom/qiang/framework/recommend/Product;->versionName:Ljava/lang/String;

    .line 48
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget v3, v1, Lcom/qiang/framework/recommend/Product;->app_code:I

    iput v3, v2, Lcom/qiang/framework/recommend/Product;->versionCode:I

    .line 49
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v1, Lcom/qiang/framework/recommend/Product;->app_updateinfo:Ljava/lang/String;

    iput-object v3, v2, Lcom/qiang/framework/recommend/Product;->releaseNote:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v1, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    iput-object v3, v2, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v2, v2, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    iget-object v3, v3, Lcom/qiang/framework/recommend/Product;->app_scanimg:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qiang/framework/recommend/Product;->screenshotUrls:[Ljava/lang/String;

    .line 55
    :cond_0
    invoke-static {}, Lcom/qiang/framework/recommend/ProductManager;->save()V

    .line 57
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$updateManagerListener:Lcom/qiang/framework/listener/UpdateManagerListener;

    if-eqz v2, :cond_1

    .line 58
    iget-object v2, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$updateManagerListener:Lcom/qiang/framework/listener/UpdateManagerListener;

    iget-object v3, p0, Lcom/qiang/framework/dangbeiupdate/UpdatePlugin$1;->val$product:Lcom/qiang/framework/recommend/Product;

    invoke-interface {v2, v3}, Lcom/qiang/framework/listener/UpdateManagerListener;->onUpdateAvailable(Lcom/qiang/framework/recommend/Product;)V

    .line 59
    :cond_1
    return-void
.end method
