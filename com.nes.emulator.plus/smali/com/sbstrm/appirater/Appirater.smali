.class public Lcom/sbstrm/appirater/Appirater;
.super Ljava/lang/Object;
.source "Appirater.java"


# static fields
.field private static final PREF_APP_VERSION_CODE:Ljava/lang/String; = "versioncode"

.field private static final PREF_DATE_FIRST_LAUNCHED:Ljava/lang/String; = "date_firstlaunch"

.field private static final PREF_DATE_REMINDER_PRESSED:Ljava/lang/String; = "date_reminder_pressed"

.field private static final PREF_DONT_SHOW:Ljava/lang/String; = "dontshow"

.field private static final PREF_LAUNCH_COUNT:Ljava/lang/String; = "launch_count"

.field private static final PREF_RATE_CLICKED:Ljava/lang/String; = "rateclicked"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appLaunched(Landroid/content/Context;)V
    .locals 22
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sbstrm/appirater/R$bool;->appirator_test_mode:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v15

    .line 44
    .local v15, "testMode":Z
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v19, ".appirater"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 45
    .local v14, "prefs":Landroid/content/SharedPreferences;
    if-nez v15, :cond_1

    const-string v18, "dontshow"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "rateclicked"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 49
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v15, :cond_2

    .line 50
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v18, "launch_count"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 58
    .local v10, "launch_count":J
    const-string v18, "date_firstlaunch"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 61
    .local v6, "date_firstLaunch":J
    const-string v18, "date_reminder_pressed"

    const-wide/16 v20, 0x0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-interface {v14, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 64
    .local v8, "date_reminder_pressed":J
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v18

    move-object/from16 v0, v18

    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 65
    .local v4, "appVersionCode":I
    const-string v18, "versioncode"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v4, :cond_3

    .line 67
    const-wide/16 v10, 0x0

    .line 69
    :cond_3
    const-string v18, "versioncode"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v4    # "appVersionCode":I
    :goto_1
    const-wide/16 v18, 0x1

    add-long v10, v10, v18

    .line 75
    const-string v18, "launch_count"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 77
    const-wide/16 v18, 0x0

    cmp-long v18, v6, v18

    if-nez v18, :cond_4

    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 79
    const-string v18, "date_firstlaunch"

    move-object/from16 v0, v18

    invoke-interface {v5, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 83
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sbstrm/appirater/R$integer;->appirator_launches_until_prompt:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v18, v10, v18

    if-ltz v18, :cond_5

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sbstrm/appirater/R$integer;->appirator_days_until_prompt:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    mul-int/lit8 v18, v18, 0x18

    mul-int/lit8 v18, v18, 0x3c

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v12, v18, v20

    .line 85
    .local v12, "millisecondsToWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v20, v6, v12

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 86
    const-wide/16 v18, 0x0

    cmp-long v18, v8, v18

    if-nez v18, :cond_6

    .line 87
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    .line 97
    .end local v12    # "millisecondsToWait":J
    :cond_5
    :goto_2
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 89
    .restart local v12    # "millisecondsToWait":J
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sbstrm/appirater/R$integer;->appirator_days_before_reminding:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    mul-int/lit8 v18, v18, 0x18

    mul-int/lit8 v18, v18, 0x3c

    mul-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x3e8

    mul-long v16, v18, v20

    .line 90
    .local v16, "remindMillisecondsToWait":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    add-long v20, v16, v8

    cmp-long v18, v18, v20

    if-ltz v18, :cond_5

    .line 91
    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/sbstrm/appirater/Appirater;->showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V

    goto :goto_2

    .line 70
    .end local v12    # "millisecondsToWait":J
    .end local v16    # "remindMillisecondsToWait":J
    :catch_0
    move-exception v18

    goto/16 :goto_1
.end method

.method private static showRateDialog(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;)V
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 102
    sget v8, Lcom/sbstrm/appirater/R$string;->appirator_app_title:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "appName":Ljava/lang/String;
    new-instance v1, Landroid/app/Dialog;

    invoke-direct {v1, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 105
    .local v1, "dialog":Landroid/app/Dialog;
    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "1."

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "2.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v9, "2.1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 107
    :cond_0
    invoke-virtual {v1, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 120
    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lcom/sbstrm/appirater/R$layout;->appirater:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 122
    .local v3, "layout":Landroid/widget/LinearLayout;
    sget v8, Lcom/sbstrm/appirater/R$id;->message:I

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 123
    .local v7, "tv":Landroid/widget/TextView;
    sget v8, Lcom/sbstrm/appirater/R$string;->rate_message:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    sget v8, Lcom/sbstrm/appirater/R$id;->rate:I

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 126
    .local v4, "rateButton":Landroid/widget/Button;
    sget v8, Lcom/sbstrm/appirater/R$string;->rate:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 127
    new-instance v8, Lcom/sbstrm/appirater/Appirater$1;

    invoke-direct {v8, p0, p1, v1}, Lcom/sbstrm/appirater/Appirater$1;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    sget v8, Lcom/sbstrm/appirater/R$id;->rateLater:I

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 139
    .local v5, "rateLaterButton":Landroid/widget/Button;
    sget v8, Lcom/sbstrm/appirater/R$string;->rate_later:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 140
    new-instance v8, Lcom/sbstrm/appirater/Appirater$2;

    invoke-direct {v8, p1, v1}, Lcom/sbstrm/appirater/Appirater$2;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 163
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 164
    return-void

    .line 108
    .end local v3    # "layout":Landroid/widget/LinearLayout;
    .end local v4    # "rateButton":Landroid/widget/Button;
    .end local v5    # "rateLaterButton":Landroid/widget/Button;
    .end local v7    # "tv":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x78

    if-eq v8, v9, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0xa0

    if-ne v8, v9, :cond_5

    .line 109
    :cond_2
    const-string v8, "window"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 110
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 111
    .local v6, "rotation":I
    const/16 v8, 0x5a

    if-eq v6, v8, :cond_3

    const/16 v8, 0x10e

    if-ne v6, v8, :cond_4

    .line 112
    :cond_3
    invoke-virtual {v1, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    goto/16 :goto_0

    .line 114
    :cond_4
    sget v8, Lcom/sbstrm/appirater/R$string;->rate_title:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 117
    .end local v2    # "display":Landroid/view/Display;
    .end local v6    # "rotation":I
    :cond_5
    sget v8, Lcom/sbstrm/appirater/R$string;->rate_title:I

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v0, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
