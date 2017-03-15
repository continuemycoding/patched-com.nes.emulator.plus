.class Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;
.super Ljava/lang/Object;
.source "EmulatorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 1001
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runTimeMachine:Z

    .line 1007
    :try_start_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/Manager;->resumeEmulation()V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    return-void

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    .local v0, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;->this$0:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_0
.end method
