.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V
    invoke-static {v1, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    .line 294
    return-void

    .line 293
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
