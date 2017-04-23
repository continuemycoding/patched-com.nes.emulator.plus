.class public final Lcom/db/android/api/gif/d;
.super Ljava/lang/Object;


# instance fields
.field bgColor:I

.field dc:[I

.field dd:I

.field de:Lcom/db/android/api/gif/c;

.field df:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/db/android/api/gif/c;",
            ">;"
        }
    .end annotation
.end field

.field dg:Z

.field dh:I

.field di:I

.field dj:I

.field dk:I

.field height:I

.field status:I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/d;->dc:[I

    iput v1, p0, Lcom/db/android/api/gif/d;->status:I

    iput v1, p0, Lcom/db/android/api/gif/d;->dd:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    iput v1, p0, Lcom/db/android/api/gif/d;->dk:I

    return-void
.end method

.method private af()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/d;->dd:I

    return v0
.end method

.method private getHeight()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/d;->height:I

    return v0
.end method

.method private getStatus()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/d;->status:I

    return v0
.end method

.method private getWidth()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/d;->width:I

    return v0
.end method
