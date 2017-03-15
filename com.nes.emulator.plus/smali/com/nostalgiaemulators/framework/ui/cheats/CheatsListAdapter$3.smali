.class Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;
.super Ljava/lang/Object;
.source "CheatsListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;ILcom/nostalgiaemulators/framework/ui/cheats/Cheat;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->val$position:I

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 97
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->val$position:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->val$position:I

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->val$cheat:Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;

    iput-boolean p2, v0, Lcom/nostalgiaemulators/framework/ui/cheats/Cheat;->enable:Z

    .line 102
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter$3;->this$0:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsListAdapter;->cheatsActivity:Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;->saveCheats()V

    goto :goto_0
.end method
