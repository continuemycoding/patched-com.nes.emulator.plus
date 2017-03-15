.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;->val$alertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 214
    .local v0, "ok":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    return-void
.end method
