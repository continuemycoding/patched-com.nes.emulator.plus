.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;)Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    return-object v0
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    new-instance v3, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;

    invoke-direct {v3, p0, p2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;-><init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;Z)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 205
    if-nez p2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 207
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-boolean p2, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchMode:Z

    .line 212
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->client:Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;

    move-result-object v3

    .line 214
    if-eqz p2, :cond_2

    move v0, v1

    .line 213
    :goto_0
    invoke-virtual {v3, v1, v0, v2}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiControllerClient;->sendControllerCommandEvent(III)V

    .line 217
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 215
    goto :goto_0
.end method
