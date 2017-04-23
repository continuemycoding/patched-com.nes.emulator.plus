.class public Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "GamePreferenceFragment.java"


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
    .locals 1
    .param p1, "paramBundle"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v0, 0x7f060002

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;->addPreferencesFromResource(I)V

    .line 27
    return-void
.end method
