.class Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;
.super Landroid/view/View;
.source "QuickSaveController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    .line 100
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 104
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    div-int/lit8 v1, p1, 0x2

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->access$1(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;I)V

    .line 105
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 108
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->isEnabled:Z
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->access$2(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v1

    .line 112
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 114
    .local v0, "pointerId":I
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    iget-object v2, v2, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    invoke-virtual {v2, v0}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->isPointerHandled(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->access$3(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method
