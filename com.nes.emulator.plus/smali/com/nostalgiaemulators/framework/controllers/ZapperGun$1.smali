.class Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;
.super Landroid/view/View;
.source "ZapperGun.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    .line 62
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/4 v8, 0x1

    .line 65
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->isEnabled:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$0(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v8

    .line 69
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 71
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 73
    .local v4, "y":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->startedInside:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$1(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 74
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$2(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$3(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxX:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$4(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_2

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxY:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$5(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_2

    .line 75
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$6(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v5

    invoke-interface {v5, v6, v6}, Lcom/nostalgiaemulators/framework/Emulator;->fireZapper(FF)V

    .line 79
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->inited:Z
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$7(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$8(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v2

    .line 83
    .local v2, "viewPort":Lcom/nostalgiaemulators/framework/base/ViewPort;
    if-eqz v2, :cond_0

    .line 87
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$9(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 88
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$10(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 89
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$2(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v6

    iget v7, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v6, v9

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$11(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 90
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$3(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v6

    iget v7, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    sub-float/2addr v6, v9

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$12(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 91
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$13(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 92
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    iget v6, v2, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$14(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V

    .line 93
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    invoke-static {v5, v8}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$15(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Z)V

    .line 96
    .end local v2    # "viewPort":Lcom/nostalgiaemulators/framework/base/ViewPort;
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 97
    .restart local v3    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 98
    .restart local v4    # "y":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$16(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Z)V

    .line 100
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$2(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$3(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxX:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$4(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxY:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$5(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 101
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    invoke-static {v5, v8}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$16(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Z)V

    .line 102
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$2(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    sub-float v5, v3, v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vpw:F
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$17(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v6

    div-float v0, v5, v6

    .line 103
    .local v0, "tx":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$3(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v5

    sub-float v5, v4, v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vph:F
    invoke-static {v6}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$18(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F

    move-result v6

    div-float v1, v5, v6

    .line 104
    .local v1, "ty":F
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;->this$0:Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    # getter for: Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulator:Lcom/nostalgiaemulators/framework/Emulator;
    invoke-static {v5}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->access$6(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lcom/nostalgiaemulators/framework/Emulator;->fireZapper(FF)V

    goto/16 :goto_0
.end method
