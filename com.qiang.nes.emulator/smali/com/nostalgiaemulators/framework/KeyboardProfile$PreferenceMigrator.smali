.class public Lcom/nostalgiaemulators/framework/KeyboardProfile$PreferenceMigrator;
.super Ljava/lang/Object;
.source "KeyboardProfile.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/Migrator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/KeyboardProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreferenceMigrator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private migrate(ILandroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "baseDir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 126
    new-instance v0, Ljava/io/File;

    const-string v5, "keyboard_profiles_pref"

    invoke-direct {v0, p3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "file":Ljava/io/File;
    const-string v5, "keyboard_profiles_pref"

    .line 127
    invoke-virtual {p2, v5, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 130
    .local v4, "pref":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 129
    invoke-static {p1, v4, v0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    .line 131
    invoke-static {p2}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getProfilesNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 133
    .local v3, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 140
    return-void

    .line 133
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 134
    .local v2, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    const-string v7, "_keyboard_profile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-virtual {p2, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "keyPref":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/io/File;

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_keyboard_profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v7, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;->IGNORE:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;

    .line 136
    invoke-static {p1, v1, v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->migratePreferences(ILandroid/content/SharedPreferences;Ljava/io/File;Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$NotFoundHandling;)V

    goto :goto_0
.end method


# virtual methods
.method public doExport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/nostalgiaemulators/framework/KeyboardProfile$PreferenceMigrator;->migrate(ILandroid/content/Context;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public doImport(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/nostalgiaemulators/framework/KeyboardProfile$PreferenceMigrator;->migrate(ILandroid/content/Context;Ljava/lang/String;)V

    .line 123
    return-void
.end method
