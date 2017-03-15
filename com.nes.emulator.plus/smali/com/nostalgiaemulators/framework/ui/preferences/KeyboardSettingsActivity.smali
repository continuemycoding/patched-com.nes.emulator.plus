.class public Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;
.super Lcom/nostalgiaemulators/framework/remote/ControllableActivity;
.source "KeyboardSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nostalgiaemulators/framework/remote/ControllableActivity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final EXTRA_NEW_BOOL:Ljava/lang/String; = "EXTRA_NEW_BOOL"

.field public static final EXTRA_PROFILE_NAME:Ljava/lang/String; = "EXTRA_PROFILE_NAME"

.field private static NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_NAME_CANCEL:I = 0x9db37

.field private static final TAG:Ljava/lang/String; = "com.nostalgiaemulators.framework.ui.preferences.KeyboardSettingsActivity"


# instance fields
.field final NEW_PROFILE:Ljava/lang/String;

.field private adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

.field private deleted:Z

.field private inverseMap:Landroid/util/SparseIntArray;

.field private list:Landroid/widget/ListView;

.field private newProfile:Z

.field private profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

.field private profilesNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 334
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    .line 337
    invoke-static {}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->initNonPrintMap()V

    .line 338
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    .line 72
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    .line 82
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->newProfile:Z

    .line 413
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->deleted:Z

    .line 537
    const-string v0, "[new profile]"

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NEW_PROFILE:Ljava/lang/String;

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/KeyboardProfile;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->newProfile:Z

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profilesNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Ljava/lang/String;Landroid/content/DialogInterface;II)Z
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->proccessKeyEvent(Ljava/lang/String;Landroid/content/DialogInterface;II)Z

    move-result v0

    return v0
.end method

.method public static getKeyLabel(I)Ljava/lang/String;
    .locals 5
    .param p0, "keyCode"    # I

    .prologue
    .line 391
    if-nez p0, :cond_1

    .line 392
    const-string v2, ""

    .line 408
    :cond_0
    :goto_0
    return-object v2

    .line 395
    :cond_1
    sget-object v3, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    invoke-virtual {v3, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 397
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 401
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p0}, Landroid/view/KeyEvent;-><init>(II)V

    .line 402
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    int-to-char v0, v3

    .line 404
    .local v0, "ch":C
    if-eqz v0, :cond_2

    .line 405
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 408
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "key-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private static initNonPrintMap()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 342
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x42

    const-string v2, "Enter"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 343
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const-string v2, "Space"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 344
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x15

    const-string v2, "Left"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 345
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x16

    const-string v2, "Right"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 346
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x13

    const-string v2, "Up"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 347
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x14

    const-string v2, "Down"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const v1, 0x7b523eaa

    .line 349
    const-string v2, "Circle"

    .line 348
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    .line 352
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x60

    const-string v2, "A"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 353
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const-string v2, "B"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 354
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x62

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 355
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const-string v2, "X"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 356
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const-string v2, "Y"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 357
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "Z"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 358
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x6d

    .line 359
    const-string v2, "Select"

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 360
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    .line 361
    const/16 v1, 0x6c

    const-string v2, "Start"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 362
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const-string v2, "MODE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 363
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x6a

    .line 364
    const-string v2, "THUMBL"

    .line 363
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 365
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x6b

    .line 366
    const-string v2, "THUMBR"

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 367
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xbc

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 368
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xbd

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xbe

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 370
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xbf

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 371
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc0

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 372
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc1

    const-string v2, "6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 373
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc2

    const-string v2, "7"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 374
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc3

    const-string v2, "8"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 375
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc4

    const-string v2, "9"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 376
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc5

    const-string v2, "10"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 377
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc6

    const-string v2, "11"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 378
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc7

    const-string v2, "12"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 379
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc8

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 380
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xc9

    const-string v2, "14"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 381
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xca

    const-string v2, "15"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0xcb

    const-string v2, "16"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const-string v2, "R1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 384
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const-string v2, "R2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 385
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x66

    const-string v2, "L1"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 386
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->NON_PRINTABLE_KEY_LABELS:Landroid/util/SparseArray;

    const/16 v1, 0x68

    const-string v2, "L2"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    :cond_0
    return-void
