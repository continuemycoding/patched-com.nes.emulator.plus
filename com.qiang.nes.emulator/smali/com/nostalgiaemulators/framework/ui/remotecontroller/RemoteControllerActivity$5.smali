.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 0
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 180
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 2
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 176
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # invokes: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectServerDialog()Landroid/app/Dialog;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->dialog:Landroid/app/Dialog;

    .line 177
    return-void
.end method
