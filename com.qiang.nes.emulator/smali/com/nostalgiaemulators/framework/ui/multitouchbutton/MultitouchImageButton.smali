.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
.super Landroid/widget/ImageButton;
.source "MultitouchImageButton.java"

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
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->repaint:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->repaint:Z

    .line 33
    return-void
.end method


# virtual methods
.method public isRepaintState()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->repaint:Z

    return v0
.end method

.method public onTouchEnter(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setPressed(Z)V

    .line 42
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;->onMultitouchEnter(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onTouchExit(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->setPressed(Z)V

    .line 49
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    invoke-interface {v0, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;->onMultitouchExit(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;)V

    .line 51
    :cond_0
    return-void
.end method

.method public removeRequestRepaint()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->repaint:Z

    .line 67
    return-void
.end method

.method public requestRepaint()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->repaint:Z

    .line 62
    return-void
.end method

.method public setOnMultitouchEventlistener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/OnMultitouchEventListener;

    .line 55
    return-void
.end method
