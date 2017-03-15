.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;
.super Ljava/lang/Object;
.source "MultitouchLayer.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/Migrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceMigrator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseDir"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 115
    .line 116
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPrefName(I)Ljava/lang/String;

    move-result-object v2

    .line 115
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 118
    .local v0, "pref1":Landroid/content/SharedPreferences;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPrefName(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {p2, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 119
    .local v1, "pref2":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/io/File;

    .line 120
    invoke-static {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPrefName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 119
    invoke-static {p1, v0, v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 121
    new-instance v2, Ljava/io/File;

    .line 122
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPrefName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p3, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 121
    invoke-static {p1, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 123
    return-void
.end method


# virtual methods
.method public doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;->migrate(ILandroid/content/Context;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;->migrate(ILandroid/content/Context;Ljava/lang/String;)V

    .line 112
    return-void
.end method
