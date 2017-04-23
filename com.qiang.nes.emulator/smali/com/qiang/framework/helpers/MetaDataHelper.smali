.class public Lcom/qiang/framework/helpers/MetaDataHelper;
.super Ljava/lang/Object;
.source "MetaDataHelper.java"


# static fields
.field private static metaData:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 20
    :try_start_0
    invoke-static {}, Lcom/qiang/framework/MyApplication;->getInstance()Lcom/qiang/framework/MyApplication;

    move-result-object v0

    .line 22
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 23
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    sput-object v3, Lcom/qiang/framework/helpers/MetaDataHelper;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoolean(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-object v0, Lcom/qiang/framework/helpers/MetaDataHelper;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/qiang/framework/helpers/MetaDataHelper;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 39
    sget-object v0, Lcom/qiang/framework/helpers/MetaDataHelper;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 40
    const-string v0, ""

    .line 42
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/qiang/framework/helpers/MetaDataHelper;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
