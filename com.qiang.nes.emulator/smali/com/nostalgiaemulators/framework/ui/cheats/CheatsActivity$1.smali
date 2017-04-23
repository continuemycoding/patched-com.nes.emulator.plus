.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$1;
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->finish()V

    .line 77
    return-void
.end method
