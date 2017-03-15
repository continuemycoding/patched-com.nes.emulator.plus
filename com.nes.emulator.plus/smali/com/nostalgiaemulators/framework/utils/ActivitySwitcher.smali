.class public Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;
.super Ljava/lang/Object;
.source "ActivitySwitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;
    }
.end annotation


# static fields
.field private static final DEPTH:F = 400.0f

.field private static final DURATION:I = 0x12c


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animationIn(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 1
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationIn(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    .line 33
    return-void
.end method

.method public static animationIn(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 6
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;

    .prologue
    .line 37
    const/high16 v0, 0x42b40000    # 90.0f

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    .line 38
    return-void
.end method

.method public static animationOut(Landroid/view/View;Landroid/view/WindowManager;)V
    .locals 1
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationOut(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    .line 42
    return-void
.end method

.method public static animationOut(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 6
    .param p0, "container"    # Landroid/view/View;
    .param p1, "windowManager"    # Landroid/view/WindowManager;
    .param p2, "listener"    # Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;

    .prologue
    .line 46
    const/4 v0, 0x0

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/4 v2, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    .line 47
    return-void
.end method

.method private static apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 14
    .param p0, "fromDegree"    # F
    .param p1, "toDegree"    # F
    .param p2, "reverse"    # Z
    .param p3, "container"    # Landroid/view/View;
    .param p4, "windowManager"    # Landroid/view/WindowManager;
    .param p5, "listener"    # Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 56
    invoke-interface/range {p4 .. p4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 57
    .local v9, "display":Landroid/view/Display;
    const/4 v5, 0x0

    .line 58
    .local v5, "centerX":F
    const/4 v6, 0x0

    .line 60
    .local v6, "centerY":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xd

    if-lt v3, v4, :cond_1

    .line 61
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 62
    .local v10, "size":Landroid/graphics/Point;
    invoke-virtual {v9, v10}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 63
    iget v3, v10, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    .line 64
    iget v3, v10, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v3, v4

    .line 70
    .end local v10    # "size":Landroid/graphics/Point;
    :goto_0
    new-instance v2, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;

    .line 71
    const/high16 v7, 0x43c80000    # 400.0f

    move v3, p0

    move v4, p1

    move/from16 v8, p2

    .line 70
    invoke-direct/range {v2 .. v8}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 72
    .local v2, "a":Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;
    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;->reset()V

    .line 73
    const-wide/16 v12, 0x12c

    invoke-virtual {v2, v12, v13}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;->setDuration(J)V

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;->setFillAfter(Z)V

    .line 75
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 76
    if-eqz p5, :cond_0

    .line 77
    new-instance v3, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$1;

    move-object/from16 v0, p5

    invoke-direct {v3, v0}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$1;-><init>(Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    invoke-virtual {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 92
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->clearAnimation()V

    .line 93
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 94
    return-void

    .line 66
    .end local v2    # "a":Lcom/nostalgiaemulators/framework/utils/Rotate3dAnimation;
    :cond_1
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    .line 67
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v6, v3, v4

    goto :goto_0
.end method
