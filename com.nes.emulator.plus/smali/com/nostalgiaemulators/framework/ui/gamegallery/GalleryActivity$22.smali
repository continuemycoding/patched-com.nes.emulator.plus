.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onVirtualDPadTextEvent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

.field private final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->val$text:Ljava/lang/String;

    .line 1131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->isSearchBoxVisible:Z
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$6(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    const/4 v1, 0x1

    # invokes: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    .line 1138
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;->val$text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1140
    return-void
.end method
