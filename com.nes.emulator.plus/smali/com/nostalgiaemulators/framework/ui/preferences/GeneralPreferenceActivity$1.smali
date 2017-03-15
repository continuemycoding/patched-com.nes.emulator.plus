.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initWorkingDir(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    .line 151
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    const/4 v2, 0x0

    .line 150
    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->tryChangeWorkingDir(Landroid/content/Context;Ljava/io/File;)Z

    move-result v0

    .line 153
    .local v0, "success":Z
    if-eqz v0, :cond_0

    .line 154
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirPreference:Landroid/preference/Preference;

    const-string v2, "For advanced users only!"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->workingDirResetPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$1;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->restartProcess()V

    .line 159
    :cond_0
    return v3
.end method
