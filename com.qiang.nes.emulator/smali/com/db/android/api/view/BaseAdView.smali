.class public Lcom/db/android/api/view/BaseAdView;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Lcom/db/android/api/inter/b;


# static fields
.field private static eD:I = 0x2

.field private static eE:Ljava/lang/String; = "\u5e7f\u544a"


# instance fields
.field config:Lcom/db/android/api/ui/factory/ViewConfig;

.field private eA:F

.field private eB:F

.field private eC:F

.field private eF:I

.field private eG:I

.field public eH:Landroid/widget/TextView;

.field public eI:Landroid/widget/TextView;

.field eJ:Z

.field ey:I

.field private ez:F

.field mModel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    iput p2, p0, Lcom/db/android/api/view/BaseAdView;->mModel:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/db/android/api/ui/factory/ViewConfig;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x40e

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    const v0, 0x3d2aaaab

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    const v0, 0x3d97b426

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    const v0, 0x3ca6dfc3

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    const v0, 0x3ce66666    # 0.028125f

    iput v0, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    iput-object p2, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    return-void
.end method


# virtual methods
.method public final aT()V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 6

    const/16 v3, 0x50

    const/4 v0, -0x2

    const/4 v5, 0x0

    invoke-static {v5, v5, v0, v0, v5}, Lcom/db/android/api/ui/factory/UIFactory;->createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    const/16 v1, 0x6cc

    const/16 v2, 0x3c

    invoke-static {v1, v2, v3, v3, v5}, Lcom/db/android/api/ui/factory/UIFactory;->createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    const/16 v1, 0x2c

    invoke-static {v1}, Lcom/db/android/api/ui/factory/Axis;->scale(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/db/android/api/view/BaseAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x74a

    const/16 v2, 0x422

    const/16 v3, 0x36

    const/16 v4, 0x16

    invoke-static {v1, v2, v3, v4, v5}, Lcom/db/android/api/ui/factory/UIFactory;->createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-static {v1}, Lcom/db/android/api/ui/factory/Axis;->scale(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/db/android/api/view/BaseAdView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 6

    const/4 v5, 0x7

    const/4 v0, -0x2

    const/4 v4, 0x0

    invoke-static {v4, v4, v0, v0, v4}, Lcom/db/android/api/ui/factory/UIFactory;->createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v0, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v2, v2, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/db/android/api/view/BaseAdView;->ez:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v2, v2, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/db/android/api/view/BaseAdView;->eA:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->timerFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/db/android/api/view/BaseAdView;->eC:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v2, v2, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget v1, p0, Lcom/db/android/api/view/BaseAdView;->ey:I

    invoke-virtual {v0, v5, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    iget-object v2, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v2, v2, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    int-to-float v2, v2

    iget v3, p0, Lcom/db/android/api/view/BaseAdView;->eB:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/db/android/api/view/BaseAdView;->config:Lcom/db/android/api/ui/factory/ViewConfig;

    iget v1, v1, Lcom/db/android/api/ui/factory/ViewConfig;->adCornerFontSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public invalidate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eI:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final setText(I)V
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/view/BaseAdView;->eH:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
