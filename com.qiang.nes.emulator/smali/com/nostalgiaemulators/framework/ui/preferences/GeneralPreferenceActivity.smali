.class public Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "GeneralPreferenceActivity.java"


# instance fields
.field private NEW_PROFILE:Ljava/lang/String;

.field editProfilePreference:Landroid/preference/Preference;

.field private keyboardProfileNames:[Ljava/lang/String;

.field selectProfileListPreference:Landroid/preference/ListPreference;

.field workingDirPreference:Landroid/preference/Preference;

.field workingDirResetPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;

    return-object v0
.end method

.method static initDDPAD(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V
    .locals 2
    .param p0, "ddpad"    # Landroid/preference/CheckBoxPreference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isDynamicDPADEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 215
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 220
    :goto_0
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v0

    .line 222
    .local v0, "isBeta":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 223
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 226
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;

    invoke-direct {v1, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 262
    :cond_0
    return-void

    .line 218
    .end local v0    # "isBeta":Z
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method

.method static initFastForward(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V
    .locals 2
    .param p0, "ff"    # Landroid/preference/CheckBoxPreference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 341
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v0

    .line 343
    .local v0, "isBeta":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 344
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 346
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$7;

    invoke-direct {v1, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 382
    :cond_0
    return-void
.end method

.method static initInputMethodPreference(Landroid/preference/Preference;Landroid/app/Activity;)V
    .locals 1
    .param p0, "imPreference"    # Landroid/preference/Preference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 317
    .line 318
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;

    invoke-direct {v0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$6;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 338
    return-void
.end method

.method private initKeyboardProfiles()V
    .locals 7

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getProfilesNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    .line 443
    .local v3, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    .line 444
    const/4 v0, 0x0

    .line 446
    .local v0, "i":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 450
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;

    aput-object v6, v4, v5

    .line 451
    return-void

    .line 446
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v5, v0

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0
.end method

.method static initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V
    .locals 5
    .param p0, "pref"    # Landroid/preference/Preference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 193
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v0

    .line 195
    .local v0, "isBeta":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 196
    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 197
    invoke-virtual {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 198
    .local v1, "x":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const-string v2, ""

    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "(PRO version only)"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 201
    .end local v1    # "x":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 198
    .restart local v1    # "x":Ljava/lang/CharSequence;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method static initQuality(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V
    .locals 1
    .param p0, "cat"    # Landroid/preference/PreferenceCategory;
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 385
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getNumQualityLevels()I

    move-result v0

    if-nez v0, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 388
    :cond_0
    return-void
.end method

.method static initScreenSettings(Landroid/preference/Preference;Landroid/app/Activity;)V
    .locals 2
    .param p0, "screenSettings"    # Landroid/preference/Preference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 266
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v0

    .line 268
    .local v0, "isBeta":Z
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 269
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 272
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;

    invoke-direct {v1, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 313
    :cond_0
    return-void
.end method

.method static initVolume(Lcom/hlidskialf/android/preference/SeekBarPreference;Landroid/app/Activity;)V
    .locals 3
    .param p0, "volume"    # Lcom/hlidskialf/android/preference/SeekBarPreference;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getSoundVolume(Landroid/content/Context;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 176
    .local v0, "progress":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/hlidskialf/android/preference/SeekBarPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 177
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$3;

    invoke-direct {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$3;-><init>()V

    invoke-virtual {p0, v1}, Lcom/hlidskialf/android/preference/SeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 189
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 190
    return-void
.end method


# virtual methods
.method initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V
    .locals 1
    .param p1, "selectProfile"    # Landroid/preference/ListPreference;
    .param p2, "editProfile"    # Landroid/preference/Preference;

    .prologue
    .line 464
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 465
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initKeyboardProfiles()V

    .line 468
    :cond_0
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    .line 469
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->editProfilePreference:Landroid/preference/Preference;

    .line 470
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 472
    const-string v0, "default"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 474
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 475
    const-string v0, "default"

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 479
    :cond_1
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;Landroid/preference/ListPreference;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 503
    return-void
.end method

.method initWorkingDir(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 4
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "resetPref"    # Landroid/preference/Preference;
    .param p3, "copyContentPref"    # Landroid/preference/Preference;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirPreference:Landroid/preference/Preference;

    .line 134
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    .line 135
    const-string v0, "For advanced users only!"

    .line 136
    .local v0, "defaultS":Ljava/lang/String;
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getWorkingDirParent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "dir":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 139
    const-string v1, "For advanced users only!"

    .line 140
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 146
    :goto_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 147
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;)V

    invoke-virtual {p2, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 162
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;)V

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirPreference:Landroid/preference/Preference;

    invoke-static {v2, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 170
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    invoke-static {v2, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 171
    invoke-static {p3, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 172
    return-void

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .prologue
    .line 518
    const-class v0, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 519
    const-class v0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 524
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 526
    if-nez p1, :cond_2

    .line 527
    if-ne p2, v7, :cond_0

    .line 529
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getProfilesNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 530
    .local v4, "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    .line 531
    const/4 v1, 0x0

    .line 533
    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 537
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;

    aput-object v9, v7, v8

    .line 538
    const/4 v3, 0x0

    .line 540
    .local v3, "name":Ljava/lang/String;
    const-string v7, "EXTRA_PROFILE_NAME"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    .line 542
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->editProfilePreference:Landroid/preference/Preference;

    .line 541
    invoke-virtual {p0, v7, v8, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 543
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->editProfilePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v7, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V

    .line 544
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 570
    .end local v1    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_1
    return-void

    .line 533
    .restart local v1    # "i":I
    .restart local v4    # "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 534
    .restart local v3    # "name":Ljava/lang/String;
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->keyboardProfileNames:[Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v3, v8, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 547
    .end local v1    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    if-ne p1, v8, :cond_0

    .line 548
    if-ne p2, v7, :cond_0

    .line 550
    const-string v7, "file_path"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 549
    check-cast v0, Ljava/util/List;

    .line 552
    .local v0, "dir":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_0

    .line 554
    const/4 v7, 0x0

    :try_start_0
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 555
    .local v6, "workingDir":Ljava/io/File;
    invoke-static {p0, v6}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->tryChangeWorkingDir(Landroid/content/Context;Ljava/io/File;)Z

    move-result v5

    .line 558
    .local v5, "success":Z
    if-eqz v5, :cond_0

    .line 559
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirPreference:Landroid/preference/Preference;

    .line 560
    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    .line 559
    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 561
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 562
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->restartProcess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 565
    .end local v5    # "success":Z
    .end local v6    # "workingDir":Ljava/io/File;
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 67
    :try_start_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->finish()V

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
    .line 393
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 394
    sget v0, Lcom/nostalgiaemulators/framework/R$xml;->general_preferences_header:I

    invoke-virtual {p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->loadHeadersFromResource(ILjava/util/List;)V

    .line 396
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget v21, Lcom/nostalgiaemulators/framework/R$string;->key_profile_new:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;

    .line 80
    sget v21, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v22, 0xb

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    .line 81
    sget v21, Lcom/nostalgiaemulators/framework/R$xml;->general_preferences:I

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->addPreferencesFromResource(I)V

    .line 82
    const-string v21, "pref_general_settings_cat"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 83
    .local v5, "cat":Landroid/preference/PreferenceCategory;
    const-string v21, "general_pref_quality"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    .line 84
    .local v14, "quality":Landroid/preference/Preference;
    invoke-static {v5, v14}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initQuality(Landroid/preference/PreferenceCategory;Landroid/preference/Preference;)V

    .line 85
    const-string v21, "pref_game_keyboard_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    .line 86
    .local v17, "selectProfile":Landroid/preference/ListPreference;
    const-string v21, "pref_game_keyboard_edit_profile"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    .line 87
    .local v7, "editProfile":Landroid/preference/Preference;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V

    .line 88
    invoke-virtual/range {v17 .. v17}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v7, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 90
    const-string v21, "general_pref_working_dir"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    .line 91
    const-string v22, "general_pref_working_dir_change_to_default"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    .line 92
    const-string v23, "general_pref_working_dir_copy_content"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 89
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initWorkingDir(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V

    .line 93
    const-string v21, "pref_general_touch_cat"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceCategory;

    .line 94
    .local v19, "touchCat":Landroid/preference/PreferenceCategory;
    const-string v21, "pref_keyboard_cat"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 96
    .local v12, "keyCat":Landroid/preference/PreferenceCategory;
    const-string v21, "pref_game_keyboard_select_input_method"

    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 97
    .local v11, "inputMethod":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v11, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initInputMethodPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 99
    const-string v21, "general_pref_ddpad"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 98
    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 100
    .local v6, "ddpad":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initDDPAD(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V

    .line 101
    const-string v21, "general_pref_immersive_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    .line 102
    .local v10, "immersive":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 103
    const-string v21, "general_pref_shader"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    .line 104
    .local v18, "shader":Landroid/preference/Preference;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 105
    const-string v21, "general_pref_quicksave"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 106
    .local v15, "quicksave":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 107
    const-string v21, "general_pref_ui_autohide"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 108
    .local v4, "autoHide":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v4, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 109
    const-string v21, "general_pref_use_system_font"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    .line 110
    .local v9, "font":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v9, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 111
    const-string v21, "general_pref_sound_volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    check-cast v20, Lcom/hlidskialf/android/preference/SeekBarPreference;

    .line 112
    .local v20, "volume":Lcom/hlidskialf/android/preference/SeekBarPreference;
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initVolume(Lcom/hlidskialf/android/preference/SeekBarPreference;Landroid/app/Activity;)V

    .line 113
    const-string v21, "general_pref_ui_opacity"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 114
    .local v13, "opacity":Landroid/preference/Preference;
    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProPreference(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 115
    const-string v21, "general_pref_fastforward"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 116
    .local v8, "ff":Landroid/preference/CheckBoxPreference;
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initFastForward(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V

    .line 117
    const-string v21, "general_pref_screen_layout"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 118
    .local v16, "screen":Landroid/preference/Preference;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initScreenSettings(Landroid/preference/Preference;Landroid/app/Activity;)V

    .line 120
    .end local v4    # "autoHide":Landroid/preference/Preference;
    .end local v5    # "cat":Landroid/preference/PreferenceCategory;
    .end local v6    # "ddpad":Landroid/preference/CheckBoxPreference;
    .end local v7    # "editProfile":Landroid/preference/Preference;
    .end local v8    # "ff":Landroid/preference/CheckBoxPreference;
    .end local v9    # "font":Landroid/preference/Preference;
    .end local v10    # "immersive":Landroid/preference/Preference;
    .end local v11    # "inputMethod":Landroid/preference/Preference;
    .end local v12    # "keyCat":Landroid/preference/PreferenceCategory;
    .end local v13    # "opacity":Landroid/preference/Preference;
    .end local v14    # "quality":Landroid/preference/Preference;
    .end local v15    # "quicksave":Landroid/preference/Preference;
    .end local v16    # "screen":Landroid/preference/Preference;
    .end local v17    # "selectProfile":Landroid/preference/ListPreference;
    .end local v18    # "shader":Landroid/preference/Preference;
    .end local v19    # "touchCat":Landroid/preference/PreferenceCategory;
    .end local v20    # "volume":Lcom/hlidskialf/android/preference/SeekBarPreference;
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

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 400
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 401
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

.method openDirPicker()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    new-instance v0, Landroid/content/Intent;

    .line 124
    const-class v1, Lcom/coderplus/filepicker/FilePickerActivity;

    .line 123
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "only_directories"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    return-void
.end method

.method refreshKeyboardProfilePreferences()V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initKeyboardProfiles()V

    .line 206
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->editProfilePreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V

    .line 207
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->editProfilePreference:Landroid/preference/Preference;

    .line 208
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->selectProfileListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-virtual {p0, v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V

    .line 210
    :cond_0
    return-void
.end method

.method restartProcess()V
    .locals 3

    .prologue
    .line 511
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 512
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    .line 514
    return-void
.end method

.method public setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2
    .param p1, "listProfile"    # Landroid/preference/ListPreference;
    .param p2, "editProfile"    # Landroid/preference/Preference;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 455
    invoke-virtual {p1, p3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 456
    invoke-virtual {p2, p3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 457
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->key_profile_edit:I

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 458
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 459
    const-string v1, "EXTRA_PROFILE_NAME"

    .line 458
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    return-void
.end method
