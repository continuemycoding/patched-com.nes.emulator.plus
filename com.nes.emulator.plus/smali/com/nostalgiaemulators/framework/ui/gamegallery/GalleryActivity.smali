.class public abstract Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;
.super Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;
.source "GalleryActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;
.implements Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;
.implements Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;


# static fields
.field public static final COMMAND_SEARCHMODE:I = 0x1

.field public static final EXTRA_TABS_IDX:Ljava/lang/String; = "EXTRA_TABS_IDX"

.field private static final REQUEST_IMPORT:I = 0x2

.field private static final REQUEST_OPEN_DIR:I = 0x3

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

.field private static final importPref:Ljava/lang/String; = "import_pref"

.field private static sAppNextId:Ljava/lang/String;


# instance fields
.field private activityLabel:Landroid/widget/TextView;

.field private activityPaused:Z

.field adFetching:Ljava/lang/Runnable;

.field private adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

.field alertDialog:Landroid/app/AlertDialog;

.field private backIcon:Landroid/widget/ImageView;

.field private failure:Z

.field private font:Landroid/graphics/Typeface;

.field private gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

.field handler:Landroid/os/Handler;

.field private importing:Z

.field private isSearchBoxVisible:Z

.field private mAdView:Lcom/google/android/gms/ads/AdView;

.field private noGamesLabelContainer:Landroid/widget/LinearLayout;

.field private pager:Landroid/support/v4/view/ViewPager;

.field private progress:Landroid/widget/ProgressBar;

.field private rotateAnim:Z

.field private searchBtn:Landroid/widget/ImageButton;

.field private searchContainer:Landroid/widget/LinearLayout;

.field searchDialog:Landroid/app/ProgressDialog;

.field private searchEditText:Landroid/widget/EditText;

