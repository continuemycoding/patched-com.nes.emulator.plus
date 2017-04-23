.class public Lcom/nostalgiaemulators/framework/controllers/KeyboardController;
.super Ljava/lang/Object;
.source "KeyboardController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;
    }
.end annotation


# static fields
.field public static KEYS_A_AND_B:I = 0x0

.field public static KEYS_LEFT_AND_DOWN:I = 0x0

.field public static KEYS_LEFT_AND_UP:I = 0x0

.field public static KEYS_RIGHT_AND_DOWN:I = 0x0

.field public static KEYS_RIGHT_AND_UP:I = 0x0

.field public static final KEY_BACK:I = 0x384

.field public static final KEY_FAST_FORWARD:I = 0x387

.field public static final KEY_LOAD_SLOT_0:I = 0x389

.field public static final KEY_LOAD_SLOT_1:I = 0x38b

.field public static final KEY_LOAD_SLOT_2:I = 0x38d

.field public static final KEY_MENU:I = 0x386

.field public static final KEY_RESET:I = 0x385

.field public static final KEY_REWINDING:I = 0x38e

.field public static final KEY_SAVE_SLOT_0:I = 0x388

.field public static final KEY_SAVE_SLOT_1:I = 0x38a

.field public static final KEY_SAVE_SLOT_2:I = 0x38c

.field public static final KEY_XPERIA_CIRCLE:I = 0x7b523eaa

.field public static final PLAYER2_OFFSET:I = 0x186a0

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.controller.KeyboardController"

.field private static sLastHash:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field private emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field gameHash:Ljava/lang/String;

