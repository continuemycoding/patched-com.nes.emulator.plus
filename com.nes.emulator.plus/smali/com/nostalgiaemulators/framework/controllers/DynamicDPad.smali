.class public Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;
.super Ljava/lang/Object;
.source "DynamicDPad.java"

# interfaces
.implements Lcom/nostalgiaemulators/framework/EmulatorController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private currentX:F

.field private currentY:F

.field private downMapped:I

.field private dpadCenterX:F

.field private dpadCenterY:F

.field private emulator:Lcom/nostalgiaemulators/framework/Emulator;

.field private leftMapped:I

.field private mapping:Ljava/util/Map;
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

.field private minDistX:I

.field private minDistY:I

.field private paint:Landroid/graphics/Paint;

.field private port:I

.field private rightMapped:I

.field private touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

.field private upMapped:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;Lcom/nostalgiaemulators/framework/controllers/TouchController;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;
    .param p3, "touchController"    # Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .prologue
    const/4 v8, -0x1

    const v7, 0x40228f5c    # 2.54f

    const/high16 v6, -0x40800000    # -1.0f

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F

    .line 102
    iput v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterY:F

    .line 118
    iput v8, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistX:I

    .line 119
    iput v8, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistY:I

    .line 121
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->context:Landroid/content/Context;

    .line 46
    iput-object p3, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 47
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 49
    iget v2, v0, Landroid/util/DisplayMetrics;->xdpi:F

    .line 50
    .local v2, "xdpi":F
    iget v4, v0, Landroid/util/DisplayMetrics;->ydpi:F

    .line 51
    .local v4, "ydpi":F
    div-float v3, v2, v7

    .line 52
    .local v3, "xpcm":F
    div-float v5, v4, v7

    .line 53
    .local v5, "ypcm":F
    const v1, 0x3e4ccccd    # 0.2f

    .line 54
    .local v1, "minDistCm":F
    mul-float v6, v1, v3

    float-to-int v6, v6

    iput v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistX:I

    .line 55
    mul-float v6, v1, v5

    float-to-int v6, v6

    iput v6, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistY:I

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F

    return v0
.end method

.method static synthetic access$10(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterX:F

    return-void
.end method

.method static synthetic access$11(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V
    .locals 0

    .prologue
    .line 102
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterY:F

    return-void
.end method

.method static synthetic access$12(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V
    .locals 0

    .prologue
    .line 113
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->currentX:F

    return-void
.end method

.method static synthetic access$13(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;F)V
    .locals 0

    .prologue
    .line 114
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->currentY:F

    return-void
.end method

.method static synthetic access$14(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/controllers/TouchController;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    return-object v0
.end method

.method static synthetic access$15(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistX:I

    return v0
.end method

.method static synthetic access$16(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->minDistY:I

    return v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->currentX:F

    return v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)F
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->dpadCenterY:F

    return v0
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)Lcom/nostalgiaemulators/framework/Emulator;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I

    return v0
.end method

.method static synthetic access$6(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->rightMapped:I

    return v0
.end method

.method static synthetic access$7(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->leftMapped:I

    return v0
.end method

.method static synthetic access$8(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->upMapped:I

    return v0
.end method

.method static synthetic access$9(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;)I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->downMapped:I

    return v0
.end method


# virtual methods
.method public connectToEmulator(ILcom/nostalgiaemulators/framework/Emulator;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "emulator"    # Lcom/nostalgiaemulators/framework/Emulator;

    .prologue
    .line 81
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->emulator:Lcom/nostalgiaemulators/framework/Emulator;

    .line 82
    iput p1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->port:I

    .line 83
    invoke-interface {p2}, Lcom/nostalgiaemulators/framework/Emulator;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->mapping:Ljava/util/Map;

    .line 84
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->mapping:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->leftMapped:I

    .line 85
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->mapping:Ljava/util/Map;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->rightMapped:I

    .line 86
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->mapping:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->downMapped:I

    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->mapping:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->upMapped:I

    .line 88
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad$DPadView;-><init>(Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->view:Landroid/view/View;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->view:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 338
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->context:Landroid/content/Context;

    .line 339
    iput-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->touchController:Lcom/nostalgiaemulators/framework/controllers/TouchController;

    .line 340
    return-void
.end method

.method public onGamePaused(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 77
    return-void
.end method

.method public onGameStarted(Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;)V
    .locals 0
    .param p1, "game"    # Lcom/nostalgiaemulators/framework/ui/gamegallery/GameDescription;

    .prologue
    .line 73
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->paint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/controllers/DynamicDPad;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getControlsOpacity(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 61
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 69
    return-void
.end method
