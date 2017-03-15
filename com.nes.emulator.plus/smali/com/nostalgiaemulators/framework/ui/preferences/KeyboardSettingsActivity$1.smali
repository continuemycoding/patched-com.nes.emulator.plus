.class Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;
.super Ljava/lang/Object;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

.field private final synthetic val$plv:Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->val$plv:Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 6
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v5, 0x0

    .line 136
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 138
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    .local v0, "currentY":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 145
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$3(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    neg-int v4, v4

    add-int v2, v4, v0

    .line 146
    .local v2, "scrollY":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->val$plv:Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;

    invoke-virtual {v4, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->setOffset(I)V

    .line 148
    .end local v0    # "currentY":I
    .end local v1    # "i":I
    .end local v2    # "scrollY":I
    :cond_0
    return-void

    .line 142
    .restart local v0    # "currentY":I
    .restart local v1    # "i":I
    :cond_1
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->access$4(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->getRowHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 132
    return-void
.end method
