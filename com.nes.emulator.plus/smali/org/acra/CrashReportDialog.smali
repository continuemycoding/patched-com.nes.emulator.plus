.class public final Lorg/acra/CrashReportDialog;
.super Landroid/app/Activity;
.source "CrashReportDialog.java"


# static fields
.field private static final STATE_COMMENT:Ljava/lang/String; = "comment"

.field private static final STATE_EMAIL:Ljava/lang/String; = "email"


# instance fields
.field mReportFileName:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private userComment:Landroid/widget/EditText;

.field private userEmail:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lorg/acra/CrashReportDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lorg/acra/CrashReportDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lorg/acra/CrashReportDialog;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected cancelNotification()V
    .locals 2

    .prologue
    .line 248
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lorg/acra/CrashReportDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 249
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/16 v1, 0x29a

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 250
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 69
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Lorg/acra/CrashReportDialog;->getIntent()Landroid/content/Intent;

    move-result-object v13

    const-string v14, "REPORT_FILE_NAME"

    invoke-virtual {v13, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    .line 72
    sget-object v13, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Opening CrashReportDialog for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->mReportFileName:Ljava/lang/String;

    if-nez v13, :cond_0

    .line 74
    invoke-virtual/range {p0 .. p0}, Lorg/acra/CrashReportDialog;->finish()V

    .line 76
    :cond_0
    const/4 v13, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/acra/CrashReportDialog;->requestWindowFeature(I)Z

    .line 78
    new-instance v7, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 79
    .local v7, "root":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    const/16 v13, 0xa

    const/16 v14, 0xa

    const/16 v15, 0xa

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v7, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 81
    new-instance v13, Landroid/view/ViewGroup$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 83
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 85
    new-instance v9, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 86
    .local v9, "scroll":Landroid/widget/ScrollView;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v9, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    new-instance v10, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 88
    .local v10, "scrollable":Landroid/widget/LinearLayout;
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    invoke-virtual {v9, v10}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 91
    new-instance v11, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 92
    .local v11, "text":Landroid/widget/TextView;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->resDialogText()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->resDialogCommentPrompt()I

    move-result v2

    .line 97
    .local v2, "commentPromptId":I
    if-eqz v2, :cond_2

    .line 98
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 99
    .local v4, "label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    const/16 v14, 0xa

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v15

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 102
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v4, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    new-instance v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    .line 106
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setLines(I)V

    .line 107
    if-eqz p1, :cond_1

    .line 108
    const-string v13, "comment"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 109
    .local v8, "savedValue":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 110
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .end local v8    # "savedValue":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    .end local v4    # "label":Landroid/widget/TextView;
    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->resDialogEmailPrompt()I

    move-result v3

    .line 118
    .local v3, "emailPromptId":I
    if-eqz v3, :cond_4

    .line 119
    new-instance v4, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v4    # "label":Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/acra/CrashReportDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v13

    const/16 v14, 0xa

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v15

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v4, v13, v14, v15, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 123
    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    new-instance v13, Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    .line 126
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->setSingleLine()V

    .line 127
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    const/16 v14, 0x21

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setInputType(I)V

    .line 129
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->sharedPreferencesName()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Lorg/acra/ACRAConfiguration;->sharedPreferencesMode()I

    move-result v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lorg/acra/CrashReportDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    .line 131
    const/4 v8, 0x0

    .line 132
    .restart local v8    # "savedValue":Ljava/lang/String;
    if-eqz p1, :cond_3

    .line 133
    const-string v13, "email"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 135
    :cond_3
    if-eqz v8, :cond_6

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v13, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v8    # "savedValue":Ljava/lang/String;
    :cond_4
    new-instance v1, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 145
    .local v1, "buttons":Landroid/widget/LinearLayout;
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v13}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v13

    const/16 v14, 0xa

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v15

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v1, v13, v14, v15, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 148
    new-instance v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 149
    .local v12, "yes":Landroid/widget/Button;
    const v13, 0x1040013

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setText(I)V

    .line 150
    new-instance v13, Lorg/acra/CrashReportDialog$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/acra/CrashReportDialog$1;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v12, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    new-instance v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 194
    .local v5, "no":Landroid/widget/Button;
    const v13, 0x1040009

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setText(I)V

    .line 195
    new-instance v13, Lorg/acra/CrashReportDialog$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lorg/acra/CrashReportDialog$2;-><init>(Lorg/acra/CrashReportDialog;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-direct/range {v13 .. v16}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v5, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v1, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/acra/CrashReportDialog;->setContentView(Landroid/view/View;)V

    .line 211
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->resDialogTitle()I

    move-result v6

    .line 212
    .local v6, "resTitle":I
    if-eqz v6, :cond_5

    .line 213
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/acra/CrashReportDialog;->setTitle(I)V

    .line 216
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/acra/CrashReportDialog;->getWindow()Landroid/view/Window;

    move-result-object v13

    const/4 v14, 0x3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lorg/acra/ACRAConfiguration;->resDialogIcon()I

    move-result v15

    invoke-virtual {v13, v14, v15}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 218
    invoke-virtual/range {p0 .. p0}, Lorg/acra/CrashReportDialog;->cancelNotification()V

    .line 220
    new-instance v13, Lorg/acra/CrashReportDialog$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9}, Lorg/acra/CrashReportDialog$3;-><init>(Lorg/acra/CrashReportDialog;Landroid/widget/ScrollView;)V

    invoke-virtual {v9, v13}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void

    .line 138
    .end local v1    # "buttons":Landroid/widget/LinearLayout;
    .end local v5    # "no":Landroid/widget/Button;
    .end local v6    # "resTitle":I
    .end local v12    # "yes":Landroid/widget/Button;
    .restart local v4    # "label":Landroid/widget/TextView;
    .restart local v8    # "savedValue":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/acra/CrashReportDialog;->prefs:Landroid/content/SharedPreferences;

    const-string v15, "acra.user.email"

    const-string v16, ""

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 255
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 256
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 258
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 235
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    const-string v0, "comment"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userComment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_0
    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "email"

    iget-object v1, p0, Lorg/acra/CrashReportDialog;->userEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_1
    return-void
.end method
