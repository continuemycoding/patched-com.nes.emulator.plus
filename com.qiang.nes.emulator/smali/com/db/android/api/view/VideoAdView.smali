.class public Lcom/db/android/api/view/VideoAdView;
.super Lcom/db/android/api/view/BaseAdView;


# instance fields
.field public fx:Lcom/db/android/api/view/DBVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/VideoAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/VideoAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/VideoAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/VideoAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/db/android/api/view/BaseAdView;-><init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V

    invoke-direct {p0, p1}, Lcom/db/android/api/view/VideoAdView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/16 v3, 0x11

    const/4 v2, 0x1

    new-instance v0, Lcom/db/android/api/view/DBVideoView;

    invoke-direct {v0, p1}, Lcom/db/android/api/view/DBVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0, v2}, Lcom/db/android/api/view/DBVideoView;->setZOrderOnTop(Z)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {v0, v2}, Lcom/db/android/api/view/DBVideoView;->setZOrderMediaOverlay(Z)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget-boolean v0, v0, Lcom/db/android/api/ui/factory/ViewConfig;->isFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->d(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    const/high16 v1, 0x33000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    const v1, 0x66b5bcc2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    const v1, -0x30203

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    const-string v1, "\u5e7f\u544a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Lcom/db/android/api/view/VideoAdView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/db/android/api/view/VideoAdView;->requestFocus()Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->c(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eH:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    return-void
.end method

.method public invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget-boolean v0, v0, Lcom/db/android/api/ui/factory/ViewConfig;->isFullScreen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->d(Landroid/view/View;)V

    :goto_0
    invoke-super {p0}, Lcom/db/android/api/view/BaseAdView;->invalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->fx:Lcom/db/android/api/view/DBVideoView;

    invoke-virtual {p0, v0}, Lcom/db/android/api/view/VideoAdView;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public final j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/VideoAdView;->eI:Landroid/widget/TextView;

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
