.class public Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;
.super Landroid/widget/RelativeLayout;
.source "MultitouchLayer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;,
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;,
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;,
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$PreferenceMigrator;,
        Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_MIN_SIZE_DP:I = 0x14

.field private static final COUNT_SKIP_MOVE_EVENT:I = 0x3

.field private static final EMPTY_COLOR:I = 0x0

.field private static final MAX_POINTERS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

.field private static final VIDEOMODE_COLORS:[I


# instance fields
.field bitmapRectPaint:Landroid/graphics/Paint;

.field private boundingBoxs:[Landroid/graphics/Rect;

.field private btnIdMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private btns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private buttonMinSizePx:F

.field private buttonsBitmaps:[Landroid/graphics/Bitmap;

.field cacheH:I

.field cacheRotation:I

.field cacheW:I

.field counter:I

.field currentRotation:I

.field private dpadRIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private editElementPaint:Landroid/graphics/Paint;

.field private editElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;",
            ">;"
        }
    .end annotation
.end field

.field editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

.field editPaint:Landroid/graphics/Paint;

.field firstRun:Z

.field private inited:Z

.field isResizing:Z

.field private lastGameScreenshot:Landroid/graphics/Bitmap;

.field private lastGfxProfileName:Ljava/lang/String;

.field lastH:I

.field lastTimestamp:J

.field lastTouchX:I

.field lastTouchY:I

.field lastValidBB:Landroid/graphics/RectF;

.field lastW:I

.field private loadingSettings:Z

.field private maps:[[B

.field menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

.field private optimCounters:[I

.field paint:Landroid/graphics/Paint;

.field private pointerMap:Landroid/util/SparseIntArray;

.field private pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

.field redPaint:Landroid/graphics/Paint;

.field private resizeIcon:Landroid/graphics/Bitmap;

.field private ridToIdxMap:Landroid/util/SparseIntArray;

.field screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

.field selectH:F

.field selectIdx:I

.field selectW:F

.field startDistance:F

.field startDragX:F

.field startDragXoffset:F

.field startDragY:F

.field startDragYoffset:F

.field startTouchX:I

.field startTouchY:I

.field private staticDPADEnabled:Z

.field timer:Ljava/util/Timer;

.field touchLayer:Landroid/widget/LinearLayout;

.field private touchMapHeight:I

.field private touchMapWidth:I

.field updateHandler:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;

.field private vibrationDuration:I

.field vibrator:Landroid/os/Vibrator;

.field videoModeLabelPaint:Landroid/graphics/Paint;

.field viewPortsEnvelops:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->VIDEOMODE_COLORS:[I

    .line 699
    return-void

    .line 94
    nop

    :array_0
    .array-data 4
        -0x7800
        -0x663400
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    .line 90
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    .line 254
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    .line 257
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    .line 286
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastW:I

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastH:I

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    .line 291
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    .line 565
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    .line 567
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 568
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 701
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    .line 782
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    .line 832
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    .line 875
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    .line 876
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->redPaint:Landroid/graphics/Paint;

    .line 1014
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    .line 1017
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    .line 1018
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    .line 1020
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    .line 1023
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragYoffset:F

    .line 1024
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchX:I

    .line 1025
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchY:I

    .line 1026
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDistance:F

    .line 1139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    .line 1140
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchX:I

    .line 1141
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchY:I

    .line 1318
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    .line 1332
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .line 1333
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    .line 1356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    .line 1443
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    .line 1463
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    .line 1487
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadingSettings:Z

    .line 1512
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    .line 1513
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    .line 1514
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1515
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    .line 1761
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->staticDPADEnabled:Z

    .line 283
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->init()V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 277
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    .line 90
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    .line 254
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    .line 257
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    .line 286
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastW:I

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastH:I

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    .line 291
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    .line 565
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    .line 567
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 568
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 701
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    .line 782
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    .line 832
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    .line 875
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    .line 876
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->redPaint:Landroid/graphics/Paint;

    .line 1014
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    .line 1017
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    .line 1018
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    .line 1020
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    .line 1023
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragYoffset:F

    .line 1024
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchX:I

    .line 1025
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchY:I

    .line 1026
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDistance:F

    .line 1139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    .line 1140
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchX:I

    .line 1141
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchY:I

    .line 1318
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    .line 1332
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .line 1333
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    .line 1356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    .line 1443
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    .line 1463
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    .line 1487
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadingSettings:Z

    .line 1512
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    .line 1513
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    .line 1514
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1515
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    .line 1761
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->staticDPADEnabled:Z

    .line 278
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->init()V

    .line 279
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 272
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    .line 83
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    .line 86
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    .line 90
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    .line 254
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    .line 257
    new-array v0, v1, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    .line 286
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastW:I

    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastH:I

    .line 290
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    .line 291
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    .line 565
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    .line 567
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 568
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 701
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    .line 782
    const/16 v0, 0x64

    iput v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    .line 832
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    .line 875
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    .line 876
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->redPaint:Landroid/graphics/Paint;

    .line 1014
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    .line 1017
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    .line 1018
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    .line 1020
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    .line 1023
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragYoffset:F

    .line 1024
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchX:I

    .line 1025
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchY:I

    .line 1026
    iput v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDistance:F

    .line 1139
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    .line 1140
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchX:I

    .line 1141
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchY:I

    .line 1318
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    .line 1332
    sget-object v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .line 1333
    iput v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->counter:I

    .line 1356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    .line 1443
    iput-boolean v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    .line 1463
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    .line 1487
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadingSettings:Z

    .line 1512
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    .line 1513
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    .line 1514
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1515
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    .line 1761
    iput-boolean v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->staticDPADEnabled:Z

    .line 273
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->init()V

    .line 274
    return-void
.end method

.method static synthetic access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)[Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Z
    .locals 1

    .prologue
    .line 403
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initMultiTouchMap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Z)V
    .locals 0

    .prologue
    .line 832
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    return-void
.end method

.method static synthetic access$5(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private checkFastForwardButton()V
    .locals 18

    .prologue
    .line 1765
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    if-eqz v10, :cond_0

    .line 1766
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    sget v11, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    invoke-virtual {v10, v11}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    .line 1767
    .local v7, "idx":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v10, v7

    .line 1768
    .local v4, "ff_bb":Landroid/graphics/Rect;
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "fast forward btn "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " rect "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    array-length v13, v12

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-lt v11, v13, :cond_1

    .line 1824
    .end local v4    # "ff_bb":Landroid/graphics/Rect;
    .end local v7    # "idx":I
    :cond_0
    return-void

    .line 1770
    .restart local v4    # "ff_bb":Landroid/graphics/Rect;
    .restart local v7    # "idx":I
    :cond_1
    aget-object v1, v12, v11

    .line 1771
    .local v1, "bb2":Landroid/graphics/Rect;
    if-eq v4, v1, :cond_3

    invoke-static {v4, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1772
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "colision with "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredWidth()I

    move-result v8

    .line 1774
    .local v8, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredHeight()I

    move-result v5

    .line 1775
    .local v5, "h":I
    const/4 v9, 0x0

    .line 1777
    .local v9, "wrongPosition":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    const/16 v10, 0x12c

    if-lt v6, v10, :cond_4

    .line 1804
    :cond_2
    if-eqz v9, :cond_8

    .line 1805
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v14, "Nepodarilo se najit vhodnou pozici"

    invoke-static {v10, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resetEditElement()V

    .line 1770
    .end local v5    # "h":I
    .end local v6    # "i":I
    .end local v8    # "w":I
    .end local v9    # "wrongPosition":Z
    :cond_3
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    goto :goto_0

    .line 1778
    .restart local v5    # "h":I
    .restart local v6    # "i":I
    .restart local v8    # "w":I
    .restart local v9    # "wrongPosition":Z
    :cond_4
    const/4 v9, 0x0

    .line 1779
    const/16 v10, 0xa

    const/4 v14, 0x0

    invoke-virtual {v4, v10, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1781
    iget v10, v4, Landroid/graphics/Rect;->right:I

    if-lt v10, v8, :cond_5

    .line 1782
    const/4 v10, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    add-int/lit8 v14, v14, 0xa

    invoke-virtual {v4, v10, v14}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1784
    iget v10, v4, Landroid/graphics/Rect;->bottom:I

    if-ge v10, v5, :cond_2

    .line 1789
    :cond_5
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, " new rect "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    array-length v15, v14

    const/4 v10, 0x0

    :goto_2
    if-lt v10, v15, :cond_6

    .line 1799
    :goto_3
    if-eqz v9, :cond_2

    .line 1777
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1791
    :cond_6
    aget-object v2, v14, v10

    .line 1792
    .local v2, "bb3":Landroid/graphics/Rect;
    if-eq v4, v2, :cond_7

    invoke-static {v4, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1793
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "colision with "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v10, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    const/4 v9, 0x1

    .line 1795
    goto :goto_3

    .line 1791
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1809
    .end local v2    # "bb3":Landroid/graphics/Rect;
    :cond_8
    const-string v10, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    .line 1810
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "Podarilo se najit vhodnou pozici "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1812
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1813
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1814
    sget v17, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 1813
    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 1810
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1809
    invoke-static {v10, v14}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1817
    .local v3, "elem":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeBoundingBox()V

    .line 1818
    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    goto :goto_4
.end method

.method private endMovementCheck()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1208
    iget v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    if-eq v1, v3, :cond_2

    .line 1209
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    .line 1210
    iget v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object v0, v1

    .line 1212
    .local v0, "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :goto_0
    iget-boolean v1, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    if-nez v1, :cond_0

    .line 1213
    iget-object v1, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1216
    :cond_0
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v1, v2, :cond_1

    .line 1217
    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->recomputeBtn(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)V

    .line 1219
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    .line 1220
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    .line 1223
    .end local v0    # "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :cond_2
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1224
    return-void

    .line 1210
    :cond_3
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    goto :goto_0
.end method

.method private fixBug(IIII)V
    .locals 4
    .param p1, "oldVersionRotation"    # I
    .param p2, "realRotation"    # I
    .param p3, "screenWidth"    # I
    .param p4, "screenHeight"    # I

    .prologue
    .line 1539
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p3, p4}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->getViewPort(Landroid/content/Context;II)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v1

    .line 1542
    .local v1, "viewPort":Lcom/nostalgiaemulators/framework/base/ViewPort;
    if-nez v1, :cond_1

    .line 1543
    const-string v2, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v3, "fix bug: vp not found"

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    :cond_0
    :goto_0
    return-void

    .line 1547
    :cond_1
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->version:I

    if-nez v2, :cond_0

    .line 1548
    const/4 v2, 0x1

    iput v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->version:I

    .line 1550
    if-eq p1, p2, :cond_4

    .line 1551
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1552
    sget v3, Lcom/nostalgiaemulators/framework/R$dimen;->top_panel_touchcontroler_height:I

    .line 1551
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1554
    .local v0, "top":I
    if-nez p2, :cond_3

    .line 1555
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    if-nez v2, :cond_2

    .line 1556
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 1570
    .end local v0    # "top":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, p3, p4}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/ViewPort;II)V

    goto :goto_0

    .line 1560
    .restart local v0    # "top":I
    :cond_3
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    if-lt v2, v0, :cond_2

    .line 1561
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 1562
    iget v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    goto :goto_1

    .line 1567
    .end local v0    # "top":I
    :cond_4
    const-string v2, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v3, "no vp bug"

    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAllImageButtons(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, "allButtons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 675
    return-void

    .line 666
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 668
    .local v1, "v":Landroid/view/View;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 669
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "v":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getAllImageButtons(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 665
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    .restart local v1    # "v":Landroid/view/View;
    :cond_2
    instance-of v2, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    if-eqz v2, :cond_1

    .line 672
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static getBoundingBox(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 7
    .param p0, "btn"    # Landroid/view/View;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 396
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 397
    .local v1, "btnW":I
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 398
    .local v0, "btnH":I
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getRelativeLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    .line 399
    .local v2, "btnX":I
    invoke-static {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getRelativeTop(Landroid/view/View;Landroid/view/View;)I

    move-result v3

    .line 400
    .local v3, "btnY":I
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v2, v1

    add-int v6, v3, v0

    invoke-direct {v4, v2, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4
.end method

.method private getPref()Landroid/content/SharedPreferences;
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1518
    iget v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    .line 1519
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 1520
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 1519
    check-cast v1, Landroid/view/WindowManager;

    .line 1521
    .local v1, "mWindowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1522
    .local v0, "mDisplay":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1523
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1524
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getDisplayWidth(Landroid/view/Display;)I

    move-result v5

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1525
    invoke-static {v0}, Lcom/nostalgiaemulators/framework/utils/Utils;->getDisplayHeight(Landroid/view/Display;)I

    move-result v5

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    .line 1526
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    .line 1527
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v3, :cond_0

    move v3, v4

    :cond_0
    iput v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    .line 1529
    const-string v3, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cacheW x cacheH: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " x "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1530
    iget v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    iget v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->fixBug(IIII)V

    .line 1533
    .end local v0    # "mDisplay":Landroid/view/Display;
    .end local v1    # "mWindowManager":Landroid/view/WindowManager;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheRotation:I

    invoke-static {v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPrefName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    return-object v3
.end method

.method static getPrefName(I)Ljava/lang/String;
    .locals 3
    .param p0, "rot"    # I

    .prologue
    .line 1506
    const-string v1, "-mtl-"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1507
    const-string v2, ".settings"

    .line 1506
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "prefName":Ljava/lang/String;
    return-object v0
.end method

.method private static getRelativeLeft(Landroid/view/View;Landroid/view/View;)I
    .locals 3
    .param p0, "myView"    # Landroid/view/View;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 678
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 680
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 681
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 684
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v1

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getRelativeLeft(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private static getRelativeTop(Landroid/view/View;Landroid/view/View;)I
    .locals 3
    .param p0, "myView"    # Landroid/view/View;
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 688
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 690
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_1

    .line 691
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 694
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_0
    return v1

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getRelativeTop(Landroid/view/View;Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method private handleTouchEvent(IIILandroid/view/MotionEvent;)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "pointerId"    # I
    .param p4, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 704
    const/4 v13, 0x6

    move/from16 v0, p3

    if-ge v0, v13, :cond_2

    .line 705
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    .line 706
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    aget v13, v13, p3

    const/4 v14, 0x3

    if-ge v13, v14, :cond_1

    .line 707
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    aget v14, v13, p3

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, p3

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->optimCounters:[I

    const/4 v14, 0x0

    aput v14, v13, p3

    .line 714
    :cond_2
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v0, p1

    if-ge v0, v13, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v0, p2

    if-ge v0, v13, :cond_0

    .line 718
    const/4 v9, 0x0

    .line 720
    .local v9, "newBtnIdx":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->maps:[[B

    array-length v13, v13

    add-int/lit8 v6, v13, -0x1

    .local v6, "i":I
    :goto_1
    if-gez v6, :cond_5

    .line 756
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    .line 758
    .local v12, "oldBtnIdx":I
    if-eqz v9, :cond_9

    .line 759
    if-eq v12, v9, :cond_4

    .line 760
    if-eqz v12, :cond_3

    .line 761
    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchExit(ILandroid/view/MotionEvent;)V

    .line 764
    :cond_3
    add-int/lit8 v13, v9, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchEnter(ILandroid/view/MotionEvent;)V

    .line 766
    move-object/from16 v0, p0

    iget v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    if-lez v13, :cond_4

    .line 767
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrator:Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 775
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    move/from16 v0, p3

    invoke-virtual {v13, v0, v9}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    .line 721
    .end local v12    # "oldBtnIdx":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v2, v13, v6

    .line 723
    .local v2, "boundingBox":Landroid/graphics/Rect;
    if-eqz v2, :cond_8

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 724
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 725
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->maps:[[B

    aget-object v8, v13, v6

    .line 726
    .local v8, "map":[B
    iget v13, v2, Landroid/graphics/Rect;->left:I

    sub-int v10, p1, v13

    .line 727
    .local v10, "newx":I
    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int v11, p2, v13

    .line 729
    .local v11, "newy":I
    if-nez v8, :cond_7

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/nostalgiaemulators/framework/utils/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result v4

    .line 732
    .local v4, "debug":Z
    if-nez v4, :cond_6

    .line 733
    new-instance v5, Ljava/lang/IllegalStateException;

    .line 734
    const-string v13, "button touch map neni nainicializovany"

    .line 733
    invoke-direct {v5, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 735
    .local v5, "e":Ljava/lang/IllegalStateException;
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v13

    invoke-virtual {v13, v5}, Lorg/acra/ErrorReporter;->handleSilentException(Ljava/lang/Throwable;)V

    .line 738
    .end local v5    # "e":Ljava/lang/IllegalStateException;
    :cond_6
    move v9, v6

    .line 739
    goto/16 :goto_2

    .line 742
    .end local v4    # "debug":Z
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    mul-int/2addr v13, v11

    add-int v7, v10, v13

    .line 744
    .local v7, "idx":I
    array-length v13, v8

    if-ge v7, v13, :cond_8

    .line 745
    aget-byte v3, v8, v7

    .line 747
    .local v3, "btnIdx":I
    if-eqz v3, :cond_8

    .line 748
    move v9, v3

    .line 749
    goto/16 :goto_2

    .line 720
    .end local v3    # "btnIdx":I
    .end local v7    # "idx":I
    .end local v8    # "map":[B
    .end local v10    # "newx":I
    .end local v11    # "newy":I
    :cond_8
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_1

    .line 771
    .end local v2    # "boundingBox":Landroid/graphics/Rect;
    .restart local v12    # "oldBtnIdx":I
    :cond_9
    if-eqz v12, :cond_4

    .line 772
    add-int/lit8 v13, v12, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v13, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchExit(ILandroid/view/MotionEvent;)V

    goto :goto_3
.end method

.method private init()V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 303
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;

    invoke-direct {v4, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)V

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->updateHandler:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$UpdateHandler;

    .line 304
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_center:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_a_turbo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_b_turbo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_ab:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v4

    .line 320
    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, -0x1

    .line 319
    if-eq v4, v5, :cond_0

    .line 321
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_0
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_up_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down_left:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_down_right:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_center:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 337
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 338
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initScreenElement(Z)V

    .line 341
    :cond_1
    const/high16 v4, 0x1000000

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setBackgroundColor(I)V

    .line 342
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 343
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 344
    sget v6, Lcom/nostalgiaemulators/framework/R$color;->main_color:I

    .line 343
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    new-instance v1, Landroid/graphics/DashPathEffect;

    .line 347
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    const/4 v5, 0x0

    .line 346
    invoke-direct {v1, v4, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 348
    .local v1, "dashPathEffect":Landroid/graphics/DashPathEffect;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 349
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 350
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 351
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 352
    sget v5, Lcom/nostalgiaemulators/framework/R$drawable;->resize_icon:I

    .line 351
    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;

    .line 354
    const/high16 v4, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 355
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 353
    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    .line 357
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isInEditMode()Z

    move-result v4

    if-nez v4, :cond_2

    .line 358
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 359
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    .line 360
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 361
    .local v0, "context":Landroid/content/Context;
    new-instance v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;

    invoke-direct {v4, p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$1;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 377
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 378
    const-string v5, "vibrator"

    .line 377
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrator:Landroid/os/Vibrator;

    .line 382
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_2
    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 383
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 381
    invoke-static {v7, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 384
    .local v2, "videoModeLabelSize":F
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 385
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/nostalgiaemulators/framework/utils/FontUtil;->createFontFace(Landroid/content/Context;Z)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 388
    return-void

    .line 347
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40800000    # 4.0f
    .end array-data
.end method

.method private initMultiTouchMap()Z
    .locals 29

    .prologue
    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_0
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_6

    .line 421
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    const/16 v24, 0x64

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/util/SparseIntArray;->clear()V

    .line 425
    const-string v24, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " create touch map width "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredWidth()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " height:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 426
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredHeight()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 425
    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredWidth()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredHeight()I

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    .line 429
    new-instance v23, Landroid/graphics/Rect;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Rect;-><init>()V

    .line 431
    .local v23, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    if-nez v24, :cond_1

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getAllImageButtons(Landroid/view/ViewGroup;Ljava/util/ArrayList;)V

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 436
    .local v12, "btnsCount":I
    const-string v24, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, " found "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " multitouch btns"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    new-array v0, v12, [[B

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->maps:[[B

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_1
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_b

    .line 447
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 455
    :cond_3
    new-array v0, v12, [Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    .line 456
    new-array v0, v12, [Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    .line 457
    new-array v0, v12, [Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    .line 458
    const/16 v18, 0x0

    .line 460
    .local v18, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_3
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-nez v25, :cond_f

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    if-eqz v24, :cond_4

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 507
    .local v20, "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 510
    .end local v20    # "parent":Landroid/view/ViewGroup;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 511
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->removeAllViews()V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchLayer:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    const/16 v25, -0x1

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getMeasuredHeight()I

    move-result v26

    .line 512
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->addView(Landroid/view/View;II)V

    .line 514
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getKeyMapping()Ljava/util/Map;

    move-result-object v24

    .line 515
    const/16 v25, 0x5

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    const/16 v25, -0x1

    .line 514
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    const/16 v16, 0x1

    .line 517
    .local v16, "hasSelect":Z
    :goto_4
    if-eqz v16, :cond_5

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_select:I

    const/16 v27, 0x1

    .line 519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 518
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_start:I

    const/16 v27, 0x1

    .line 523
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 522
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v15, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_center:I

    const/16 v25, 0x1

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v26, v0

    const/high16 v27, 0x40a00000    # 5.0f

    mul-float v26, v26, v27

    .line 524
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v15, v0, v1, v2, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    .line 526
    .local v15, "dpad":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_down:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 527
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_up:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 528
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_left:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 529
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_right:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 530
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_up_left:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 531
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_up_right:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 532
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_down_left:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 533
    sget v24, Lcom/nostalgiaemulators/framework/R$id;->button_down_right:I

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->add(I)V

    .line 534
    invoke-virtual {v15}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_a:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    .line 537
    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 536
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_b:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    .line 539
    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 538
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_a_turbo:I

    const/16 v27, 0x1

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 540
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_b_turbo:I

    const/16 v27, 0x1

    .line 543
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 542
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_ab:I

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    .line 545
    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 544
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v26, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    const/16 v27, 0x1

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    invoke-virtual/range {v25 .. v25}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v25

    .line 546
    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    new-instance v24, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    sget v25, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    const/16 v26, 0x0

    .line 549
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonMinSizePx:F

    move/from16 v27, v0

    .line 548
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;IZF)V

    .line 549
    invoke-virtual/range {v24 .. v24}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->saveHistory()Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-result-object v19

    .line 550
    .local v19, "menu":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    new-instance v24, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$2;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->setOnClickListener(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->reloadTouchProfile()V

    .line 561
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->staticDPADEnabled:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->setEnableStaticDPAD(Z)V

    .line 562
    const/16 v24, 0x1

    .end local v12    # "btnsCount":I
    .end local v15    # "dpad":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .end local v16    # "hasSelect":Z
    .end local v17    # "i":I
    .end local v18    # "idx":I
    .end local v19    # "menu":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .end local v23    # "r":Landroid/graphics/Rect;
    :goto_5
    return v24

    .line 404
    :cond_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 405
    .local v7, "btn":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 406
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    if-lez v25, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v25

    if-lez v25, :cond_7

    .line 407
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v25

    if-lez v25, :cond_7

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v25

    if-gtz v25, :cond_8

    .line 408
    :cond_7
    const-string v24, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "fail: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/16 v24, 0x0

    goto :goto_5

    .line 412
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getBoundingBox(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 414
    .local v5, "bb":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v25

    if-lez v25, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v25

    if-gtz v25, :cond_0

    .line 415
    :cond_9
    const-string v24, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "fail: "

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const/16 v24, 0x0

    goto :goto_5

    .line 422
    .end local v5    # "bb":Landroid/graphics/Rect;
    .end local v7    # "btn":Landroid/view/View;
    .restart local v17    # "i":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v17

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 440
    .restart local v12    # "btnsCount":I
    .restart local v23    # "r":Landroid/graphics/Rect;
    :cond_b
    aget-object v6, v25, v24

    .line 441
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_c

    .line 442
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 440
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_1

    .line 448
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :cond_d
    aget-object v6, v25, v24

    .line 449
    .restart local v6    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_e

    .line 450
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 448
    :cond_e
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_2

    .line 460
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v18    # "idx":I
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 461
    .restart local v7    # "btn":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    move-object/from16 v25, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v26

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 463
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 464
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    invoke-static {v7, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getBoundingBox(Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v26

    aput-object v26, v25, v18

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v18

    move-object/from16 v0, v25

    iget v10, v0, Landroid/graphics/Rect;->left:I

    .line 467
    .local v10, "btnX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v18

    move-object/from16 v0, v25

    iget v11, v0, Landroid/graphics/Rect;->top:I

    .line 468
    .local v11, "btnY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 469
    .local v9, "btnW":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v25, v0

    aget-object v25, v25, v18

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 470
    .local v8, "btnH":I
    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 472
    if-lez v9, :cond_11

    if-lez v8, :cond_11

    .line 474
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 473
    move-object/from16 v0, v25

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 476
    .local v13, "buttonBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v25

    if-eqz v25, :cond_10

    .line 477
    const-string v24, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v25, "co se to kurva deje"

    invoke-static/range {v24 .. v25}, Lcom/nostalgiaemulators/framework/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    new-instance v24, Ljava/lang/RuntimeException;

    const-string v25, "netusim"

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 481
    :cond_10
    new-instance v14, Landroid/graphics/Canvas;

    invoke-direct {v14, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 482
    .local v14, "buttonCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v7, v14}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 484
    instance-of v0, v7, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    move/from16 v25, v0

    if-nez v25, :cond_12

    .line 486
    sget-object v25, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 485
    move-object/from16 v0, v25

    invoke-static {v9, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 487
    .local v21, "pressedButtonBitmap":Landroid/graphics/Bitmap;
    new-instance v22, Landroid/graphics/Canvas;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 489
    .local v22, "pressedButtonCanvas":Landroid/graphics/Canvas;
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 490
    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 491
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    aput-object v21, v25, v18

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    aput-object v13, v25, v18

    .line 502
    .end local v8    # "btnH":I
    .end local v9    # "btnW":I
    .end local v10    # "btnX":I
    .end local v11    # "btnY":I
    .end local v13    # "buttonBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "buttonCanvas":Landroid/graphics/Canvas;
    .end local v21    # "pressedButtonBitmap":Landroid/graphics/Bitmap;
    .end local v22    # "pressedButtonCanvas":Landroid/graphics/Canvas;
    :cond_11
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 496
    .restart local v8    # "btnH":I
    .restart local v9    # "btnW":I
    .restart local v10    # "btnX":I
    .restart local v11    # "btnY":I
    .restart local v13    # "buttonBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "buttonCanvas":Landroid/graphics/Canvas;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    aput-object v13, v25, v18

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v26, v25, v18

    goto :goto_6

    .line 514
    .end local v7    # "btn":Landroid/view/View;
    .end local v8    # "btnH":I
    .end local v9    # "btnW":I
    .end local v10    # "btnX":I
    .end local v11    # "btnY":I
    .end local v13    # "buttonBitmap":Landroid/graphics/Bitmap;
    .end local v14    # "buttonCanvas":Landroid/graphics/Canvas;
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_4
.end method

.method private initScreenElement(Z)V
    .locals 24
    .param p1, "reset"    # Z

    .prologue
    .line 1359
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPref()Landroid/content/SharedPreferences;

    .line 1360
    const/4 v7, 0x0

    .line 1362
    .local v7, "topPadding":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    if-nez v2, :cond_0

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1364
    sget v3, Lcom/nostalgiaemulators/framework/R$dimen;->top_panel_touchcontroler_height:I

    .line 1363
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1367
    :cond_0
    const/16 v22, 0x0

    .line 1368
    .local v22, "vport":Lcom/nostalgiaemulators/framework/base/ViewPort;
    const/16 v21, 0x0

    .line 1370
    .local v21, "viewPorts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/ViewPort;>;"
    if-eqz p1, :cond_3

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    .line 1372
    const/4 v5, 0x0

    .line 1371
    invoke-static {v2, v3, v4, v5, v7}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeInitViewPort(Landroid/content/Context;IIII)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v22

    .line 1373
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1374
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    const/4 v5, 0x0

    .line 1373
    invoke-static {v2, v3, v4, v5, v7}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->computeAllInitViewPorts(Landroid/content/Context;IIII)Ljava/util/HashMap;

    move-result-object v21

    .line 1383
    :goto_0
    new-instance v20, Landroid/graphics/Rect;

    move-object/from16 v0, v22

    iget v2, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    move-object/from16 v0, v22

    iget v3, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    move-object/from16 v0, v22

    iget v4, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    move-object/from16 v0, v22

    iget v5, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 1384
    move-object/from16 v0, v22

    iget v5, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    .line 1383
    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1386
    .local v20, "viewPort":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-eq v2, v3, :cond_2

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v2, v3, :cond_9

    .line 1388
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1412
    :cond_1
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    .line 1414
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_a

    .line 1431
    :cond_2
    const/4 v2, 0x1

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1432
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1430
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 1433
    .local v19, "topOffset":I
    move-object/from16 v0, v20

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    if-nez v2, :cond_b

    move/from16 v2, v19

    :goto_4
    sub-int v2, v3, v2

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1434
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    if-nez v3, :cond_c

    .end local v19    # "topOffset":I
    :goto_5
    sub-int v2, v2, v19

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 1435
    const-string v2, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    .line 1436
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "init screenlayout "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1437
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v4

    invoke-interface {v4}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1438
    const-string v4, " vp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1439
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1436
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1435
    invoke-static {v2, v3}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    new-instance v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v2, v0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1441
    return-void

    .line 1377
    .end local v20    # "viewPort":Landroid/graphics/Rect;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    .line 1378
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 1377
    invoke-static/range {v2 .. v8}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadOrComputeViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/Emulator;IIIIZ)Lcom/nostalgiaemulators/framework/base/ViewPort;

    move-result-object v22

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1380
    move-object/from16 v0, p0

    iget v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    const/4 v5, 0x0

    .line 1379
    invoke-static {v2, v3, v4, v5, v7}, Lcom/nostalgiaemulators/framework/base/ViewUtils;->loadOrComputeAllViewPorts(Landroid/content/Context;IIII)Ljava/util/HashMap;

    move-result-object v21

    goto/16 :goto_0

    .line 1388
    .restart local v20    # "viewPort":Landroid/graphics/Rect;
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 1389
    .local v13, "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_5

    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    :goto_6
    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1391
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    move-object/from16 v0, v20

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_6

    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    :goto_7
    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1393
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    add-int/2addr v2, v4

    add-int/lit8 v18, v2, -0x1

    .line 1394
    .local v18, "right":I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    move/from16 v0, v18

    if-le v0, v2, :cond_7

    .end local v18    # "right":I
    :goto_8
    move/from16 v0, v18

    move-object/from16 v1, v20

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 1396
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    add-int/2addr v2, v4

    add-int/lit8 v9, v2, -0x1

    .line 1397
    .local v9, "bottom":I
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v9, v2, :cond_8

    .end local v9    # "bottom":I
    :goto_9
    move-object/from16 v0, v20

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 1390
    :cond_5
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    goto :goto_6

    .line 1392
    :cond_6
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_7

    .line 1395
    .restart local v18    # "right":I
    :cond_7
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    goto :goto_8

    .line 1398
    .end local v18    # "right":I
    .restart local v9    # "bottom":I
    :cond_8
    move-object/from16 v0, v20

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_9

    .line 1401
    .end local v9    # "bottom":I
    .end local v13    # "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 1404
    .restart local v13    # "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    if-eqz v13, :cond_1

    .line 1405
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 1406
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 1407
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iget v3, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 1408
    iget v2, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    iget v3, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, v20

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 1414
    .end local v13    # "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 1415
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/ViewPort;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/nostalgiaemulators/framework/base/ViewPort;

    .line 1416
    .restart local v13    # "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v0, v2

    move/from16 v23, v0

    .line 1417
    .local v23, "w":F
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v12, v2

    .line 1418
    .local v12, "h":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float v15, v2, v23

    .line 1419
    .local v15, "relativeLeft":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v2

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float v17, v2, v12

    .line 1420
    .local v17, "relativeTop":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    iget v5, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float v16, v2, v23

    .line 1422
    .local v16, "relativeRight":F
    move-object/from16 v0, v20

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    iget v5, v13, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    add-int/2addr v4, v5

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float v14, v2, v12

    .line 1424
    .local v14, "relativeBottom":F
    new-instance v11, Landroid/graphics/RectF;

    move/from16 v0, v17

    move/from16 v1, v16

    invoke-direct {v11, v15, v0, v1, v14}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1426
    .local v11, "envelop":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1433
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/nostalgiaemulators/framework/base/ViewPort;>;"
    .end local v11    # "envelop":Landroid/graphics/RectF;
    .end local v12    # "h":F
    .end local v13    # "port":Lcom/nostalgiaemulators/framework/base/ViewPort;
    .end local v14    # "relativeBottom":F
    .end local v15    # "relativeLeft":F
    .end local v16    # "relativeRight":F
    .end local v17    # "relativeTop":F
    .end local v23    # "w":F
    .restart local v19    # "topOffset":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 1434
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_5
.end method

.method private isRectValid(Landroid/graphics/RectF;Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Z
    .locals 6
    .param p1, "r"    # Landroid/graphics/RectF;
    .param p2, "element"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .prologue
    const/4 v5, 0x0

    .line 1227
    const/4 v2, 0x1

    .line 1228
    .local v2, "isvalid":Z
    new-instance v1, Landroid/graphics/RectF;

    iget v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1230
    .local v1, "globalBox":Landroid/graphics/RectF;
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1231
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v4, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v3, v4, :cond_1

    .line 1232
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1244
    :cond_1
    :goto_0
    iget-object v3, p2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget v4, p2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->minimalSize:F

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    .line 1245
    iget-object v3, p2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, p2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->minimalSize:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 1246
    :cond_2
    const/4 v2, 0x0

    .line 1249
    :cond_3
    return v2

    .line 1232
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1233
    .local v0, "el":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    if-eq v0, p2, :cond_0

    iget-object v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-static {p1, v4}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1234
    const/4 v2, 0x0

    .line 1235
    goto :goto_0

    .line 1241
    .end local v0    # "el":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isTouchMapsValid()Z
    .locals 8

    .prologue
    .line 645
    const/4 v2, 0x0

    .line 647
    .local v2, "idx":I
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 661
    const/4 v5, 0x1

    :goto_1
    return v5

    .line 647
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 648
    .local v1, "btn":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_2

    .line 649
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v0, v6, v2

    .line 650
    .local v0, "bb":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int v3, v6, v7

    .line 651
    .local v3, "len":I
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->maps:[[B

    aget-object v4, v6, v2

    .line 653
    .local v4, "map":[B
    if-eqz v4, :cond_1

    array-length v6, v4

    if-eq v6, v3, :cond_2

    .line 654
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 658
    .end local v0    # "bb":Landroid/graphics/Rect;
    .end local v3    # "len":I
    .end local v4    # "map":[B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private loadEditElements()Z
    .locals 38

    .prologue
    .line 1628
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v34, v0

    if-gtz v34, :cond_1

    .line 1629
    :cond_0
    const/4 v15, 0x0

    .line 1756
    :goto_0
    return v15

    .line 1632
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadingSettings:Z

    move/from16 v34, v0

    if-nez v34, :cond_2

    .line 1633
    const/4 v15, 0x0

    goto :goto_0

    .line 1636
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPref()Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1637
    .local v20, "pref":Landroid/content/SharedPreferences;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v21

    .line 1639
    .local v21, "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :cond_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-nez v35, :cond_6

    .line 1664
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPref()Landroid/content/SharedPreferences;

    move-result-object v20

    .line 1665
    const-string v34, "referenceWidth"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v23

    .line 1666
    .local v23, "referenceWidth":I
    const-string v34, "referenceHeight"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v35, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v22

    .line 1668
    .local v22, "referenceHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v34, v0

    move/from16 v0, v23

    move/from16 v1, v34

    if-ne v0, v1, :cond_4

    .line 1669
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v34, v0

    move/from16 v0, v22

    move/from16 v1, v34

    if-eq v0, v1, :cond_5

    .line 1670
    :cond_4
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v27, v34, v35

    .line 1671
    .local v27, "savedAspect":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v34, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v8, v34, v35

    .line 1673
    .local v8, "currentAspect":F
    sub-float v34, v27, v8

    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v34

    const v35, 0x3a83126f    # 0.001f

    cmpl-float v34, v34, v35

    if-lez v34, :cond_5

    .line 1674
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1675
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1679
    .end local v8    # "currentAspect":F
    .end local v27    # "savedAspect":F
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->isEmpty()Z

    move-result v34

    if-eqz v34, :cond_8

    .line 1680
    const-string v34, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v35, "neni ulozene nastaveni"

    invoke-static/range {v34 .. v35}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_2
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-nez v35, :cond_7

    .line 1687
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1639
    .end local v22    # "referenceHeight":I
    .end local v23    # "referenceWidth":I
    :cond_6
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1640
    .local v16, "key":Ljava/lang/String;
    const-string v35, "referenceWidth"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    const-string v35, "referenceHeight"

    move-object/from16 v0, v16

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_3

    .line 1645
    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1647
    .local v14, "id":Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v35

    const/16 v36, 0x64

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_3

    .line 1648
    const-string v34, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string v36, "Detect old MTL format("

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1649
    const-string v36, ")!\nTrying repaire it"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1648
    invoke-static/range {v34 .. v35}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1651
    .local v10, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1652
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1656
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "id":Ljava/lang/Integer;
    :catch_0
    move-exception v9

    .line 1657
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1658
    .restart local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1659
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_1

    .line 1682
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .end local v10    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v16    # "key":Ljava/lang/String;
    .restart local v22    # "referenceHeight":I
    .restart local v23    # "referenceWidth":I
    :cond_7
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1683
    .local v11, "elem":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeBoundingBox()V

    .line 1684
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    goto :goto_2

    .line 1690
    .end local v11    # "elem":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :cond_8
    const/4 v15, 0x0

    .line 1691
    .local v15, "isNew":Z
    const/4 v12, 0x0

    .line 1692
    .local v12, "failure":Z
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 1693
    .local v18, "loadedPositions":Ljava/util/Map;, "Ljava/util/Map<Landroid/graphics/Rect;Landroid/graphics/Rect;>;"
    new-instance v32, Landroid/graphics/Rect;

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v37, v0

    move-object/from16 v0, v32

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v36

    move/from16 v4, v37

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1695
    .local v32, "screenRect":Landroid/graphics/Rect;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v34

    if-lt v13, v0, :cond_9

    .line 1740
    if-nez v12, :cond_11

    .line 1741
    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v35

    :goto_4
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v34

    if-nez v34, :cond_f

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    :goto_5
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-nez v35, :cond_10

    .line 1750
    const-string v34, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, " isNew:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    .line 1751
    const-string v36, " "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 1750
    invoke-static/range {v34 .. v35}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->checkFastForwardButton()V

    goto/16 :goto_0

    .line 1696
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1697
    .local v7, "btn":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    .line 1698
    .local v14, "id":I
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    const-string v35, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1700
    .local v25, "s":Ljava/lang/String;
    const-string v34, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_e

    .line 1701
    const-string v34, "-"

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 1702
    .local v26, "sa":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    move-object/from16 v35, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v36

    invoke-virtual/range {v35 .. v36}, Landroid/util/SparseIntArray;->get(I)I

    move-result v35

    aget-object v5, v34, v35

    .line 1703
    .local v5, "bb":Landroid/graphics/Rect;
    const/16 v29, 0x0

    .line 1704
    .local v29, "savedLeft":I
    const/16 v31, 0x0

    .line 1705
    .local v31, "savedTop":I
    const/16 v30, 0x0

    .line 1706
    .local v30, "savedRight":I
    const/16 v28, 0x0

    .line 1709
    .local v28, "savedBottom":I
    const/16 v34, 0x0

    :try_start_1
    aget-object v34, v26, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1710
    const/16 v34, 0x1

    aget-object v34, v26, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 1711
    const/16 v34, 0x2

    aget-object v34, v26, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    .line 1712
    const/16 v34, 0x3

    aget-object v34, v26, v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v28

    .line 1718
    :goto_6
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1719
    .local v17, "left":I
    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v33, v0

    .line 1720
    .local v33, "top":I
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1721
    .local v24, "right":I
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v34, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v35, v0

    div-float v34, v34, v35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    move/from16 v35, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    mul-float v34, v34, v35

    move/from16 v0, v34

    float-to-int v6, v0

    .line 1722
    .local v6, "bottom":I
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v33

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1724
    .local v19, "positionRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    move/from16 v34, v0

    if-lez v34, :cond_a

    .line 1725
    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 1726
    :cond_a
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v34

    if-lez v34, :cond_b

    .line 1727
    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->height()I

    move-result v34

    if-gtz v34, :cond_c

    .line 1728
    :cond_b
    const/4 v12, 0x1

    .line 1731
    :cond_c
    iget v0, v5, Landroid/graphics/Rect;->left:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    iget v0, v5, Landroid/graphics/Rect;->top:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v33

    if-ne v0, v1, :cond_d

    iget v0, v5, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    move/from16 v0, v34

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 1732
    iget v0, v5, Landroid/graphics/Rect;->bottom:I

    move/from16 v34, v0

    move/from16 v0, v34

    if-eq v0, v6, :cond_e

    .line 1733
    :cond_d
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    const-string v34, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v36

    invoke-static/range {v36 .. v36}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v36, " detect change layout"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    const/4 v15, 0x1

    .line 1695
    .end local v5    # "bb":Landroid/graphics/Rect;
    .end local v6    # "bottom":I
    .end local v17    # "left":I
    .end local v19    # "positionRect":Landroid/graphics/Rect;
    .end local v24    # "right":I
    .end local v26    # "sa":[Ljava/lang/String;
    .end local v28    # "savedBottom":I
    .end local v29    # "savedLeft":I
    .end local v30    # "savedRight":I
    .end local v31    # "savedTop":I
    .end local v33    # "top":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 1714
    .restart local v5    # "bb":Landroid/graphics/Rect;
    .restart local v26    # "sa":[Ljava/lang/String;
    .restart local v28    # "savedBottom":I
    .restart local v29    # "savedLeft":I
    .restart local v30    # "savedRight":I
    .restart local v31    # "savedTop":I
    :catch_1
    move-exception v9

    .line 1715
    .local v9, "e":Ljava/lang/Exception;
    const/4 v12, 0x1

    goto/16 :goto_6

    .line 1741
    .end local v5    # "bb":Landroid/graphics/Rect;
    .end local v7    # "btn":Landroid/view/View;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v14    # "id":I
    .end local v25    # "s":Ljava/lang/String;
    .end local v26    # "sa":[Ljava/lang/String;
    .end local v28    # "savedBottom":I
    .end local v29    # "savedLeft":I
    .end local v30    # "savedRight":I
    .end local v31    # "savedTop":I
    :cond_f
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/Rect;

    .line 1742
    .local v16, "key":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/graphics/Rect;

    move-object/from16 v0, v16

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    .line 1745
    .end local v16    # "key":Landroid/graphics/Rect;
    :cond_10
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1746
    .restart local v11    # "elem":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeBoundingBox()V

    .line 1747
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->computeOffsets()V

    goto/16 :goto_5

    .line 1756
    .end local v11    # "elem":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :cond_11
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method private onDrawInEditMode(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 880
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 881
    .local v15, "p":Landroid/graphics/Paint;
    const v19, -0x777778

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 882
    const/16 v19, 0xff

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 883
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 885
    .local v10, "dstScreenShotrect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 887
    .local v7, "bb":Landroid/graphics/RectF;
    const/4 v13, 0x0

    .line 888
    .local v13, "env":Landroid/graphics/RectF;
    const/4 v9, 0x0

    .line 890
    .local v9, "counter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-nez v19, :cond_3

    .line 899
    :goto_1
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    .line 900
    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    .line 899
    move/from16 v0, v19

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 901
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    .line 902
    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    .line 901
    move/from16 v0, v19

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 903
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v21

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    .line 904
    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    .line 903
    move/from16 v0, v19

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 905
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v21

    mul-float v20, v20, v21

    sub-float v19, v19, v20

    .line 906
    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    .line 905
    move/from16 v0, v19

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 912
    .end local v7    # "bb":Landroid/graphics/RectF;
    .end local v9    # "counter":I
    .end local v13    # "env":Landroid/graphics/RectF;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v19

    if-nez v19, :cond_6

    .line 913
    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    .line 913
    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 915
    .local v18, "src":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v10, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 921
    .end local v18    # "src":Landroid/graphics/Rect;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v19, v0

    sget-object v20, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->bitmapRectPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 953
    :cond_0
    const/4 v14, 0x0

    .local v14, "idx":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-lt v14, v0, :cond_a

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x55ff0000

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v19, v0

    sget-object v20, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-nez v20, :cond_f

    .line 1003
    :cond_2
    :goto_6
    return-void

    .line 890
    .end local v14    # "idx":I
    .restart local v7    # "bb":Landroid/graphics/RectF;
    .restart local v9    # "counter":I
    .restart local v13    # "env":Landroid/graphics/RectF;
    :cond_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 891
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 892
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "env":Landroid/graphics/RectF;
    check-cast v13, Landroid/graphics/RectF;

    .line 893
    .restart local v13    # "env":Landroid/graphics/RectF;
    goto/16 :goto_1

    .line 896
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 909
    .end local v7    # "bb":Landroid/graphics/RectF;
    .end local v9    # "counter":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    .end local v13    # "env":Landroid/graphics/RectF;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto/16 :goto_2

    .line 918
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 924
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v19, v0

    sget-object v20, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_0

    .line 925
    new-instance v17, Landroid/graphics/RectF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/RectF;-><init>()V

    .line 926
    .local v17, "rect":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v7, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 927
    .restart local v7    # "bb":Landroid/graphics/RectF;
    const/4 v9, 0x0

    .line 929
    .restart local v9    # "counter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 930
    .restart local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/RectF;

    .line 931
    .restart local v13    # "env":Landroid/graphics/RectF;
    iget v0, v7, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v20, v20, v22

    add-float v19, v19, v20

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 932
    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v22

    mul-float v20, v20, v22

    add-float v19, v19, v20

    mul-int/lit8 v20, v9, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    add-float v19, v19, v20

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 933
    iget v0, v7, Landroid/graphics/RectF;->right:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v22

    mul-float v20, v20, v22

    sub-float v19, v19, v20

    .line 934
    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    .line 933
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 935
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v22

    mul-float v20, v20, v22

    sub-float v19, v19, v20

    .line 936
    mul-int/lit8 v20, v9, 0x2

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    sub-float v19, v19, v20

    .line 935
    move/from16 v0, v19

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 937
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    sget-object v20, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->VIDEOMODE_COLORS:[I

    .line 938
    sget-object v22, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->VIDEOMODE_COLORS:[I

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    rem-int v22, v9, v22

    aget v20, v20, v22

    .line 937
    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setColor(I)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    rem-int/lit8 v19, v9, 0x2

    if-nez v19, :cond_8

    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 943
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 944
    rem-int/lit8 v20, v9, 0x2

    if-nez v20, :cond_9

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    .line 945
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v22

    const/high16 v23, 0x40800000    # 4.0f

    div-float v22, v22, v23

    add-float v20, v20, v22

    .line 947
    :goto_9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getTextSize()F

    move-result v23

    const/high16 v24, 0x40800000    # 4.0f

    div-float v23, v23, v24

    sub-float v22, v22, v23

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    .line 942
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 949
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 941
    :cond_8
    sget-object v19, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_8

    .line 945
    :cond_9
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->videoModeLabelPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Paint;->getTextSize()F

    move-result v22

    const/high16 v23, 0x40800000    # 4.0f

    div-float v22, v22, v23

    sub-float v20, v20, v22

    goto :goto_9

    .line 954
    .end local v7    # "bb":Landroid/graphics/RectF;
    .end local v9    # "counter":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/RectF;>;"
    .end local v13    # "env":Landroid/graphics/RectF;
    .end local v17    # "rect":Landroid/graphics/RectF;
    .restart local v14    # "idx":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 956
    .local v8, "btn":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;
    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getId()I

    move-result v19

    sget v20, Lcom/nostalgiaemulators/framework/R$id;->button_menu:I

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 963
    :goto_a
    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->removeRequestRepaint()V

    .line 964
    invoke-interface {v8}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->isPressed()Z

    move-result v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    aget-object v5, v19, v14

    .line 967
    .local v5, "b":Landroid/graphics/Bitmap;
    :goto_b
    if-eqz v5, :cond_b

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    move-object/from16 v19, v0

    aget-object v7, v19, v14

    .line 969
    .local v7, "bb":Landroid/graphics/Rect;
    new-instance v6, Landroid/graphics/Rect;

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v21

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v6, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 970
    .local v6, "bRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v5, v6, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 953
    .end local v6    # "bRect":Landroid/graphics/Rect;
    .end local v7    # "bb":Landroid/graphics/Rect;
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 960
    .end local v5    # "b":Landroid/graphics/Bitmap;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v19, v0

    sget-object v21, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_d

    const/16 v19, 0x40

    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_a

    :cond_d
    const/16 v19, 0xff

    goto :goto_c

    .line 965
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    aget-object v5, v19, v14

    goto :goto_b

    .line 977
    .end local v8    # "btn":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;
    :cond_f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 978
    .local v11, "e":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    iget-boolean v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 979
    iget-boolean v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    move/from16 v20, v0

    if-nez v20, :cond_10

    .line 980
    iget-object v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 983
    :cond_10
    iget-object v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 984
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->getResizingBox()Landroid/graphics/RectF;

    move-result-object v16

    .line 985
    .local v16, "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    .line 985
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 991
    .end local v11    # "e":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .end local v16    # "r":Landroid/graphics/RectF;
    :cond_11
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 993
    .restart local v11    # "e":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    iget-boolean v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    .line 994
    iget-boolean v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    move/from16 v19, v0

    if-nez v19, :cond_12

    .line 995
    iget-object v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 998
    :cond_12
    iget-object v0, v11, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 999
    invoke-virtual {v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->getResizingBox()Landroid/graphics/RectF;

    move-result-object v16

    .line 1000
    .restart local v16    # "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElementPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method private onTouchCheck(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;III)Z
    .locals 8
    .param p1, "e"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .param p2, "idx"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1029
    iget-object v0, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 1030
    .local v0, "boundingBox":Landroid/graphics/RectF;
    invoke-virtual {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->getResizingBox()Landroid/graphics/RectF;

    move-result-object v4

    .line 1032
    .local v4, "resizingAnchor":Landroid/graphics/RectF;
    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    move-result-object v5

    if-eqz v5, :cond_1

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1033
    # getter for: Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->listener:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;
    invoke-static {p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->access$0(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;

    move-result-object v5

    invoke-interface {v5}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$OnEditItemClickListener;->onClick()V

    .line 1064
    :cond_0
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 1035
    :cond_1
    int-to-float v5, p3

    int-to-float v6, p4

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-nez v5, :cond_2

    int-to-float v5, p3

    int-to-float v6, p4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1036
    :cond_2
    iget-boolean v5, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->movable:Z

    if-eqz v5, :cond_0

    .line 1037
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v5, v6}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1038
    int-to-float v5, p3

    int-to-float v6, p4

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    iput-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    .line 1039
    iput p2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    .line 1040
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v5

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectW:F

    .line 1041
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v5

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectH:F

    .line 1042
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    .line 1043
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    .line 1044
    iput p3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchX:I

    .line 1045
    iput p4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchY:I

    .line 1046
    iget v5, v0, Landroid/graphics/RectF;->right:F

    int-to-float v6, p3

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    .line 1047
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p4

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragYoffset:F

    .line 1049
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    if-eqz v5, :cond_3

    .line 1050
    iget-object v5, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizeRects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1052
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v1, v5, :cond_4

    .line 1058
    .end local v1    # "i":I
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1059
    .local v3, "invalR":Landroid/graphics/Rect;
    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1060
    invoke-virtual {p0, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1061
    const/4 v5, 0x1

    goto :goto_0

    .line 1053
    .end local v3    # "invalR":Landroid/graphics/Rect;
    .restart local v1    # "i":I
    :cond_4
    iget-object v5, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1054
    .local v2, "id":I
    iget-object v5, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->resizeRects:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v7, v7, v2

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private onTouchEnter(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "btnIdx"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1274
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 1275
    .local v0, "btn":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;
    invoke-interface {v0, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchEnter(Landroid/view/MotionEvent;)V

    .line 1276
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 1277
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, p1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1279
    instance-of v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 1280
    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    .line 1281
    .local v3, "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getFirstBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1282
    .local v1, "idx1":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getSecondBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1283
    .local v2, "idx2":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1284
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1293
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    instance-of v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 1287
    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;

    .line 1288
    .local v3, "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getFirstBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1289
    .restart local v1    # "idx1":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getSecondBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1290
    .restart local v2    # "idx2":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1291
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private onTouchExit(ILandroid/view/MotionEvent;)V
    .locals 6
    .param p1, "btnIdx"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1296
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 1297
    .local v0, "btn":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;
    invoke-interface {v0, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->onTouchExit(Landroid/view/MotionEvent;)V

    .line 1298
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, p1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1299
    invoke-interface {v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->requestRepaint()V

    .line 1301
    instance-of v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    if-eqz v4, :cond_1

    move-object v3, v0

    .line 1302
    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    .line 1303
    .local v3, "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getFirstBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1304
    .local v1, "idx1":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;->getSecondBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1305
    .local v2, "idx2":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1306
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1315
    .end local v1    # "idx1":I
    .end local v2    # "idx2":I
    .end local v3    # "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    instance-of v4, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;

    if-eqz v4, :cond_0

    move-object v3, v0

    .line 1309
    check-cast v3, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;

    .line 1310
    .local v3, "mtba":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getFirstBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 1311
    .restart local v1    # "idx1":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->ridToIdxMap:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButton;->getSecondBtnRID()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 1312
    .restart local v2    # "idx2":I
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v1

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1313
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private onTouchInEditMode(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1006
    iget-boolean v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    if-nez v0, :cond_0

    .line 1007
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchInEditModeMove(Landroid/view/MotionEvent;)V

    .line 1012
    :goto_0
    return-void

    .line 1010
    :cond_0
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchInEditModeResize(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method private onTouchInEditModeMove(Landroid/view/MotionEvent;)V
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1069
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v15, v0

    .line 1070
    .local v15, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1072
    .local v16, "y":I
    packed-switch v4, :pswitch_data_0

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1074
    :pswitch_0
    const/4 v8, 0x0

    .line 1076
    .local v8, "idx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v17, v0

    sget-object v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1078
    .local v5, "e":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v5, v8, v15, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchCheck(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;III)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1082
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1086
    .end local v5    # "e":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchCheck(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;III)Z

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->menuElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v15, v3}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchCheck(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;III)Z

    goto :goto_0

    .line 1094
    .end local v8    # "idx":I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 1095
    const/4 v6, 0x0

    .line 1097
    .local v6, "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v17, v0

    sget-object v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    check-cast v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1104
    .restart local v6    # "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :goto_2
    iget-object v7, v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 1105
    .local v7, "elementBb":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchX:I

    move/from16 v17, v0

    sub-int v13, v15, v17

    .line 1106
    .local v13, "vx":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startTouchY:I

    move/from16 v17, v0

    sub-int v14, v16, v17

    .line 1107
    .local v14, "vy":I
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1108
    .local v10, "r":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    move/from16 v17, v0

    int-to-float v0, v13

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 1109
    .local v9, "left":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    move/from16 v17, v0

    int-to-float v0, v14

    move/from16 v18, v0

    add-float v12, v17, v18

    .line 1110
    .local v12, "top":F
    const/high16 v17, 0x40000000    # 2.0f

    sub-float v17, v9, v17

    const/high16 v18, 0x40000000    # 2.0f

    sub-float v18, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectW:F

    move/from16 v19, v0

    add-float v19, v19, v9

    const/high16 v20, 0x40000000    # 2.0f

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectH:F

    move/from16 v20, v0

    add-float v20, v20, v12

    const/high16 v21, 0x40000000    # 2.0f

    add-float v20, v20, v21

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1111
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isRectValid(Landroid/graphics/RectF;Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Z

    move-result v17

    move/from16 v0, v17

    iput-boolean v0, v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    .line 1113
    iget-boolean v0, v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectW:F

    move/from16 v18, v0

    add-float v18, v18, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectH:F

    move/from16 v19, v0

    add-float v19, v19, v12

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v12, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1117
    :cond_2
    const/high16 v17, 0x41200000    # 10.0f

    sub-float v17, v9, v17

    const/high16 v18, 0x41200000    # 10.0f

    sub-float v18, v12, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectW:F

    move/from16 v19, v0

    add-float v19, v19, v9

    const/high16 v20, 0x41200000    # 10.0f

    add-float v19, v19, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectH:F

    move/from16 v20, v0

    add-float v20, v20, v12

    .line 1118
    const/high16 v21, 0x41200000    # 10.0f

    add-float v20, v20, v21

    .line 1117
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1119
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 1120
    .local v11, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {v10, v11}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1121
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate(Landroid/graphics/Rect;)V

    .line 1122
    iget-object v0, v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    move-object/from16 v17, v0

    iget v0, v10, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    const/high16 v19, 0x41200000    # 10.0f

    add-float v18, v18, v19

    iget v0, v10, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    const/high16 v20, 0x41200000    # 10.0f

    add-float v19, v19, v20

    iget v0, v10, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    const/high16 v21, 0x41200000    # 10.0f

    sub-float v20, v20, v21

    .line 1123
    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    move/from16 v21, v0

    const/high16 v22, 0x41200000    # 10.0f

    sub-float v21, v21, v22

    .line 1122
    invoke-virtual/range {v17 .. v21}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v17, v0

    sget-object v18, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1126
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->recomputeBtn(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)V

    goto/16 :goto_0

    .line 1101
    .end local v7    # "elementBb":Landroid/graphics/RectF;
    .end local v9    # "left":F
    .end local v10    # "r":Landroid/graphics/RectF;
    .end local v11    # "tempRect":Landroid/graphics/Rect;
    .end local v12    # "top":F
    .end local v13    # "vx":I
    .end local v14    # "vy":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    goto/16 :goto_2

    .line 1133
    .end local v6    # "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :pswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->endMovementCheck()V

    goto/16 :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onTouchInEditModeResize(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 1144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1145
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 1146
    .local v5, "x":I
    iput v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchX:I

    .line 1147
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTouchY:I

    .line 1149
    packed-switch v0, :pswitch_data_0

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1152
    :pswitch_0
    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 1153
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v7, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v6, v7, :cond_3

    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    .line 1154
    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectIdx:I

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    move-object v1, v6

    .line 1155
    .local v1, "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    :goto_1
    iget-object v2, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 1156
    .local v2, "elementBb":Landroid/graphics/RectF;
    int-to-float v6, v5

    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    add-float v3, v6, v7

    .line 1157
    .local v3, "newW":F
    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectW:F

    div-float v4, v3, v6

    .line 1158
    .local v4, "scaleFactorW":F
    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragX:F

    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    int-to-float v8, v5

    iget v9, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragXoffset:F

    add-float/2addr v8, v9

    .line 1159
    iget v9, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->startDragY:F

    iget v10, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->selectH:F

    mul-float/2addr v10, v4

    add-float/2addr v9, v10

    .line 1158
    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1161
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v7, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->TOUCH:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v6, v7, :cond_1

    .line 1162
    invoke-direct {p0, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->recomputeBtn(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)V

    .line 1164
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isRectValid(Landroid/graphics/RectF;Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    .line 1166
    iget-boolean v6, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->validPosition:Z

    if-eqz v6, :cond_2

    .line 1167
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastValidBB:Landroid/graphics/RectF;

    iget-object v7, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1170
    :cond_2
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    goto :goto_0

    .line 1154
    .end local v1    # "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    .end local v2    # "elementBb":Landroid/graphics/RectF;
    .end local v3    # "newW":F
    .end local v4    # "scaleFactorW":F
    :cond_3
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    goto :goto_1

    .line 1177
    :pswitch_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isResizing:Z

    .line 1178
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->endMovementCheck()V

    goto :goto_0

    .line 1149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private recomputeBtn(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;)V
    .locals 8
    .param p1, "element"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .prologue
    .line 1186
    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 1187
    iget-object v7, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 1186
    div-float v5, v6, v7

    .line 1189
    .local v5, "scaleFactor":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v2, v6, :cond_0

    .line 1205
    return-void

    .line 1190
    :cond_0
    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1191
    .local v3, "id":I
    new-instance v4, Landroid/graphics/RectF;

    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1192
    .local v4, "offset":Landroid/graphics/RectF;
    new-instance v0, Landroid/graphics/RectF;

    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1193
    .local v0, "bb":Landroid/graphics/RectF;
    iget-object v1, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    .line 1194
    .local v1, "elemBB":Landroid/graphics/RectF;
    iget v6, v1, Landroid/graphics/RectF;->left:F

    neg-float v6, v6

    iget v7, v1, Landroid/graphics/RectF;->top:F

    neg-float v7, v7

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 1195
    iget v6, v0, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v5

    iput v6, v0, Landroid/graphics/RectF;->left:F

    .line 1196
    iget v6, v0, Landroid/graphics/RectF;->top:F

    mul-float/2addr v6, v5

    iput v6, v0, Landroid/graphics/RectF;->top:F

    .line 1197
    iget v6, v0, Landroid/graphics/RectF;->right:F

    mul-float/2addr v6, v5

    iput v6, v0, Landroid/graphics/RectF;->right:F

    .line 1198
    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr v6, v5

    iput v6, v0, Landroid/graphics/RectF;->bottom:F

    .line 1199
    iget v6, v4, Landroid/graphics/RectF;->left:F

    mul-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->left:F

    .line 1200
    iget v6, v4, Landroid/graphics/RectF;->top:F

    mul-float/2addr v6, v5

    iput v6, v4, Landroid/graphics/RectF;->top:F

    .line 1201
    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-virtual {v6, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1202
    iget-object v6, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 1203
    iget-object v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 1189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public disableLoadSettings()V
    .locals 6

    .prologue
    .line 1490
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadingSettings:Z

    .line 1492
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1502
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1503
    return-void

    .line 1492
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1493
    .local v1, "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    iget-object v3, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1495
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1496
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    iget-object v3, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v4, v3

    .line 1497
    .local v0, "bb":Landroid/graphics/Rect;
    iget-object v3, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1498
    iget-object v3, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/RectF;

    iget-object v4, v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    invoke-virtual {v3, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1495
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isPointerHandled(I)Z
    .locals 1
    .param p1, "pointerId"    # I

    .prologue
    .line 829
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1254
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 1256
    iget-object v3, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_0

    .line 1262
    iget-object v2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    array-length v3, v2

    :goto_1
    if-lt v1, v3, :cond_2

    .line 1268
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    .line 1269
    iput-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    .line 1270
    const-string v1, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v2, "on detach"

    invoke-static {v1, v2}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    return-void

    .line 1256
    :cond_0
    aget-object v0, v3, v2

    .line 1257
    .local v0, "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1258
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1256
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1262
    .end local v0    # "b":Landroid/graphics/Bitmap;
    :cond_2
    aget-object v0, v2, v1

    .line 1263
    .restart local v0    # "b":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1264
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1262
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 836
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 838
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    if-nez v5, :cond_1

    .line 839
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initMultiTouchMap()Z

    move-result v5

    iput-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    .line 841
    iget-boolean v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->inited:Z

    if-nez v5, :cond_1

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isInEditMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v5, v6, :cond_2

    .line 847
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_1
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    array-length v5, v5

    if-lt v3, v5, :cond_3

    .line 870
    .end local v3    # "idx":I
    :cond_2
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-eq v5, v6, :cond_0

    .line 871
    invoke-direct {p0, p1}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onDrawInEditMode(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 848
    .restart local v3    # "idx":I
    :cond_3
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    .line 849
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;

    .line 850
    .local v2, "btn":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;
    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->removeRequestRepaint()V

    .line 852
    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 853
    invoke-interface {v2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchBtnInterface;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v5, v3

    .line 856
    .local v0, "b":Landroid/graphics/Bitmap;
    :goto_2
    if-eqz v0, :cond_4

    .line 857
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v1, v5, v3

    .line 858
    .local v1, "bb":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 860
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v6, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-eq v5, v6, :cond_4

    .line 861
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 862
    .local v4, "pp":Landroid/graphics/Paint;
    const v5, 0x5500ff00

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 863
    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 847
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "bb":Landroid/graphics/Rect;
    .end local v4    # "pp":Landroid/graphics/Paint;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 854
    :cond_5
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v5, v3

    goto :goto_2
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 786
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v8, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->NONE:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v7, v8, :cond_7

    .line 787
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 788
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    .line 790
    .local v4, "pointrcount":I
    const/4 v3, 0x0

    .local v3, "pointerIdx":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 825
    .end local v3    # "pointerIdx":I
    .end local v4    # "pointrcount":I
    :cond_0
    :goto_1
    return v9

    .line 791
    .restart local v3    # "pointerIdx":I
    .restart local v4    # "pointrcount":I
    :cond_1
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 792
    .local v0, "id":I
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 793
    .local v5, "x":I
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 794
    .local v6, "y":I
    invoke-direct {p0, v5, v6, v0, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->handleTouchEvent(IIILandroid/view/MotionEvent;)V

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 797
    .end local v0    # "id":I
    .end local v3    # "pointerIdx":I
    .end local v4    # "pointrcount":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eq v7, v9, :cond_3

    .line 798
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x6

    if-eq v7, v8, :cond_3

    .line 799
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    .line 800
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 801
    .restart local v0    # "id":I
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    .line 803
    .local v1, "oldBtnIdx":I
    if-eqz v1, :cond_4

    .line 804
    add-int/lit8 v7, v1, -0x1

    invoke-direct {p0, v7, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchExit(ILandroid/view/MotionEvent;)V

    .line 807
    :cond_4
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pointerMap:Landroid/util/SparseIntArray;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 809
    .end local v0    # "id":I
    .end local v1    # "oldBtnIdx":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    if-eqz v7, :cond_6

    .line 810
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_0

    .line 811
    :cond_6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 812
    .local v2, "pointerId":I
    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 814
    .restart local v3    # "pointerIdx":I
    const/4 v7, -0x1

    if-eq v3, v7, :cond_0

    .line 815
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    float-to-int v5, v7

    .line 816
    .restart local v5    # "x":I
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    float-to-int v6, v7

    .line 817
    .restart local v6    # "y":I
    invoke-direct {p0, v5, v6, v2, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->handleTouchEvent(IIILandroid/view/MotionEvent;)V

    goto :goto_1

    .line 822
    .end local v2    # "pointerId":I
    .end local v3    # "pointerIdx":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_7
    invoke-direct {p0, p2}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->onTouchInEditMode(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1623
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 1624
    return-void
.end method

.method public reloadTouchProfile()V
    .locals 19

    .prologue
    .line 571
    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->loadEditElements()Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    if-nez v3, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isTouchMapsValid()Z

    move-result v3

    if-nez v3, :cond_b

    .line 572
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    .line 573
    const/4 v12, 0x0

    .line 575
    .local v12, "idx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 589
    const/4 v12, 0x0

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    .line 641
    .end local v12    # "idx":I
    :goto_3
    return-void

    .line 572
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 575
    .restart local v12    # "idx":I
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 576
    .local v10, "btn":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v9, v5, v12

    .line 579
    .local v9, "bb":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-gtz v5, :cond_4

    .line 580
    :cond_3
    const-string v3, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    const-string v5, "tohle se nemuze stat"

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->firstRun:Z

    goto :goto_3

    .line 586
    .end local v9    # "bb":Landroid/graphics/Rect;
    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 591
    .end local v10    # "btn":Landroid/view/View;
    :cond_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 592
    .restart local v10    # "btn":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v5, 0x8

    if-eq v3, v5, :cond_8

    .line 593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v9, v3, v12

    .line 595
    .restart local v9    # "bb":Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v3

    sget v5, Lcom/nostalgiaemulators/framework/R$id;->button_fast_forward:I

    if-ne v3, v5, :cond_6

    .line 596
    const-string v3, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fast f btn "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bb "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_6
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 600
    .local v4, "btnW":I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 601
    .local v8, "btnH":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    aget-object v14, v3, v12

    .line 602
    .local v14, "origButtonBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    aget-object v15, v3, v12

    .line 604
    .local v15, "origPressedButtonBitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_7

    .line 606
    const/4 v3, 0x1

    .line 605
    invoke-static {v15, v4, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 607
    .local v17, "pressedBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V

    .line 608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->pressedButtonsBitmaps:[Landroid/graphics/Bitmap;

    aput-object v17, v3, v12

    .line 611
    .end local v17    # "pressedBitmap":Landroid/graphics/Bitmap;
    :cond_7
    if-eqz v14, :cond_8

    .line 613
    const/4 v3, 0x1

    .line 612
    invoke-static {v14, v4, v8, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 614
    .local v1, "buttonBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 615
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    aput-object v1, v3, v12

    .line 616
    mul-int v3, v4, v8

    new-array v2, v3, [I

    .line 617
    .local v2, "buttonPixels":[I
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 619
    array-length v3, v2

    new-array v13, v3, [B

    .line 621
    .local v13, "map":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    array-length v3, v2

    if-lt v11, v3, :cond_9

    .line 626
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->maps:[[B

    aput-object v13, v3, v12

    .line 628
    instance-of v3, v10, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchTwoButtonArea;

    if-eqz v3, :cond_8

    .line 629
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->buttonsBitmaps:[Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    aput-object v5, v3, v12

    .line 635
    .end local v1    # "buttonBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "buttonPixels":[I
    .end local v4    # "btnW":I
    .end local v8    # "btnH":I
    .end local v9    # "bb":Landroid/graphics/Rect;
    .end local v11    # "i":I
    .end local v13    # "map":[B
    .end local v14    # "origButtonBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "origPressedButtonBitmap":Landroid/graphics/Bitmap;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    .line 622
    .restart local v1    # "buttonBitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "buttonPixels":[I
    .restart local v4    # "btnW":I
    .restart local v8    # "btnH":I
    .restart local v9    # "bb":Landroid/graphics/Rect;
    .restart local v11    # "i":I
    .restart local v13    # "map":[B
    .restart local v14    # "origButtonBitmap":Landroid/graphics/Bitmap;
    .restart local v15    # "origPressedButtonBitmap":Landroid/graphics/Bitmap;
    :cond_9
    aget v16, v2, v11

    .line 623
    .local v16, "pixel":I
    if-nez v16, :cond_a

    const/4 v3, 0x0

    :goto_5
    aput-byte v3, v13, v11

    .line 621
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 623
    :cond_a
    add-int/lit8 v3, v12, 0x1

    int-to-byte v3, v3

    goto :goto_5

    .line 639
    .end local v1    # "buttonBitmap":Landroid/graphics/Bitmap;
    .end local v2    # "buttonPixels":[I
    .end local v4    # "btnW":I
    .end local v8    # "btnH":I
    .end local v9    # "bb":Landroid/graphics/Rect;
    .end local v10    # "btn":Landroid/view/View;
    .end local v11    # "i":I
    .end local v12    # "idx":I
    .end local v13    # "map":[B
    .end local v14    # "origButtonBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "origPressedButtonBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "pixel":I
    :cond_b
    const-string v3, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " nic se nezmenilo"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public resetEditElement()V
    .locals 7

    .prologue
    .line 1466
    iget-object v4, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1476
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1477
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPref()Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1478
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 1479
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1480
    return-void

    .line 1466
    .end local v1    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    .line 1467
    .local v2, "element":Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    iget-object v5, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxHistory:Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1469
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1470
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v0, v5, v4

    .line 1471
    .local v0, "bb":Landroid/graphics/Rect;
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingboxsHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1472
    iget-object v4, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsets:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    iget-object v5, v2, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->offsetshistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/RectF;

    invoke-virtual {v4, v5}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 1469
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public resetScreenElement()V
    .locals 1

    .prologue
    .line 1483
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initScreenElement(Z)V

    .line 1484
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->removeViewPortSave(Landroid/content/Context;)V

    .line 1485
    return-void
.end method

.method public saveEditElements()V
    .locals 10

    .prologue
    .line 1600
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->endMovementCheck()V

    .line 1601
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getPref()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1602
    .local v5, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1603
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "referenceWidth"

    iget v8, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapWidth:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1604
    const-string v7, "referenceHeight"

    iget v8, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->touchMapHeight:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1606
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v2, v7, :cond_0

    .line 1615
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTimestamp:J

    .line 1618
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-wide v8, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastTimestamp:J

    invoke-static {v7, v8, v9}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setControllerLayoutTimestamp(Landroid/content/Context;J)V

    .line 1619
    return-void

    .line 1607
    :cond_0
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1608
    .local v0, "btn":Landroid/view/View;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->boundingBoxs:[Landroid/graphics/Rect;

    aget-object v4, v7, v2

    .line 1609
    .local v4, "offset":Landroid/graphics/Rect;
    new-instance v7, Ljava/lang/StringBuilder;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1610
    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1609
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1611
    .local v6, "s":Ljava/lang/String;
    iget-object v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btnIdMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 1612
    .local v3, "id":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1606
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public saveScreenElement()V
    .locals 8

    .prologue
    .line 1576
    invoke-direct {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->endMovementCheck()V

    .line 1577
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->screenElement:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;

    iget-object v0, v5, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EditElement;->boundingbox:Landroid/graphics/RectF;

    .line 1578
    .local v0, "bb":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->viewPortsEnvelops:Ljava/util/HashMap;

    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v6

    .line 1579
    invoke-interface {v6}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v6

    iget-object v6, v6, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    .line 1578
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    .line 1580
    .local v1, "env":Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1581
    .local v2, "rect":Landroid/graphics/Rect;
    iget v5, v0, Landroid/graphics/RectF;->left:F

    iget v6, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->left:I

    .line 1582
    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    .line 1583
    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->right:I

    .line 1584
    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 1586
    const/4 v5, 0x1

    const/high16 v6, 0x41a00000    # 20.0f

    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1587
    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1585
    invoke-static {v5, v6, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v3, v5

    .line 1588
    .local v3, "topOffset":I
    new-instance v4, Lcom/nostalgiaemulators/framework/base/ViewPort;

    invoke-direct {v4}, Lcom/nostalgiaemulators/framework/base/ViewPort;-><init>()V

    .line 1589
    .local v4, "vp":Lcom/nostalgiaemulators/framework/base/ViewPort;
    iget v5, v2, Landroid/graphics/Rect;->left:I

    iput v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    .line 1590
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->currentRotation:I

    if-nez v6, :cond_0

    .end local v3    # "topOffset":I
    :goto_0
    add-int/2addr v5, v3

    iput v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    .line 1591
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    iput v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    .line 1592
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    .line 1593
    const-string v5, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "save screenlayout "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    invoke-static {}, Lcom/nostalgiaemulators/framework/base/EmulatorInfoHolder;->getInfo()Lcom/nostalgiaemulators/framework/EmulatorInfo;

    move-result-object v7

    invoke-interface {v7}, Lcom/nostalgiaemulators/framework/EmulatorInfo;->getDefaultGfxProfile()Lcom/nostalgiaemulators/framework/GfxProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/nostalgiaemulators/framework/GfxProfile;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1595
    const-string v7, " vp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->x:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->y:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->width:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/nostalgiaemulators/framework/base/ViewPort;->height:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1593
    invoke-static {v5, v6}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheW:I

    iget v7, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->cacheH:I

    invoke-static {v5, v4, v6, v7}, Lcom/nostalgiaemulators/framework/ui/preferences/PreferenceUtil;->setViewPort(Landroid/content/Context;Lcom/nostalgiaemulators/framework/base/ViewPort;II)V

    .line 1597
    return-void

    .line 1590
    .restart local v3    # "topOffset":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setEditMode(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;)V
    .locals 6
    .param p1, "mode"    # Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .prologue
    .line 1336
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    .line 1337
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1338
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    .line 1339
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;

    invoke-direct {v1, p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$3;-><init>(Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;)V

    .line 1348
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    .line 1339
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1350
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->editMode:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    sget-object v1, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;->SCREEN:Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer$EDIT_MODE;

    if-ne v0, v1, :cond_0

    .line 1351
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1352
    sget v1, Lcom/nostalgiaemulators/framework/R$drawable;->resize_icon_2:I

    .line 1351
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->resizeIcon:Landroid/graphics/Bitmap;

    .line 1354
    :cond_0
    return-void
.end method

.method public setEnableStaticDPAD(Z)V
    .locals 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 1828
    iput-boolean p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->staticDPADEnabled:Z

    .line 1830
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->btns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1837
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1838
    return-void

    .line 1830
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1831
    .local v0, "btn":Landroid/view/View;
    iget-object v1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->dpadRIDs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1832
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1833
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1832
    :cond_2
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setLastgameScreenshot(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "gfxProfileName"    # Ljava/lang/String;

    .prologue
    .line 1321
    const-string v0, "package com.nostalgiaemulators.framework.ui.multitouchbutton.MultitouchLayer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set last profile:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nostalgiaemulators/framework/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1322
    iput-object p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGameScreenshot:Landroid/graphics/Bitmap;

    .line 1323
    iput-object p2, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->lastGfxProfileName:Ljava/lang/String;

    .line 1324
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->initScreenElement(Z)V

    .line 1325
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->invalidate()V

    .line 1326
    return-void
.end method

.method public setOpacity(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 299
    :cond_0
    return-void
.end method

.method public setVibrationDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    .line 779
    iput p1, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->vibrationDuration:I

    .line 780
    return-void
.end method

.method public stopEditMode()V
    .locals 1

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/nostalgiaemulators/framework/ui/multitouchbutton/MultitouchLayer;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1461
    return-void
.end method
