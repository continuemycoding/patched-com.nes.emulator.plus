.class Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;
.super Ljava/lang/Object;
.source "FreeAppUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->showOfflineDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;->val$activity:Landroid/app/Activity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;->val$activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/advertising/AdBlockerDetector;->isBlockerInstalled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->adblocker_installed:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 60
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 61
    return-void

    .line 57
    :cond_0
    sget v1, Lcom/nostalgiaemulators/framework/R$string;->internet_needed:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
