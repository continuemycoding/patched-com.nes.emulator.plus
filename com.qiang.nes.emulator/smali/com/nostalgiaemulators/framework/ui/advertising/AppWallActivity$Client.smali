.class Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;
.super Landroid/webkit/WebViewClient;
.source "AppWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;-><init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;)V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;-><init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 95
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 71
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;-><init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 66
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->startActivity(Landroid/content/Intent;)V

    .line 101
    const/4 v1, 0x1

    return v1
.end method
