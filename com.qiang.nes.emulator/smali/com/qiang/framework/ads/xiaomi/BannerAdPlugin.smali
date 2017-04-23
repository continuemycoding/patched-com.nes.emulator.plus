.class public Lcom/qiang/framework/ads/xiaomi/BannerAdPlugin;
.super Ljava/lang/Object;
.source "BannerAdPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hide()V
    .locals 2

    .prologue
    .line 25
    const-string v0, "com.qiang.framework.xiaomiad.BannerAdPlugin"

    const-string v1, "hide"

    invoke-static {v0, v1}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public static requestAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 15
    const-string v0, "com.qiang.framework.xiaomiad.BannerAdPlugin"

    const-string v1, "requestAd"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    return-void
.end method

.method public static show()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "com.qiang.framework.xiaomiad.BannerAdPlugin"

    const-string v1, "show"

    invoke-static {v0, v1}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    return-void
.end method
