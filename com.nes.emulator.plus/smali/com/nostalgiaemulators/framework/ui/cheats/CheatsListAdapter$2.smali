.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;
.super Ljava/lang/Object;
.source "CheatsListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

.field private final synthetic val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->cheatsActivity:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$2;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->removeCheat(Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V

    .line 91
    return-void
.end method
