.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    const/4 v1, 0x1

    .line 268
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 267
    invoke-virtual {v0, v1, v2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendControllerEmulatorKeyEvent(II)V

    .line 270
    :cond_0
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->resToKeyCode:Landroid/util/SparseIntArray;

    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 274
    invoke-virtual {v0, v1, v2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendControllerEmulatorKeyEvent(II)V

    .line 276
    :cond_0
    return-void
.end method
