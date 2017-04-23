.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initDDPAD(Landroid/preference/CheckBoxPreference;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;->val$activity:Landroid/app/Activity;

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    .line 230
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;->val$activity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDynamicDPADUsed(Landroid/content/Context;Z)V

    .line 232
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 233
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;->val$activity:Landroid/app/Activity;

    .line 232
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->general_pref_ddpad_activate:I

    .line 235
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 237
    sget v3, Lcom/nostalgiaemulators/framework/R$string;->ok:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 239
    sget v3, Lcom/nostalgiaemulators/framework/R$string;->general_pref_ddpad_goto_play:I

    .line 240
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;Landroid/app/Activity;)V

    .line 238
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 254
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 255
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1, v6}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 258
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :cond_0
    return v6
.end method
