.class public Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindToView(Landroid/view/View;Lcom/nostalgiaemulators/framework/ads/appnext/Ad;)V
    .locals 7
    .param p0, "adsView"    # Landroid/view/View;
    .param p1, "ad"    # Lcom/nostalgiaemulators/framework/ads/appnext/Ad;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 41
    if-eqz p0, :cond_2

    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 44
    invoke-virtual {p0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_0
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->reportImpression()V

    .line 52
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->next_ads_title:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 54
    .local v2, "adsTitle":Landroid/widget/TextView;
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->next_ads_content:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "adsContent":Landroid/widget/TextView;
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->next_ads_icon:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 55
    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, "adsIcon":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_0
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getDescription()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 63
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 68
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69
    new-instance v3, Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;

    .line 70
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ads/appnext/Ad;->getIconUrl()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-direct {v3, p0, v1, v4}, Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;-><init>(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 71
    .local v3, "iconTask":Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;
    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    .end local v3    # "iconTask":Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$IconDownloadTask;
    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    new-instance v4, Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$1;

    invoke-direct {v4}, Lcom/nostalgiaemulators/framework/ads/appnext/AdUtil$1;-><init>()V

    invoke-virtual {p0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .end local v0    # "adsContent":Landroid/widget/TextView;
    .end local v1    # "adsIcon":Landroid/widget/ImageView;
    .end local v2    # "adsTitle":Landroid/widget/TextView;
    :cond_2
    :goto_2
    return-void

    .line 47
    :cond_3
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 74
    .restart local v0    # "adsContent":Landroid/widget/TextView;
    .restart local v1    # "adsIcon":Landroid/widget/ImageView;
    .restart local v2    # "adsTitle":Landroid/widget/TextView;
    :cond_4
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 96
    .end local v0    # "adsContent":Landroid/widget/TextView;
    .end local v1    # "adsIcon":Landroid/widget/ImageView;
    .end local v2    # "adsTitle":Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
