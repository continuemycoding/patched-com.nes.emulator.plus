.class public Lcom/db/android/api/bitmap/core/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final aO:I = -0x4cd8cfd0

.field private static final aP:I = -0x42db7af0

.field private static final aQ:I = 0x0

.field private static final aR:I = 0x4

.field private static final aS:I = 0x8

.field private static final aT:I = 0xc

.field private static final aU:I = 0x10

.field private static final aV:I = 0x14

.field private static final aW:I = 0x18

.field private static final aX:I = 0x1c

.field private static final aY:I = 0x20

.field private static final aZ:I = 0x4

.field private static final ba:I = 0x0

.field private static final bb:I = 0x8

.field private static final bc:I = 0xc

.field private static final bd:I = 0x10

.field private static final be:I = 0x14


# instance fields
.field private bA:I

.field private bf:Ljava/io/RandomAccessFile;

.field private bg:Ljava/io/RandomAccessFile;

.field private bh:Ljava/io/RandomAccessFile;

.field private bi:Ljava/nio/channels/FileChannel;

.field private bj:Ljava/nio/MappedByteBuffer;

.field private bk:I

.field private bl:I

.field private bm:I

.field private bn:I

.field private bo:I

.field private bp:I

.field private bq:Ljava/io/RandomAccessFile;

.field private br:Ljava/io/RandomAccessFile;

.field private bs:I

.field private bt:I