.field private keyMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private loadingOrSaving:[Z

.field private mismatchCount:I

.field private player0GamepadId:I

.field private player1GamepadId:I

.field private profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

.field private tmpKeys:[I

.field private twoGamepadsRequired:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    .line 422
    invoke-static {v4, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keysToMultiCode(II)I

    move-result v0

    sput v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_RIGHT_AND_UP:I

    .line 424
    invoke-static {v4, v1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keysToMultiCode(II)I

    move-result v0

    sput v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_RIGHT_AND_DOWN:I

    .line 426
    invoke-static {v3, v1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keysToMultiCode(II)I

    move-result v0

    sput v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_LEFT_AND_DOWN:I

    .line 429
    const/4 v0, 0x0

    .line 430
    const/4 v1, 0x1

    .line 429
    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keysToMultiCode(II)I

    move-result v0

    sput v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_A_AND_B:I

    .line 432
    invoke-static {v3, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keysToMultiCode(II)I

    move-result v0

    sput v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->KEYS_LEFT_AND_UP:I

    .line 449
    return-void
.end method

.method public constructor <init>(Lcom/nostalgiaemulators/framework/Emulator;Landroid/content/Context;Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 2
    .param p1, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "gameHash"    # Ljava/lang/String;
    .param p4, "activity"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .prologue
    const/4 v1, -0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->tmpKeys:[I

    .line 123
    iput v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I

    .line 124
    iput v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z

    .line 386
    const/4 v0, 0x4

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->gameHash:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 48
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 49
    invoke-interface {p1}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keyMapping:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I

    return v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I

    return v0
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I

    return-void
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I

    return-void
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z

    return-void
.end method

.method static synthetic access$7(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I
    .locals 1

    .prologue
    .line 109
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->getMappingSingleKeyboard(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;)I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mismatchCount:I

    return v0
.end method

.method static synthetic access$9(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;I)V
    .locals 0

    .prologue
    .line 122
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mismatchCount:I

    return-void
.end method

.method private static getMappingSingleKeyboard(Lcom/nostalgiaemulators/framework/KeyboardProfile;I)I
    .locals 2
    .param p0, "profile"    # Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .param p1, "keyCode"    # I

    .prologue
    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v0

    .line 113
    .local v0, "mapping":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 114
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getMapping(II)I

    move-result v0

    .line 117
    :cond_0
    return v0
.end method

.method private static isMulti(I)Z
    .locals 1
    .param p0, "mapValue"    # I

    .prologue
    .line 106
    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static keysToMultiCode(II)I
    .locals 1
    .param p0, "key1"    # I
    .param p1, "key2"    # I

    .prologue
    .line 93
    mul-int/lit16 v0, p0, 0x3e8

    add-int/2addr v0, p1

    add-int/lit16 v0, v0, 0x2710

    return v0
.end method

.method private load(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "isKeyPressed"    # Z

    .prologue
    .line 400
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 402
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getManager()Lcom/nostalgiaemulators/framework/base/Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/Manager;->loadState(I)V

    .line 405
    :cond_0
    if-nez p2, :cond_1

    .line 406
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 408
    :cond_1
    return-void
.end method

.method private multiToKeys(I[I)V
    .locals 3
    .param p1, "mapValue"    # I
    .param p2, "keys"    # [I

    .prologue
    .line 97
    add-int/lit16 p1, p1, -0x2710

    .line 98
    div-int/lit16 v0, p1, 0x3e8

    .line 99
    .local v0, "key1":I
    mul-int/lit16 v2, v0, 0x3e8

    sub-int/2addr p1, v2

    .line 100
    move v1, p1

    .line 101
    .local v1, "key2":I
    const/4 v2, 0x0

    aput v0, p2, v2

    .line 102
    const/4 v2, 0x1

    aput v1, p2, v2

    .line 103
    return-void
.end method

.method private save(IZ)V
    .locals 2
    .param p1, "slot"    # I
    .param p2, "isKeyPressed"    # Z

    .prologue
    .line 389
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 391
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v0}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->getManager()Lcom/nostalgiaemulators/framework/base/Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nostalgiaemulators/framework/base/Manager;->saveState(I)V

    .line 394
    :cond_0
    if-nez p2, :cond_1

    .line 395
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 397
    :cond_1
    return-void
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 1
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 89
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController$KeyboardView;-><init>(Lcom/nostalgiaemulators/framework/controllers/KeyboardController;Landroid/content/Context;)V

    return-object v0
.end method

.method public mapKey(I)I
    .locals 4
    .param p1, "keyCode"    # I

    .prologue
    const/16 v3, 0x80

    .line 35
    if-ltz p1, :cond_0

    if-lt p1, v3, :cond_1

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1

    .line 38
    :cond_1
    new-array v0, v3, [I

    .line 40
    .local v0, "keys":[I
    const/16 v1, 0x13

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 41
    const/16 v1, 0x14

    const/16 v2, 0x20

    aput v2, v0, v1

    .line 42
    const/16 v1, 0x15

    const/16 v2, 0x40

    aput v2, v0, v1

    .line 43
    const/16 v1, 0x16

    aput v3, v0, v1

    .line 44
    const/16 v1, 0x6d

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 45
    const/16 v1, 0x6c

    const/16 v2, 0x8

    aput v2, v0, v1

    .line 46
    const/16 v1, 0x60

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 47
    const/16 v1, 0x61

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 48
    const/16 v1, 0x63

    const/16 v2, 0x3e9

    aput v2, v0, v1

    .line 49
    const/16 v1, 0x64

    const/16 v2, 0x3ea

    aput v2, v0, v1

    .line 51
    aget v1, v0, p1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 412
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->context:Landroid/content/Context;

    .line 413
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 414
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 85
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 81
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 54
    iput v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mismatchCount:I

    .line 56
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->gameHash:Ljava/lang/String;

    sget-object v2, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->sLastHash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iput v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player0GamepadId:I

    .line 58
    iput v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->player1GamepadId:I

    .line 59
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->gameHash:Ljava/lang/String;

    sput-object v1, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->sLastHash:Ljava/lang/String;

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->gameHash:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getSelectedProfile(Ljava/lang/String;Landroid/content/Context;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    .line 63
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-virtual {v1}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->requiresTwoGamepads()Z

    move-result v1

    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->twoGamepadsRequired:Z

    .line 64
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v1}, Lcom/nostalgiaemulators/framework/Emulator;->resetKeys()V

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 69
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->loadingOrSaving:[Z

    aput-boolean v4, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 77
    return-void
.end method

.method public processKey(IZ)V
    .locals 7
    .param p1, "mapValue"    # I
    .param p2, "pressed"    # Z

    .prologue
    const v5, 0x186a0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    .line 322
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    const/4 v0, 0x0

    .line 328
    .local v0, "port":I
    if-lt p1, v5, :cond_2

    .line 329
    sub-int/2addr p1, v5

    .line 330
    const/4 v0, 0x1

    .line 333
    :cond_2
    const/16 v2, 0x384

    if-ne p1, v2, :cond_3

    .line 334
    if-eqz p2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->finish()V

    goto :goto_0

    .line 338
    :cond_3
    const/16 v2, 0x388

    if-ne p1, v2, :cond_4

    .line 339
    invoke-direct {p0, v6, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->save(IZ)V

    goto :goto_0

    .line 341
    :cond_4
    const/16 v2, 0x38a

    if-ne p1, v2, :cond_5

    .line 342
    invoke-direct {p0, v3, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->save(IZ)V

    goto :goto_0

    .line 344
    :cond_5
    const/16 v2, 0x38c

    if-ne p1, v2, :cond_6

    .line 345
    invoke-direct {p0, v4, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->save(IZ)V

    goto :goto_0

    .line 347
    :cond_6
    const/16 v2, 0x389

    if-ne p1, v2, :cond_7

    .line 348
    invoke-direct {p0, v6, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->load(IZ)V

    goto :goto_0

    .line 350
    :cond_7
    const/16 v2, 0x38b

    if-ne p1, v2, :cond_8

    .line 351
    invoke-direct {p0, v3, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->load(IZ)V

    goto :goto_0

    .line 353
    :cond_8
    const/16 v2, 0x38d

    if-ne p1, v2, :cond_9

    .line 354
    invoke-direct {p0, v4, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->load(IZ)V

    goto :goto_0

    .line 357
    :cond_9
    const/16 v2, 0x387

    if-ne p1, v2, :cond_b

    .line 358
    if-eqz p2, :cond_a

    .line 359
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onFastForwardDown()V

    goto :goto_0

    .line 362
    :cond_a
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->onFastForwardUp()V

    goto :goto_0

    .line 365
    :cond_b
    const/16 v2, 0x386

    if-ne p1, v2, :cond_c

    .line 366
    if-eqz p2, :cond_0

    .line 367
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v2}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->openGameMenu()V

    goto :goto_0

    .line 370
    :cond_c
    const/16 v2, 0x38e

    if-ne p1, v2, :cond_d

    .line 371
    if-eqz p2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-virtual {v2, v6}, Lcom/nostalgiaemulators/framework/base/EmulatorActivity;->openTimeTravelDialog(Z)V

    goto :goto_0

    .line 375
    :cond_d
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->isMulti(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 376
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->tmpKeys:[I

    invoke-direct {p0, p1, v2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->multiToKeys(I[I)V

    .line 377
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keyMapping:Ljava/util/Map;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->tmpKeys:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v0, v2, p2}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 378
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keyMapping:Ljava/util/Map;

    iget-object v4, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->tmpKeys:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v3, v0, v2, p2}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    goto/16 :goto_0

    .line 381
    :cond_e
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->keyMapping:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 382
    .local v1, "value":I
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    invoke-interface {v2, v0, v1, p2}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    goto/16 :goto_0
.end method

.method public setKeyPressed(ZIZ)V
    .locals 3
    .param p1, "isPlayer2"    # Z
    .param p2, "keyCode"    # I
    .param p3, "isKeyDown"    # Z

    .prologue
    .line 57
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p2}, Lcom/nostalgiaemulators/framework/controllers/KeyboardController;->mapKey(I)I

    move-result v2

    invoke-interface {v1, v0, v2, p3}, Lcom/nostalgiaemulators/framework/Emulator;->setKeyPressed(IIZ)V

    .line 58
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
