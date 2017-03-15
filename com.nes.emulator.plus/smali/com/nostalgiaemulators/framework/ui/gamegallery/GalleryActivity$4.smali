.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 301
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    const/4 v1, 0x0

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;

    invoke-direct {v1, p0, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
