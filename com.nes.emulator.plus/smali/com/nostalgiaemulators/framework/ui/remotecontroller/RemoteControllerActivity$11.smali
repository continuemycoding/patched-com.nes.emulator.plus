.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$BroadcastReceiverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectServerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

.field private final synthetic val$listAdapter:Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;

.field private final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Ljava/util/ArrayList;Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$values:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$listAdapter:Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServerDetect(Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    .prologue
    .line 332
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 334
    .local v0, "pos":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 341
    :goto_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$listAdapter:Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/ServerSelectAdapter;->notifyDataSetChanged()V

    .line 342
    return-void

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$11;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
