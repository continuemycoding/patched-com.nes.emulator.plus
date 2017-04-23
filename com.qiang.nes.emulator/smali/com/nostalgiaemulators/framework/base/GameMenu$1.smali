.class Lcom/nostalgiaemulators/framework/base/GameMenu$1;
.super Ljava/lang/Object;
.source "GameMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$1;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$1;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    # getter for: Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/GameMenu;->access$0(Lcom/nostalgiaemulators/framework/base/GameMenu;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/GameMenu$1;->this$0:Lcom/nostalgiaemulators/framework/base/GameMenu;

    # getter for: Lcom/nostalgiaemulators/framework/base/GameMenu;->dialog:Landroid/app/Dialog;
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/base/GameMenu;->access$0(Lcom/nostalgiaemulators/framework/base/GameMenu;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 180
    :cond_0
    return-void
.end method
