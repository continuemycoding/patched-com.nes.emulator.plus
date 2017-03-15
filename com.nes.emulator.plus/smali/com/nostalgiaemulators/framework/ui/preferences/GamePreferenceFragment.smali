.class public Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GamePreferenceFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 40
    const-string v7, "EXTRA_GAME"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 39
    check-cast v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 41
    .local v0, "game":Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    .line 42
    .local v1, "prefMgr":Landroid/preference/PreferenceManager;
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".gamepref"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 43
    sget v6, Lcom/nostalgiaemulators/framework/R$xml;->game_preferences:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->addPreferencesFromResource(I)V

    .line 44
    const-string v6, "game_pref_ui_pal_ntsc_switch"

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    .line 45
    .local v2, "videoProfile":Landroid/preference/ListPreference;
    const-string v6, "game_pref_ui_pal_ntsc_switch_category"

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 46
    .local v3, "videoProfileCategory":Landroid/preference/PreferenceCategory;
    const-string v6, "game_pref_other_category"

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 47
    .local v5, "zapperCategory":Landroid/preference/PreferenceCategory;
    const-string v6, "game_pref_zapper"

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 48
    .local v4, "zapper":Landroid/preference/Preference;
    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->initZapper(Landroid/preference/Preference;Landroid/preference/PreferenceCategory;)V

    .line 50
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 49
    invoke-static {v2, v3, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;->initVideoPreference(Landroid/preference/ListPreference;Landroid/preference/PreferenceCategory;Landroid/preference/PreferenceScreen;)V

    .line 51
    return-void
.end method
