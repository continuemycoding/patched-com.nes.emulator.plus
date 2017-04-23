.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 975
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->stopRomsFinding()V

    .line 976
    return-void
.end method
