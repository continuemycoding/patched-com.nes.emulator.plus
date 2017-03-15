.class Lcom/nostalgiaemulators/framework/base/GameMenu$3;
.super Ljava/lang/Object;
.source "GameMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$3;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$3;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    # getter for: Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/GameMenu;->access$0(Lcom/nostalgiaemulators/framework/base/GameMenu;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$3;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$3;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-interface {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;->onGameMenuClosed(Lcom/nostalgiaemulators/framework/base/GameMenu;)V

    .line 252
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$3;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->access$1(Lcom/nostalgiaemulators/framework/base/GameMenu;Landroid/app/Dialog;)V

    .line 254
    :cond_0
    return-void
.end method
