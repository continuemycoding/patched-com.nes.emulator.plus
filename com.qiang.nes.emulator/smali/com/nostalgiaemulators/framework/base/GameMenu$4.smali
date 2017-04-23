.class Lcom/nostalgiaemulators/framework/base/GameMenu$4;
.super Ljava/lang/Object;
.source "GameMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/base/GameMenu;->createButton(Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;ILandroid/app/Dialog;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

.field private final synthetic val$dialog:Landroid/app/Dialog;

.field private final synthetic val$item:Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/base/GameMenu;Landroid/app/Dialog;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$item:Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/GameMenu;->listener:Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$item:Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    invoke-interface {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;->onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V

    .line 278
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$4;->val$dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 280
    :cond_0
    return-void
.end method
