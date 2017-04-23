.class public Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;
.super Landroid/app/Dialog;
.source "WhatIsNewDialog.java"


# static fields
.field public static final EXTRA_WHAT_IS_NEW_LAST_VERSION:Ljava/lang/String; = "EXTRA_WHAT_IS_NEW_LAST_VERSION"

.field public static final RESOURCE_PREFIX:Ljava/lang/String; = "whats_new_v"

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.utils.WhatIsNewDialog"


# instance fields
.field private res:Landroid/content/res/Resources;

.field private resID:I

.field private version:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const v10, 0xffffff

    const/4 v4, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 39
    const/4 v3, -0x1

    iput v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->version:I

    .line 41
    iput v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->resID:I

    .line 45
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->getWindow()Landroid/view/Window;

    .line 46
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->requestWindowFeature(I)Z

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 51
    iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 50
    iput v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->version:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "whats_new_v"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->version:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 57
    invoke-virtual {v3, v4, v5, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->resID:I

    .line 60
    iget v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->resID:I

    if-eqz v3, :cond_0

    .line 61
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    sget v4, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    .line 62
    .local v6, "color":I
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    sget v4, Lcom/nostalgiaemulators/framework/R$color;->ads_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 63
    .local v7, "color2":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<span style=\'color: #"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    and-int v4, v6, v10

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 65
    const-string v4, ";  background-color: #000000; font:bold 1em Arial\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 66
    const-string v4, "<h1 style=\'color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    and-int v4, v7, v10

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->whats_new_title:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</h1>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 69
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->res:Landroid/content/res/Resources;

    iget v5, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->resID:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</span>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "str":Ljava/lang/String;
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 71
    .local v0, "webView":Landroid/webkit/WebView;
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 72
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->setContentView(Landroid/view/View;)V

    .line 75
    .end local v0    # "webView":Landroid/webkit/WebView;
    .end local v2    # "str":Ljava/lang/String;
    .end local v6    # "color":I
    .end local v7    # "color2":I
    :cond_0
    return-void

    .line 53
    :catch_0
    move-exception v8

    .line 54
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "com.nostalgiaemulators.framework.utils.WhatIsNewDialog"

    const-string v4, ""

    invoke-static {v3, v4, v8}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public check()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 78
    iget v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->resID:I

    if-nez v4, :cond_1

    .line 93
    :cond_0
    :goto_0
    return v3

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 83
    const-string v5, "what_is_new"

    .line 82
    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 84
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "EXTRA_WHAT_IS_NEW_LAST_VERSION"

    const/4 v5, -0x1

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, "last":I
    iget v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->version:I

    if-ge v1, v4, :cond_0

    .line 87
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 88
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "EXTRA_WHAT_IS_NEW_LAST_VERSION"

    iget v4, p0, Lcom/nostalgiaemulators/framework/utils/WhatIsNewDialog;->version:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    const/4 v3, 0x1

    goto :goto_0
.end method
