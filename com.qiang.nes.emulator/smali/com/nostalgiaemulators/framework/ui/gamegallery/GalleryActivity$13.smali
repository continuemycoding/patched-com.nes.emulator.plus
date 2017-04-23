.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$13;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$13;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 799
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$13;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getAboutDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 800
    return-void
.end method
