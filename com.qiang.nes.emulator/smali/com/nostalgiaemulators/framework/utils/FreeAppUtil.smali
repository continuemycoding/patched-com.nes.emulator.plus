.class public Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;
.super Ljava/lang/Object;
.source "FreeAppUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method private static showOfflineDialog(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 48
    new-instance v0, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->check(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    :cond_0
    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 38
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->check(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    :cond_0
    return-void
.end method
