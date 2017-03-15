.class Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$3;
.super Landroid/webkit/WebViewClient;
.source "BaseGameGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getAboutDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    .line 362
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    .line 374
    .local v2, "response":Landroid/webkit/WebResourceResponse;
    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 376
    :try_start_0
    const-string v0, "yep.html"

    .line 377
    .local v0, "asset":Ljava/lang/String;
    new-instance v3, Landroid/webkit/WebResourceResponse;

    const-string v4, "application/html"

    .line 378
    const-string v5, "UTF8"

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    .line 379
    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 377
    invoke-direct {v3, v4, v5, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "response":Landroid/webkit/WebResourceResponse;
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    move-object v2, v3

    .line 386
    .end local v0    # "asset":Ljava/lang/String;
    .end local v3    # "response":Landroid/webkit/WebResourceResponse;
    .restart local v2    # "response":Landroid/webkit/WebResourceResponse;
    :cond_0
    :goto_0
    return-object v2

    .line 381
    :catch_0
    move-exception v1

    .line 382
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method
