.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;
.super Ljava/lang/Object;
.source "CheatsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

.field private final synthetic val$desc:Landroid/widget/EditText;

.field private final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$chars:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$desc:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$dialog:Landroid/app/Dialog;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$desc:Landroid/widget/EditText;

    .line 184
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->access$2(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->notifyDataSetChanged()V

    .line 192
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->gameHash:Ljava/lang/String;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->cheats:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->access$1(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->saveCheats(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 193
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 194
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$chars:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->chars:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$5;->val$desc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->desc:Ljava/lang/String;

    goto :goto_0
.end method
