.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initProfiles(Landroid/preference/ListPreference;Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

.field private final synthetic val$editProfile:Landroid/preference/Preference;

.field private final synthetic val$selectProfile:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;Landroid/preference/ListPreference;Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->val$selectProfile:Landroid/preference/ListPreference;

    iput-object p3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->val$editProfile:Landroid/preference/Preference;

    .line 479
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 483
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    .line 485
    .local v0, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    # getter for: Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->NEW_PROFILE:Ljava/lang/String;
    invoke-static {v4}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->access$0(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 486
    new-instance v1, Landroid/content/Intent;

    .line 487
    const-class v4, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;

    .line 486
    invoke-direct {v1, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 489
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "EXTRA_PROFILE_NAME"

    .line 490
    const-string v5, "default"

    .line 488
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v4, "EXTRA_NEW_BOOL"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 493
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 499
    .end local v1    # "i":Landroid/content/Intent;
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v2

    .line 497
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->val$selectProfile:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$8;->val$editProfile:Landroid/preference/Preference;

    .line 498
    check-cast p2, Ljava/lang/String;

    .line 497
    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {v2, v4, v5, p2}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->setNewProfile(Landroid/preference/ListPreference;Landroid/preference/Preference;Ljava/lang/String;)V

    move v2, v3

    .line 499
    goto :goto_0
.end method
