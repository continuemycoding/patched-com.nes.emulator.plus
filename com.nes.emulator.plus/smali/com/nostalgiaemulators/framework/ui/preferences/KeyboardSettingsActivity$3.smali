.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;
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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 180
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    const v1, 0x9db37

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setResult(I)V

    .line 181
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->finish()V

    .line 182
    return-void
.end method
