.class public Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;
.super Ljava/lang/Object;
.source "QuickSaveController.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;
    }
.end annotation


# instance fields
.field activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private isEnabled:Z

.field private screenCenterX:I

.field touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;


# direct methods
.method public constructor <init>(Lcom/nostalgiaemulators/framework/base/EmulatorActivity;Lcom/nostalgiaemulators/framework/controllers/TouchController;)V
    .locals 3
    .param p1, "activity"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .param p2, "touchController"    # Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 37
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 38
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    .line 39
    new-instance v1, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;-><init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$GestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 38
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->screenCenterX:I

    return v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;I)V
    .locals 0

    .prologue
    .line 95
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->screenCenterX:I

    return-void
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->isEnabled:Z

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;)Landroid/support/v4/view/GestureDetectorCompat;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->gestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    return-object v0
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 68
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController$1;-><init>(Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 126
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 127
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 64
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 60
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->activity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isQuickSaveEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/QuickSaveController;->isEnabled:Z

    .line 48
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 56
    return-void
.end method
