.class Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;
.super Ljava/lang/Object;
.source "GeneralPreferenceActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;->this$1:Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5;

    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;->val$activity:Landroid/app/Activity;

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 298
    const/4 v0, 0x0

    .line 299
    .local v0, "goToMarket":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .line 300
    .end local v0    # "goToMarket":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "market://details?id="

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;->val$activity:Landroid/app/Activity;

    .line 303
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 302
    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 304
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getFullVersionPackage()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 299
    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    .restart local v0    # "goToMarket":Landroid/content/Intent;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity$5$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method
