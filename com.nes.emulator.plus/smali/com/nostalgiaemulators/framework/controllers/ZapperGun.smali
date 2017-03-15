.class public Lcom/nostalgiaemulators/framework/controllers/ZapperGun;
.super Ljava/lang/Object;
.source "ZapperGun.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;


# instance fields
.field private context:Landroid/content/Context;

.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field private emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

.field private inited:Z

.field private isEnabled:Z

.field private maxX:F

.field private maxY:F

.field private minX:F

.field private minY:F

.field private startX:F

.field private startY:F

.field private startedInside:Z

.field private vph:F

.field private vpw:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/EmulatorActivity;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->startedInside:Z

    .line 129
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->inited:Z

    .line 130
    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->isEnabled:Z

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->isEnabled:Z

    return v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->startedInside:Z

    return v0
.end method

.method static synthetic access$10(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 125
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F

    return-void
.end method

.method static synthetic access$11(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxX:F

    return-void
.end method

.method static synthetic access$12(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxY:F

    return-void
.end method

.method static synthetic access$13(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 127
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vpw:F

    return-void
.end method

.method static synthetic access$14(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vph:F

    return-void
.end method

.method static synthetic access$15(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->inited:Z

    return-void
.end method

.method static synthetic access$16(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Z)V
    .locals 0

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->startedInside:Z

    return-void
.end method

.method static synthetic access$17(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vpw:F

    return v0
.end method

.method static synthetic access$18(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->vph:F

    return v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minY:F

    return v0
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxX:F

    return v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->maxY:F

    return v0
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    return-object v0
.end method

.method static synthetic access$7(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->inited:Z

    return v0
.end method

.method static synthetic access$8(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;)Lcom/nostalgiaemulators/framework/base/EmulatorActivity;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    return-object v0
.end method

.method static synthetic access$9(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;F)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->minX:F

    return-void
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 0
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 53
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 54
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/controllers/ZapperGun$1;-><init>(Lcom/nostalgiaemulators/framework/controllers/ZapperGun;Landroid/content/Context;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->context:Landroid/content/Context;

    .line 116
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 117
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->emulatorActivity:Lcom/nostalgiaemulators/framework/base/EmulatorActivity;

    .line 118
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 139
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 2
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->context:Landroid/content/Context;

    iget-object v1, p1, Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;->checksum:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->isZapperEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nostalgiaemulators/framework/controllers/ZapperGun;->isEnabled:Z

    .line 135
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 45
    return-void
.end method
