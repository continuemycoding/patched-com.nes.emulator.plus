.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;
.super Landroid/widget/Button;
.source "MultitouchButton.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;


# instance fields
.field listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

.field protected repaint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->repaint:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->repaint:Z

    .line 31
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 0

    .prologue
    .line 74
    invoke-super {p0}, Landroid/widget/Button;->invalidate()V

    .line 75
    return-void
.end method

.method public isRepaintState()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->repaint:Z

    return v0
.end method

.method public onTouchEnter(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setPressed(Z)V

    .line 40
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;->onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onTouchExit(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->setPressed(Z)V

    .line 47
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;->onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V

    .line 49
    :cond_0
    return-void
.end method

.method public removeRequestRepaint()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->repaint:Z

    .line 65
    return-void
.end method

.method public requestRepaint()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->repaint:Z

    .line 60
    return-void
.end method

.method public setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    .line 53
    return-void
.end method
