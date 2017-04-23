.class public Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;
.super Landroid/view/View;
.source "PlayersLabelView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.preferences.PlayersLabelView"


# instance fields
.field offset:I

.field offsets:[I

.field paint:Landroid/graphics/Paint;

.field textSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->textSize:F

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x1

    const/16 v2, 0x12c

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x320

    aput v2, v0, v1

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    .line 34
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->init()V

    .line 35
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 51
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 54
    .local v0, "r":Landroid/content/res/Resources;
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 53
    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    .line 55
    .local v1, "textSize":F
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 56
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v2, 0x0

    const/high16 v13, 0x42200000    # 40.0f

    .line 73
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    invoke-virtual {p1, v2, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 76
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0, v2, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 78
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    array-length v0, v0

    if-lt v7, v0, :cond_0

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PLAYER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 80
    .local v8, "label":Ljava/lang/String;
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 81
    .local v10, "width":F
    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    int-to-float v0, v0

    sub-float/2addr v0, v10

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    aget v1, v1, v7

    int-to-float v1, v1

    sub-float/2addr v0, v1

    add-float/2addr v0, v13

    float-to-int v9, v0

    .line 82
    .local v9, "off":I
    const/4 v6, 0x0

    .line 84
    .local v6, "active":Z
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v7, v0, :cond_3

    .line 85
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    aget v0, v0, v7

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    add-int/lit8 v3, v7, 0x1

    aget v1, v1, v3

    if-ge v0, v1, :cond_2

    move v6, v11

    .line 91
    :goto_1
    if-eqz v6, :cond_1

    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    int-to-float v0, v0

    sub-float v1, v13, v10

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 92
    sub-float v0, v13, v10

    float-to-int v9, v0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    add-int/lit8 v0, v9, -0x2

    int-to-float v1, v0

    int-to-float v0, v9

    add-float v3, v0, v10

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->getMeasuredWidth()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    int-to-float v0, v9

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v13, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 78
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_2
    move v6, v12

    .line 85
    goto :goto_1

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    aget v0, v0, v7

    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    if-gt v0, v1, :cond_4

    iget v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    aget v1, v1, v7

    add-int/lit16 v1, v1, 0x4e20

    if-ge v0, v1, :cond_4

    move v6, v11

    :goto_2
    goto :goto_1

    :cond_4
    move v6, v12

    goto :goto_2
.end method

.method public setOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offset:I

    .line 66
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->invalidate()V

    .line 67
    return-void
.end method

.method public setPlayersOffsets([I)V
    .locals 0
    .param p1, "offsets"    # [I

    .prologue
    .line 60
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->offsets:[I

    .line 61
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->invalidate()V

    .line 62
    return-void
.end method
