.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;
.super Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
.source "MultitouchTwoButtonArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;
    }
.end annotation


# instance fields
.field protected firstButtonRID:I

.field private holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

.field protected secondButtonRID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->firstButtonRID:I

    .line 89
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->secondButtonRID:I

    .line 90
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->firstButtonRID:I

    .line 89
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->secondButtonRID:I

    .line 90
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->setVisibility(I)V

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 48
    sget-object v2, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea:[I

    .line 47
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea_first_button:I

    const/4 v2, -0x1

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->firstButtonRID:I

    .line 54
    sget v1, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea_second_button:I

    const/4 v2, -0x1

    .line 53
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->secondButtonRID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    throw v1
.end method

.method private initHolder()V
    .locals 3

    .prologue
    .line 82
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 83
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->firstButtonRID:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 82
    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 84
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 85
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->secondButtonRID:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 84
    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 86
    return-void
.end method


# virtual methods
.method public getFirstBtnRID()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->firstButtonRID:I

    return v0
.end method

.method public getSecondBtnRID()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->secondButtonRID:I

    return v0
.end method

.method public onTouchEnter(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    if-nez v0, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->initHolder()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 68
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 69
    return-void
.end method

.method public onTouchExit(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->initHolder()V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 78
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 79
    return-void
.end method

.method public requestRepaint()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->requestRepaint()V

    .line 108
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 109
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 110
    return-void
.end method
