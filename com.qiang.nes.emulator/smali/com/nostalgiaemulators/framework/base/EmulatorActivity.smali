.class public abstract Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
.super Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;
.source "EmulatorActivity.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;


# static fields
.field private static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$ROTATION:[I = null

.field private static final EMULATION_BENCHMARK:Ljava/lang/String; = "emulation"

.field public static final EXTRA_FROM_GALLERY:Ljava/lang/String; = "fromGallery"

.field public static final EXTRA_GAME:Ljava/lang/String; = "game"

.field public static final EXTRA_SLOT:Ljava/lang/String; = "slot"

.field private static final OPEN_GL_BENCHMARK:Ljava/lang/String; = "openGL"

.field private static final REQUEST_LOAD:I = 0x2

.field private static final REQUEST_SAVE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.base.EmulatorActivity"

.field private static oldConfig:I

.field public static pm:Landroid/content/pm/PackageManager;

.field public static pn:Ljava/lang/String;

.field public static sd:Ljava/lang/String;


# instance fields
.field private autoHide:Z

.field private baseDir:Ljava/lang/String;

.field private benchmarkCallback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

.field canRestart:Z

.field private controllerViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private controllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nostalgiaemulators/framework/EmulatorController;",
            ">;"
        }
    .end annotation
.end field

.field dialog:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

.field private dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

.field private emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

.field private exceptionOccurred:Z

.field protected game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

.field private gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

.field private group:Landroid/view/ViewGroup;

.field private isFF:Z

.field private isFFPressed:Z

.field isRestarting:Z

.field private isToggleFF:Z

.field keyEventHistory:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field keyEventWAMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

.field protected manager:Lcom/nostalgiaemulators/framework/base/Manager;

.field private final maxPRC:I

.field runTimeMachine:Z

.field private slotToRun:Ljava/lang/Integer;

.field private slotToSave:Ljava/lang/Integer;

