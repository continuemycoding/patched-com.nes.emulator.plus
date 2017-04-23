.class public Lcom/qiang/framework/ads/xiaomi/AdPlugin;
.super Ljava/lang/Object;
.source "AdPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasAdModule()Z
    .locals 2

    .prologue
    .line 16
    :try_start_0
    const-string v1, "com.xiaomi.ad.AdSdk"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    const/4 v1, 0x1

    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return v1

    .line 17
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 36
    const-string v0, "com.xiaomi.ad.AdSdk"

    const-string v1, "initialize"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v5

    aput-object p1, v2, v6

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static setDebugOn()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "com.xiaomi.ad.AdSdk"

    const-string v1, "setDebugOn"

    invoke-static {v0, v1}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public static setMockOn()V
    .locals 2

    .prologue
    .line 31
    const-string v0, "com.xiaomi.ad.AdSdk"

    const-string v1, "setMockOn"

    invoke-static {v0, v1}, Lcom/qiang/framework/helpers/ReflectHelper;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    return-void
.end method
