.class Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;
.super Ljava/lang/Object;
.source "RemoteControllerActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field private final synthetic val$input:Landroid/widget/EditText;

.field private final synthetic val$okBtn:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->this$0:Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$input:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$okBtn:Landroid/widget/Button;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 430
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 427
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x0

    const/high16 v4, -0x10000

    .line 408
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 410
    .local v1, "num":I
    if-lez v1, :cond_0

    const/16 v2, 0x100

    if-ge v1, v2, :cond_0

    .line 411
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$input:Landroid/widget/EditText;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 412
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$okBtn:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 423
    .end local v1    # "num":I
    :goto_0
    return-void

    .line 415
    .restart local v1    # "num":I
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$input:Landroid/widget/EditText;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    .line 416
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$okBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 419
    .end local v1    # "num":I
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 421
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity$13;->val$okBtn:Landroid/widget/Button;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
