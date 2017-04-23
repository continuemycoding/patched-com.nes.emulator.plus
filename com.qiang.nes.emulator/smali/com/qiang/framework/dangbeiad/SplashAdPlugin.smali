.class public Lcom/qiang/framework/dangbeiad/SplashAdPlugin;
.super Ljava/lang/Object;
.source "SplashAdPlugin.java"


# static fields
.field private static splashAd:Lcom/db/android/api/type/SplashAd;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static close()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/SplashAd;->onClear()V

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    .line 31
    :cond_0
    return-void
.end method

.method public static show(Landroid/app/Activity;Lcom/db/android/api/listener/AdListener;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "adListener"    # Lcom/db/android/api/listener/AdListener;

    .prologue
    .line 15
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/SplashAd;->onClear()V

    .line 18
    :cond_0
    new-instance v0, Lcom/db/android/api/type/SplashAd;

    invoke-direct {v0, p0}, Lcom/db/android/api/type/SplashAd;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    .line 19
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0, p1}, Lcom/db/android/api/type/SplashAd;->setmListener(Lcom/db/android/api/listener/AdListener;)V

    .line 21
    sget-object v0, Lcom/qiang/framework/dangbeiad/SplashAdPlugin;->splashAd:Lcom/db/android/api/type/SplashAd;

    invoke-virtual {v0}, Lcom/db/android/api/type/SplashAd;->open()V

    .line 22
    return-void
.end method
