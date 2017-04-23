.class public Lcom/db/android/api/view/PictureAdView;
.super Lcom/db/android/api/view/BaseAdView;


# instance fields
.field public fw:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/PictureAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/PictureAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/PictureAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/PictureAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/PictureAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x11

    const/4 v3, -0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->addView(Landroid/view/View;)V

    iget v0, p0, Lcom/db/android/api/view/PictureAdView;->mModel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-static {v2, v2, v3, v3, v2}, Lcom/db/android/api/ui/factory/UIFactory;->createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    iget v1, p0, Lcom/db/android/api/view/PictureAdView;->ey:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x36

    invoke-static {v1}, Lcom/db/android/api/ui/factory/Axis;->scaleX(I)I

    move-result v1

    const/16 v2, 0x17

    invoke-static {v2}, Lcom/db/android/api/ui/factory/Axis;->scaleY(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x7

    iget v2, p0, Lcom/db/android/api/view/PictureAdView;->ey:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/db/android/api/ui/factory/Axis;->scale(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/db/android/api/view/PictureAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_0
    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const v1, 0x66b5bcc2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const v1, -0x30203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const-string v1, "\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/db/android/api/view/PictureAdView;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget-boolean v0, v0, Lcom/db/android/api/ui/factory/ViewConfig;->isFullScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->d(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->c(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eH:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget-boolean v0, v0, Lcom/db/android/api/ui/factory/ViewConfig;->isFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->d(Landroid/view/View;)V

    :goto_0
    invoke-super {p0}, Lcom/db/android/api/view/BaseAdView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->fw:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/PictureAdView;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/PictureAdView;->eI:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/db/android/api/view/BaseAdView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/db/android/api/view/BaseAdView;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;->onMeasure(II)V

    return-void
.end method
