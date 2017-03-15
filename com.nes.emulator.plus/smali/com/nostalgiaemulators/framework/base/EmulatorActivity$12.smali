.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->openTimeTravelDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private final synthetic val$checkPro:Z


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iput-boolean p2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->val$checkPro:Z

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 845
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    if-eqz v1, :cond_0

    .line 846
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->val$checkPro:Z

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isAdvertisingVersion(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 848
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 849
    const-string v2, "Only available in Pro version"

    .line 848
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 850
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$4(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/GameMenu;

    move-result-object v1

    .line 855
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_back_to_past:I

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->findGameMenuItem(I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-result-object v0

    .line 858
    .local v0, "item":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isTimeshiftEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 859
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 860
    const-string v2, "Rewinding is disabled in preferences"

    .line 859
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 861
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 864
    :cond_2
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    # getter for: Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->access$4(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/GameMenu;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V

    goto :goto_0
.end method
