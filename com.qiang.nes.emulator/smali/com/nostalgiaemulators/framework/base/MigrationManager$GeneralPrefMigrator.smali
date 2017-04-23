.class public Lcom/nostalgiaemulators/framework/base/MigrationManager$GeneralPrefMigrator;
.super Ljava/lang/Object;
.source "MigrationManager.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/Migrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/MigrationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralPrefMigrator"
.end annotation


# instance fields
.field private final EXPORT_FILE:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    const-string v0, "general__preferences"

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/MigrationManager$GeneralPrefMigrator;->EXPORT_FILE:Ljava/lang/String;

    .line 153
    return-void
.end method


# virtual methods
.method public doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 161
    new-instance v1, Ljava/io/File;

    const-string v2, "general__preferences"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->exportPreferences(Landroid/content/SharedPreferences;Ljava/io/File;)V

    .line 162
    return-void
.end method

.method public doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/io/File;

    const-string v2, "general__preferences"

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v2, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 166
    invoke-static {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->importPreferences(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 170
    return-void
.end method
