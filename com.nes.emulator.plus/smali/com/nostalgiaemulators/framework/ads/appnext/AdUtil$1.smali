.class Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$1;
.super Ljava/lang/Object;
.source "AdUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil;->bindToView(Landroid/view/View;Lcom/nostalgiaemulators/framework/ads/appnext/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 86
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "ad":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 89
    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    if-eqz v2, :cond_0

    .line 90
    check-cast v0, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    .end local v0    # "ad":Ljava/lang/Object;
    check-cast v1, Landroid/app/Activity;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->open(Landroid/app/Activity;)V

    .line 92
    :cond_0
    return-void
.end method
