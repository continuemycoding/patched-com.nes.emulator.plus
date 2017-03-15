.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5$1;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5$1;->this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5$1;->this$1:Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;->access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/Manager;->resumeEmulation()V

    .line 408
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->detachFromWindow()V

    .line 409
    return-void
.end method
