.class public Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;
.super Ljava/lang/Object;
.source "ScreenAdPlugin.java"


# static fields
.field private static screenAd:Lcom/db/android/api/type/ScreenAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    .line 30
    const/4 v0, 0x0

    sput-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    .line 32
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/db/android/api/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adListener"    # Lcom/db/android/api/listener/AdListener;

    .prologue
    .line 16
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    if-eqz v0, :cond_0

    .line 17
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/ScreenAd;->onClear()V

    .line 19
    :cond_0
    new-instance v0, Lcom/db/android/api/type/ScreenAd;

    invoke-direct {v0, p0}, Lcom/db/android/api/type/ScreenAd;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    .line 20
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    invoke-virtual {v0, p1}, Lcom/db/android/api/type/ScreenAd;->setmListener(Lcom/db/android/api/listener/AdListener;)V

    .line 22
    sget-object v0, Lcom/qiang/framework/dangbeiad/ScreenAdPlugin;->screenAd:Lcom/db/android/api/type/ScreenAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/ScreenAd;->open()V

    .line 23
    return-void
.end method
