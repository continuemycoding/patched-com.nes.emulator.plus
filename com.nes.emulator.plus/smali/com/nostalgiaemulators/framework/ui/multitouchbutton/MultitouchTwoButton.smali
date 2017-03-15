.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;
.super Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;
.source "MultitouchTwoButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;
    }
.end annotation


# instance fields
.field protected firstButtonRID:I

.field private holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

.field protected secondButtonRID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, -0x1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->firstButtonRID:I

    .line 87
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->secondButtonRID:I

    .line 88
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, -0x1

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->firstButtonRID:I

    .line 87
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->secondButtonRID:I

    .line 88
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 42
    sget-object v2, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea:[I

    .line 41
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 46
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea_first_button:I

    const/4 v2, -0x1

    .line 45
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->firstButtonRID:I

    .line 48
    sget v1, Lcom/nostalgiaemulators/framework/R$styleable;->MultitouchTwoButtonArea_second_button:I

    const/4 v2, -0x1

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->secondButtonRID:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 53
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    throw v1
.end method

.method private initHolder()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 81
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->firstButtonRID:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 80
    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 82
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 83
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->secondButtonRID:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 82
    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 84
    return-void
.end method


# virtual methods
.method public getFirstBtnRID()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->firstButtonRID:I

    return v0
.end method

.method public getSecondBtnRID()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->secondButtonRID:I

    return v0
.end method

.method public onTouchEnter(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 59
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    if-nez v0, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->initHolder()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 64
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 65
    return-void
.end method

.method public onTouchExit(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 71
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    if-nez v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->initHolder()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 76
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 77
    return-void
.end method

.method public requestRepaint()V
    .locals 1

    .prologue
    .line 105
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchImageButton;->requestRepaint()V

    .line 106
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->firstButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 107
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->holder:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton$ViewHolder;->secondButton:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 108
    return-void
.end method
