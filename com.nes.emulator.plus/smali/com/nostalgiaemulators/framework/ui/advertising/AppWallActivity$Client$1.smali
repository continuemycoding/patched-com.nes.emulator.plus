.class Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;
.super Ljava/lang/Object;
.source "AppWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$3(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->this$0:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$3(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$0(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;Landroid/app/ProgressDialog;)V

    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$1(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$1;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$1(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 79
    :cond_0
    return-void
.end method
