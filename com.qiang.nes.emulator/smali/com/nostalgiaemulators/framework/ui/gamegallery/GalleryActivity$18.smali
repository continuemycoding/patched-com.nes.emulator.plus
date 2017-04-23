.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onRomsFinderStart(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$searchNew:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;->val$searchNew:Z

    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1023
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$4(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1025
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;->val$searchNew:Z

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showSearchProgressDialog(Z)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$5(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    .line 1028
    :cond_0
    return-void
.end method
