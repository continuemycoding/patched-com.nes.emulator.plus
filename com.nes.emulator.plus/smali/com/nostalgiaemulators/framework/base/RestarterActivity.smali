.class public Lcom/nostalgiaemulators/framework/base/RestarterActivity;
.super Landroid/app/Activity;
.source "RestarterActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;
    }
.end annotation


# static fields
.field public static final EXTRA_AFTER_RESTART:Ljava/lang/String; = "isAfterRestart"

.field public static final EXTRA_CLASS:Ljava/lang/String; = "class"

.field public static final EXTRA_PID:Ljava/lang/String; = "pid"


# instance fields
.field thread:Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "tv":Landroid/widget/TextView;
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->setContentView(Landroid/view/View;)V

    .line 43
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->thread:Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->thread:Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->cancel()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->finish()V

    .line 153
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 48
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "pid"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "pid":I
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "class"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "className":Ljava/lang/String;
    const/4 v1, 0x0

    .line 53
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 58
    :goto_0
    const/4 v3, 0x0

    .line 60
    .local v3, "restartIntent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 61
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "restartIntent":Landroid/content/Intent;
    invoke-direct {v3, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .restart local v3    # "restartIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 65
    :cond_0
    new-instance v4, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;

    invoke-direct {v4, p0, v2, v3}, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;-><init>(Lcom/nostalgiaemulators/framework/base/RestarterActivity;ILandroid/content/Intent;)V

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->thread:Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;

    .line 66
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/RestarterActivity;->thread:Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;

    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/base/RestarterActivity$RestarterThread;->start()V

    .line 67
    return-void

    .line 55
    .end local v3    # "restartIntent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    goto :goto_0
.end method
