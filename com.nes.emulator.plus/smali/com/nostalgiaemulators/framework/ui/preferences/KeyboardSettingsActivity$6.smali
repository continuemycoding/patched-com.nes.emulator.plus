.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

.field private final synthetic val$d:Landroid/app/Dialog;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/Dialog;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->val$d:Landroid/app/Dialog;

    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->val$position:I

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 457
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 454
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 448
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 449
    .local v0, "ch":C
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->val$d:Landroid/app/Dialog;

    iget v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;->val$position:I

    # invokes: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->proccessKeyEvent(Ljava/lang/String;Landroid/content/DialogInterface;II)Z
    invoke-static {v1, v2, v3, v0, v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$6(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Ljava/lang/String;Landroid/content/DialogInterface;II)Z

    .line 450
    return-void
.end method
