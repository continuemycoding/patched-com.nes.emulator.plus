.class public Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;
.super Landroid/app/Activity;
.source "AppWallActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;
    }
.end annotation


# instance fields
.field private client:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget v1, Lcom/nostalgiaemulators/framework/R$layout;->activity_app_wall:I

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->setContentView(I)V

    .line 43
    sget v1, Lcom/nostalgiaemulators/framework/R$id;->appwallwebview:I

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 44
    .local v0, "view":Landroid/webkit/WebView;
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;-><init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)V

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->client:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    .line 45
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->client:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 47
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 48
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 49
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getAppWallUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 55
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->client:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->onPause()V

    .line 56
    return-void
.end method
