.class public Lcom/qiang/framework/MyApplication;
.super Landroid/app/Application;
.source "MyApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static currentActivity:Landroid/app/Activity;

.field private static instance:Lcom/qiang/framework/MyApplication;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/qiang/framework/MyApplication;->currentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public static getInstance()Lcom/qiang/framework/MyApplication;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/qiang/framework/MyApplication;->instance:Lcom/qiang/framework/MyApplication;

    return-object v0
.end method

.method public static getMD5MessageDigest([B)Ljava/lang/String;
    .locals 8
    .param p0, "bytes"    # [B

    .prologue
    .line 57
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 59
    .local v4, "md5StringBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    .line 60
    .local v5, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v5}, Ljava/security/MessageDigest;->reset()V

    .line 61
    invoke-virtual {v5, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 63
    .local v0, "digest":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_1

    .line 64
    aget-byte v6, v0, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "hexString":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 67
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "digest":[B
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "messageDigest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v1

    .line 72
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 74
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    sput-object p1, Lcom/qiang/framework/MyApplication;->currentActivity:Landroid/app/Activity;

    .line 80
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 97
    invoke-static {p1}, Lcom/umeng/analytics/game/UMGameAgent;->onPause(Landroid/content/Context;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/game/UMGameAgent;->onPageEnd(Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/qiang/framework/helpers/PlayerPrefs;->save()V

    .line 101
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 89
    sput-object p1, Lcom/qiang/framework/MyApplication;->currentActivity:Landroid/app/Activity;

    .line 91
    invoke-static {p1}, Lcom/umeng/analytics/game/UMGameAgent;->onResume(Landroid/content/Context;)V

    .line 92
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/game/UMGameAgent;->onPageStart(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 84
    sput-object p1, Lcom/qiang/framework/MyApplication;->currentActivity:Landroid/app/Activity;

    .line 85
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 36
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 38
    sput-object p0, Lcom/qiang/framework/MyApplication;->instance:Lcom/qiang/framework/MyApplication;

    .line 41
    :try_start_0
    invoke-virtual {p0}, Lcom/qiang/framework/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/qiang/framework/MyApplication;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 43
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/qiang/framework/MyApplication;->getMD5MessageDigest([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "22a9e6616b5e7ea61b89cb8a42fba5e9"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 44
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    .line 51
    invoke-static {v5}, Lcom/umeng/analytics/game/UMGameAgent;->setDebugMode(Z)V

    .line 53
    invoke-virtual {p0, p0}, Lcom/qiang/framework/MyApplication;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 54
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
