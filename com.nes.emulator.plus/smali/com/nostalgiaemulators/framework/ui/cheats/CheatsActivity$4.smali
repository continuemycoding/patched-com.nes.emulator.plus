.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;
.super Ljava/lang/Object;
.source "CheatsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->openCheatDetailDialog(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

.field private final synthetic val$chars:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5
    .param p1, "arg0"    # Landroid/text/Editable;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "s":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 146
    .local v0, "locale":Ljava/util/Locale;
    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 151
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-le v3, v4, :cond_2

    .line 153
    const-string v3, "\\p{InCombiningDiacriticalMarks}+"

    const-string v4, ""

    .line 152
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "newText":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 156
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 160
    :cond_1
    move-object v2, v1

    .line 163
    .end local v1    # "newText":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v3

    .line 164
    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getCheatInvalidCharsRegex()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    .line 163
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    .restart local v1    # "newText":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 167
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 171
    :cond_3
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 172
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_4
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->save:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 139
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 135
    return-void
.end method
