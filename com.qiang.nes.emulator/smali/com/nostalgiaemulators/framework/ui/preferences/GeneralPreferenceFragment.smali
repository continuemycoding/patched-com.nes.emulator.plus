.class public Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GeneralPreferenceFragment.java"


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
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;->addPreferencesFromResource(I)V

    .line 27
    return-void
.end method