.field private touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$ROTATION()[I
    .locals 3

    .prologue
    .line 92
    sget-object v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$ROTATION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->values()[Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->AUTO:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->LAND:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->PORT:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->SENSOR:Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$ROTATION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;-><init>()V

    .line 98
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    .line 100
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 278
    new-instance v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$1;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->benchmarkCallback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    .line 320
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 434
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->keyEventHistory:Landroid/util/SparseArray;

    .line 435
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->keyEventWAMap:Landroid/util/SparseArray;

    .line 517
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFF:Z

    .line 518
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isToggleFF:Z

    .line 519
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFFPressed:Z

    .line 580
    const/16 v0, 0xa

    iput v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->maxPRC:I

    .line 967
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runTimeMachine:Z

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/EmulatorView;
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showZapperCollisionDialog()V

    return-void
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->requestNewInterstitial()V

    return-void
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Lcom/nostalgiaemulators/framework/base/GameMenu;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;

    return-object v0
.end method

.method private decreaseResumesToRestart()I
    .locals 5

    .prologue
    .line 583
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 584
    const-string v3, "PRC"

    const/16 v4, 0xa

    .line 583
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 586
    .local v1, "prc":I
    if-lez v1, :cond_0

    .line 587
    add-int/lit8 v1, v1, -0x1

    .line 590
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 591
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 592
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PRC"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 594
    return v1
.end method

.method private enableCheats()V
    .locals 5

    .prologue
    .line 778
    const/4 v2, 0x0

    .line 781
    .local v2, "numCheats":I
    :try_start_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v3, p0, v4}, Lcom/nostalgiaemulators/framework/base/Manager;->enableCheats(Landroid/content/Context;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)I
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 793
    :goto_0
    if-lez v2, :cond_0

    .line 794
    move v1, v2

    .line 795
    .local v1, "fNumCheats":I
    new-instance v3, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;

    invoke-direct {v3, p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$11;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;I)V

    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 806
    .end local v1    # "fNumCheats":I
    :cond_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 784
    .local v0, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    new-instance v3, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$10;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/EmulatorException;)V

    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private requestNewInterstitial()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method private res(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1179
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private resetProcessResetCounter()V
    .locals 3

    .prologue
    .line 598
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 599
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 600
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "PRC"

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 601
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 602
    return-void
.end method

.method private restartProcess(Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, "activityToStartClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isRestarting:Z

    .line 572
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/nostalgiaemulators/framework/base/RestarterActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 573
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 574
    const-string v2, "pid"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 575
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "className":Ljava/lang/String;
    const-string v2, "class"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 578
    return-void
.end method

.method private showZapperCollisionDialog()V
    .locals 1

    .prologue
    .line 396
    new-instance v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$5;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 452
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 454
    .local v1, "res":Z
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 460
    :cond_0
    return v1

    .line 455
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 456
    .local v0, "controllerView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    .line 439
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 441
    .local v1, "res":Z
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 447
    :cond_0
    return v1

    .line 442
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 443
    .local v0, "controllerView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 421
    .local v1, "res":Z
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->show()V

    .line 425
    :cond_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 426
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 431
    :cond_1
    return v1

    .line 426
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 427
    .local v0, "controllerView":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public freeStartActivity(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 989
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 990
    invoke-static {p1, p2}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 991
    return-void
.end method

.method public freeStartActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .prologue
    .line 984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 985
    invoke-static {p1, p2, p3}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 986
    return-void
.end method

.method public abstract getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;
.end method

.method public getGamePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Lcom/nostalgiaemulators/framework/base/Manager;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    return-object v0
.end method

.method public getTextureBounds(Lcom/nostalgiaemulators/framework/Emulator;)[I
    .locals 1
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 103
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureType()I
    .locals 1

    .prologue
    .line 107
    const/16 v0, 0x1908

    return v0
.end method

.method public getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->getViewPort()Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v0

    return-object v0
.end method

.method protected handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V
    .locals 1
    .param p1, "e"    # Lcom/nostalgiaemulators/framework/EmulatorException;

    .prologue
    .line 545
    invoke-virtual {p1, p0}, Lcom/nostalgiaemulators/framework/EmulatorException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showErrorAlert(Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method public hideTouchController()V
    .locals 1

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->autoHide:Z

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->hide()V

    .line 330
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 374
    invoke-super {p0, p1, p2, p3}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 375
    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 377
    if-ne p2, v3, :cond_0

    .line 378
    iput-boolean v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->canRestart:Z

    .line 380
    const-string v1, "EXTRA_SLOT"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 382
    .local v0, "slotIdx":I
    packed-switch p1, :pswitch_data_0

    .line 393
    .end local v0    # "slotIdx":I
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local v0    # "slotIdx":I
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToSave:Ljava/lang/Integer;

    .line 385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    goto :goto_0

    .line 388
    :pswitch_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToSave:Ljava/lang/Integer;

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1185
    :try_start_0
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onBackPressed()V

    .line 1187
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1188
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/InterstitialAd;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    :cond_0
    :goto_0
    return-void

    .line 1190
    :catch_0
    move-exception v0

    .line 1191
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingSuperCall"
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->source_onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->hideTouchController()V

    .line 34
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 340
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onDestroy()V

    .line 342
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    if-eqz v1, :cond_0

    .line 363
    :goto_0
    return-void

    .line 346
    :cond_0
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    .line 347
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getChangingConfigurations()I

    move-result v1

    sput v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->oldConfig:I

    .line 348
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 349
    iput-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    .line 350
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 353
    :try_start_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/base/Manager;->destroy()V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    :goto_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 362
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 358
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 359
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorController;->onDestroy()V

    goto :goto_2

    .line 355
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method protected onFailedToLoadGame()Z
    .locals 1

    .prologue
    .line 774
    const/4 v0, 0x0

    return v0
.end method

.method public onFastForwardDown()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 522
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isToggleFF:Z

    if-eqz v1, :cond_2

    .line 523
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFFPressed:Z

    if-nez v1, :cond_1

    .line 524
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFFPressed:Z

    .line 525
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFF:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFF:Z

    .line 526
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFF:Z

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->setFastForwardEnabled(Z)V

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 530
    :cond_2
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v1, v0}, Lcom/nostalgiaemulators/framework/base/Manager;->setFastForwardEnabled(Z)V

    goto :goto_0
.end method

.method public onFastForwardUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isToggleFF:Z

    if-nez v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->setFastForwardEnabled(Z)V

    .line 539
    :cond_0
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFFPressed:Z

    .line 540
    return-void
.end method

.method public onGameMenuClosed(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 926
    :try_start_0
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runTimeMachine:Z

    if-nez v2, :cond_0

    .line 927
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/base/GameMenu;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 928
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/Manager;->resumeEmulation()V

    .line 930
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 939
    :cond_0
    :goto_1
    return-void

    .line 930
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 931
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorController;->onResume()V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 936
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    :catch_0
    move-exception v1

    .line 937
    .local v1, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_1
.end method

.method public onGameMenuCreate(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 0
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 899
    return-void
.end method

.method public onGameMenuItemSelected(Lcom/nostalgiaemulators/framework/base/GameMenu;Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;)V
    .locals 18
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;
    .param p2, "item"    # Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 997
    :try_start_0
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_back_to_past:I

    if-ne v14, v15, :cond_1

    .line 998
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v14}, Lcom/nostalgiaemulators/framework/base/Manager;->getHistoryItemCount()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_0

    .line 999
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/FreeAppUtil;->check(Landroid/app/Activity;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1000
    new-instance v14, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v15, v1}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;-><init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/Manager;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dialog:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    .line 1001
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dialog:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    new-instance v15, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$14;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    invoke-virtual {v14, v15}, Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dialog:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    const/4 v15, 0x1

    invoke-static {v14, v15}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->show(Landroid/app/Dialog;Z)V

    .line 1015
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runTimeMachine:Z

    .line 1176
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_reset:I

    if-ne v14, v15, :cond_2

    .line 1020
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v14}, Lcom/nostalgiaemulators/framework/base/Manager;->resetEmulator()V

    .line 1021
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->enableCheats()V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v6

    .line 1174
    .local v6, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_0

    .line 1024
    .end local v6    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :cond_2
    :try_start_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_save:I

    if-ne v14, v15, :cond_5

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1027
    .local v12, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v14, "isRatedGame"

    const/4 v15, 0x0

    invoke-interface {v12, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1029
    .local v9, "isRatedGame":Ljava/lang/Boolean;
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-nez v14, :cond_3

    .line 1030
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1033
    .local v3, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    sget v14, Lcom/nostalgiaemulators/framework/R$string;->rate_dialog_title:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1037
    sget v14, Lcom/nostalgiaemulators/framework/R$string;->rate_dialog_message:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1038
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1039
    sget v15, Lcom/nostalgiaemulators/framework/R$string;->rate_dialog_positive:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1040
    new-instance v16, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$15;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/content/SharedPreferences;)V

    .line 1039
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v14

    .line 1061
    sget v15, Lcom/nostalgiaemulators/framework/R$string;->rate_dialog_negative:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1062
    new-instance v16, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$16;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$16;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 1061
    invoke-virtual/range {v14 .. v16}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1071
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 1074
    .local v2, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1078
    .end local v2    # "alertDialog":Landroid/app/AlertDialog;
    .end local v3    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v14}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1079
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v14}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 1081
    :cond_4
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1082
    .local v8, "i":Landroid/content/Intent;
    const-string v14, "EXTRA_GAME"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1083
    const-string v14, "EXTRA_BASE_DIR"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    const-string v14, "EXTRA_DIALOG_TYPE_INT"

    .line 1085
    const/4 v15, 0x2

    .line 1084
    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1086
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8, v14}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->freeStartActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1090
    .end local v8    # "i":Landroid/content/Intent;
    .end local v9    # "isRatedGame":Ljava/lang/Boolean;
    .end local v12    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_load:I

    if-ne v14, v15, :cond_7

    .line 1092
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v14}, Lcom/google/android/gms/ads/InterstitialAd;->isLoaded()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1093
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    invoke-virtual {v14}, Lcom/google/android/gms/ads/InterstitialAd;->show()V

    .line 1095
    :cond_6
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/nostalgiaemulators/framework/ui/gamegallery/SlotSelectionActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1096
    .restart local v8    # "i":Landroid/content/Intent;
    const-string v14, "EXTRA_GAME"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1097
    const-string v14, "EXTRA_BASE_DIR"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1098
    const-string v14, "EXTRA_DIALOG_TYPE_INT"

    .line 1099
    const/4 v15, 0x1

    .line 1098
    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1100
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8, v14}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->freeStartActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1102
    .end local v8    # "i":Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_cheats:I

    if-ne v14, v15, :cond_8

    .line 1103
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/nostalgiaemulators/framework/ui/cheats/CheatsActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    .restart local v8    # "i":Landroid/content/Intent;
    const-string v14, "EXTRA_IN_GAME_HASH"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v15, v15, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1105
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->freeStartActivity(Landroid/app/Activity;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1107
    .end local v8    # "i":Landroid/content/Intent;
    :cond_8
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_settings:I

    if-ne v14, v15, :cond_a

    .line 1108
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1110
    .restart local v8    # "i":Landroid/content/Intent;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xb

    if-lt v14, v15, :cond_9

    .line 1111
    const-string v14, ":android:no_headers"

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1112
    const-string v14, ":android:show_fragment"

    .line 1113
    const-class v15, Lcom/nostalgiaemulators/framework/ui/preferences/GamePreferenceFragment;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1112
    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1116
    :cond_9
    const-string v14, "EXTRA_GAME"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1117
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1119
    .end local v8    # "i":Landroid/content/Intent;
    :cond_a
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_pref:I

    if-ne v14, v15, :cond_c

    .line 1120
    new-instance v8, Landroid/content/Intent;

    const-class v14, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceActivity;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1122
    .restart local v8    # "i":Landroid/content/Intent;
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0xb

    if-lt v14, v15, :cond_b

    .line 1123
    const-string v14, ":android:no_headers"

    const/4 v15, 0x1

    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1124
    const-string v14, ":android:show_fragment"

    .line 1125
    const-class v15, Lcom/nostalgiaemulators/framework/ui/preferences/GeneralPreferenceFragment;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1124
    invoke-virtual {v8, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    :cond_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1130
    .end local v8    # "i":Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, p2

    iget v14, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->id:I

    sget v15, Lcom/nostalgiaemulators/framework/R$string;->game_menu_screenshot:I

    if-ne v14, v15, :cond_0

    .line 1131
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->getCleanName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "-screenshot"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1132
    .local v10, "name":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    .line 1134
    sget-object v14, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v14}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 1135
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v15

    invoke-interface {v15}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getName()Ljava/lang/String;

    move-result-object v15

    .line 1136
    const/16 v16, 0x20

    const/16 v17, 0x5f

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v15

    .line 1132
    invoke-direct {v5, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1138
    .local v5, "dir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_d

    .line 1139
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1142
    :cond_d
    move-object v13, v5

    .line 1143
    .local v13, "to":Ljava/io/File;
    const/4 v4, 0x0

    .line 1145
    .local v4, "counter":I
    :goto_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v14

    if-nez v14, :cond_e

    .line 1154
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1155
    .local v7, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 1156
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/utils/Utils;->isAdvertisingVersion(Landroid/app/Activity;)Z

    move-result v15

    .line 1155
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Lcom/nostalgiaemulators/framework/utils/Utils;->createScreenshotBitmap(Landroid/content/Context;Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1157
    sget-object v15, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v16, 0x5a

    .line 1156
    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1158
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 1162
    sget v14, Lcom/nostalgiaemulators/framework/R$string;->act_game_screenshot_saved:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->res(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    .line 1163
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 1161
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1163
    const/4 v15, 0x1

    .line 1159
    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 1164
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 1166
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v6

    .line 1167
    .local v6, "e":Ljava/io/IOException;
    :try_start_3
    const-string v14, "com.nostalgiaemulators.framework.base.EmulatorActivity"

    const-string v15, ""

    invoke-static {v14, v15, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1168
    new-instance v14, Lcom/nostalgiaemulators/framework/EmulatorException;

    .line 1169
    sget v15, Lcom/nostalgiaemulators/framework/R$string;->act_game_screenshot_failed:I

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->res(I)Ljava/lang/String;

    move-result-object v15

    .line 1168
    invoke-direct {v14, v15}, Lcom/nostalgiaemulators/framework/EmulatorException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 1146
    .end local v6    # "e":Ljava/io/IOException;
    :cond_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1147
    if-nez v4, :cond_f

    const-string v14, ""

    :goto_2
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1148
    const-string v15, ".png"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1146
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1149
    .local v11, "nn":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    .end local v13    # "to":Ljava/io/File;
    invoke-direct {v13, v5, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1150
    .restart local v13    # "to":Ljava/io/File;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1147
    .end local v11    # "nn":Ljava/lang/String;
    :cond_f
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v16, "("

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v14

    goto :goto_2
.end method

.method public onGameMenuOpened(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 5
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 943
    const-string v3, "com.nostalgiaemulators.framework.base.EmulatorActivity"

    const-string v4, "on game menu open"

    invoke-static {v3, v4}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :try_start_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    if-eqz v3, :cond_0

    .line 947
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/base/Manager;->pauseEmulation()Z

    move-result v2

    .line 949
    .local v2, "success":Z
    if-eqz v2, :cond_2

    .line 950
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 965
    .end local v2    # "success":Z
    :cond_0
    :goto_1
    return-void

    .line 950
    .restart local v2    # "success":Z
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 951
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-interface {v0, v4}, Lcom/nostalgiaemulators/framework/EmulatorController;->onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 962
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    .end local v2    # "success":Z
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_1

    .line 956
    .end local v1    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    .restart local v2    # "success":Z
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 958
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public onGameMenuPrepare(Lcom/nostalgiaemulators/framework/base/GameMenu;)V
    .locals 4
    .param p1, "menu"    # Lcom/nostalgiaemulators/framework/base/GameMenu;

    .prologue
    .line 903
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_reset:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_reset:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 904
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_save:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_save:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 905
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_load:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_load:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 906
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_cheats:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_cheats:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 907
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_back_to_past:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_time_machine:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 908
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_screenshot:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_make_screenshot:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 909
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/EmulatorApplication;

    .line 911
    .local v1, "ea":Lcom/nostalgiaemulators/framework/EmulatorApplication;
    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/EmulatorApplication;->hasGameMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 912
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_settings:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_game_settings:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    .line 918
    :goto_0
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->game_menu_back_to_past:I

    invoke-virtual {p1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->getItem(I)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    move-result-object v0

    .line 919
    .local v0, "backToPast":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isTimeshiftEnabled(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;->enable:Z

    .line 920
    const-string v2, "com.nostalgiaemulators.framework.base.EmulatorActivity"

    const-string v3, "prepare menu"

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void

    .line 915
    .end local v0    # "backToPast":Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;
    :cond_0
    sget v2, Lcom/nostalgiaemulators/framework/R$string;->gallery_menu_pref:I

    sget v3, Lcom/nostalgiaemulators/framework/R$drawable;->ic_game_settings:I

    invoke-virtual {p1, v2, v3}, Lcom/nostalgiaemulators/framework/base/GameMenu;->add(II)Lcom/nostalgiaemulators/framework/base/GameMenu$GameMenuItem;

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1220
    sparse-switch p1, :sswitch_data_0

    .line 1238
    :cond_0
    :goto_0
    return v0

    .line 1222
    :sswitch_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->openGameMenu()V

    goto :goto_0

    .line 1226
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1236
    :sswitch_2
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1220
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_2
        0xbb -> :sswitch_2
        0xce -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 1197
    sparse-switch p1, :sswitch_data_0

    .line 1214
    :cond_0
    :goto_0
    :sswitch_0
    return v0

    .line 1202
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1212
    :sswitch_2
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 1197
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x52 -> :sswitch_0
        0xa4 -> :sswitch_2
        0xbb -> :sswitch_2
        0xce -> :sswitch_2
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 477
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onPause()V

    .line 478
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->onPause()V

    .line 480
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isRestarting:Z

    if-eqz v2, :cond_1

    .line 481
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->finish()V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-boolean v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    if-nez v2, :cond_0

    .line 489
    const/4 v2, 0x0

    sput-object v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->pm:Landroid/content/pm/PackageManager;

    .line 491
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    :try_start_0
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 499
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dialog:Lcom/nostalgiaemulators/framework/ui/timetravel/TimeTravelDialog;

    invoke-static {v2}, Lcom/nostalgiaemulators/framework/utils/DialogUtils;->dismiss(Landroid/app/Dialog;)V

    .line 501
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 507
    :try_start_1
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/Manager;->stopGame()V
    :try_end_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 513
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->onPause()V

    goto :goto_0

    .line 501
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 502
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorController;->onPause()V

    .line 503
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-interface {v0, v3}, Lcom/nostalgiaemulators/framework/EmulatorController;->onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V

    goto :goto_2

    .line 509
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 513
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->onPause()V

    goto :goto_0

    .line 512
    .end local v1    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :catchall_0
    move-exception v2

    .line 513
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v3}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->onPause()V

    .line 514
    throw v2

    .line 495
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method protected onResume()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 634
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onResume()V

    .line 636
    const-string v10, "Emulator Activity"

    invoke-static {v10}, Lcom/nostalgiaemulators/framework/utils/GoogleAnalyticsHelper;->sSendScreenView(Ljava/lang/String;)V

    .line 638
    iput-boolean v9, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isRestarting:Z

    .line 639
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 640
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 641
    const-string v10, "isAfterRestart"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move v4, v8

    .line 642
    .local v4, "isAfterProcessRestart":Z
    :goto_0
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    const-string v11, "isAfterRestart"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 643
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->decreaseResumesToRestart()I

    move-result v10

    if-nez v10, :cond_2

    move v6, v8

    .line 645
    .local v6, "shouldRestart":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v6, :cond_3

    iget-boolean v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->canRestart:Z

    if-eqz v10, :cond_3

    .line 646
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->resetProcessResetCounter()V

    .line 647
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->restartProcess(Ljava/lang/Class;)V

    .line 771
    :cond_0
    :goto_2
    return-void

    .end local v4    # "isAfterProcessRestart":Z
    .end local v6    # "shouldRestart":Z
    :cond_1
    move v4, v9

    .line 640
    goto :goto_0

    .restart local v4    # "isAfterProcessRestart":Z
    :cond_2
    move v6, v9

    .line 643
    goto :goto_1

    .line 651
    .restart local v6    # "shouldRestart":Z
    :cond_3
    iput-boolean v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->canRestart:Z

    .line 653
    iget-boolean v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    if-nez v10, :cond_0

    .line 657
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isAutoHideControls(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->autoHide:Z

    .line 658
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFastForwardToggleable(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isToggleFF:Z

    .line 659
    iput-boolean v9, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFF:Z

    .line 660
    iput-boolean v9, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->isFFPressed:Z

    .line 662
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->$SWITCH_TABLE$com$nostalgiaemulators$framework$ui$preferences$PreferenceUtil$ROTATION()[I

    move-result-object v10

    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getDisplayRotation(Landroid/content/Context;)Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;

    move-result-object v11

    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil$ROTATION;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 684
    :goto_3
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    .line 685
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getFastForwardFrameCount(Landroid/content/Context;)I

    move-result v11

    .line 684
    invoke-virtual {v10, v11}, Lcom/nostalgiaemulators/framework/base/Manager;->setFastForwardFrameCount(I)V

    .line 687
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isDynamicDPADEnable(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 688
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 689
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 690
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->getView()Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    :cond_4
    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setDynamicDPADUsed(Landroid/content/Context;Z)V

    .line 700
    :goto_4
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isFastForwardEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 701
    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setFastForwardUsed(Landroid/content/Context;Z)V

    .line 704
    :cond_5
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isScreenSettingsSaved(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 705
    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setScreenLayoutUsed(Landroid/content/Context;Z)V

    .line 708
    :cond_6
    invoke-static {}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->getInstance()Lcom/nostalgiaemulators/framework/remote/VirtualDPad;

    move-result-object v10

    invoke-virtual {v10}, Lcom/nostalgiaemulators/framework/remote/VirtualDPad;->detachFromWindow()V

    .line 709
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    sput-object v10, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->pm:Landroid/content/pm/PackageManager;

    .line 710
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->pn:Ljava/lang/String;

    .line 712
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_d

    .line 716
    const/4 v2, 0x0

    .line 720
    .local v2, "exceptionHandled":Z
    :try_start_0
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-virtual {v10, v11}, Lcom/nostalgiaemulators/framework/base/Manager;->startGame(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 727
    :try_start_1
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_e

    .line 731
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v10, v12, :cond_f

    .line 732
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/nostalgiaemulators/framework/base/Manager;->loadState(I)V

    .line 740
    :cond_7
    :goto_7
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToSave:Ljava/lang/Integer;

    if-eqz v10, :cond_8

    .line 741
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToSave:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/nostalgiaemulators/framework/base/Manager;->copyAutoSave(I)V

    .line 744
    :cond_8
    sget v10, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->oldConfig:I

    and-int/lit16 v10, v10, 0x80

    const/16 v11, 0x80

    if-ne v10, v11, :cond_10

    move v7, v8

    .line 745
    .local v7, "wasRotated":Z
    :goto_8
    const/4 v8, 0x0

    sput v8, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->oldConfig:I

    .line 747
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->shouldPause()Z

    move-result v8

    if-eqz v8, :cond_9

    if-nez v7, :cond_9

    .line 748
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/nostalgiaemulators/framework/base/GameMenu;->open(Z)V

    .line 751
    :cond_9
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 753
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;

    invoke-virtual {v8}, Lcom/nostalgiaemulators/framework/base/GameMenu;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 754
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual {v8}, Lcom/nostalgiaemulators/framework/base/Manager;->pauseEmulation()Z

    .line 757
    :cond_a
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    .line 758
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getEmulationQuality(Landroid/content/Context;)I

    move-result v5

    .line 759
    .local v5, "quality":I
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v8, v5}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->setQuality(I)V

    .line 760
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->onResume()V

    .line 761
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->enableCheats()V

    .line 762
    iget-object v8, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v8, v8, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->name:Ljava/lang/String;

    invoke-static {p0, v8}, Lcom/nostalgiaemulators/framework/remote/wifi/WifiServerInfoTransmitter;->onResume(Landroid/app/Activity;Ljava/lang/String;)V

    .line 764
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 664
    .end local v2    # "exceptionHandled":Z
    .end local v5    # "quality":I
    .end local v7    # "wasRotated":Z
    :pswitch_0
    invoke-virtual {p0, v12}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 667
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 670
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 674
    :pswitch_3
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x9

    if-ge v10, v11, :cond_b

    .line 675
    invoke-virtual {p0, v12}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 678
    :cond_b
    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setRequestedOrientation(I)V

    goto/16 :goto_3

    .line 696
    :cond_c
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 697
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->getView()Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 712
    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 713
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorController;->onResume()V

    goto/16 :goto_5

    .line 722
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    .restart local v2    # "exceptionHandled":Z
    :catch_0
    move-exception v1

    .line 723
    .local v1, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :try_start_2
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onFailedToLoadGame()Z

    move-result v2

    .line 724
    throw v1
    :try_end_2
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_2 .. :try_end_2} :catch_1

    .line 766
    .end local v1    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :catch_1
    move-exception v1

    .line 767
    .restart local v1    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    if-nez v2, :cond_0

    .line 768
    invoke-virtual {p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto/16 :goto_2

    .line 727
    .end local v1    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    :cond_e
    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 728
    .restart local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    invoke-interface {v0, v11}, Lcom/nostalgiaemulators/framework/EmulatorController;->onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V

    goto/16 :goto_6

    .line 735
    .end local v0    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    :cond_f
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;

    iget-object v11, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    iget-object v11, v11, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/nostalgiaemulators/framework/base/SlotUtils;->autoSaveExists(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 736
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/nostalgiaemulators/framework/base/Manager;->loadState(I)V
    :try_end_3
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_10
    move v7, v9

    .line 744
    goto/16 :goto_8

    .line 662
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 810
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onWindowFocusChanged(Z)V

    .line 812
    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    if-eqz v1, :cond_1

    .line 821
    :cond_0
    return-void

    .line 816
    :cond_1
    if-eqz p1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 818
    .local v0, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorController;->onResume()V

    goto :goto_0
.end method

.method public openGameMenu()V
    .locals 1

    .prologue
    .line 872
    new-instance v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;

    invoke-direct {v0, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$13;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 879
    return-void
.end method

.method public openTimeTravelDialog(Z)V
    .locals 1
    .param p1, "checkPro"    # Z

    .prologue
    .line 843
    new-instance v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$12;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 869
    return-void
.end method

.method public quickLoad()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->loadState(I)V

    .line 44
    return-void
.end method

.method public quickSave()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/Manager;->saveState(I)V

    .line 49
    return-void
.end method

.method public setShouldPauseOnResume(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 464
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 465
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "emulator_activity_pause"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    return-void
.end method

.method public shouldPause()Z
    .locals 3

    .prologue
    .line 471
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 472
    const-string v1, "emulator_activity_pause"

    const/4 v2, 0x0

    .line 471
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected showErrorAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 549
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 551
    .local v1, "dialog":Landroid/app/AlertDialog;
    new-instance v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;

    invoke-direct {v2, p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$6;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 561
    new-instance v2, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;

    invoke-direct {v2, p0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$7;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {p0, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 566
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "toast"    # Ljava/lang/String;

    .prologue
    .line 618
    new-instance v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;

    invoke-direct {v0, p0, p1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$9;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 625
    return-void
.end method

.method protected source_onCreate(Landroid/os/Bundle;)V
    .locals 29
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 120
    invoke-super/range {p0 .. p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 123
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    const-string v24, "fromGallery"

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 124
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "fromGallery"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 128
    :cond_0
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->canRestart:Z

    .line 131
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorUtils;->getBaseDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->baseDir:Ljava/lang/String;
    :try_end_0
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    const-string v24, "com.nostalgiaemulators.framework.base.EmulatorActivity"

    const-string v25, "onCreate - baseActivity"

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/nostalgiaemulators/framework/utils/Utils;->checkGL20Support(Landroid/content/Context;)Z

    move-result v11

    .line 142
    .local v11, "hasOpenGL20":Z
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "game"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v24, v0

    if-nez v24, :cond_1

    .line 145
    const-string v24, "failed to load game"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->showErrorAlert(Ljava/lang/String;)V

    .line 146
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    .line 270
    .end local v11    # "hasOpenGL20":Z
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v8

    .line 134
    .local v8, "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    .line 135
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    goto :goto_0

    .line 151
    .end local v8    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    .restart local v11    # "hasOpenGL20":Z
    :cond_1
    :try_start_1
    new-instance v24, Lcom/nostalgiaemulators/framework/base/GameMenu;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/GameMenu;-><init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/base/GameMenu$OnGameMenuListener;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->gameMenu:Lcom/nostalgiaemulators/framework/base/GameMenu;
    :try_end_1
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 159
    const/16 v24, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->slotToRun:Ljava/lang/Integer;

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    .line 161
    .local v22, "wParams":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x80

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 162
    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v24, v0

    move/from16 v0, v24

    or-int/lit16 v0, v0, 0x400

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getWindow()Landroid/view/Window;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getEmulatorInstance()Lcom/nostalgiaemulators/framework/Emulator;

    move-result-object v9

    .line 165
    .local v9, "emulator":Lcom/nostalgiaemulators/framework/Emulator;
    const/4 v7, 0x0

    .line 167
    .local v7, "defaultTopPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 168
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 169
    sget v25, Lcom/nostalgiaemulators/framework/R$dimen;->top_panel_touchcontroler_height:I

    .line 168
    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 172
    :cond_2
    const/4 v14, 0x0

    .line 173
    .local v14, "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getEmulationQuality(Landroid/content/Context;)I

    move-result v17

    .line 174
    .local v17, "quality":I
    invoke-static/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isBenchmarked(Landroid/content/Context;)Z

    move-result v4

    .line 175
    .local v4, "alreadyBenchmarked":Z
    const/16 v24, 0x2

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_6

    if-nez v4, :cond_6

    const/4 v13, 0x1

    .line 177
    .local v13, "needsBenchmark":Z
    :goto_1
    if-eqz v11, :cond_3

    .line 178
    new-instance v14, Lcom/nostalgiaemulators/framework/base/OpenGLView;

    .end local v14    # "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v7}, Lcom/nostalgiaemulators/framework/base/OpenGLView;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/Emulator;I)V

    .line 180
    .restart local v14    # "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    if-eqz v13, :cond_3

    .line 181
    new-instance v24, Lcom/nostalgiaemulators/framework/base/Benchmark;

    const-string v25, "openGL"

    const/16 v26, 0xc8

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->benchmarkCallback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    move-object/from16 v27, v0

    invoke-direct/range {v24 .. v27}, Lcom/nostalgiaemulators/framework/base/Benchmark;-><init>(Ljava/lang/String;ILcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;)V

    .line 181
    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Lcom/nostalgiaemulators/framework/base/OpenGLView;->setBenchmark(Lcom/nostalgiaemulators/framework/base/Benchmark;)V

    .line 186
    :cond_3
    if-eqz v14, :cond_7

    .end local v14    # "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    :goto_2
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    .line 188
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    .line 189
    new-instance v24, Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/TouchController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/TouchController;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 192
    new-instance v24, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v25

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    .line 192
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->dynamic:Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 196
    new-instance v16, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/controllers/TouchController;)V

    .line 197
    .local v16, "qsc":Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    new-instance v12, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->game:Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 198
    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, p0

    invoke-direct {v12, v9, v0, v1, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;-><init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 200
    .local v12, "kc":Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
    new-instance v18, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 201
    .local v18, "rc1":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    new-instance v19, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 202
    .local v19, "rc2":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    new-instance v20, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 203
    .local v20, "rc3":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    new-instance v21, Lcom/nostalgiaemulators/framework/controllers/RemoteController;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 204
    .local v21, "rc4":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 205
    const/16 v24, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 206
    const/16 v24, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 207
    const/16 v24, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 208
    new-instance v24, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$2;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/RemoteController;->setOnRemoteControllerWarningListener(Lcom/nostalgiaemulators/framework/controllers/RemoteController$OnRemoteControllerWarningListener;)V

    .line 214
    new-instance v23, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;-><init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    .line 215
    .local v23, "zapper":Lcom/nostalgiaemulators/framework/controllers/ZapperGun;
    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v9}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    new-instance v24, Landroid/widget/FrameLayout;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    .line 223
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    .line 224
    const/16 v24, -0x1

    .line 225
    const/16 v25, -0x1

    .line 223
    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v15, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 226
    .local v15, "params":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->emulatorView:Lcom/nostalgiaemulators/framework/base/EmulatorView;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/base/EmulatorView;->asView()Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 228
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllers:Ljava/util/List;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_4
    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_8

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$3;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$3;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Landroid/content/Context;)V

    invoke-virtual/range {v24 .. v25}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setContentView(Landroid/view/View;)V

    .line 248
    :try_start_2
    new-instance v24, Lcom/nostalgiaemulators/framework/base/Manager;

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v0, v9, v1}, Lcom/nostalgiaemulators/framework/base/Manager;-><init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    .line 250
    if-eqz v13, :cond_5

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->manager:Lcom/nostalgiaemulators/framework/base/Manager;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/base/Benchmark;

    const-string v26, "emulation"

    const/16 v27, 0x3e8

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->benchmarkCallback:Lcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;

    move-object/from16 v28, v0

    invoke-direct/range {v25 .. v28}, Lcom/nostalgiaemulators/framework/base/Benchmark;-><init>(Ljava/lang/String;ILcom/nostalgiaemulators/framework/base/Benchmark$BenchmarkCallback;)V

    .line 251
    invoke-virtual/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/base/Manager;->setBenchmark(Lcom/nostalgiaemulators/framework/base/Benchmark;)V
    :try_end_2
    .catch Lcom/nostalgiaemulators/framework/EmulatorException; {:try_start_2 .. :try_end_2} :catch_2

    .line 261
    :cond_5
    :goto_4
    new-instance v24, Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/InterstitialAd;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v24, v0

    const-string v25, "ca-app-pub-5505857826308324/3128391697"

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/gms/ads/InterstitialAd;->setAdUnitId(Ljava/lang/String;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->mInterstitialAd:Lcom/google/android/gms/ads/InterstitialAd;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$4;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity$4;-><init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V

    invoke-virtual/range {v24 .. v25}, Lcom/google/android/gms/ads/InterstitialAd;->setAdListener(Lcom/google/android/gms/ads/AdListener;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->requestNewInterstitial()V

    goto/16 :goto_0

    .line 153
    .end local v4    # "alreadyBenchmarked":Z
    .end local v7    # "defaultTopPadding":I
    .end local v9    # "emulator":Lcom/nostalgiaemulators/framework/Emulator;
    .end local v12    # "kc":Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
    .end local v13    # "needsBenchmark":Z
    .end local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v16    # "qsc":Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;
    .end local v17    # "quality":I
    .end local v18    # "rc1":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .end local v19    # "rc2":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .end local v20    # "rc3":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .end local v21    # "rc4":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .end local v22    # "wParams":Landroid/view/WindowManager$LayoutParams;
    .end local v23    # "zapper":Lcom/nostalgiaemulators/framework/controllers/ZapperGun;
    :catch_1
    move-exception v8

    .line 154
    .restart local v8    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    .line 155
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    goto/16 :goto_0

    .line 175
    .end local v8    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    .restart local v4    # "alreadyBenchmarked":Z
    .restart local v7    # "defaultTopPadding":I
    .restart local v9    # "emulator":Lcom/nostalgiaemulators/framework/Emulator;
    .restart local v14    # "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    .restart local v17    # "quality":I
    .restart local v22    # "wParams":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 186
    .restart local v13    # "needsBenchmark":Z
    :cond_7
    new-instance v14, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;

    .line 187
    .end local v14    # "openGLView":Lcom/nostalgiaemulators/framework/base/OpenGLView;
    move-object/from16 v0, p0

    invoke-direct {v14, v0, v9, v7}, Lcom/nostalgiaemulators/framework/base/UnacceleratedView;-><init>(Landroid/app/Activity;Lcom/nostalgiaemulators/framework/Emulator;I)V

    goto/16 :goto_2

    .line 230
    .restart local v12    # "kc":Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
    .restart local v15    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v16    # "qsc":Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;
    .restart local v18    # "rc1":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .restart local v19    # "rc2":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .restart local v20    # "rc3":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .restart local v21    # "rc4":Lcom/nostalgiaemulators/framework/controllers/RemoteController;
    .restart local v23    # "zapper":Lcom/nostalgiaemulators/framework/controllers/ZapperGun;
    :cond_8
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/EmulatorController;

    .line 231
    .local v5, "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    invoke-interface {v5}, Lcom/nostalgiaemulators/framework/EmulatorController;->getView()Landroid/view/View;

    move-result-object v6

    .line 233
    .local v6, "controllerView":Landroid/view/View;
    if-eqz v6, :cond_4

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->controllerViews:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->group:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 255
    .end local v5    # "controller":Lcom/nostalgiaemulators/framework/EmulatorController;
    .end local v6    # "controllerView":Landroid/view/View;
    :catch_2
    move-exception v8

    .line 256
    .restart local v8    # "e":Lcom/nostalgiaemulators/framework/EmulatorException;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->exceptionOccurred:Z

    .line 257
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->handleException(Lcom/nostalgiaemulators/framework/EmulatorException;)V

    goto :goto_4
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 973
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->startActivity(Landroid/content/Intent;)V

    .line 974
    return-void
.end method

.method public startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 978
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->setShouldPauseOnResume(Z)V

    .line 979
    invoke-super {p0, p1, p2}, Lcom/nostalgiaemulators/framework/base/ImmersiveActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 980
    return-void
.end method
