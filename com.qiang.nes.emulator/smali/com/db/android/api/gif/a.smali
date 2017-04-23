.class Lcom/db/android/api/gif/a;
.super Ljava/lang/Object;


# static fields
.field private static STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static cj:I = 0x1

.field private static ck:I = 0x2

.field private static cl:I = 0x3

.field private static final cm:I = 0x1000

.field private static final cn:I = 0x0

.field private static final co:I = 0x1

.field private static final cp:I = 0x2

.field private static final cq:I = 0x3

.field private static final cr:I = -0x1

.field private static final cs:I = -0x1

.field private static ct:I = -0x1

.field private static final cu:I = 0x4

.field private static final cy:I = 0x4000


# instance fields
.field private cA:I

.field private cB:I

.field private cC:Lcom/db/android/api/gif/e;

.field private cD:[S

.field private cE:[B

.field private cF:[B

.field private cG:[B

.field private cH:[I

.field private cI:I

.field private cJ:I

.field private cK:Lcom/db/android/api/gif/d;

.field private cL:Lcom/db/android/api/gif/b;

.field private cM:Landroid/graphics/Bitmap;

.field private cN:Z

.field private cO:I

.field private cP:I

.field private cQ:I

.field private cR:Z

.field private cv:[I

.field private cw:Ljava/nio/ByteBuffer;

.field private cx:[B

.field private cz:[B

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/db/android/api/gif/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    new-instance v0, Lcom/db/android/api/gif/b;

    invoke-direct {v0}, Lcom/db/android/api/gif/b;-><init>()V

    invoke-direct {p0, v0}, Lcom/db/android/api/gif/a;-><init>(Lcom/db/android/api/gif/b;)V

    return-void
.end method

.method private constructor <init>(Lcom/db/android/api/gif/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/db/android/api/gif/a;->cA:I

    iput v0, p0, Lcom/db/android/api/gif/a;->cB:I

    iput-object p1, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    new-instance v0, Lcom/db/android/api/gif/d;

    invoke-direct {v0}, Lcom/db/android/api/gif/d;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    return-void
.end method

.method private constructor <init>(Lcom/db/android/api/gif/b;Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/db/android/api/gif/a;-><init>(Lcom/db/android/api/gif/b;Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private constructor <init>(Lcom/db/android/api/gif/b;Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/db/android/api/gif/a;-><init>(Lcom/db/android/api/gif/b;)V

    const/4 v0, 0x1

    invoke-direct {p0, p2, p3, v0}, Lcom/db/android/api/gif/a;->a(Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private T()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/db/android/api/gif/a;->cI:I

    return-void
.end method

.method private V()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/a;->cJ:I

    return v0
.end method

.method private W()I
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cG:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cH:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private Y()Lcom/db/android/api/gif/e;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/gif/e;

    invoke-direct {v0}, Lcom/db/android/api/gif/e;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    return-object v0
.end method

.method private Z()V
    .locals 4

    const/16 v2, 0x4000

    const/4 v3, 0x0

    iget v0, p0, Lcom/db/android/api/gif/a;->cA:I

    iget v1, p0, Lcom/db/android/api/gif/a;->cB:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cz:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    invoke-virtual {v0, v2}, Lcom/db/android/api/gif/b;->s(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cz:[B

    :cond_1
    iput v3, p0, Lcom/db/android/api/gif/a;->cB:I

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/db/android/api/gif/a;->cA:I

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cz:[B

    iget v2, p0, Lcom/db/android/api/gif/a;->cA:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private a(III)I
    .locals 9

    const/4 v2, 0x0

    move v0, p1

    move v1, v2

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v2

    :goto_0
    iget v7, p0, Lcom/db/android/api/gif/a;->cO:I

    add-int/2addr v7, p1

    if-ge v0, v7, :cond_1

    iget-object v7, p0, Lcom/db/android/api/gif/a;->cG:[B

    array-length v7, v7

    if-ge v0, v7, :cond_1

    if-ge v0, p2, :cond_1

    iget-object v7, p0, Lcom/db/android/api/gif/a;->cG:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/db/android/api/gif/a;->cv:[I

    aget v7, v8, v7

    if-eqz v7, :cond_0

    ushr-int/lit8 v8, v7, 0x18

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int v0, p1, p3

    :goto_1
    add-int v7, p1, p3

    iget v8, p0, Lcom/db/android/api/gif/a;->cO:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_3

    iget-object v7, p0, Lcom/db/android/api/gif/a;->cG:[B

    array-length v7, v7

    if-ge v0, v7, :cond_3

    if-ge v0, p2, :cond_3

    iget-object v7, p0, Lcom/db/android/api/gif/a;->cG:[B

    aget-byte v7, v7, v0

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/db/android/api/gif/a;->cv:[I

    aget v7, v8, v7

    if-eqz v7, :cond_2

    ushr-int/lit8 v8, v7, 0x18

    add-int/2addr v6, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v5, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    :goto_2
    return v2

    :cond_4
    div-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    div-int v2, v5, v1

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    div-int v2, v4, v1

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    div-int v1, v3, v1

    or-int v2, v0, v1

    goto :goto_2
.end method

.method private a(Ljava/io/InputStream;I)I
    .locals 4

    const/16 v0, 0x4000

    if-eqz p1, :cond_3

    if-lez p2, :cond_0

    add-int/lit16 v0, p2, 0x1000

    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/16 v0, 0x4000

    new-array v0, v0, [B

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x4000

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const-string v2, "Error reading data from stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    iget v0, p0, Lcom/db/android/api/gif/a;->status:I

    return v0

    :cond_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/db/android/api/gif/a;->read([B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const-string v2, "Error closing stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private a(Lcom/db/android/api/gif/c;Lcom/db/android/api/gif/c;)Landroid/graphics/Bitmap;
    .locals 24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cH:[I

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/db/android/api/gif/c;->cY:I

    if-lez v1, :cond_1

    move-object/from16 v0, p2

    iget v1, v0, Lcom/db/android/api/gif/c;->cY:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_9

    const/4 v1, 0x0

    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/db/android/api/gif/c;->cX:Z

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->bgColor:I

    :cond_0
    :goto_0
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([II)V

    :cond_1
    :goto_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/db/android/api/gif/a;->cA:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/db/android/api/gif/a;->cB:I

    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v3, v0, Lcom/db/android/api/gif/c;->da:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_2
    if-nez p1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->width:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v3, v3, Lcom/db/android/api/gif/d;->height:I

    mul-int/2addr v1, v3

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cG:[B

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cG:[B

    array-length v3, v3

    if-ge v3, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    invoke-virtual {v3, v1}, Lcom/db/android/api/gif/b;->s(I)[B

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/db/android/api/gif/a;->cG:[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cD:[S

    if-nez v3, :cond_5

    const/16 v3, 0x1000

    new-array v3, v3, [S

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/db/android/api/gif/a;->cD:[S

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cE:[B

    if-nez v3, :cond_6

    const/16 v3, 0x1000

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/db/android/api/gif/a;->cE:[B

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cF:[B

    if-nez v3, :cond_7

    const/16 v3, 0x1001

    new-array v3, v3, [B

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/db/android/api/gif/a;->cF:[B

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->aa()I

    move-result v17

    const/4 v3, 0x1

    shl-int v18, v3, v17

    add-int/lit8 v19, v18, 0x1

    add-int/lit8 v5, v18, 0x2

    const/4 v9, -0x1

    add-int/lit8 v3, v17, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    const/4 v6, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v6, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/db/android/api/gif/a;->cD:[S

    const/4 v8, 0x0

    aput-short v8, v7, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/db/android/api/gif/a;->cE:[B

    int-to-byte v8, v6

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cI:I

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/db/android/api/gif/a;->cR:Z

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p2

    iget v1, v0, Lcom/db/android/api/gif/c;->cY:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/db/android/api/gif/a;->cQ:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/db/android/api/gif/a;->cQ:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/db/android/api/gif/a;->cP:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cU:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/db/android/api/gif/c;->cV:I

    mul-int/2addr v1, v3

    goto/16 :goto_2

    :cond_b
    const/4 v13, 0x0

    const/4 v8, 0x0

    move v6, v13

    move v10, v9

    move v7, v3

    move v11, v13

    move v12, v13

    move v14, v8

    move v3, v13

    move v8, v4

    move v9, v5

    move v5, v13

    move v4, v13

    :goto_4
    if-ge v14, v1, :cond_c

    if-nez v4, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->ab()I

    move-result v4

    if-gtz v4, :cond_d

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/db/android/api/gif/a;->status:I

    :cond_c
    move v3, v5

    :goto_5
    if-ge v3, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/db/android/api/gif/a;->cG:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_d
    const/4 v3, 0x0

    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/db/android/api/gif/a;->cx:[B

    aget-byte v15, v15, v3

    and-int/lit16 v15, v15, 0xff

    shl-int/2addr v15, v6

    add-int/2addr v13, v15

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v15, v3, 0x1

    add-int/lit8 v16, v4, -0x1

    move v3, v7

    move v4, v8

    move v7, v6

    move v8, v14

    move v6, v5

    move v5, v9

    move v9, v10

    :goto_6
    if-lt v7, v3, :cond_28

    and-int v10, v13, v4

    shr-int v14, v13, v3

    sub-int v13, v7, v3

    move/from16 v0, v18

    if-ne v10, v0, :cond_f

    add-int/lit8 v3, v17, 0x1

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v18, 0x2

    const/4 v10, -0x1

    move v7, v13

    move v9, v10

    move v13, v14

    goto :goto_6

    :cond_f
    if-le v10, v5, :cond_10

    const/4 v7, 0x3

    move-object/from16 v0, p0

    iput v7, v0, Lcom/db/android/api/gif/a;->status:I

    move v10, v9

    move v7, v3

    move v9, v5

    move v3, v15

    move v5, v6

    move v6, v13

    move v13, v14

    move v14, v8

    move v8, v4

    move/from16 v4, v16

    goto :goto_4

    :cond_10
    move/from16 v0, v19

    if-eq v10, v0, :cond_27

    const/4 v7, -0x1

    if-ne v9, v7, :cond_11

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/db/android/api/gif/a;->cF:[B

    add-int/lit8 v7, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/db/android/api/gif/a;->cE:[B

    aget-byte v12, v12, v10

    aput-byte v12, v9, v11

    move v9, v10

    move v11, v7

    move v12, v10

    move v7, v13

    move v13, v14

    goto :goto_6

    :cond_11
    if-lt v10, v5, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v11, 0x1

    int-to-byte v12, v12

    aput-byte v12, v20, v11

    move v11, v7

    move v7, v9

    :goto_7
    move/from16 v0, v18

    if-lt v7, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v20, v0

    add-int/lit8 v12, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cE:[B

    move-object/from16 v21, v0

    aget-byte v21, v21, v7

    aput-byte v21, v20, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/db/android/api/gif/a;->cD:[S

    aget-short v7, v11, v7

    move v11, v12

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/db/android/api/gif/a;->cE:[B

    aget-byte v7, v12, v7

    and-int/lit16 v12, v7, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v20, v0

    add-int/lit8 v7, v11, 0x1

    int-to-byte v0, v12

    move/from16 v21, v0

    aput-byte v21, v20, v11

    const/16 v11, 0x1000

    if-ge v5, v11, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/db/android/api/gif/a;->cD:[S

    int-to-short v9, v9

    aput-short v9, v11, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/db/android/api/gif/a;->cE:[B

    int-to-byte v11, v12

    aput-byte v11, v9, v5

    add-int/lit8 v5, v5, 0x1

    and-int v9, v5, v4

    if-nez v9, :cond_13

    const/16 v9, 0x1000

    if-ge v5, v9, :cond_13

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v4, v5

    :cond_13
    move v9, v8

    move v8, v7

    :goto_8
    if-lez v8, :cond_25

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/db/android/api/gif/a;->cG:[B

    add-int/lit8 v7, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v20, v0

    add-int/lit8 v8, v8, -0x1

    aget-byte v20, v20, v8

    aput-byte v20, v11, v6

    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move v6, v7

    goto :goto_8

    :cond_14
    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cV:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    div-int v16, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    div-int v17, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cU:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    div-int v18, v1, v3

    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cS:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    div-int v19, v1, v3

    const/4 v5, 0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/db/android/api/gif/a;->cI:I

    if-nez v1, :cond_17

    const/4 v1, 0x1

    :goto_9
    const/4 v10, 0x0

    :goto_a
    move/from16 v0, v16

    if-ge v10, v0, :cond_1f

    move-object/from16 v0, p1

    iget-boolean v6, v0, Lcom/db/android/api/gif/c;->cW:Z

    if-eqz v6, :cond_24

    move/from16 v0, v16

    if-lt v3, v0, :cond_15

    add-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    :cond_15
    :goto_b
    add-int v6, v3, v4

    move v11, v6

    move v12, v4

    move v13, v5

    :goto_c
    add-int v3, v3, v17

    move-object/from16 v0, p0

    iget v4, v0, Lcom/db/android/api/gif/a;->cP:I

    if-ge v3, v4, :cond_1e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/db/android/api/gif/a;->cQ:I

    mul-int v5, v3, v4

    add-int v4, v5, v19

    add-int v3, v4, v18

    move-object/from16 v0, p0

    iget v6, v0, Lcom/db/android/api/gif/a;->cQ:I

    add-int/2addr v6, v5

    if-ge v6, v3, :cond_23

    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cQ:I

    add-int/2addr v3, v5

    move v14, v3

    :goto_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    mul-int/2addr v3, v10

    move-object/from16 v0, p1

    iget v5, v0, Lcom/db/android/api/gif/c;->cU:I

    mul-int/2addr v3, v5

    sub-int v5, v14, v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/db/android/api/gif/a;->cO:I

    mul-int/2addr v5, v6

    add-int v20, v3, v5

    move v15, v4

    move v4, v3

    :goto_e
    if-ge v15, v14, :cond_1e

    move-object/from16 v0, p1

    iget v0, v0, Lcom/db/android/api/gif/c;->cU:I

    move/from16 v21, v0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v5

    move v5, v3

    move v3, v4

    :goto_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/android/api/gif/a;->cO:I

    move/from16 v22, v0

    add-int v22, v22, v4

    move/from16 v0, v22

    if-ge v3, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cG:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_18

    move/from16 v0, v20

    if-ge v3, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cG:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cv:[I

    move-object/from16 v23, v0

    aget v22, v23, v22

    if-eqz v22, :cond_16

    ushr-int/lit8 v23, v22, 0x18

    add-int v9, v9, v23

    shr-int/lit8 v23, v22, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v8, v8, v23

    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v7, v7, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int v6, v6, v22

    add-int/lit8 v5, v5, 0x1

    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_17
    const/4 v1, 0x0

    goto/16 :goto_9

    :pswitch_0
    const/4 v3, 0x4

    goto/16 :goto_b

    :pswitch_1
    const/4 v3, 0x2

    const/4 v4, 0x4

    goto/16 :goto_b

    :pswitch_2
    const/4 v3, 0x1

    const/4 v4, 0x2

    goto/16 :goto_b

    :cond_18
    add-int v3, v4, v21

    :goto_10
    add-int v22, v4, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/db/android/api/gif/a;->cO:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cG:[B

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v3, v0, :cond_1a

    move/from16 v0, v20

    if-ge v3, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cG:[B

    move-object/from16 v22, v0

    aget-byte v22, v22, v3

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cv:[I

    move-object/from16 v23, v0

    aget v22, v23, v22

    if-eqz v22, :cond_19

    ushr-int/lit8 v23, v22, 0x18

    add-int v9, v9, v23

    shr-int/lit8 v23, v22, 0x10

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v8, v8, v23

    shr-int/lit8 v23, v22, 0x8

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    add-int v7, v7, v23

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int v6, v6, v22

    add-int/lit8 v5, v5, 0x1

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_1a
    if-nez v5, :cond_1c

    const/4 v3, 0x0

    :goto_11
    if-eqz v3, :cond_1d

    aput v3, v2, v15

    :cond_1b
    :goto_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/db/android/api/gif/a;->cO:I

    add-int/2addr v4, v3

    add-int/lit8 v3, v15, 0x1

    move v15, v3

    goto/16 :goto_e

    :cond_1c
    div-int v3, v9, v5

    shl-int/lit8 v3, v3, 0x18

    div-int/2addr v8, v5

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v3, v8

    div-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    div-int v5, v6, v5

    or-int/2addr v3, v5

    goto :goto_11

    :cond_1d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/db/android/api/gif/a;->cR:Z

    if-nez v3, :cond_1b

    if-eqz v1, :cond_1b

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/db/android/api/gif/a;->cR:Z

    goto :goto_12

    :cond_1e
    add-int/lit8 v10, v10, 0x1

    move v3, v11

    move v4, v12

    move v5, v13

    goto/16 :goto_a

    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/db/android/api/gif/a;->cN:Z

    if-eqz v1, :cond_22

    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cY:I

    if-eqz v1, :cond_20

    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cY:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_22

    :cond_20
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    if-nez v1, :cond_21

    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->ac()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    :cond_21
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/db/android/api/gif/a;->cQ:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/db/android/api/gif/a;->cQ:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/db/android/api/gif/a;->cP:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->ac()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/db/android/api/gif/a;->cQ:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/db/android/api/gif/a;->cQ:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/db/android/api/gif/a;->cP:I

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v1

    :cond_23
    move v14, v3

    goto/16 :goto_d

    :cond_24
    move v11, v3

    move v12, v4

    move v13, v5

    move v3, v10

    goto/16 :goto_c

    :cond_25
    move v7, v13

    move v11, v8

    move v13, v14

    move v8, v9

    move v9, v10

    goto/16 :goto_6

    :cond_26
    move v7, v10

    goto/16 :goto_7

    :cond_27
    move v10, v9

    move v7, v3

    move v9, v5

    move v3, v15

    move v5, v6

    move v6, v13

    move v13, v14

    move v14, v8

    move v8, v4

    move/from16 v4, v16

    goto/16 :goto_4

    :cond_28
    move v10, v9

    move v14, v8

    move v8, v4

    move v9, v5

    move v5, v6

    move/from16 v4, v16

    move v6, v7

    move v7, v3

    move v3, v15

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Lcom/db/android/api/gif/c;)V
    .locals 22

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/db/android/api/gif/a;->cA:I

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/db/android/api/gif/a;->cB:I

    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    move-object/from16 v0, p1

    iget v2, v0, Lcom/db/android/api/gif/c;->da:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_0
    if-nez p1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v2, v2, Lcom/db/android/api/gif/d;->height:I

    mul-int/2addr v1, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cG:[B

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cG:[B

    array-length v2, v2

    if-ge v2, v1, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    invoke-virtual {v2, v1}, Lcom/db/android/api/gif/b;->s(I)[B

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/db/android/api/gif/a;->cG:[B

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cD:[S

    if-nez v2, :cond_3

    const/16 v2, 0x1000

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/db/android/api/gif/a;->cD:[S

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cE:[B

    if-nez v2, :cond_4

    const/16 v2, 0x1000

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/db/android/api/gif/a;->cE:[B

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/db/android/api/gif/a;->cF:[B

    if-nez v2, :cond_5

    const/16 v2, 0x1001

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/db/android/api/gif/a;->cF:[B

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->aa()I

    move-result v16

    const/4 v2, 0x1

    shl-int v17, v2, v16

    add-int/lit8 v18, v17, 0x1

    add-int/lit8 v4, v17, 0x2

    const/4 v10, -0x1

    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    :goto_1
    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/db/android/api/gif/a;->cD:[S

    const/4 v7, 0x0

    aput-short v7, v6, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/db/android/api/gif/a;->cE:[B

    int-to-byte v7, v5

    aput-byte v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p1

    iget v1, v0, Lcom/db/android/api/gif/c;->cU:I

    move-object/from16 v0, p1

    iget v2, v0, Lcom/db/android/api/gif/c;->cV:I

    mul-int/2addr v1, v2

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v8, v5

    move v11, v5

    move v6, v5

    move v9, v2

    move v12, v3

    move v13, v4

    move v2, v5

    move v3, v5

    move v4, v5

    :goto_2
    if-ge v7, v1, :cond_8

    if-nez v3, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/db/android/api/gif/a;->ab()I

    move-result v3

    if-gtz v3, :cond_9

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/db/android/api/gif/a;->status:I

    :cond_8
    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/db/android/api/gif/a;->cG:[B

    const/4 v4, 0x0

    aput-byte v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    const/4 v2, 0x0

    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/db/android/api/gif/a;->cx:[B

    aget-byte v14, v14, v2

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v6

    add-int/2addr v5, v14

    add-int/lit8 v6, v6, 0x8

    add-int/lit8 v14, v2, 0x1

    add-int/lit8 v15, v3, -0x1

    move v2, v9

    move v3, v12

    move v9, v11

    move/from16 v21, v6

    move v6, v5

    move v5, v4

    move v4, v13

    move/from16 v13, v21

    :goto_4
    if-lt v13, v2, :cond_14

    and-int v11, v6, v3

    shr-int v12, v6, v2

    sub-int/2addr v13, v2

    move/from16 v0, v17

    if-ne v11, v0, :cond_b

    add-int/lit8 v2, v16, 0x1

    const/4 v3, 0x1

    shl-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v17, 0x2

    const/4 v11, -0x1

    move v6, v12

    move v10, v11

    goto :goto_4

    :cond_b
    if-le v11, v4, :cond_c

    const/4 v6, 0x3

    move-object/from16 v0, p0

    iput v6, v0, Lcom/db/android/api/gif/a;->status:I

    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    goto :goto_2

    :cond_c
    move/from16 v0, v18

    if-eq v11, v0, :cond_13

    const/4 v6, -0x1

    if-ne v10, v6, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/db/android/api/gif/a;->cF:[B

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/android/api/gif/a;->cE:[B

    aget-byte v10, v10, v11

    aput-byte v10, v9, v8

    move v8, v6

    move v9, v11

    move v10, v11

    move v6, v12

    goto :goto_4

    :cond_d
    if-lt v11, v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v9, v9

    aput-byte v9, v19, v8

    move v8, v6

    move v9, v10

    :goto_5
    move/from16 v0, v17

    if-lt v9, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cE:[B

    move-object/from16 v20, v0

    aget-byte v20, v20, v9

    aput-byte v20, v19, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/db/android/api/gif/a;->cD:[S

    aget-short v8, v8, v9

    move v9, v8

    move v8, v6

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/db/android/api/gif/a;->cE:[B

    aget-byte v6, v6, v9

    and-int/lit16 v9, v6, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v19, v0

    add-int/lit8 v6, v8, 0x1

    int-to-byte v0, v9

    move/from16 v20, v0

    aput-byte v20, v19, v8

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/db/android/api/gif/a;->cD:[S

    int-to-short v10, v10

    aput-short v10, v8, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/db/android/api/gif/a;->cE:[B

    int-to-byte v10, v9

    aput-byte v10, v8, v4

    add-int/lit8 v4, v4, 0x1

    and-int v8, v4, v3

    if-nez v8, :cond_f

    const/16 v8, 0x1000

    if-ge v4, v8, :cond_f

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v3, v4

    :cond_f
    move v8, v7

    move v7, v6

    :goto_6
    if-lez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/db/android/api/gif/a;->cG:[B

    add-int/lit8 v6, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/db/android/api/gif/a;->cF:[B

    move-object/from16 v19, v0

    add-int/lit8 v7, v7, -0x1

    aget-byte v19, v19, v7

    aput-byte v19, v10, v5

    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v5, v6

    goto :goto_6

    :cond_10
    return-void

    :cond_11
    move v6, v12

    move v10, v11

    move/from16 v21, v8

    move v8, v7

    move/from16 v7, v21

    goto/16 :goto_4

    :cond_12
    move v9, v11

    goto :goto_5

    :cond_13
    move v11, v9

    move v6, v13

    move v9, v2

    move v13, v4

    move v2, v14

    move v4, v5

    move v5, v12

    move v12, v3

    move v3, v15

    goto/16 :goto_2

    :cond_14
    move v11, v9

    move v12, v3

    move v3, v15

    move v9, v2

    move v2, v14

    move/from16 v21, v13

    move v13, v4

    move v4, v5

    move v5, v6

    move/from16 v6, v21

    goto/16 :goto_2
.end method

.method private declared-synchronized a(Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/gif/a;->a(Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;I)V
    .locals 4

    monitor-enter p0

    if-gtz p3, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sample size must be >=0, not: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    iput-object p1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/gif/a;->cR:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/db/android/api/gif/a;->cI:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/gif/a;->cJ:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/gif/a;->cN:Z

    iget-object v0, p1, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/gif/c;

    iget v0, v0, Lcom/db/android/api/gif/c;->cY:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/db/android/api/gif/a;->cN:Z

    :cond_2
    iput v1, p0, Lcom/db/android/api/gif/a;->cO:I

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    iget v2, p1, Lcom/db/android/api/gif/d;->width:I

    iget v3, p1, Lcom/db/android/api/gif/d;->height:I

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/db/android/api/gif/b;->s(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cG:[B

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    iget v2, p1, Lcom/db/android/api/gif/d;->width:I

    div-int/2addr v2, v1

    iget v3, p1, Lcom/db/android/api/gif/d;->height:I

    div-int/2addr v3, v1

    mul-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/db/android/api/gif/b;->t(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cH:[I

    iget v0, p1, Lcom/db/android/api/gif/d;->width:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/gif/a;->cQ:I

    iget v0, p1, Lcom/db/android/api/gif/d;->height:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/gif/a;->cP:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized a(Lcom/db/android/api/gif/d;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/db/android/api/gif/a;->a(Lcom/db/android/api/gif/d;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private aa()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/db/android/api/gif/a;->Z()V

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cz:[B

    iget v1, p0, Lcom/db/android/api/gif/a;->cB:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/db/android/api/gif/a;->cB:I

    aget-byte v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ab()I
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/db/android/api/gif/a;->aa()I

    move-result v1

    if-lez v1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cx:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Lcom/db/android/api/gif/b;->s(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cx:[B

    :cond_0
    iget v0, p0, Lcom/db/android/api/gif/a;->cA:I

    iget v2, p0, Lcom/db/android/api/gif/a;->cB:I

    sub-int/2addr v0, v2

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cz:[B

    iget v2, p0, Lcom/db/android/api/gif/a;->cB:I

    iget-object v3, p0, Lcom/db/android/api/gif/a;->cx:[B

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/db/android/api/gif/a;->cB:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/gif/a;->cB:I

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v2, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    add-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    iget-object v2, p0, Lcom/db/android/api/gif/a;->cz:[B

    iget v3, p0, Lcom/db/android/api/gif/a;->cB:I

    iget-object v4, p0, Lcom/db/android/api/gif/a;->cx:[B

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lcom/db/android/api/gif/a;->cA:I

    iput v2, p0, Lcom/db/android/api/gif/a;->cB:I

    invoke-direct {p0}, Lcom/db/android/api/gif/a;->Z()V

    sub-int v2, v1, v0

    iget-object v3, p0, Lcom/db/android/api/gif/a;->cz:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/db/android/api/gif/a;->cx:[B

    invoke-static {v3, v4, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/db/android/api/gif/a;->cB:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/db/android/api/gif/a;->cB:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const-string v3, "Error Reading Block"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v6, p0, Lcom/db/android/api/gif/a;->status:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/db/android/api/gif/a;->status:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private ac()Landroid/graphics/Bitmap;
    .locals 4

    iget-boolean v0, p0, Lcom/db/android/api/gif/a;->cR:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    iget-object v1, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    iget v2, p0, Lcom/db/android/api/gif/a;->cQ:I

    iget v3, p0, Lcom/db/android/api/gif/a;->cP:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/db/android/api/gif/b;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xc

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method

.method private clear()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cL:Lcom/db/android/api/gif/b;

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/db/android/api/gif/b;->g(Landroid/graphics/Bitmap;)V

    :cond_0
    iput-object v2, p0, Lcom/db/android/api/gif/a;->cM:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/db/android/api/gif/a;->cR:Z

    return-void
.end method

.method private static f(Landroid/graphics/Bitmap;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    :cond_0
    return-void
.end method

.method private getData()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cw:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    return v0
.end method

.method private getLoopCount()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dk:I

    return v0
.end method

.method private getStatus()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/a;->status:I

    return v0
.end method

.method private q(I)I
    .locals 2

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dd:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/gif/c;

    iget v0, v0, Lcom/db/android/api/gif/c;->delay:I

    :cond_0
    return v0
.end method


# virtual methods
.method final R()I
    .locals 3

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/db/android/api/gif/a;->cI:I

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v1, p0, Lcom/db/android/api/gif/a;->cI:I

    const/4 v0, -0x1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v2, v2, Lcom/db/android/api/gif/d;->dd:I

    if-ge v1, v2, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/gif/c;

    iget v0, v0, Lcom/db/android/api/gif/c;->delay:I

    goto :goto_0
.end method

.method final S()I
    .locals 1

    iget v0, p0, Lcom/db/android/api/gif/a;->cI:I

    return v0
.end method

.method final U()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/db/android/api/gif/a;->cJ:I

    return-void
.end method

.method final declared-synchronized X()Landroid/graphics/Bitmap;
    .locals 8

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/db/android/api/gif/a;->cI:I

    if-gez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "unable to decode frame, frameCount="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v4, v4, Lcom/db/android/api/gif/d;->dd:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " framePointer="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/db/android/api/gif/a;->cI:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    :cond_2
    iget v0, p0, Lcom/db/android/api/gif/a;->status:I

    if-eq v0, v5, :cond_3

    iget v0, p0, Lcom/db/android/api/gif/a;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to decode frame, status="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/db/android/api/gif/a;->status:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    move-object v0, v2

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v0, v0, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    iget v1, p0, Lcom/db/android/api/gif/a;->cI:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/db/android/api/gif/c;

    iget v1, p0, Lcom/db/android/api/gif/a;->cI:I

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_9

    iget-object v4, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v4, v4, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/android/api/gif/c;

    move-object v4, v1

    :goto_1
    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v5, v1, Lcom/db/android/api/gif/d;->bgColor:I

    iget-object v1, v0, Lcom/db/android/api/gif/c;->db:[I

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, v1, Lcom/db/android/api/gif/d;->dc:[I

    iput-object v1, p0, Lcom/db/android/api/gif/a;->cv:[I

    :cond_6
    :goto_2
    iget-boolean v1, v0, Lcom/db/android/api/gif/c;->cX:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cv:[I

    iget v3, v0, Lcom/db/android/api/gif/c;->cZ:I

    aget v1, v1, v3

    iget-object v3, p0, Lcom/db/android/api/gif/a;->cv:[I

    iget v6, v0, Lcom/db/android/api/gif/c;->cZ:I

    const/4 v7, 0x0

    aput v7, v3, v6

    move v3, v1

    :cond_7
    iget-object v1, p0, Lcom/db/android/api/gif/a;->cv:[I

    if-nez v1, :cond_b

    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/db/android/api/gif/a;->TAG:Ljava/lang/String;

    const-string v1, "No Valid Color Table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v0, 0x1

    iput v0, p0, Lcom/db/android/api/gif/a;->status:I

    move-object v0, v2

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget-object v1, v1, Lcom/db/android/api/gif/d;->df:Ljava/util/List;

    iget-object v4, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v4, v4, Lcom/db/android/api/gif/d;->dd:I

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/db/android/api/gif/c;

    move-object v4, v1

    goto :goto_1

    :cond_a
    iget-object v1, v0, Lcom/db/android/api/gif/c;->db:[I

    iput-object v1, p0, Lcom/db/android/api/gif/a;->cv:[I

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->di:I

    iget v6, v0, Lcom/db/android/api/gif/c;->cZ:I

    if-ne v1, v6, :cond_6

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    const/4 v6, 0x0

    iput v6, v1, Lcom/db/android/api/gif/d;->bgColor:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_b
    :try_start_2
    invoke-direct {p0, v0, v4}, Lcom/db/android/api/gif/a;->a(Lcom/db/android/api/gif/c;Lcom/db/android/api/gif/c;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-boolean v2, v0, Lcom/db/android/api/gif/c;->cX:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/db/android/api/gif/a;->cv:[I

    iget v0, v0, Lcom/db/android/api/gif/c;->cZ:I

    aput v3, v2, v0

    :cond_c
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iput v5, v0, Lcom/db/android/api/gif/d;->bgColor:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    goto/16 :goto_0
.end method

.method final advance()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dd:I

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/db/android/api/gif/a;->cI:I

    iget-object v2, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v2, v2, Lcom/db/android/api/gif/d;->dd:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/db/android/api/gif/a;->cJ:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/db/android/api/gif/a;->cJ:I

    :cond_2
    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dk:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/db/android/api/gif/a;->cJ:I

    iget-object v2, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v2, v2, Lcom/db/android/api/gif/d;->dk:I

    if-gt v1, v2, :cond_0

    :cond_3
    iget v0, p0, Lcom/db/android/api/gif/a;->cI:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v1, v1, Lcom/db/android/api/gif/d;->dd:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/gif/a;->cI:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->height:I

    return v0
.end method

.method final getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->width:I

    return v0
.end method

.method final r(I)Z
    .locals 1

    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    iget v0, v0, Lcom/db/android/api/gif/d;->dd:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iput p1, p0, Lcom/db/android/api/gif/a;->cI:I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final declared-synchronized read([B)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/db/android/api/gif/e;

    invoke-direct {v0}, Lcom/db/android/api/gif/e;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/gif/a;->cC:Lcom/db/android/api/gif/e;

    invoke-virtual {v0, p1}, Lcom/db/android/api/gif/e;->b([B)Lcom/db/android/api/gif/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/db/android/api/gif/e;->ag()Lcom/db/android/api/gif/d;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/db/android/api/gif/a;->cK:Lcom/db/android/api/gif/d;

    invoke-direct {p0, v0, p1}, Lcom/db/android/api/gif/a;->a(Lcom/db/android/api/gif/d;[B)V

    :cond_1
    iget v0, p0, Lcom/db/android/api/gif/a;->status:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
