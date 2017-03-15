.class public Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferenceFragment.java"


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
    .line 36
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    .line 93
    .local v0, "act":Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->refreshKeyboardProfilePreferences()V

    .line 94
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    sget v23, Lcom/nostalgiaemulators/framework/R$xml;->general_preferences:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    .line 42
    const-string v23, "game_pref_ui_strong_vibration"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;

    .line 43
    .local v20, "vibration":Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;
    const-string v22, "vibrator"

    .line 44
    .local v22, "vs":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/Vibrator;

    .line 45
    .local v13, "mVibrator":Landroid/os/Vibrator;
    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->setEnabled(Z)V

    .line 47
    invoke-virtual {v13}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v23

    if-nez v23, :cond_0

    .line 48
    sget v23, Lcom/nostalgiaemulators/framework/R$string;->game_pref_ui_vibration_no_vibrator:I

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/SeekBarVibrationPreference;->setSummary(I)V

    .line 51
    :cond_0
    const-string v23, "pref_game_keyboard_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/ListPreference;

    .line 52
    .local v18, "selectProfile":Landroid/preference/ListPreference;
    const-string v23, "pref_game_keyboard_edit_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 53
    .local v7, "editProfile":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    .line 54
    .local v3, "activity":Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;
    move-object/from16 v0, v18

    invoke-virtual {v3, v0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V

    .line 56
    invoke-virtual/range {v18 .. v18}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v23

    .line 55
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v7, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 57
    const-string v23, "general_pref_working_dir"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 58
    const-string v24, "general_pref_working_dir_change_to_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 59
    const-string v25, "general_pref_working_dir_copy_content"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 57
    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v3, v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initWorkingDir(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 60
    const-string v23, "pref_general_settings_cat"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 61
    .local v5, "cat":Landroid/preference/PreferenceCategory;
    const-string v23, "general_pref_quality"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 62
    .local v15, "quality":Landroid/preference/Preference;
    invoke-static {v5, v15}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initQuality(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 63
    const-string v23, "general_pref_immersive_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 64
    .local v10, "immersive":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v10, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 65
    const-string v23, "general_pref_quicksave"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 66
    .local v16, "quicksave":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 67
    const-string v23, "general_pref_shader"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    .line 68
    .local v19, "shader":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 69
    const-string v23, "general_pref_ui_autohide"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 70
    .local v4, "autoHide":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v4, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 71
    const-string v23, "general_pref_use_system_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 72
    .local v9, "font":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v9, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 73
    const-string v23, "general_pref_sound_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Lcom/hlidskialf/android/preference/SeekBarPreference;

    .line 74
    .local v21, "volume":Lcom/hlidskialf/android/preference/SeekBarPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initVolume(Lcom/hlidskialf/android/preference/SeekBarPreference;Landroid/app/Activity;)V

    .line 75
    const-string v23, "general_pref_ui_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 76
    .local v14, "opacity":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v14, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 77
    const-string v23, "general_pref_ddpad"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 78
    .local v6, "ddpad":Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v6, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initDDPAD(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V

    .line 79
    const-string v23, "general_pref_screen_layout"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 80
    .local v17, "screen":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initScreenSettings(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 81
    const-string v23, "general_pref_fastforward"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 82
    .local v8, "ff":Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v8, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initFastForward(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V

    .line 83
    const-string v23, "pref_keyboard_cat"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 85
    .local v12, "keyCat":Landroid/preference/PreferenceCategory;
    const-string v23, "pref_game_keyboard_select_input_method"

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 87
    .local v11, "inputMethod":Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v23

    .line 86
    move-object/from16 v0, v23

    invoke-static {v11, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initInputMethodPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 88
    return-void
.end method