.end method

.method private proccessKeyEvent(Ljava/lang/String;Landroid/content/DialogInterface;II)Z
    .locals 7
    .param p1, "txt"    # Ljava/lang/String;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "keyCode"    # I
    .param p4, "position"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 485
    const-string v4, "com.nostalgiaemulators.framework.ui.preferences.KeyboardSettingsActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "txt:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    const-string v4, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x4

    if-eq p3, v4, :cond_3

    .line 488
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonDescriptions()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p4

    .line 489
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonDescriptions()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v3

    .line 491
    .local v0, "player":I
    :goto_0
    if-ne v0, v2, :cond_0

    .line 492
    const v4, 0x186a0

    add-int/2addr p3, v4

    .line 495
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p3}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    .line 497
    .local v1, "previousPosition":I
    if-ltz v1, :cond_1

    .line 498
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 501
    :cond_1
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    .line 502
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonKeyEventCodes()[I

    move-result-object v4

    aget v4, v4, p4

    invoke-virtual {v3, v4, p3}, Landroid/util/SparseIntArray;->append(II)V

    .line 504
    const-string v3, "com.nostalgiaemulators.framework.ui.preferences.KeyboardSettingsActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isert "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 505
    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-static {v3, v4}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->notifyDataSetChanged()V

    .line 509
    :try_start_0
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    .end local v0    # "player":I
    .end local v1    # "previousPosition":I
    :goto_1
    return v2

    :cond_2
    move v0, v2

    .line 489
    goto :goto_0

    :cond_3
    move v2, v3

    .line 517
    goto :goto_1

    .line 511
    .restart local v0    # "player":I
    .restart local v1    # "previousPosition":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_1

    .line 90
    invoke-virtual {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setRequestedOrientation(I)V

    .line 96
    :goto_0
    sget v6, Lcom/nostalgiaemulators/framework/R$layout;->activity_keyboard_settings:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getProfilesNames(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profilesNames:Ljava/util/ArrayList;

    .line 98
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->act_keyboard_settings_list:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    .line 99
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "EXTRA_PROFILE_NAME"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "profileToLoad":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v8, "EXTRA_NEW_BOOL"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 101
    .local v2, "isNew":Z
    invoke-static {p0, v5}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->load(Landroid/content/Context;Ljava/lang/String;)Lcom/nostalgiaemulators/framework/KeyboardProfile;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    .line 102
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    .line 103
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v3, v6, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    .line 105
    .local v3, "keyMap":Landroid/util/SparseIntArray;
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonKeyEventCodes()[I

    move-result-object v8

    array-length v9, v8

    move v6, v7

    :goto_1
    if-lt v6, v9, :cond_2

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    if-lt v1, v6, :cond_3

    .line 113
    if-eqz v2, :cond_0

    .line 114
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    const-string v8, "[new profile]"

    iput-object v8, v6, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    .line 115
    iput-boolean v12, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->newProfile:Z

    .line 116
    invoke-virtual {p0, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->showDialog(I)V

    .line 119
    :cond_0
    sget v6, Lcom/nostalgiaemulators/framework/R$string;->key_profile_pref:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v8, v12, [Ljava/lang/Object;

    .line 120
    iget-object v9, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v9, v9, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    aput-object v9, v8, v7

    .line 119
    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    invoke-direct {v6, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)V

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    .line 122
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 124
    sget v6, Lcom/nostalgiaemulators/framework/R$id;->act_keyboard_settings_plv:I

    invoke-virtual {p0, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;

    .line 126
    .local v4, "plv":Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v6

    invoke-interface {v6}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->isMultiPlayerSupported()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 127
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->adapter:Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;

    invoke-virtual {v6}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$Adapter;->getPlayersOffset()[I

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->setPlayersOffsets([I)V

    .line 128
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->list:Landroid/widget/ListView;

    new-instance v7, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;

    invoke-direct {v7, p0, v4}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$1;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;)V

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 154
    :goto_3
    return-void

    .line 93
    .end local v1    # "i":I
    .end local v2    # "isNew":Z
    .end local v3    # "keyMap":Landroid/util/SparseIntArray;
    .end local v4    # "plv":Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;
    .end local v5    # "profileToLoad":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v12}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 105
    .restart local v2    # "isNew":Z
    .restart local v3    # "keyMap":Landroid/util/SparseIntArray;
    .restart local v5    # "profileToLoad":Ljava/lang/String;
    :cond_2
    aget v10, v8, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    .local v0, "code":Ljava/lang/Integer;
    iget-object v10, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "code":Ljava/lang/Integer;
    .restart local v1    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v6, v8, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 152
    .restart local v4    # "plv":Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;
    :cond_4
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/nostalgiaemulators/framework/ui/preferences/PlayersLabelView;->setVisibility(I)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/16 v5, 0xa

    .line 158
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 159
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 160
    .local v2, "editText":Landroid/widget/EditText;
    const-string v4, "Insert profile name"

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 162
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 164
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 165
    const-string v5, "OK"

    new-instance v6, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;

    invoke-direct {v6, p0, v2}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$2;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 176
    const-string v5, "Cancel"

    .line 177
    new-instance v6, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;

    invoke-direct {v6, p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$3;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;)V

    .line 176
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 185
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const-string v4, "[a-zA-Z0-9]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 186
    .local v3, "pattern":Ljava/util/regex/Pattern;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;

    invoke-direct {v4, p0, v0, v3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$4;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/AlertDialog;Ljava/util/regex/Pattern;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 210
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;

    invoke-direct {v4, p0, v0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$5;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 217
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    .line 424
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne p3, v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->isDefaultProfile(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v3, v3, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->restoreDefaultProfile(Ljava/lang/String;Landroid/content/Context;)V

    .line 432
    :goto_0
    iput-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->deleted:Z

    .line 433
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->finish()V

    .line 481
    :goto_1
    return-void

    .line 429
    :cond_0
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-virtual {v3, p0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->delete(Landroid/content/Context;)Z

    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/nostalgiaemulators/framework/R$string;->press_key:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 439
    invoke-static {}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->getButtonNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    aput-object v6, v4, v5

    .line 437
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 440
    const-string v3, "Cancel"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 442
    .local v2, "view":Landroid/widget/EditText;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 444
    .local v1, "d":Landroid/app/Dialog;
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;

    invoke-direct {v3, p0, v1, p3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$6;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;Landroid/app/Dialog;I)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 459
    new-instance v3, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;

    invoke-direct {v3, p0, p3}, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity$7;-><init>(Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;I)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 479
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_1
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 523
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onPause()V

    .line 525
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->name:Ljava/lang/String;

    const-string v2, "[new profile]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->deleted:Z

    if-nez v1, :cond_0

    .line 526
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 528
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    invoke-virtual {v1, p0}, Lcom/nostalgiaemulators/framework/KeyboardProfile;->save(Landroid/content/Context;)Z

    .line 535
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 529
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->profile:Lcom/nostalgiaemulators/framework/KeyboardProfile;

    iget-object v1, v1, Lcom/nostalgiaemulators/framework/KeyboardProfile;->keyMap:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    .line 530
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->inverseMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 529
    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 417
    invoke-super {p0}, Lcom/nostalgiaemulators/framework/remote/ControllableActivity;->onResume()V

    .line 418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/preferences/KeyboardSettingsActivity;->deleted:Z

    .line 419
    return-void
.end method
