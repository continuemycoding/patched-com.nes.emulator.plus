.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    .line 144
    const/4 v2, 0x0

    const/16 v3, 0x52

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 143
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V

    .line 146
    :cond_0
    return-void
.end method

.method public onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V
    .locals 4
    .param p1, "btn"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    .line 151
    const/4 v2, 0x1

    const/16 v3, 0x52

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 150
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendControllerAndroidKeyEvent(Landroid/view/KeyEvent;)V

    .line 152
    :cond_0
    return-void
.end method
