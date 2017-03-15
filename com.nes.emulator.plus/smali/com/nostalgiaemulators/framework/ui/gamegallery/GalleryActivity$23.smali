.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onVirtualDPadCommandEvent(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;->val$show:Z

    .line 1151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;->val$show:Z

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    .line 1154
    return-void
.end method
