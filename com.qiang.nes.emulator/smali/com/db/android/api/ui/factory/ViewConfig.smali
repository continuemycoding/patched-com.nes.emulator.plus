.class public Lcom/db/android/api/ui/factory/ViewConfig;
.super Ljava/lang/Object;


# instance fields
.field public adCornerFontSize:I

.field public height:I

.field public isFullScreen:Z

.field public timerFontSize:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/db/android/api/ui/factory/ViewConfig;->width:I

    iput p2, p0, Lcom/db/android/api/ui/factory/ViewConfig;->height:I

    iput p3, p0, Lcom/db/android/api/ui/factory/ViewConfig;->timerFontSize:I

    iput p4, p0, Lcom/db/android/api/ui/factory/ViewConfig;->adCornerFontSize:I

    return-void
.end method
