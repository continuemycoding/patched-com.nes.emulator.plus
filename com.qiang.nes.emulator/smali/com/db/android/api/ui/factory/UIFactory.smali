.class public Lcom/db/android/api/ui/factory/UIFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRelativeLayoutParams(IIIIZ)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, -0x2

    invoke-static {p0}, Lcom/db/android/api/ui/factory/Axis;->scaleX(I)I

    move-result v3

    invoke-static {p1}, Lcom/db/android/api/ui/factory/Axis;->scaleY(I)I

    move-result v4

    if-ne p2, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne p3, v1, :cond_3

    :goto_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v1

    :cond_0
    if-ne p2, v0, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {p2}, Lcom/db/android/api/ui/factory/Axis;->scale(I)I

    move-result v2

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/db/android/api/ui/factory/Axis;->scaleX(I)I

    move-result v2

    goto :goto_0

    :cond_3
    if-ne p3, v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p3}, Lcom/db/android/api/ui/factory/Axis;->scale(I)I

    move-result v0

    goto :goto_1

    :cond_5
    invoke-static {p3}, Lcom/db/android/api/ui/factory/Axis;->scaleY(I)I

    move-result v0

    goto :goto_1
.end method
