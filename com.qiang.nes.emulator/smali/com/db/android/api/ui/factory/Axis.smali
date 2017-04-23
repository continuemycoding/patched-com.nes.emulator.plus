.class public Lcom/db/android/api/ui/factory/Axis;
.super Ljava/lang/Object;


# static fields
.field public static h:I = 0x0

.field public static final heigt:I = 0x438

.field public static w:I = 0x0

.field public static final width:I = 0x780


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/db/android/api/ui/factory/Axis;->w:I

    if-eqz v0, :cond_0

    sget v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/db/android/api/ui/factory/Axis;->w:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/db/android/api/ui/factory/Axis;->h:I

    sget v2, Lcom/db/android/api/ui/factory/Axis;->w:I

    if-le v1, v2, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/db/android/api/ui/factory/Axis;->w:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    :goto_0
    sget v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    const/16 v1, 0x2a0

    if-ne v0, v1, :cond_3

    const/16 v0, 0x2d0

    sput v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/db/android/api/ui/factory/Axis;->w:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    const/16 v1, 0x3f0

    if-ne v0, v1, :cond_1

    const/16 v0, 0x438

    sput v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    goto :goto_1
.end method

.method public static scale(I)I
    .locals 3

    sget v0, Lcom/db/android/api/ui/factory/Axis;->w:I

    sget v1, Lcom/db/android/api/ui/factory/Axis;->h:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/2addr v0, p0

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method public static scaleX(I)I
    .locals 1

    sget v0, Lcom/db/android/api/ui/factory/Axis;->w:I

    mul-int/2addr v0, p0

    div-int/lit16 v0, v0, 0x780

    return v0
.end method

.method public static scaleY(I)I
    .locals 1

    sget v0, Lcom/db/android/api/ui/factory/Axis;->h:I

    mul-int/2addr v0, p0

    div-int/lit16 v0, v0, 0x438

    return v0
.end method
