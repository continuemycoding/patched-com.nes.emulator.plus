.class public abstract Lcom/nostalgiaemulators/framework/EmulatorApplication;
.super Landroid/app/Application;
.source "EmulatorApplication.java"


# static fields
.field private static final CURRENT_APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final FIRST_INSTALLATION:I = -0x1

.field private static final PREF_NAME:Ljava/lang/String; = "AppVersionChangeHandler.pref"

.field private static final PREVIOUS_APP_VERSION:Ljava/lang/String; = "previous_app_version"

.field private static final TAG:Ljava/lang/String; = ".AppVersionChangeHandler"


# instance fields
.field private currentVersion:I

.field protected githash:Ljava/lang/String;

.field private isFirstRunAfterUpdate:Z

.field private isFirstRunEver:Z

.field private previousVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 40
    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->previousVersion:I

    .line 41
    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->currentVersion:I

    .line 42
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isFirstRunAfterUpdate:Z

    .line 43
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isFirstRunEver:Z

    .line 32
    return-void
.end method

.method private initVersionCodes()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v7, -0x1

    .line 46
    const-string v4, "AppVersionChangeHandler.pref"

    invoke-virtual {p0, v4, v5}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 47
    .local v3, "pref":Landroid/content/SharedPreferences;
    const-string v4, "app_version"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 49
    .local v0, "currentVersionPref":I
    const-string v4, "previous_app_version"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->previousVersion:I

    .line 50
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 53
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 54
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 53
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 54
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 53
    iput v4, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->currentVersion:I

    .line 56
    iget v4, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->currentVersion:I

    if-eq v0, v4, :cond_0

    .line 57
    if-ne v0, v7, :cond_1

    .line 58
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isFirstRunEver:Z

    .line 64
    :goto_0
    iput v0, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->previousVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_0
    :goto_1
    const-string v4, "app_version"

    iget v5, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->currentVersion:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v4, "previous_app_version"

    iget v5, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->previousVersion:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void

    .line 61
    :cond_1
    const/4 v4, 0x1

    :try_start_1
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isFirstRunAfterUpdate:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, ".AppVersionChangeHandler"

    const-string v5, "Very weird fail"

    invoke-static {v4, v5, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public getAdHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getAdProvider()Lcom/nostalgiaemulators/framework/AdProvider;
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppWallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCheatHelpIds()[I
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_cheats:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getCurrentVersionCode()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->currentVersion:I

    return v0
.end method

.method public getFullStoreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getFullVersionPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullVersionPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "pkg":Ljava/lang/String;
    const-string v1, "lite"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "full"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    :cond_0
    return-object v0
.end method

.method public getGalleryHelpIds()[I
    .locals 3

    .prologue
    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_video_mode:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 130
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_dynamic_dpad:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_speed:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 131
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_customize_controll:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_state_share:I

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 132
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_cheats:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_sav_files:I

    aput v2, v0, v1

    .line 129
    return-object v0
.end method

.method public abstract getPackFileSuffix()Ljava/lang/String;
.end method

.method public getPreviousVersionCode()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->previousVersion:I

    return v0
.end method

.method public getSlotHelpIds()[I
    .locals 3

    .prologue
    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/nostalgiaemulators/framework/R$string;->help_state_share_detail:I

    aput v2, v0, v1

    return-object v0
.end method

.method public getStoreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://play.google.com/store/apps/details?id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract hasGameMenu()Z
.end method

.method public abstract isAdvertisingVersion()Z
.end method

.method public onCreate()V
    .locals 6

    .prologue
    .line 85
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v2

    .line 86
    .local v2, "debug":Z
    invoke-static {v2}, Lcom/nostalgiaemulators/framework/utils/Log;->setDebugMode(Z)V

    .line 87
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->initVersionCodes()V

    .line 89
    if-nez v2, :cond_0

    .line 91
    :try_start_0
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 96
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 97
    const/16 v5, 0x80

    .line 96
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 98
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 100
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 101
    const-string v3, "svnversion"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->githash:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->githash:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 105
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v3

    const-string v4, "svnversion"

    .line 106
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/EmulatorApplication;->githash:Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v4, v5}, Lorg/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 118
    return-void

    .line 113
    :catch_0
    move-exception v3

    goto :goto_0

    .line 111
    :catch_1
    move-exception v3

    goto :goto_0
.end method
