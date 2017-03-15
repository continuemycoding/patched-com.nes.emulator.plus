.class public Lcom/nostalgiaemulators/framework/base/VersionChecker;
.super Ljava/lang/Object;
.source "VersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.VersionChecker"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method private static downloadPlayStoreVersionCode(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v0, "[versioncode url]"

    .line 71
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    return-void
.end method

.method public static isNewVersionAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->canCheckNewVersion(Landroid/content/Context;)Z

    move-result v6

    .line 43
    .local v6, "shouldCheckOnline":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 44
    .local v3, "manager":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 45
    const/4 v8, 0x0

    .line 44
    invoke-virtual {v3, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 46
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 48
    .local v0, "currentVersionCode":I
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getPlayStoreAppVersion(Landroid/content/Context;)I

    move-result v5

    .line 49
    .local v5, "playStoreVersionCode":I
    const-string v7, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "current app version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v7, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "online app version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    if-eqz v6, :cond_1

    .line 53
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/base/VersionChecker;->downloadPlayStoreVersionCode(Landroid/content/Context;)V

    .line 59
    :goto_0
    if-le v5, v0, :cond_0

    const/4 v4, 0x1

    .line 66
    .end local v0    # "currentVersionCode":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "playStoreVersionCode":I
    .end local v6    # "shouldCheckOnline":Z
    :cond_0
    :goto_1
    return v4

    .line 56
    .restart local v0    # "currentVersionCode":I
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    .restart local v3    # "manager":Landroid/content/pm/PackageManager;
    .restart local v5    # "playStoreVersionCode":I
    .restart local v6    # "shouldCheckOnline":Z
    :cond_1
    const-string v7, "com.nostalgiaemulators.framework.base.VersionChecker"

    const-string v8, "skipping version check"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v0    # "currentVersionCode":I
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "playStoreVersionCode":I
    .end local v6    # "shouldCheckOnline":Z
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "com.nostalgiaemulators.framework.base.VersionChecker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
