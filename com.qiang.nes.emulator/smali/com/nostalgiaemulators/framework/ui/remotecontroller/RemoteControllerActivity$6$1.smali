.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

.field private final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->val$hasFocus:Z

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 191
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;)Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    move-result-object v1

    .line 192
    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 191
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 194
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->val$hasFocus:Z

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;)Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    .line 196
    const/4 v2, 0x2

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 202
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6$1;->this$1:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;

    # getter for: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;->access$0(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$6;)Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    move-result-object v1

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 199
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
