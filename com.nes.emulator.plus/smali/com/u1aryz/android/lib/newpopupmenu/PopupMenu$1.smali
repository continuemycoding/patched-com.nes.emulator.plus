.class Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$1;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;


# direct methods
.method constructor <init>(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$1;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu$1;->this$0:Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;

    # getter for: Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->mPopupWindow:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;->access$1(Lcom/u1aryz/android/lib/newpopupmenu/PopupMenu;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 68
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
