.class Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$1;
.super Ljava/lang/Object;
.source "ActivitySwitcher.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->apply3DRotation(FFZLandroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$listener:Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$1;->val$listener:Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$1;->val$listener:Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;->onAnimationFinished()V

    .line 89
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 84
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 80
    return-void
.end method
