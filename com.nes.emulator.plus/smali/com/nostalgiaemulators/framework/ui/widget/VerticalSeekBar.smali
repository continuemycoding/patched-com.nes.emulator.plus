.class public Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# instance fields
.field private lastProgress:I

.field private onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 22
    return-void
.end method


# virtual methods
.method public declared-synchronized getMaximum()I
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 40
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 41
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 44
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getProgress()I

    move-result v0

    .line 110
    .local v0, "progress":I
    packed-switch p1, :pswitch_data_0

    .line 127
    .end local v0    # "progress":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/SeekBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 112
    .restart local v0    # "progress":I
    :pswitch_0
    if-lez v0, :cond_0

    .line 114
    add-int/lit8 v2, v0, -0x2

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setProgress(I)V

    .line 115
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->update()V

    goto :goto_0

    .line 119
    :pswitch_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 121
    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setProgress(I)V

    .line 122
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->update()V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 36
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 29
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 30
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v1, v2

    .line 102
    goto :goto_0

    .line 64
    :pswitch_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setPressed(Z)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 69
    :pswitch_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 70
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I

    move-result v3

    .line 71
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    .line 70
    sub-int v0, v3, v4

    .line 74
    .local v0, "progress":I
    if-gez v0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getMax()I

    move-result v0

    .line 80
    :cond_2
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setProgress(I)V

    .line 81
    iget v3, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    if-eq v0, v3, :cond_3

    .line 83
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 84
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0, v0, v2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 87
    :cond_3
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v1, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 88
    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setPressed(Z)V

    .line 89
    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 92
    .end local v0    # "progress":I
    :pswitch_2
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v3, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setPressed(Z)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 97
    :pswitch_3
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setPressed(Z)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setSelected(Z)V

    goto :goto_1

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public declared-synchronized setMaximum(I)V
    .locals 1
    .param p1, "maximum"    # I

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "onChangeListener"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 52
    return-void
.end method

.method public declared-synchronized setProgressAndThumb(I)V
    .locals 4
    .param p1, "progress"    # I

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setProgress(I)V

    .line 146
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 147
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    if-eq p1, v0, :cond_0

    .line 149
    iput p1, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 150
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    :cond_0
    monitor-exit p0

    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method update()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 131
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getProgress()I

    move-result v0

    .line 132
    .local v0, "progress":I
    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    if-eq v0, v1, :cond_0

    .line 134
    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->lastProgress:I

    .line 135
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v1, p0, v0, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->getHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->onSizeChanged(IIII)V

    .line 139
    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setPressed(Z)V

    .line 140
    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/widget/VerticalSeekBar;->setSelected(Z)V

    .line 142
    return-void
.end method
