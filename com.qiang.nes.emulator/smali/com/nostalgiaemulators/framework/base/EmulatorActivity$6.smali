.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 551
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    return-object v0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    new-instance v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6$1;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6$1;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 559
    return-void
.end method