.field private bu:[B

.field private bv:[B

.field private bw:Ljava/util/zip/Adler32;

.field private bx:Ljava/lang/String;

.field private by:Lcom/db/android/api/bitmap/core/q;

.field private bz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/db/android/api/bitmap/core/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/db/android/api/bitmap/core/p;-><init>(Ljava/lang/String;IIZI)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZI)V
    .locals 10

    const/16 v9, 0x1c

    const/16 v8, 0x14

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    new-array v0, v8, [B

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bv:[B

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    new-instance v0, Lcom/db/android/api/bitmap/core/q;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/q;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->by:Lcom/db/android/api/bitmap/core/q;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to make dirs"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/db/android/api/bitmap/core/p;->bx:Ljava/lang/String;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    iput v4, p0, Lcom/db/android/api/bitmap/core/p;->bp:I

    if-nez p4, :cond_2

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->C()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    mul-int/lit8 v1, p2, 0xc

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-static {v0, v5, p2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x8

    invoke-static {v0, v1, p3}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-static {v0, v8, v5}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x18

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bp:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-direct {p0, v0, v4, v9}, Lcom/db/android/api/bitmap/core/p;->a([BII)I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->C()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->B()V

    new-instance v0, Ljava/io/IOException;

    const-string v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private B()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bi:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method private C()Z
    .locals 8

    const/4 v7, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    const v2, -0x4cd8cfd0

    if-eq v1, v2, :cond_1

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_1
    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bp:I

    if-eq v1, v2, :cond_2

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    const/16 v1, 0x1c

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x1c

    invoke-direct {p0, v0, v2, v3}, Lcom/db/android/api/bitmap/core/p;->a([BII)I

    move-result v0

    if-eq v0, v1, :cond_3

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-gtz v0, :cond_4

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    if-gtz v0, :cond_5

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    if-eq v0, v7, :cond_6

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_6
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    if-ltz v0, :cond_7

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-le v0, v1, :cond_8

    :cond_7
    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_8
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    if-lt v0, v4, :cond_9

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    if-le v0, v1, :cond_a

    :cond_9
    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    mul-int/lit8 v2, v2, 0xc

    shl-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_c

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    if-eq v1, v5, :cond_d

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_d
    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    if-eq v1, v4, :cond_e

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_f

    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bi:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bi:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->D()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v7

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "loadIndex failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    goto/16 :goto_0
.end method

.method private D()V
    .locals 5

    const/16 v4, 0x20

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    :goto_0
    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    :goto_1
    iput-object v0, p0, Lcom/db/android/api/bitmap/core/p;->br:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iput v4, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    iput v4, p0, Lcom/db/android/api/bitmap/core/p;->bt:I

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bt:I

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bt:I

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    goto :goto_2
.end method

.method private E()V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    iput v4, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bm:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->F()V

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->D()V

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    new-array v1, v5, [B

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    mul-int/lit8 v0, v0, 0xc

    :goto_0
    if-lez v0, :cond_0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->G()V

    return-void
.end method

.method private F()V
    .locals 4

    const/16 v3, 0x1c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/db/android/api/bitmap/core/p;->a([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private G()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private H()V
    .locals 3

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->G()V

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private a([B)I
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private a([BII)I
    .locals 2

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p3}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private static a([BI)J
    .locals 6

    const/4 v0, 0x7

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x6

    :goto_0
    if-ltz v2, :cond_0

    const/16 v3, 0x8

    shl-long/2addr v0, v3

    add-int/lit8 v3, v2, 0x0

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private a(II)V
    .locals 9

    const/16 v8, 0x1c

    const/4 v5, 0x4

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    mul-int/lit8 v1, p1, 0xc

    shl-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-static {v0, v5, p1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x14

    invoke-static {v0, v1, v5}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v1, 0x18

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bp:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-direct {p0, v0, v4, v8}, Lcom/db/android/api/bitmap/core/p;->a([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v5}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private a(J[BI)V
    .locals 11

    const/4 v3, 0x0

    const/16 v10, 0x8

    iget-object v4, p0, Lcom/db/android/api/bitmap/core/p;->bv:[B

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p3}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bw:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v5, v0

    move-wide v0, p1

    move v2, v3

    :goto_0
    if-ge v2, v10, :cond_0

    add-int/lit8 v6, v2, 0x0

    const-wide/16 v8, 0xff

    and-long/2addr v8, v0

    long-to-int v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    shr-long/2addr v0, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v10, v5}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v0, 0xc

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    invoke-static {v4, v0, v1}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    const/16 v0, 0x10

    invoke-static {v4, v0, p4}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v4}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3, v3, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    add-int/lit8 v1, v1, 0x8

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    invoke-virtual {v0, v1, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    add-int/lit8 v1, p4, 0x14

    add-int/2addr v0, v1

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    return-void
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a([BIJ)V
    .locals 6

    const/16 v4, 0x8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    add-int/lit8 v1, v0, 0x0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-long/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(JI)Z
    .locals 9

    const/4 v2, 0x0

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    int-to-long v0, v0

    rem-long v0, p1, v0

    long-to-int v0, v0

    if-gez v0, :cond_0

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    add-int/2addr v0, v1

    :cond_0
    move v1, v0

    :cond_1
    :goto_0
    mul-int/lit8 v3, v1, 0xc

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v3, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v6

    if-nez v6, :cond_2

    iput v3, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    move v0, v2

    :goto_1
    return v0

    :cond_2
    cmp-long v4, v4, p1

    if-nez v4, :cond_3

    iput v3, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    iput v6, p0, Lcom/db/android/api/bitmap/core/p;->bA:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-lt v1, v3, :cond_4

    move v1, v2

    :cond_4
    if-ne v1, v0, :cond_1

    sget-object v3, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v4, "corrupted index: clear the slot."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v4, v1, 0xc

    add-int/2addr v4, p3

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v3, v4, v2}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method private a(Ljava/io/RandomAccessFile;ILcom/db/android/api/bitmap/core/q;)Z
    .locals 11

    const/16 v10, 0x8

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/db/android/api/bitmap/core/p;->bv:[B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v6

    int-to-long v2, p2

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1, v4}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v1

    const/16 v2, 0x14

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "cannot read blob header"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x7

    :try_start_1
    aget-byte v1, v4, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v2, v1

    const/4 v1, 0x6

    :goto_1
    if-ltz v1, :cond_1

    shl-long/2addr v2, v10

    add-int/lit8 v5, v1, 0x0

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    or-long/2addr v2, v8

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    iget-wide v8, p3, Lcom/db/android/api/bitmap/core/q;->bB:J

    cmp-long v1, v2, v8

    if-eqz v1, :cond_2

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "blob key does not match: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :try_start_2
    invoke-static {v4, v1}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v4, v2}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v2

    if-eq v2, p2, :cond_3

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "blob offset does not match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_3
    const/16 v2, 0x10

    :try_start_3
    invoke-static {v4, v2}, Lcom/db/android/api/bitmap/core/p;->readInt([BI)I

    move-result v2

    if-ltz v2, :cond_4

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    sub-int/2addr v3, p2

    add-int/lit8 v3, v3, -0x14

    if-le v2, v3, :cond_5

    :cond_4
    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "invalid blob length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto :goto_0

    :cond_5
    :try_start_4
    iget-object v3, p3, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    if-eqz v3, :cond_6

    iget-object v3, p3, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    array-length v3, v3

    if-ge v3, v2, :cond_7

    :cond_6
    new-array v3, v2, [B

    iput-object v3, p3, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    :cond_7
    iget-object v3, p3, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    iput v2, p3, Lcom/db/android/api/bitmap/core/q;->length:I

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v4

    if-eq v4, v2, :cond_8

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "cannot read blob data"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_8
    const/4 v4, 0x0

    :try_start_5
    invoke-direct {p0, v3, v4, v2}, Lcom/db/android/api/bitmap/core/p;->a([BII)I

    move-result v2

    if-eq v2, v1, :cond_9

    sget-object v2, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "blob checksum does not match: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_6
    sget-object v2, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v3, "getBlob failed."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v0
.end method

.method private a(J)[B
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->by:Lcom/db/android/api/bitmap/core/q;

    iput-wide p1, v1, Lcom/db/android/api/bitmap/core/q;->bB:J

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->by:Lcom/db/android/api/bitmap/core/q;

    iput-object v0, v1, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->by:Lcom/db/android/api/bitmap/core/q;

    invoke-virtual {p0, v1}, Lcom/db/android/api/bitmap/core/p;->a(Lcom/db/android/api/bitmap/core/q;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->by:Lcom/db/android/api/bitmap/core/q;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    :cond_0
    return-object v0
.end method

.method private static b([BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int v1, p1, v0

    int-to-byte v2, p2

    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getActiveCount()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    mul-int/lit8 v3, v0, 0xc

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {v3, v2}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    if-ne v1, v0, :cond_2

    :goto_1
    return v1

    :cond_2
    sget-object v0, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wrong active count: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    goto :goto_1
.end method

.method private i(I)V
    .locals 6

    const/16 v5, 0x400

    new-array v1, v5, [B

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    mul-int/lit8 v0, v0, 0xc

    :goto_0
    if-lez v0, :cond_0

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/p;->bj:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static q(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static readInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public final a(J[B)V
    .locals 3

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    if-gt v0, v1, :cond_1

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    shl-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->E()V

    :cond_2
    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    invoke-direct {p0, p1, p2, v0}, Lcom/db/android/api/bitmap/core/p;->a(JI)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    invoke-static {v0, v1, v2}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    :cond_3
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/db/android/api/bitmap/core/p;->a(J[BI)V

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->F()V

    return-void
.end method

.method public final a(Lcom/db/android/api/bitmap/core/q;)Z
    .locals 5

    const/4 v0, 0x1

    iget-wide v2, p1, Lcom/db/android/api/bitmap/core/q;->bB:J

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bs:I

    invoke-direct {p0, v2, v3, v1}, Lcom/db/android/api/bitmap/core/p;->a(JI)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bq:Ljava/io/RandomAccessFile;

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bA:I

    invoke-direct {p0, v1, v2, p1}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/RandomAccessFile;ILcom/db/android/api/bitmap/core/q;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    iget-wide v2, p1, Lcom/db/android/api/bitmap/core/q;->bB:J

    iget v4, p0, Lcom/db/android/api/bitmap/core/p;->bt:I

    invoke-direct {p0, v2, v3, v4}, Lcom/db/android/api/bitmap/core/p;->a(JI)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/p;->br:Ljava/io/RandomAccessFile;

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bA:I

    invoke-direct {p0, v2, v3, p1}, Lcom/db/android/api/bitmap/core/p;->a(Ljava/io/RandomAccessFile;ILcom/db/android/api/bitmap/core/q;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bo:I

    add-int/lit8 v2, v2, 0x14

    iget v3, p1, Lcom/db/android/api/bitmap/core/q;->length:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bl:I

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    shl-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bk:I

    if-ge v2, v3, :cond_0

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bz:I

    :try_start_0
    iget-wide v2, p1, Lcom/db/android/api/bitmap/core/q;->bB:J

    iget-object v1, p1, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    iget v4, p1, Lcom/db/android/api/bitmap/core/q;->length:I

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/db/android/api/bitmap/core/p;->a(J[BI)V

    iget v1, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bu:[B

    const/16 v2, 0x10

    iget v3, p0, Lcom/db/android/api/bitmap/core/p;->bn:I

    invoke-static {v1, v2, v3}, Lcom/db/android/api/bitmap/core/p;->b([BII)V

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->F()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "cannot copy over"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 3

    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->G()V

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bg:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/p;->bh:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-direct {p0}, Lcom/db/android/api/bitmap/core/p;->B()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v1, Lcom/db/android/api/bitmap/core/p;->TAG:Ljava/lang/String;

    const-string v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final delete()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->q(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->q(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/p;->bx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/p;->q(Ljava/lang/String;)V

    return-void
.end method
