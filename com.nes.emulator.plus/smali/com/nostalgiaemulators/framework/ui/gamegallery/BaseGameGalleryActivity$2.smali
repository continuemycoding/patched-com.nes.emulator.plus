.class Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;
.super Ljava/lang/Object;
.source "BaseGameGalleryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->showError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

.field private final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->val$message:Ljava/lang/String;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;)Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 306
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->error:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 307
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;->val$message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 308
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$1;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 314
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->exit:I

    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$2;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 321
    return-void
.end method
