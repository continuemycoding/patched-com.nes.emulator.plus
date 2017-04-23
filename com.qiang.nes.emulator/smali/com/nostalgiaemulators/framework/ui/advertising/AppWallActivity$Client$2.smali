.class Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;
.super Ljava/lang/Object;
.source "AppWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$1(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    # getter for: Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->dialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$1(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 91
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client$2;->this$1:Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;->access$0(Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity$Client;Landroid/app/ProgressDialog;)V

    .line 93
    :cond_0
    return-void
.end method
