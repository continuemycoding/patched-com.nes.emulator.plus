.class Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->show(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;


# direct methods
.method constructor <init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mListener:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;
    invoke-static {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$2(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mListener:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;
    invoke-static {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$2(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;

    move-result-object v1

    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mItems:Ljava/util/List;
    invoke-static {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$3(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;

    invoke-interface {v1, v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$OnItemSelectedListener;->onItemSelected(Lcom/u1aryz/android/lib/newpopupmenu/MenuItem;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$2;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$1(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 141
    return-void
.end method
