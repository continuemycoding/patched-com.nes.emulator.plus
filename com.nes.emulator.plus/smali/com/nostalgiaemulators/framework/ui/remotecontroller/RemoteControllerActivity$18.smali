.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openPortDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$portIdx:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->val$dialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->val$portIdx:I

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 498
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$18;->val$portIdx:I

    # invokes: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->start(I)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$4(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;I)V

    .line 499
    return-void
.end method
