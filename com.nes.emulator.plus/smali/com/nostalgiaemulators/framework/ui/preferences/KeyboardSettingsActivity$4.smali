.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

.field private final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field private final synthetic val$pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/AlertDialog;Ljava/util/regex/Pattern;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->val$pattern:Ljava/util/regex/Pattern;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 208
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 205
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 190
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 191
    .local v1, "ok":Landroid/widget/Button;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 192
    .local v2, "txt":Ljava/lang/String;
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->val$pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 194
    .local v0, "m":Ljava/util/regex/Matcher;
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profilesNames:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$5(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 196
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
