.class public final Lcom/db/android/api/gif/e;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "GifHeaderParser"

.field private static dl:I = 0x2

.field private static dm:I = 0xa

.field private static final dn:I = 0x100


# instance fields
.field private cK:Lcom/db/android/api/gif/d;

.field private cw:Ljava/nio/ByteBuffer;

.field private final cx:[B

.field private do:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cx:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/gif/e;->do:I

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)Lcom/db/android/api/gif/e;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cx:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/db/android/api/gif/d;

    invoke-direct {v0}, Lcom/db/android/api/gif/d;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iput v1, p0, Lcom/db/android/api/gif/e;->do:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method private ab()I
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iput v1, p0, Lcom/db/android/api/gif/e;->do:I

    iget v1, p0, Lcom/db/android/api/gif/e;->do:I

    if-lez v1, :cond_1

    move v2, v0

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/db/android/api/gif/e;->do:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/db/android/api/gif/e;->do:I

    sub-int v2, v1, v0

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cx:[B

    invoke-virtual {v1, v3, v0, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error Reading Block n: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " blockSize: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/db/android/api/gif/e;->do:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v2, 0x1

    iput v2, v1, Lcom/db/android/api/gif/d;->status:I

    :cond_1
    return v0
.end method

.method private ah()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->readHeader()V

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/db/android/api/gif/e;->u(I)V

    :cond_0
    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dd:I

    if-le v1, v0, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ai()V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/db/android/api/gif/e;->u(I)V

    return-void
.end method

.method private aj()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v2, v2, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v3, v1, 0x1c

    shr-int/lit8 v3, v3, 0x2

    iput v3, v2, Lcom/db/android/api/gif/c;->cY:I

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v2, v2, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget v2, v2, Lcom/db/android/api/gif/c;->cY:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v2, v2, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iput v0, v2, Lcom/db/android/api/gif/c;->cY:I

    :cond_0
    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v2, v2, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    :goto_0
    iput-boolean v0, v2, Lcom/db/android/api/gif/c;->cX:Z

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :cond_1
    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, v1, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v1, Lcom/db/android/api/gif/c;->delay:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/c;->cZ:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ak()V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cS:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cT:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cU:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cV:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v3, 0x7

    add-int/lit8 v6, v6, 0x1

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v5, v5, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v1, v5, Lcom/db/android/api/gif/c;->cW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-direct {p0, v4}, Lcom/db/android/api/gif/e;->v(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/db/android/api/gif/c;->db:[I

    :goto_2
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/c;->da:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/db/android/api/gif/c;->db:[I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v1, v0, Lcom/db/android/api/gif/d;->dd:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/db/android/api/gif/d;->dd:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, v1, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method private al()V
    .locals 4

    const/4 v3, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ab()I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cx:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cx:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cx:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/db/android/api/gif/d;->dk:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dk:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v1, -0x1

    iput v1, v0, Lcom/db/android/api/gif/d;->dk:I

    :cond_1
    iget v0, p0, Lcom/db/android/api/gif/e;->do:I

    if-lez v0, :cond_2

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method private am()V
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/d;->width:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/d;->height:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v2, Lcom/db/android/api/gif/d;->dg:Z

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x7

    shl-int v1, v2, v1

    iput v1, v0, Lcom/db/android/api/gif/d;->dh:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/d;->di:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private an()V
    .locals 0

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    return-void
.end method

.method private ao()V
    .locals 3

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v0

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private ap()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private aq()Z
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->status:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    return-void
.end method

.method private read()I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v2, 0x1

    iput v2, v1, Lcom/db/android/api/gif/d;->status:I

    goto :goto_0
.end method

.method private readHeader()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, ""

    move-object v3, v2

    move v2, v1

    :goto_0
    const/4 v4, 0x6

    if-ge v2, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "GIF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iput v0, v1, Lcom/db/android/api/gif/d;->status:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v2, Lcom/db/android/api/gif/d;->width:I

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v2, Lcom/db/android/api/gif/d;->height:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v2

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_3

    :goto_2
    iput-boolean v0, v3, Lcom/db/android/api/gif/d;->dg:Z

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v1, 0x2

    and-int/lit8 v2, v2, 0x7

    shl-int/2addr v1, v2

    iput v1, v0, Lcom/db/android/api/gif/d;->dh:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v1

    iput v1, v0, Lcom/db/android/api/gif/d;->di:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-boolean v0, v0, Lcom/db/android/api/gif/d;->dg:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dh:I

    invoke-direct {p0, v1}, Lcom/db/android/api/gif/e;->v(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/db/android/api/gif/d;->dc:[I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, v1, Lcom/db/android/api/gif/d;->dc:[I

    iget-object v2, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v2, v2, Lcom/db/android/api/gif/d;->di:I

    aget v1, v1, v2

    iput v1, v0, Lcom/db/android/api/gif/d;->bgColor:I

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cx:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/db/android/api/gif/d;

    invoke-direct {v0}, Lcom/db/android/api/gif/d;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iput v1, p0, Lcom/db/android/api/gif/e;->do:I

    return-void
.end method

.method private u(I)V
    .locals 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    move v4, v2

    :cond_0
    :goto_0
    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    if-gt v0, p1, :cond_a

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iput v1, v0, Lcom/db/android/api/gif/d;->status:I

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    new-instance v3, Lcom/db/android/api/gif/c;

    invoke-direct {v3}, Lcom/db/android/api/gif/c;-><init>()V

    iput-object v3, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cS:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cT:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cU:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cV:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v3

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-int/lit8 v5, v3, 0x7

    add-int/lit8 v5, v5, 0x1

    int-to-double v8, v5

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v5, v6

    iget-object v6, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v6, v6, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_3

    move v3, v1

    :goto_2
    iput-boolean v3, v6, Lcom/db/android/api/gif/c;->cW:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-direct {p0, v5}, Lcom/db/android/api/gif/e;->v(I)[I

    move-result-object v3

    iput-object v3, v0, Lcom/db/android/api/gif/c;->db:[I

    :goto_3
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->da:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v3, v0, Lcom/db/android/api/gif/d;->dd:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/db/android/api/gif/d;->dd:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/db/android/api/gif/c;->db:[I

    goto :goto_3

    :sswitch_1
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_1

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    new-instance v3, Lcom/db/android/api/gif/c;

    invoke-direct {v3}, Lcom/db/android/api/gif/c;-><init>()V

    iput-object v3, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v0

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v5, v0, 0x1c

    shr-int/lit8 v5, v5, 0x2

    iput v5, v3, Lcom/db/android/api/gif/c;->cY:I

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iget v3, v3, Lcom/db/android/api/gif/c;->cY:I

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    iput v1, v3, Lcom/db/android/api/gif/c;->cY:I

    :cond_5
    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, v3, Lcom/db/android/api/gif/c;->cX:Z

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/4 v3, 0x2

    if-ge v0, v3, :cond_6

    const/16 v0, 0xa

    :cond_6
    iget-object v3, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v3, v3, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v3, Lcom/db/android/api/gif/c;->delay:I

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->de:Lcom/db/android/api/gif/c;

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    move-result v3

    iput v3, v0, Lcom/db/android/api/gif/c;->cZ:I

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->read()I

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_4

    :sswitch_3
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ab()I

    const-string v0, ""

    move-object v3, v0

    move v0, v2

    :goto_5
    const/16 v5, 0xb

    if-ge v0, v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/db/android/api/gif/e;->cx:[B

    aget-byte v5, v5, v0

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_8
    const-string v0, "NETSCAPE2.0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->al()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    goto/16 :goto_0

    :sswitch_5
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->ao()V

    goto/16 :goto_0

    :sswitch_6
    move v4, v1

    goto/16 :goto_0

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_1
        0x2c -> :sswitch_0
        0x3b -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_5
        0xf9 -> :sswitch_2
        0xfe -> :sswitch_4
        0xff -> :sswitch_3
    .end sparse-switch
.end method

.method private v(I)[I
    .locals 10

    const/4 v2, 0x0

    mul-int/lit8 v0, p1, 0x3

    const/4 v1, 0x0

    new-array v4, v0, [B

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v0, 0x100

    new-array v0, v0, [I
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_0
    if-ge v2, p1, :cond_1

    add-int/lit8 v3, v1, 0x1

    :try_start_1
    aget-byte v1, v4, v1

    and-int/lit16 v5, v1, 0xff

    add-int/lit8 v6, v3, 0x1

    aget-byte v1, v4, v3

    and-int/lit16 v7, v1, 0xff

    add-int/lit8 v1, v6, 0x1

    aget-byte v3, v4, v6

    and-int/lit16 v6, v3, 0xff

    add-int/lit8 v3, v2, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v5, v8

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v5, v7

    or-int/2addr v5, v6

    aput v5, v0, v2
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    :goto_1
    const-string v2, "GifHeaderParser"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "GifHeaderParser"

    const-string v3, "Format Error Reading Color Table"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v2, 0x1

    iput v2, v1, Lcom/db/android/api/gif/d;->status:I

    :cond_1
    return-object v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final ag()Lcom/db/android/api/gif/d;
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0}, Lcom/db/android/api/gif/e;->readHeader()V

    invoke-direct {p0}, Lcom/db/android/api/gif/e;->aq()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/db/android/api/gif/e;->u(I)V

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/db/android/api/gif/d;->status:I

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    goto :goto_0
.end method

.method public final b([B)Lcom/db/android/api/gif/e;
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/db/android/api/gif/e;->cx:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    new-instance v1, Lcom/db/android/api/gif/d;

    invoke-direct {v1}, Lcom/db/android/api/gif/d;-><init>()V

    iput-object v1, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    iput v2, p0, Lcom/db/android/api/gif/e;->do:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    :goto_0
    return-object p0

    :cond_0
    iput-object v1, p0, Lcom/db/android/api/gif/e;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/e;->cK:Lcom/db/android/api/gif/d;

    const/4 v1, 0x2

    iput v1, v0, Lcom/db/android/api/gif/d;->status:I

    goto :goto_0
.end method
