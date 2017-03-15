.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onRomsFinderZipPartStart(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$countEntries:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->val$countEntries:I

    .line 1035
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 1040
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1041
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const-string v1, "%1d/%2d"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 1042
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 1043
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    .line 1042
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 1047
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->gallery_start_sip_search_label:I

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1048
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1049
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;->val$countEntries:I

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 1051
    :cond_1
    return-void
.end method
