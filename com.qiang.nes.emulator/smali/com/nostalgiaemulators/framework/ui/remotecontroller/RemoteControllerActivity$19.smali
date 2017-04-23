.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->finish()V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 536
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 539
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # invokes: Landroid/app/Activity;->finish()V
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$5(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    .line 540
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$19;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    invoke-virtual {v0, v1, v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->overridePendingTransition(II)V

    .line 541
    return-void
.end method
