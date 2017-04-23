.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showPleaseUpdateDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "goToMarket":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "goToMarket":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "market://details?id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 463
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 464
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 462
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 461
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    .restart local v0    # "goToMarket":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method
