.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->stop()V

    .line 324
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$10;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->finish()V

    .line 325
    return-void
.end method