.field private visible:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 105
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;-><init>()V

    .line 113
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 120
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    .line 123
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->visible:Z

    .line 125
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->importing:Z

    .line 126
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    .line 166
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityPaused:Z

    .line 167
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adFetching:Ljava/lang/Runnable;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->handler:Landroid/os/Handler;

    .line 563
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->isSearchBoxVisible:Z

    .line 589
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->rotateAnim:Z

    .line 954
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    .line 105
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 585
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setFilter(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->rotateAnim:Z

    return-void
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showSearchProgressDialog(Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)Z
    .locals 1

    .prologue
    .line 563
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->isSearchBoxVisible:Z

    return v0
.end method

.method private getAppNextId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->sAppNextId:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 160
    .local v0, "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->sAppNextId:Ljava/lang/String;

    .line 163
    .end local v0    # "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    :cond_0
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->sAppNextId:Ljava/lang/String;

    return-object v1
.end method

.method private processPleaseRateDialog()V
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    .line 411
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getRateAppTime(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getRateAppTime(Landroid/content/Context;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 416
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 417
    .local v0, "c":Ljava/util/Calendar;
    const/4 v2, 0x5

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 418
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {p0, v2, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setRateAppTime(Landroid/content/Context;J)V

    goto :goto_0

    .line 422
    .end local v0    # "c":Ljava/util/Calendar;
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 423
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getRateAppTime(Landroid/content/Context;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 427
    invoke-static {p0, v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setRateAppTime(Landroid/content/Context;J)V

    .line 428
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v1, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v2, "Do you like this app?"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 431
    const-string v2, "If you like the emulator, please support us by rating it on Google Play."

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 432
    const-string v2, "Rate the app"

    .line 433
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$8;

    invoke-direct {v3, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$8;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    .line 432
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 443
    const-string v2, "No, thanks"

    .line 444
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$9;

    invoke-direct {v3, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$9;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    .line 443
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->alertDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private setFilter(Ljava/lang/String;)V
    .locals 1
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    .line 586
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->setFilter(Ljava/lang/String;)V

    .line 587
    return-void
.end method

.method private setSearchBoxVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 566
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->isSearchBoxVisible:Z

    .line 568
    if-eqz p1, :cond_0

    .line 569
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 570
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchContainer:Landroid/widget/LinearLayout;

    .line 571
    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->blue_boundary_shape:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 572
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 573
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setFilter(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->backIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 583
    :goto_0
    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchContainer:Landroid/widget/LinearLayout;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 580
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setFilter(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPleaseUpdateDialog()V
    .locals 3

    .prologue
    .line 452
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "This version is getting old"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 454
    const v1, 0x108009b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 456
    const-string v1, "It seems you\'re not using the latest version of the app. Please update."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 457
    const-string v1, "Update!"

    .line 458
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$10;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    .line 457
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 468
    const-string v1, "Remind me later"

    .line 469
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$11;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$11;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    .line 468
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->alertDialog:Landroid/app/AlertDialog;

    .line 478
    return-void
.end method

.method private showSearchProgressDialog(Z)V
    .locals 2
    .param p1, "zipMode"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    .line 959
    .local v0, "act":Landroid/app/Activity;
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;

    invoke-direct {v1, p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$16;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Landroid/app/Activity;Z)V

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 986
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 495
    invoke-super {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 497
    packed-switch p1, :pswitch_data_0

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 499
    :pswitch_0
    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    .line 500
    const-string v9, "import_pref"

    .line 501
    const/4 v10, 0x0

    .line 500
    invoke-virtual {p0, v9, v10}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 502
    .local v7, "pref":Landroid/content/SharedPreferences;
    const-string v9, "PATH"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 503
    .local v8, "sSource":Ljava/lang/String;
    const-string v9, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "PATH:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :try_start_0
    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/base/MigrationManager;->doImport(Landroid/content/Context;Ljava/lang/String;)V

    .line 507
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 508
    .local v4, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "import"

    const/4 v10, 0x1

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 510
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->export_lite_ok:I

    invoke-virtual {p0, v9}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 511
    const/4 v10, 0x1

    .line 510
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 511
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    :try_start_1
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 522
    .local v6, "files":[Ljava/io/File;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_1
    if-lt v9, v10, :cond_3

    .line 526
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 536
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    .end local v8    # "sSource":Ljava/lang/String;
    :goto_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->importing:Z

    .line 538
    iget-boolean v9, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames:Z

    if-eqz v9, :cond_0

    .line 539
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v1

    .line 540
    .local v1, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    const-class v9, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->countObjsInDb(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v0

    .line 541
    .local v0, "count":I
    if-nez v0, :cond_5

    const/4 v9, 0x1

    :goto_3
    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames(ZLjava/io/File;)V

    goto :goto_0

    .line 513
    .end local v0    # "count":I
    .end local v1    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    .restart local v8    # "sSource":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 514
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->export_lite_error:I

    invoke-virtual {p0, v9}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 516
    const/4 v10, 0x1

    .line 515
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 516
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 520
    :try_start_3
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 522
    .restart local v6    # "files":[Ljava/io/File;
    array-length v10, v6

    const/4 v9, 0x0

    :goto_4
    if-lt v9, v10, :cond_1

    .line 526
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 528
    .end local v6    # "files":[Ljava/io/File;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 522
    .restart local v6    # "files":[Ljava/io/File;
    :cond_1
    aget-object v5, v6, v9

    .line 523
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 522
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 518
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    :catchall_0
    move-exception v9

    .line 520
    :try_start_4
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 522
    .restart local v6    # "files":[Ljava/io/File;
    array-length v11, v6

    const/4 v10, 0x0

    :goto_5
    if-lt v10, v11, :cond_2

    .line 526
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 530
    .end local v6    # "files":[Ljava/io/File;
    :goto_6
    throw v9

    .line 522
    .restart local v6    # "files":[Ljava/io/File;
    :cond_2
    :try_start_5
    aget-object v5, v6, v10

    .line 523
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 522
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v5    # "file":Ljava/io/File;
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_6
    aget-object v5, v6, v9

    .line 523
    .restart local v5    # "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 522
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 532
    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "files":[Ljava/io/File;
    .end local v7    # "pref":Landroid/content/SharedPreferences;
    .end local v8    # "sSource":Ljava/lang/String;
    :cond_4
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->export_lite_error:I

    invoke-virtual {p0, v9}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 533
    const/4 v10, 0x1

    .line 532
    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 533
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 541
    .restart local v0    # "count":I
    .restart local v1    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    :cond_5
    const/4 v9, 0x0

    goto :goto_3

    .line 549
    .end local v0    # "count":I
    .end local v1    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    :pswitch_1
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 552
    const-string v9, "file_path"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    .line 551
    check-cast v2, Ljava/util/List;

    .line 554
    .local v2, "dir":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_0

    .line 555
    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {p0, v10, v9}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames(ZLjava/io/File;)V

    goto/16 :goto_0

    .line 528
    .end local v2    # "dir":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    .restart local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v7    # "pref":Landroid/content/SharedPreferences;
    .restart local v8    # "sSource":Ljava/lang/String;
    :catch_2
    move-exception v9

    goto/16 :goto_2

    .end local v4    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_3
    move-exception v10

    goto :goto_6

    .line 497
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super/range {p0 .. p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->copyGamesToDownloadFolder()V

    #.line 185
    #invoke-static/range {p0 .. p0}, Lcom/sbstrm/appirater/Appirater;->appLaunched(Landroid/content/Context;)V

    .line 188
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->getInstance(Landroid/app/Activity;)Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->changeLanguage()V

    .line 192
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    .line 195
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;)Landroid/graphics/Typeface;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->font:Landroid/graphics/Typeface;

    .line 196
    new-instance v20, Lcom/nostalgiaemulators/framework/base/GameMenu;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;-><init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :try_start_1
    sget v20, Lcom/nostalgiaemulators/framework/R$layout;->activity_gallery:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setContentView(I)V
    :try_end_1
    .catch Landroid/view/InflateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    .line 224
    const-string v21, "ca-app-pub-5505857826308324~9174925291"

    .line 223
    invoke-static/range {v20 .. v21}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Ljava/lang/String;)V

    .line 229
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->ad_view:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/google/android/gms/ads/AdView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    .line 236
    new-instance v20, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct/range {v20 .. v20}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    const-string v21, "DC02EB1C06867407BC469EDD554ACE26"

    invoke-virtual/range {v20 .. v21}, Lcom/google/android/gms/ads/AdRequest$Builder;->addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;

    move-result-object v20

    .line 237
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v4

    .line 240
    .local v4, "adRequest":Lcom/google/android/gms/ads/AdRequest;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->mAdView:Lcom/google/android/gms/ads/AdView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/google/android/gms/ads/AdView;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    .line 242
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->processPleaseRateDialog()V

    .line 244
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/VersionChecker;->isNewVersionAvailable(Landroid/content/Context;)Z

    move-result v11

    .line 246
    .local v11, "isNewVersionAvailableOnStore":Z
    if-eqz v11, :cond_3

    .line 247
    const-string v20, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v21, "NEW VERSION AVAILABLE"

    invoke-static/range {v20 .. v21}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->canRemind(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 250
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showPleaseUpdateDialog()V

    .line 257
    :cond_0
    :goto_0
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_progressbar:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ProgressBar;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->progress:Landroid/widget/ProgressBar;

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->progress:Landroid/widget/ProgressBar;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 259
    new-instance v20, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;-><init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter$OnItemClickListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 261
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_pager:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 264
    if-eqz p1, :cond_4

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    const-string v21, "EXTRA_TABS_IDX"

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 271
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 272
    .local v18, "res":Landroid/content/res/Resources;
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_pager_indicator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/viewpagerindicator/TitlePageIndicator;

    .line 273
    .local v10, "indicator":Lcom/viewpagerindicator/TitlePageIndicator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 274
    sget v20, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTextColor(I)V

    .line 275
    sget v20, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setSelectedColor(I)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    const/16 v20, 0x1

    const/high16 v21, 0x41300000    # 11.0f

    .line 278
    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v22

    .line 277
    invoke-static/range {v20 .. v22}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v17

    .line 279
    .local v17, "px":F
    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/viewpagerindicator/TitlePageIndicator;->setTextSize(F)V

    .line 280
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_menu_btn:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageButton;

    .line 281
    .local v12, "menuBtn":Landroid/widget/ImageButton;
    new-instance v20, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_search_container:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchContainer:Landroid/widget/LinearLayout;

    .line 288
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_search_editbox:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    .line 289
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_search_btn:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageButton;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchBtn:Landroid/widget/ImageButton;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchBtn:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    new-instance v21, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchBtn:Landroid/widget/ImageButton;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageButton;->setFocusable(Z)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$4;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    move-object/from16 v20, v0

    new-instance v21, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$5;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 341
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_zip_indicator:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/ImageView;

    .line 342
    .local v19, "zipIndicator":Landroid/widget/ImageView;
    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 343
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_zip_indicator_label:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityLabel:Landroid/widget/TextView;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityLabel:Landroid/widget/TextView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 346
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->game_gallery_back:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ImageView;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->backIcon:Landroid/widget/ImageView;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->backIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->backIcon:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    new-instance v21, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$6;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual/range {v20 .. v21}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_no_games_container:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/LinearLayout;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->noGamesLabelContainer:Landroid/widget/LinearLayout;

    .line 355
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_no_games_label:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 356
    .local v13, "nogamesLabel":Landroid/widget/TextView;
    sget v20, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_no_games_refresh:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    .line 357
    .local v14, "nogamesRefresh":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->font:Landroid/graphics/Typeface;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 358
    new-instance v20, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$7;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getRomExtensions()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->exts:Ljava/util/Set;

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->exts:Ljava/util/Set;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getArchiveExtensions()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getRomExtensions()Ljava/util/Set;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->inZipExts:Ljava/util/Set;

    .line 370
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isAdvertisingVersion(Landroid/app/Activity;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 371
    const-string v20, "import_pref"

    .line 372
    const/16 v21, 0x0

    .line 371
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 373
    .local v16, "pref":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 375
    .local v5, "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPreviousVersionCode()I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 376
    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getCurrentVersionCode()I

    move-result v20

    .line 377
    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getPreviousVersionCode()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 378
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "import"

    const/16 v22, 0x1

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 381
    :cond_1
    const-string v20, "import"

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 382
    sget v20, Lcom/nostalgiaemulators/framework/R$string;->export_action:I

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 384
    .local v3, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/nostalgiaemulators/framework/utils/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 385
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 388
    .local v9, "i":Landroid/content/Intent;
    :try_start_2
    const-string v20, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v21, "start import activity"

    invoke-static/range {v20 .. v21}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->importing:Z

    .line 390
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 408
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .end local v5    # "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    .end local v9    # "i":Landroid/content/Intent;
    .end local v10    # "indicator":Lcom/viewpagerindicator/TitlePageIndicator;
    .end local v11    # "isNewVersionAvailableOnStore":Z
    .end local v12    # "menuBtn":Landroid/widget/ImageButton;
    .end local v13    # "nogamesLabel":Landroid/widget/TextView;
    .end local v14    # "nogamesRefresh":Landroid/widget/ImageButton;
    .end local v16    # "pref":Landroid/content/SharedPreferences;
    .end local v17    # "px":F
    .end local v18    # "res":Landroid/content/res/Resources;
    .end local v19    # "zipIndicator":Landroid/widget/ImageView;
    :cond_2
    :goto_2
    return-void

    .line 198
    :catch_0
    move-exception v6

    .line 199
    .local v6, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    goto :goto_2

    .line 206
    .end local v6    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :catch_1
    move-exception v6

    .line 207
    .local v6, "e":Landroid/view/InflateException;
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 210
    .local v15, "pm":Landroid/content/pm/PackageManager;
    :try_start_3
    const-string v20, "com.google.android.webview"

    .line 211
    const/16 v21, 0x80

    .line 210
    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 212
    const-string v20, "Unexpected error, please try again later."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showError(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 218
    :goto_3
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    goto :goto_2

    .line 214
    :catch_2
    move-exception v8

    .line 215
    .local v8, "ee":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "It seems that a required system component is being updated, please try again later."

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showError(Ljava/lang/String;)V

    goto :goto_3

    .line 254
    .end local v6    # "e":Landroid/view/InflateException;
    .end local v8    # "ee":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v15    # "pm":Landroid/content/pm/PackageManager;
    .restart local v4    # "adRequest":Lcom/google/android/gms/ads/AdRequest;
    .restart local v11    # "isNewVersionAvailableOnStore":Z
    :cond_3
    const-string v20, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v21, "App is up-to-date"

    invoke-static/range {v20 .. v21}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getLastGalleryTab(Landroid/content/Context;)I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto/16 :goto_1

    .line 392
    .restart local v3    # "action":Ljava/lang/String;
    .restart local v5    # "app":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    .restart local v9    # "i":Landroid/content/Intent;
    .restart local v10    # "indicator":Lcom/viewpagerindicator/TitlePageIndicator;
    .restart local v12    # "menuBtn":Landroid/widget/ImageButton;
    .restart local v13    # "nogamesLabel":Landroid/widget/TextView;
    .restart local v14    # "nogamesRefresh":Landroid/widget/ImageButton;
    .restart local v16    # "pref":Landroid/content/SharedPreferences;
    .restart local v17    # "px":F
    .restart local v18    # "res":Landroid/content/res/Resources;
    .restart local v19    # "zipIndicator":Landroid/widget/ImageView;
    :catch_3
    move-exception v6

    .line 393
    .local v6, "e":Landroid/content/ActivityNotFoundException;
    const-string v20, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v21, "lite version not found"

    invoke-static/range {v20 .. v21}, Lcom/nostalgiaemulators/framework/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 395
    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "import"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 396
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 400
    .end local v6    # "e":Landroid/content/ActivityNotFoundException;
    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "i":Landroid/content/Intent;
    :cond_5
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 401
    .restart local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v20, "import"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->alertDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 485
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onDestroy()V

    .line 486
    return-void
.end method

.method public onGameMenuClosed(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 734
    return-void
.end method

.method public onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 706
    return-void
.end method

.method public onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
    .locals 9
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;
    .param p2, "item"    # Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 743
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_pref:I

    if-ne v4, v5, :cond_2

    .line 744
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 746
    .local v1, "i":Landroid/content/Intent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 747
    const-string v4, ":android:show_fragment"

    .line 748
    const-class v5, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 747
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string v4, ":android:no_headers"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    :cond_0
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 858
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 754
    :cond_2
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_remote_control:I

    if-ne v4, v5, :cond_3

    .line 755
    new-instance v2, Landroid/content/Intent;

    .line 756
    const-class v4, Lcom/nostalgiaemulators/framework/ui/remotecontroller/RemoteControllerActivity;

    .line 755
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x10000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 759
    sget v4, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_main_container:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 760
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    .line 761
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$12;

    invoke-direct {v6, p0, v2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$12;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Landroid/content/Intent;)V

    .line 758
    invoke-static {v4, v5, v6}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationOut(Landroid/view/View;Landroid/view/WindowManager;Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher$AnimationFinishedListener;)V

    goto :goto_0

    .line 769
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_reload:I

    if-ne v4, v5, :cond_4

    .line 770
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames(ZLjava/io/File;)V

    goto :goto_0

    .line 772
    :cond_4
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_load_from_dir:I

    if-ne v4, v5, :cond_5

    .line 773
    new-instance v2, Landroid/content/Intent;

    .line 774
    const-class v4, Lcom/coderplus/filepicker/FilePickerActivity;

    .line 773
    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 775
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v4, "only_directories"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 779
    const/4 v4, 0x3

    invoke-virtual {p0, v2, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 781
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_wifi_on:I

    if-ne v4, v5, :cond_6

    .line 782
    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWifiServerEnable(Landroid/content/Context;Z)V

    .line 783
    sget v4, Lcom/nostalgiaemulators/framework/R$string;->gallery_stop_wifi_control_server:I

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 784
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 785
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->stopWifiListening()V

    goto :goto_0

    .line 787
    :cond_6
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_wifi_off:I

    if-ne v4, v5, :cond_7

    .line 788
    invoke-static {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setWifiServerEnable(Landroid/content/Context;Z)V

    .line 792
    sget v4, Lcom/nostalgiaemulators/framework/R$string;->gallery_start_wifi_control_server:I

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    .line 793
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getIpAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 791
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 789
    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 793
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 794
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startWifiListening()V

    goto/16 :goto_0

    .line 796
    :cond_7
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->about:I

    if-ne v4, v5, :cond_8

    .line 797
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$13;

    invoke-direct {v4, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$13;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 803
    :cond_8
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->game_menu_cheats:I

    if-ne v4, v5, :cond_9

    .line 804
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/nostalgiaemulators/framework/ui/preferences/TouchControllerSettingsActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 805
    .restart local v1    # "i":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 807
    .end local v1    # "i":Landroid/content/Intent;
    :cond_9
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_rate_us:I

    if-ne v4, v5, :cond_a

    .line 808
    const/4 v0, 0x0

    .line 809
    .local v0, "goToMarket":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "goToMarket":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://details?id="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 811
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 810
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 809
    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 814
    .restart local v0    # "goToMarket":Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 816
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 818
    .end local v0    # "goToMarket":Landroid/content/Intent;
    :cond_a
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_recommend:I

    if-ne v4, v5, :cond_b

    .line 819
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 820
    .local v3, "sendIntent":Landroid/content/Intent;
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    const-string v5, "android.intent.extra.TEXT"

    .line 823
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v4, "推荐个非常好用的NES模拟器，你肯定会喜欢的!\n"

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 825
    invoke-virtual {v4}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->getStoreUrl()Ljava/lang/String;

    move-result-object v4

    .line 824
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 823
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 821
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 826
    const-string v4, "android.intent.extra.SUBJECT"

    .line 827
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v5

    invoke-interface {v5}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 826
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 831
    .end local v3    # "sendIntent":Landroid/content/Intent;
    :cond_b
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_help:I

    if-ne v4, v5, :cond_c

    .line 832
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showHelpDialog()V

    goto/16 :goto_0

    .line 835
    :cond_c
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_language:I

    if-ne v4, v5, :cond_d

    .line 836
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->showSelectLanguageDialog()V

    goto/16 :goto_0

    .line 839
    :cond_d
    invoke-virtual {p2}, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->getId()I

    move-result v4

    sget v5, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_download:I

    if-ne v4, v5, :cond_1

    .line 840
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    .line 841
    const-string v6, "http://www.soorom.com/"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 840
    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onGameMenuOpened(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 738
    return-void
.end method

.method public onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 2
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 715
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_download:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_file_download:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 716
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_language:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_language:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 718
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getDeviceType(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    move-result-object v0

    sget-object v1, Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;->mobile:Lcom/nostalgiaemulators/framework/utils/Utils$ServerType;

    if-ne v0, v1, :cond_0

    .line 719
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_remote_control:I

    .line 720
    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_gamepad:I

    .line 719
    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 723
    :cond_0
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_reload:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_reset:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 724
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_load_from_dir:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_folder:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 725
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_pref:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_game_settings:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 726
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_recommend:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_recommend:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 727
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_rate_us:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_star:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 728
    sget v0, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_help:I

    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->ic_help_mnu:I

    invoke-virtual {p1, v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 730
    return-void
.end method

.method public onGameSelected(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;I)Z
    .locals 3
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .param p2, "slot"    # I

    .prologue
    const/4 v2, 0x1

    .line 930
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getEmulatorActivityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 931
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "game"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 932
    const-string v1, "slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 933
    const-string v1, "fromGallery"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 934
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 935
    return v2
.end method

.method public onItemClick(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Z)V
    .locals 13
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;
    .param p2, "clickOnAds"    # Z

    .prologue
    const/4 v12, 0x0

    .line 862
    if-eqz p2, :cond_0

    .line 863
    new-instance v5, Landroid/content/Intent;

    .line 864
    const-class v8, Lcom/nostalgiaemulators/framework/ui/advertising/AppWallActivity;

    .line 863
    invoke-direct {v5, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 865
    .local v5, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 927
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v1

    .line 869
    .local v1, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    new-instance v4, Ljava/io/File;

    iget-object v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v4, "gameFile":Ljava/io/File;
    const-string v8, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "select "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->isInArchive()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 873
    new-instance v4, Ljava/io/File;

    .end local v4    # "gameFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v8

    iget-object v9, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 874
    .restart local v4    # "gameFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    .line 876
    const-class v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "WHERE _id="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 877
    iget-wide v10, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->zipfile_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 876
    invoke-virtual {v1, v8, v9, v12}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->selectObjFromDb(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;

    .line 878
    .local v7, "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    new-instance v6, Ljava/io/File;

    iget-object v8, v7, Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;->path:Ljava/lang/String;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 880
    .local v6, "zipFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 882
    :try_start_0
    iget-object v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-static {v6, v8, v4}, Lcom/nostalgiaemulators/framework/utils/Utils;->extractFile(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 893
    .end local v6    # "zipFile":Ljava/io/File;
    .end local v7    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 894
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->lastGameTime:J

    .line 895
    iget v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->runCount:I

    .line 896
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "lastGameTime"

    aput-object v9, v8, v12

    const/4 v9, 0x1

    .line 897
    const-string v10, "runCount"

    aput-object v10, v8, v9

    .line 896
    invoke-virtual {v1, p1, v8}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->updateObjToDb(Ljava/lang/Object;[Ljava/lang/String;)V

    .line 898
    invoke-virtual {p0, p1, v12}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onGameSelected(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;I)Z

    goto/16 :goto_0

    .line 884
    .restart local v6    # "zipFile":Ljava/io/File;
    .restart local v7    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :catch_0
    move-exception v3

    .line 885
    .local v3, "e":Ljava/util/zip/ZipException;
    const-string v8, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v9, ""

    invoke-static {v8, v9, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 887
    .end local v3    # "e":Ljava/util/zip/ZipException;
    :catch_1
    move-exception v3

    .line 888
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    const-string v9, ""

    invoke-static {v8, v9, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 901
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "zipFile":Ljava/io/File;
    .end local v7    # "zipRomFile":Lcom/nostalgiaemulators/framework/ui/gamegallery/ZipRomFile;
    :cond_2
    const-string v8, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "rom file:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 902
    const-string v10, " does not exist"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 901
    invoke-static {v8, v9}, Lcom/nostalgiaemulators/framework/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 906
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    sget v8, Lcom/nostalgiaemulators/framework/R$string;->gallery_rom_not_found:I

    invoke-virtual {p0, v8}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 907
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->error:I

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 909
    sget v9, Lcom/nostalgiaemulators/framework/R$string;->gallery_rom_not_found_reload:I

    .line 910
    new-instance v10, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$14;

    invoke-direct {v10, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$14;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    .line 908
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 916
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 917
    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2, v12}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 918
    new-instance v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$15;

    invoke-direct {v8, p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$15;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;)V

    invoke-virtual {v2, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 924
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1107
    const/16 v1, 0x52

    if-ne p1, v1, :cond_0

    .line 1109
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->openGameMenu()V

    .line 1122
    :goto_0
    return v0

    .line 1112
    :cond_0
    const/16 v1, 0x54

    if-ne p1, v1, :cond_3

    .line 1113
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->isSearchBoxVisible:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V

    .line 1122
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1115
    :cond_3
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isPrintingKey()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1116
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1118
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1119
    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 678
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onPause()V

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityPaused:Z

    .line 681
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    if-eqz v0, :cond_0

    .line 689
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adFetching:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 686
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-static {p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->saveLastGalleryTab(Landroid/content/Context;I)V

    .line 687
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->removeOnTextChangeListener(Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;)V

    .line 688
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->visible:Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 599
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onResume()V

    .line 600
    iput-boolean v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->activityPaused:Z

    .line 602
    const-string v5, "Gallery Activity"

    invoke-static {v5}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->sSendScreenView(Ljava/lang/String;)V

    .line 604
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->failure:Z

    if-eqz v5, :cond_0

    .line 674
    :goto_0
    return-void

    .line 608
    :cond_0
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->lastUseSystemFont(Landroid/content/Context;)Z

    move-result v5

    .line 609
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->useSystemFont(Landroid/content/Context;)Z

    move-result v8

    if-eq v5, v8, :cond_1

    .line 611
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->useSystemFont(Landroid/content/Context;)Z

    move-result v5

    .line 610
    invoke-static {p0, v5}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setLastUseSystemFont(Landroid/content/Context;Z)V

    .line 612
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->restartProcess()V

    goto :goto_0

    .line 616
    :cond_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "filter":Ljava/lang/String;
    if-eqz v2, :cond_7

    const-string v5, ""

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    move v5, v6

    :goto_1
    invoke-direct {p0, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->setSearchBoxVisible(Z)V

    .line 618
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 620
    .local v1, "ea":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    .line 624
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isDynamicDPADEnable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 626
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isDynamicDPADUsed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 627
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 628
    invoke-static {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDynamicDPADEnable(Landroid/content/Context;Z)V

    .line 629
    sget v5, Lcom/nostalgiaemulators/framework/R$string;->general_pref_ddpad_deactivate:I

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 630
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 633
    :cond_2
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 634
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFastForwardEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 635
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFastForwardUsed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 636
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isBeta(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 637
    invoke-static {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setFastForwardEnable(Landroid/content/Context;Z)V

    .line 638
    sget v5, Lcom/nostalgiaemulators/framework/R$string;->general_pref_fastforward_deactivate:I

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 639
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 642
    :cond_3
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->isAdvertisingVersion()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 643
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isScreenSettingsSaved(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 644
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isScreenLayoutUsed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 645
    invoke-static {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setScreenLayoutUsed(Landroid/content/Context;Z)V

    .line 646
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->removeViewPortSave(Landroid/content/Context;)V

    .line 648
    sget v5, Lcom/nostalgiaemulators/framework/R$string;->general_pref_screen_layout_deactivate:I

    .line 647
    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 649
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 652
    :cond_4
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->rotateAnim:Z

    if-eqz v5, :cond_5

    .line 654
    sget v5, Lcom/nostalgiaemulators/framework/R$id;->act_gallery_main_container:I

    invoke-virtual {p0, v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 655
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v8

    .line 653
    invoke-static {v5, v8}, Lcom/nostalgiaemulators/framework/utils/ActivitySwitcher;->animationIn(Landroid/view/View;Landroid/view/WindowManager;)V

    .line 656
    iput-boolean v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->rotateAnim:Z

    .line 659
    :cond_5
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    invoke-virtual {v5}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->notifyDataSetChanged()V

    .line 660
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->addOnTextChangeListener(Lcom/nostalgiaemulators/framework/remote/VirtualDPad$OnVirtualDPEventsListener;)V

    .line 661
    iput-boolean v6, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->visible:Z

    .line 662
    const/4 v4, 0x1

    .line 664
    .local v4, "showNewVersionDialog":Z
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->importing:Z

    if-nez v5, :cond_6

    .line 665
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;

    move-result-object v0

    .line 666
    .local v0, "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    const-class v5, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v0, v5, v9}, Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;->countObjsInDb(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_8

    move v3, v6

    .line 668
    .local v3, "isDBEmpty":Z
    :goto_2
    invoke-virtual {p0, v3, v9}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloadGames(ZLjava/io/File;)V

    .line 669
    if-eqz v3, :cond_9

    move v4, v7

    .line 672
    .end local v0    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .end local v3    # "isDBEmpty":Z
    :cond_6
    :goto_3
    const-string v5, "com.nostalgiaemulators.framework.ui.gamegallery.GalleryActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "show new version dialog "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 673
    const-string v7, " reloading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->reloading:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 672
    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "ea":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    .end local v4    # "showNewVersionDialog":Z
    :cond_7
    move v5, v7

    .line 617
    goto/16 :goto_1

    .restart local v0    # "dbHelper":Lcom/nostalgiaemulators/framework/utils/DatabaseHelper;
    .restart local v1    # "ea":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    .restart local v4    # "showNewVersionDialog":Z
    :cond_8
    move v3, v7

    .line 666
    goto :goto_2

    .restart local v3    # "isDBEmpty":Z
    :cond_9
    move v4, v6

    .line 669
    goto :goto_3
.end method

.method public onRomsFinderCancel(Z)V
    .locals 1
    .param p1, "searchNew"    # Z

    .prologue
    .line 1058
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onRomsFinderCancel(Z)V

    .line 1059
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onSearchingEnd(IZ)V

    .line 1060
    return-void
.end method

.method public onRomsFinderEnd(Z)V
    .locals 1
    .param p1, "searchNew"    # Z

    .prologue
    .line 1064
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onRomsFinderEnd(Z)V

    .line 1065
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onSearchingEnd(IZ)V

    .line 1066
    return-void
.end method

.method public onRomsFinderFoundFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1094
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$21;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$21;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1103
    :cond_0
    return-void
.end method

.method public onRomsFinderFoundZipEntry(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "skipEntries"    # I

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1078
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$20;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1089
    :cond_0
    return-void
.end method

.method public onRomsFinderNewGames(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1070
    .local p1, "roms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onRomsFinderNewGames(Ljava/util/ArrayList;)V

    .line 1071
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->onSearchingEnd(IZ)V

    .line 1072
    return-void
.end method

.method public onRomsFinderStart(Z)V
    .locals 1
    .param p1, "searchNew"    # Z

    .prologue
    .line 1021
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$18;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1030
    return-void
.end method

.method public onRomsFinderZipPartStart(I)V
    .locals 1
    .param p1, "countEntries"    # I

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->searchDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1035
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$19;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;I)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1054
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1166
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/BaseGameGalleryActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1168
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    if-eqz v0, :cond_0

    .line 1169
    const-string v0, "EXTRA_TABS_IDX"

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1170
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public onSearchingEnd(IZ)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "showToast"    # Z

    .prologue
    .line 989
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;

    invoke-direct {v0, p0, p2, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$17;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;ZI)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1017
    return-void
.end method

.method public onVirtualDPadCommandEvent(III)V
    .locals 2
    .param p1, "command"    # I
    .param p2, "param0"    # I
    .param p3, "param1"    # I

    .prologue
    const/4 v0, 0x1

    .line 1148
    packed-switch p1, :pswitch_data_0

    .line 1160
    :goto_0
    return-void

    .line 1150
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 1151
    .local v0, "show":Z
    :goto_1
    new-instance v1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;

    invoke-direct {v1, p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$23;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Z)V

    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1150
    .end local v0    # "show":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1148
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onVirtualDPadTextEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1131
    new-instance v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity$22;-><init>(Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1142
    return-void
.end method

.method public openGameMenu()V
    .locals 2

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V

    .line 1127
    return-void
.end method

.method restartProcess()V
    .locals 3

    .prologue
    .line 592
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 593
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 594
    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->startActivity(Landroid/content/Intent;)V

    .line 595
    return-void
.end method

.method public setLastGames(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 940
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->setGames(Ljava/util/ArrayList;)V

    .line 941
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->noGamesLabelContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 944
    return-void

    :cond_0
    move v0, v2

    .line 941
    goto :goto_0

    :cond_1
    move v2, v1

    .line 943
    goto :goto_1
.end method

.method public setNewGames(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "games":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;>;"
    const/4 v3, 0x4

    const/4 v1, 0x0

    .line 948
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;

    invoke-virtual {v2, p1}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryPagerAdapter;->addGames(Ljava/util/ArrayList;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 949
    .local v0, "isListEmpty":Z
    :goto_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->pager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    .line 950
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GalleryActivity;->noGamesLabelContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 952
    return-void

    .end local v0    # "isListEmpty":Z
    :cond_0
    move v0, v1

    .line 948
    goto :goto_0

    .restart local v0    # "isListEmpty":Z
    :cond_1
    move v2, v1

    .line 949
    goto :goto_1

    :cond_2
    move v1, v3

    .line 951
    goto :goto_2
.end method
