.class public Lcom/qiang/framework/helpers/UpdateManager;
.super Ljava/lang/Object;
.source "UpdateManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qiang/framework/recommend/ProductManager;->getProduct(Ljava/lang/String;)Lcom/qiang/framework/recommend/Product;

    move-result-object v0

    .line 39
    .local v0, "product":Lcom/qiang/framework/recommend/Product;
    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getVersionCode()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;I)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/qiang/framework/recommend/Product;
    .param p2, "versionCode"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/qiang/framework/helpers/UpdateManager;->start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;ILcom/qiang/framework/listener/UpdateManagerListener;)V

    .line 48
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;ILcom/qiang/framework/listener/UpdateManagerListener;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "product"    # Lcom/qiang/framework/recommend/Product;
    .param p2, "versionCode"    # I
    .param p3, "updateManagerListener"    # Lcom/qiang/framework/listener/UpdateManagerListener;

    .prologue
    const/4 v4, 0x0

    .line 52
    if-lez p2, :cond_0

    const/4 v3, 0x1

    .line 54
    .local v3, "selfUpdate":Z
    :goto_0
    if-eqz v3, :cond_1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getLastUpdateTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-gez v5, :cond_1

    .line 137
    :goto_1
    return-void

    .end local v3    # "selfUpdate":Z
    :cond_0
    move v3, v4

    .line 52
    goto :goto_0

    .line 57
    .restart local v3    # "selfUpdate":Z
    :cond_1
    iget v5, p1, Lcom/qiang/framework/recommend/Product;->versionCode:I

    if-le v5, p2, :cond_6

    .line 59
    if-eqz p3, :cond_2

    .line 61
    invoke-interface {p3, p1}, Lcom/qiang/framework/listener/UpdateManagerListener;->onUpdateAvailable(Lcom/qiang/framework/recommend/Product;)V

    goto :goto_1

    .line 66
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/qiang/framework/recommend/Product;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".apk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/Download/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "path":Ljava/lang/String;
    invoke-static {v2}, Lcom/qiang/framework/helpers/FileHelper;->isFileExists(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 70
    if-eqz v3, :cond_3

    .line 72
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "\u65b0\u7248\u672c\u5df2\u51c6\u5907\u5c31\u7eea\uff0c\u662f\u5426\u5b89\u88c5\uff1f"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u53d6\u6d88"

    new-instance v6, Lcom/qiang/framework/helpers/UpdateManager$2;

    invoke-direct {v6, p0}, Lcom/qiang/framework/helpers/UpdateManager$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u5b89\u88c5"

    new-instance v6, Lcom/qiang/framework/helpers/UpdateManager$1;

    invoke-direct {v6, p0, v2}, Lcom/qiang/framework/helpers/UpdateManager$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 87
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 92
    :cond_3
    invoke-static {p0, v2}, Lcom/qiang/framework/helpers/SystemHelper;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v3, :cond_5

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5347\u7ea7\u7248\u672c "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qiang/framework/helpers/SystemHelper;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/qiang/framework/recommend/Product;->versionName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 100
    iget-object v4, p1, Lcom/qiang/framework/recommend/Product;->releaseNote:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 107
    :goto_2
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/qiang/framework/helpers/UpdateManager$4;

    invoke-direct {v5, p0}, Lcom/qiang/framework/helpers/UpdateManager$4;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v5, "\u4e0b\u8f7d"

    new-instance v6, Lcom/qiang/framework/helpers/UpdateManager$3;

    invoke-direct {v6, p0, p1}, Lcom/qiang/framework/helpers/UpdateManager$3;-><init>(Landroid/content/Context;Lcom/qiang/framework/recommend/Product;)V

    .line 114
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 122
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 104
    :cond_5
    const-string v4, "\u786e\u8ba4\u4e0b\u8f7d\uff1f"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    .line 126
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "path":Ljava/lang/String;
    :cond_6
    if-eqz p3, :cond_7

    .line 128
    invoke-interface {p3}, Lcom/qiang/framework/listener/UpdateManagerListener;->onNoUpdateAvailable()V

    goto/16 :goto_1

    .line 132
    :cond_7
    if-eqz v3, :cond_8

    .line 133
    const-string v4, "\u5df2\u7ecf\u662f\u6700\u65b0\u7248\u672c"

    invoke-static {v4}, Lcom/qiang/framework/helpers/LogHelper;->info(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 135
    :cond_8
    const-string v5, "\u4ea7\u54c1\u7248\u672c\u53f7\u4e0d\u5bf9"

    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
