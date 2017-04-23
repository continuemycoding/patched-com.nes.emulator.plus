.class Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;
.super Ljava/util/TimerTask;
.source "VirtualDPad.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->onControllerEmulatorKeyEvent(Lcom/nostalgiaemulators/framework/remote/ControllerKeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

.field private final synthetic val$keyEvent:Landroid/view/KeyEvent;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/remote/VirtualDPad;Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;->this$0:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;->val$keyEvent:Landroid/view/KeyEvent;

    .line 134
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;->this$0:Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/remote/VirtualDPad$1;->val$keyEvent:Landroid/view/KeyEvent;

    # invokes: Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->sendKeyEvent(Landroid/view/KeyEvent;)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->access$0(Lcom/nostalgiaemulators/framework/remote/VirtualDPad;Landroid/view/KeyEvent;)V

    .line 138
    return-void
.end method
