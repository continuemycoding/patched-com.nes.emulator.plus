.class Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;
.super Ljava/lang/Object;
.source "GalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

.field private final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->val$hasFocus:Z

    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 308
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    move-result-object v1

    .line 310
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 309
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 312
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->val$hasFocus:Z

    if-eqz v1, :cond_1

    .line 313
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    move-result-object v1

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v1

    .line 314
    const/4 v2, 0x1

    .line 313
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 321
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 318
    .restart local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;)Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;

    move-result-object v1

    # getter for: Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 317
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
