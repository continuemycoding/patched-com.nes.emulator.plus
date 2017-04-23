.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;->this$1:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;->val$activity:Landroid/app/Activity;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "goToMarket":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .line 247
    .end local v0    # "goToMarket":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    .line 248
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;->val$activity:Landroid/app/Activity;

    .line 250
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 249
    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 251
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getFullVersionPackage()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 246
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .restart local v0    # "goToMarket":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$4$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 253
    return-void
.end method
