.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$2;
.super Ljava/lang/Object;
.source "CheatsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    const/4 v1, 0x0

    # invokes: Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->openCheatDetailDialog(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    .line 84
    return-void
.end method
