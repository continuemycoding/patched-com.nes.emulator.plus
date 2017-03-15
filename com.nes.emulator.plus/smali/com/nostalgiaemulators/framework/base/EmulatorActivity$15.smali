.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private final synthetic val$sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->val$sharedPreferences:Landroid/content/SharedPreferences;

    .line 1040
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v6, 0x1

    .line 1044
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    const-class v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "EXTRA_GAME"

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1046
    const-string v1, "EXTRA_BASE_DIR"

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$5(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1047
    const-string v1, "EXTRA_DIALOG_TYPE_INT"

    .line 1048
    const/4 v2, 0x2

    .line 1047
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1049
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1, v2, v0, v6}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->freeStartActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 1053
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    .line 1054
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "market://details?id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1055
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1054
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1053
    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 1058
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;->val$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "isRatedGame"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1059
    return-void
.end method
