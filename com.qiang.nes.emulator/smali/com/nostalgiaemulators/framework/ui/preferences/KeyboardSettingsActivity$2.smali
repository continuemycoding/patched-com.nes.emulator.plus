.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

.field private final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->val$editText:Landroid/widget/EditText;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 167
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->val$editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 168
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    .line 169
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    sget v3, Lcom/nostalgiaemulators/framework/R$string;->key_profile_pref:I

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 170
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 168
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 172
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "EXTRA_PROFILE_NAME"

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setResult(ILandroid/content/Intent;)V

    .line 174
    return-void
.end method
