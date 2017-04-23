.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->initScreenSettings(Landroid/preference/Preference;Landroid/app/Activity;)V
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;->val$activity:Landroid/app/Activity;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 275
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 276
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;->val$activity:Landroid/app/Activity;

    .line 275
    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 279
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->general_pref_ddpad_activate:I

    .line 278
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 280
    sget v3, Lcom/nostalgiaemulators/framework/R$string;->ok:I

    .line 281
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$1;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$1;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;Landroid/app/Activity;)V

    .line 280
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 292
    sget v3, Lcom/nostalgiaemulators/framework/R$string;->general_pref_ddpad_goto_play:I

    .line 293
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;->val$activity:Landroid/app/Activity;

    invoke-direct {v4, p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;Landroid/app/Activity;)V

    .line 291
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 308
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-static {v1, v6}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 309
    return v6
.end method
