.class public Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GamePreferenceActivity.java"


# static fields
.field public static final EXTRA_GAME:Ljava/lang/String; = "EXTRA_GAME"


# instance fields
.field private game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method static initVideoPreference(Landroid/preference/ListPreference;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceScreen;)V
    .locals 6
    .param p0, "preference"    # Landroid/preference/ListPreference;
    .param p1, "category"    # Landroid/preference/PreferenceCategory;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 83
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    .line 84
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v2

    .line 86
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/nostalgiaemulators/framework/GfxProfile;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 87
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    .line 88
    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getAvailableGfxProfiles()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 87
    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/CharSequence;

    .line 89
    .local v3, "res":[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    const-string v5, "Auto"

    aput-object v5, v3, v4

    .line 90
    const/4 v1, 0x1

    .line 92
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 97
    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {p0, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 100
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 101
    const-string v4, "Auto"

    invoke-virtual {p0, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 108
    .end local v1    # "i":I
    .end local v3    # "res":[Ljava/lang/CharSequence;
    :cond_0
    :goto_1
    return-void

    .line 92
    .restart local v1    # "i":I
    .restart local v3    # "res":[Ljava/lang/CharSequence;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/GfxProfile;

    .line 93
    .local v0, "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    iget-object v5, v0, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    aput-object v5, v3, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "gfx":Lcom/nostalgiaemulators/framework/GfxProfile;
    .end local v1    # "i":I
    .end local v3    # "res":[Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 106
    invoke-virtual {p2, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method static initZapper(Landroid/preference/Preference;Landroid/preference/PreferenceCategory;)V
    .locals 1
    .param p0, "zapper"    # Landroid/preference/Preference;
    .param p1, "zapperCategory"    # Landroid/preference/PreferenceCategory;

    .prologue
    .line 76
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->hasZapper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 79
    :cond_0
    return-void
.end method


# virtual methods
.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 135
    const-class v0, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    const-class v0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->finish()V

    goto :goto_0
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 129
    sget v0, Lcom/nostalgiaemulators/framework/R$xml;->game_preferences_header:I

    invoke-virtual {p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "EXTRA_GAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 61
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-ge v5, v6, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    .line 63
    .local v0, "prefMgr":Landroid/preference/PreferenceManager;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v6, v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".gamepref"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 64
    sget v5, Lcom/nostalgiaemulators/framework/R$xml;->game_preferences:I

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->addPreferencesFromResource(I)V

    .line 65
    const-string v5, "game_pref_ui_pal_ntsc_switch"

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 66
    .local v1, "videoProfile":Landroid/preference/ListPreference;
    const-string v5, "game_pref_ui_pal_ntsc_switch_category"

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 67
    .local v2, "videoProfileCategory":Landroid/preference/PreferenceCategory;
    const-string v5, "game_pref_other_category"

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 68
    .local v4, "zapperCategory":Landroid/preference/PreferenceCategory;
    const-string v5, "game_pref_zapper"

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 69
    .local v3, "zapper":Landroid/preference/Preference;
    invoke-static {v3, v4}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->initZapper(Landroid/preference/Preference;Landroid/preference/PreferenceCategory;)V

    .line 71
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 70
    invoke-static {v1, v2, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->initVideoPreference(Landroid/preference/ListPreference;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceScreen;)V

    .line 73
    .end local v0    # "prefMgr":Landroid/preference/PreferenceManager;
    .end local v1    # "videoProfile":Landroid/preference/ListPreference;
    .end local v2    # "videoProfileCategory":Landroid/preference/PreferenceCategory;
    .end local v3    # "zapper":Landroid/preference/Preference;
    .end local v4    # "zapperCategory":Landroid/preference/PreferenceCategory;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 30
    return-void
.end method
