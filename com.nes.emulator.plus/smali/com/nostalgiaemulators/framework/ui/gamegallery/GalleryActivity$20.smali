.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$message:Ljava/lang/String;

.field private final synthetic val$skipEntries:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->val$message:Ljava/lang/String;

    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->val$skipEntries:I

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1081
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1084
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;->val$skipEntries:I

    add-int/2addr v1, v2

    .line 1083
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 1086
    :cond_0
    return-void
.end method
