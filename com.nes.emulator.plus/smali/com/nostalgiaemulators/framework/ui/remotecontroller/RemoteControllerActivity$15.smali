.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openSelectIpDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$prefix:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/app/Dialog;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$prefix:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$input:Landroid/widget/EditText;

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 444
    :try_start_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 451
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 452
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$prefix:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->val$input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    .line 453
    const-string v2, "IP"

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->ip:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 454
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 455
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$15;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    # invokes: Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->openPortDialog()V
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;)V

    .line 456
    return-void

    .line 446
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
