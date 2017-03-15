.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectServerDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Ljava/util/ArrayList;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->val$values:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->val$dialog:Landroid/app/Dialog;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 348
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->val$values:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;

    .line 350
    .local v2, "result":Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 352
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.nostalgiaemulators.framework.ui.remotecontroller.RemoteControllerActivity"

    iget-object v4, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v4, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    .line 354
    const-string v3, "IP"

    iget-object v4, v2, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver$DetectionResult;->address:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 355
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 356
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->broadcastReceiver:Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoReceiver;->stop()V

    .line 357
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->val$dialog:Landroid/app/Dialog;

    invoke-static {v3}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 358
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$12;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # invokes: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openPortDialog()V
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    .line 359
    return-void
.end method
