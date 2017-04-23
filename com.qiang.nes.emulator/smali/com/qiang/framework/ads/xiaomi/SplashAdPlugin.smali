.class public Lcom/qiang/framework/ads/xiaomi/SplashAdPlugin;
.super Ljava/lang/Object;
.source "SplashAdPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestAd(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/qiang/framework/listener/SplashAdListener;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "splashAdListener"    # Lcom/qiang/framework/listener/SplashAdListener;

    .prologue
    const/4 v3, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    const-string v0, "com.qiang.framework.xiaomiad.SplashAdPlugin"

    const-string v1, "requestAd"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    aput-object p2, v2, v7

    aput-object p3, v2, v8

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Landroid/view/ViewGroup;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Lcom/qiang/framework/listener/SplashAdListener;

    aput-object v4, v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    return-void
.end method
