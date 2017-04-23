.class final Lorg/acra/CrashReportFinder;
.super Ljava/lang/Object;
.source "CrashReportFinder.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method public getCrashReportFiles()[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 46
    iget-object v3, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    if-nez v3, :cond_1

    .line 47
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Trying to get ACRA reports but ACRA is not initialized."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-array v2, v6, [Ljava/lang/String;

    .line 66
    :cond_0
    :goto_0
    return-object v2

    .line 51
    :cond_1
    iget-object v3, p0, Lorg/acra/CrashReportFinder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 52
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_2

    .line 53
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Application files directory does not exist! The application may not be installed correctly. Please try reinstalling."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0

    .line 57
    :cond_2
    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Looking for error files in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    new-instance v1, Lorg/acra/CrashReportFinder$1;

    invoke-direct {v1, p0}, Lorg/acra/CrashReportFinder$1;-><init>(Lorg/acra/CrashReportFinder;)V

    .line 65
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "result":[Ljava/lang/String;
    if-nez v2, :cond_0

    new-array v2, v6, [Ljava/lang/String;

    goto :goto_0
.end method
