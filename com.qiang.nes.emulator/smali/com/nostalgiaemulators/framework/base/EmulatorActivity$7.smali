.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showErrorAlert(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;->val$dialog:Landroid/app/AlertDialog;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 563
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;->val$dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 564
    return-void
.end method
