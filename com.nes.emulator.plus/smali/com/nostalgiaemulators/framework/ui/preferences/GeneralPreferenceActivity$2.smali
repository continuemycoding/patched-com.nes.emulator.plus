.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$2;
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
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$2;->this$0:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;->openDirPicker()V

    .line 166
    const/4 v0, 0x1

    return v0
.end method
