.class Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;
.super Landroid/os/AsyncTask;
.source "VersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nostalgiaemulators/framework/base/VersionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckVersionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->context:Landroid/content/Context;

    .line 79
    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    .line 85
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 86
    .local v1, "url":Ljava/lang/String;
    const-string v2, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-static {v1}, Lcom/nostalgiaemulators/framework/utils/UrlDownloader;->download(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "response":Ljava/lang/String;
    return-object v0
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 96
    .local v2, "playStoreVersionCode":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setPlayStoreAppVersion(Landroid/content/Context;I)V

    .line 98
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Play Store version: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .end local v2    # "playStoreVersionCode":I
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .local v0, "c":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 108
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 108
    invoke-static {v3, v4, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setNewVersionCheckTime(Landroid/content/Context;J)V

    .line 110
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "next version check: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 116
    .end local v0    # "c":Ljava/util/Calendar;
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :try_start_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .restart local v0    # "c":Ljava/util/Calendar;
    const/4 v3, 0x5

    const/4 v4, 0x3

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 108
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 108
    invoke-static {v3, v4, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setNewVersionCheckTime(Landroid/content/Context;J)V

    .line 110
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "next version check: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 112
    .end local v0    # "c":Ljava/util/Calendar;
    :catch_1
    move-exception v1

    .line 113
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 106
    :try_start_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 107
    .restart local v0    # "c":Ljava/util/Calendar;
    const/4 v4, 0x5

    const/4 v5, 0x3

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 108
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/VersionChecker$CheckVersionTask;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 108
    invoke-static {v4, v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setNewVersionCheckTime(Landroid/content/Context;J)V

    .line 110
    const-string v4, "com.nostalgiaemulators.framework.base.VersionChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "next version check: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 115
    .end local v0    # "c":Ljava/util/Calendar;
    :goto_1
    throw v3

    .line 112
    :catch_2
    move-exception v1

    .line 113
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v4, "com.nostalgiaemulators.framework.base.VersionChecker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 112
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 113
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "com.nostalgiaemulators.framework.base.VersionChecker"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
