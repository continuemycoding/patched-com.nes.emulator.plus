.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showSearchProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$act:Landroid/app/Activity;

.field private final synthetic val$zipMode:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Landroid/app/Activity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->val$act:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->val$zipMode:Z

    .line 959
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 961
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->val$act:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 962
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v1, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 963
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->val$zipMode:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_zip_search_label:I

    :goto_0
    invoke-virtual {v2, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 965
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 966
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 967
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 968
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 969
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x2

    .line 970
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    sget v3, Lcom/nostalgiaemulators/framework/R$string;->cancel:I

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 971
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16$1;

    invoke-direct {v3, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;)V

    .line 969
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 978
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-static {v0, v4}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 980
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xd

    if-le v0, v1, :cond_0

    .line 981
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressNumberFormat(Ljava/lang/String;)V

    .line 982
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressPercentFormat(Ljava/text/NumberFormat;)V

    .line 984
    :cond_0
    return-void

    .line 964
    :cond_1
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_sdcard_search_label:I

    goto :goto_0
.end method
