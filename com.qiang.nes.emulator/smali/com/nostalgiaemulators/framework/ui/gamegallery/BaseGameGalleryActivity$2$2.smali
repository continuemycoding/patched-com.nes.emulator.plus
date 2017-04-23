.class Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$2;
.super Ljava/lang/Object;
.source "BaseGameGalleryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$2;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 317
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$2;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;)Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->finish()V

    .line 318
    return-void
.end method
