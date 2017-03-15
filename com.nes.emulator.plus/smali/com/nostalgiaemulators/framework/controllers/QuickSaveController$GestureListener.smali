.class Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "QuickSaveController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;


# direct methods
.method private constructor <init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;-><init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 84
    .local v0, "x":F
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->screenCenterX:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->access$0(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->quickLoad()V

    .line 91
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->screenCenterX:I
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->access$0(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;->this$0:Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->quickSave()V

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    const/4 v0, 0x1

    return v0
.end method
