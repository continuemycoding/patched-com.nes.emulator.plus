.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onSearchingEnd(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$count:I

.field private final synthetic val$showToast:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;ZI)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->val$showToast:Z

    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->val$count:I

    .line 989
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 992
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->progress:Landroid/widget/ProgressBar;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$4(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 996
    :try_start_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1001
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 1004
    :cond_0
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->val$showToast:Z

    if-eqz v0, :cond_1

    .line 1005
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->val$count:I

    if-lez v0, :cond_1

    .line 1007
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 1009
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    .line 1010
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->gallery_count_of_found_games:I

    .line 1009
    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1011
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;->val$count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1008
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1006
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1012
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1015
    :cond_1
    return-void

    .line 998
    :catch_0
    move-exception v0

    goto :goto_0
.end method
