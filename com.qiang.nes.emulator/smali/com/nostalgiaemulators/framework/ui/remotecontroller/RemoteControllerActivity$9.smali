.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;->val$dialog:Landroid/app/Dialog;

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 317
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$9;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # invokes: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectIpDialog()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$2(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    .line 318
    return-void
.end method
