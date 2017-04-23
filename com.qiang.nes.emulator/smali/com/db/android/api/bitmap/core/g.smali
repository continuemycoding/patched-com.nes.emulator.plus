.class public Lcom/db/android/api/bitmap/core/g;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "dangbeiAd"


# instance fields
.field public al:I

.field public am:I

.field public an:I

.field public ao:Ljava/io/File;

.field public ap:Z

.field public aq:Z

.field public ar:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x800000

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->al:I

    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->am:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->an:I

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->ap:Z

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->aq:Z

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/g;->ao:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x800000

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->al:I

    const/high16 v0, 0x3200000

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->am:I

    const/16 v0, 0x2710

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->an:I

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->ap:Z

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->aq:Z

    iput-boolean v1, p0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/g;->ao:Ljava/io/File;

    return-void
.end method

.method private static e(Landroid/content/Context;)I
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    return v0
.end method

.method private e(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/g;->an:I

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dangbeiAd"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static n(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/db/android/api/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "dangbeiAd"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;F)V
    .locals 2

    const/high16 v1, 0x44800000    # 1024.0f

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_0

    const v0, 0x3f4ccccd    # 0.8f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/bitmap/core/g;->al:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/g;->al:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/db/android/api/bitmap/core/g;->am:I

    return-void
.end method
