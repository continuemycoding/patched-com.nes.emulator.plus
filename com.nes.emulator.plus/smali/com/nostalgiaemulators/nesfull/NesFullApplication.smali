.class public Lcom/nostalgiaemulators/nesfull/NesFullApplication;
.super Lcom/nostalgiaemulators/nes1/NesApplication;
.source "NesFullApplication.java"


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    formKey = ""
    formUri = "[acra url]"
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    resDialogCommentPrompt = 0x7f0800e9
    resDialogIcon = 0x108009b
    resDialogOkToast = 0x7f0800ea
    resDialogText = 0x7f0800e8
    resDialogTitle = 0x7f0800e7
    resToastText = 0x7f0800e6
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.nesfull.NesApplication"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/nostalgiaemulators/nes1/NesApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackFileSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "nness"

    return-object v0
.end method

.method public isAdvertisingVersion()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    .line 36
    invoke-super {p0}, Lcom/nostalgiaemulators/nes1/NesApplication;->onCreate()V

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 39
    const-string v6, "classes.dex"

    .line 38
    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Utils;->getCrc(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 40
    .local v0, "crc":J
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 41
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 40
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 41
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 42
    .local v4, "versionName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 43
    invoke-virtual {p0}, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 42
    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 43
    iget v3, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 44
    .local v3, "versionCode":I
    const-string v5, "com.nostalgiaemulators.nesfull.NesApplication"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Start NES Emulator vn:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " vc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 45
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/nostalgiaemulators/nesfull/NesFullApplication;->githash:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 44
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "crc":J
    .end local v3    # "versionCode":I
    .end local v4    # "versionName":Ljava/lang/String;
    :goto_0
    return-void

    .line 47
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "com.nostalgiaemulators.nesfull.NesApplication"

    const-string v6, ""

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
