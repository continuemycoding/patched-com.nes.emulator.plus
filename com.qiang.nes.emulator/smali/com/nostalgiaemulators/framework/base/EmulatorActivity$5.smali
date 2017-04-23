.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showZapperCollisionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 399
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 400
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 399
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 402
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    sget v3, Lcom/nostalgiaemulators/framework/R$string;->game_zapper_collision:I

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 403
    sget v3, Lcom/nostalgiaemulators/framework/R$string;->warning:I

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 404
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5$1;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5$1;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 411
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/Manager;->pauseEmulation()Z

    .line 412
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 413
    return-void
.end method
