.class public Lcom/db/android/api/bitmap/core/f;
.super Ljava/lang/Object;


# static fields
.field private static final ad:I = 0x800000

.field private static final ae:I = 0x3200000

.field private static final af:I = 0x2710

.field private static final ag:Z = true

.field private static final ah:Z = true


# instance fields
.field private ai:Lcom/db/android/api/bitmap/core/p;

.field private aj:Lcom/db/android/api/bitmap/core/y;

.field private ak:Lcom/db/android/api/bitmap/core/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/db/android/api/bitmap/core/g;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-boolean v0, v0, Lcom/db/android/api/bitmap/core/g;->ap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-boolean v0, v0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/db/android/api/bitmap/core/A;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/A;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    :cond_0
    :goto_0
    iget-boolean v0, p1, Lcom/db/android/api/bitmap/core/g;->aq:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/g;->ao:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/db/android/api/bitmap/core/p;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v2, v2, Lcom/db/android/api/bitmap/core/g;->an:I

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v3, v3, Lcom/db/android/api/bitmap/core/g;->am:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/db/android/api/bitmap/core/p;-><init>(Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/db/android/api/bitmap/core/d;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v1, v1, Lcom/db/android/api/bitmap/core/g;->al:I

    invoke-direct {v0, v1}, Lcom/db/android/api/bitmap/core/d;-><init>(I)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Lcom/db/android/api/bitmap/core/g;)V
    .locals 5

    iput-object p1, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-boolean v0, v0, Lcom/db/android/api/bitmap/core/g;->ap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-boolean v0, v0, Lcom/db/android/api/bitmap/core/g;->ar:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/db/android/api/bitmap/core/A;

    invoke-direct {v0}, Lcom/db/android/api/bitmap/core/A;-><init>()V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    :cond_0
    :goto_0
    iget-boolean v0, p1, Lcom/db/android/api/bitmap/core/g;->aq:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget-object v0, v0, Lcom/db/android/api/bitmap/core/g;->ao:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/db/android/api/bitmap/core/p;

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v2, v2, Lcom/db/android/api/bitmap/core/g;->an:I

    iget-object v3, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v3, v3, Lcom/db/android/api/bitmap/core/g;->am:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/db/android/api/bitmap/core/p;-><init>(Ljava/lang/String;IIZ)V

    iput-object v1, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Lcom/db/android/api/bitmap/core/d;

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/f;->ak:Lcom/db/android/api/bitmap/core/g;

    iget v1, v1, Lcom/db/android/api/bitmap/core/g;->al:I

    invoke-direct {v0, v1}, Lcom/db/android/api/bitmap/core/d;-><init>(I)V

    iput-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static b(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/bitmap/core/g;->m(Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :try_start_0
    const-string v1, "key"

    invoke-static {}, Lcom/db/android/api/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/db/android/api/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appkey"

    invoke-static {}, Lcom/db/android/api/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encrypt value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/db/android/api/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/db/android/api/utils/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/bitmap/core/g;->m(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/lang/String;[B)V
    .locals 5

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/db/android/api/utils/k;->x(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/db/android/api/utils/k;->e([B)J

    move-result-wide v2

    array-length v1, v0

    array-length v4, p2

    add-int/2addr v1, v4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/db/android/api/bitmap/core/p;->a(J[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final a(Ljava/lang/String;Lcom/db/android/api/bitmap/core/o;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p1}, Lcom/db/android/api/utils/k;->x(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/db/android/api/utils/k;->e([B)J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/db/android/api/bitmap/core/q;

    invoke-direct {v4}, Lcom/db/android/api/bitmap/core/q;-><init>()V

    iput-wide v2, v4, Lcom/db/android/api/bitmap/core/q;->bB:J

    iget-object v2, p2, Lcom/db/android/api/bitmap/core/o;->data:[B

    iput-object v2, v4, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    iget-object v2, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    invoke-virtual {v3, v4}, Lcom/db/android/api/bitmap/core/p;->a(Lcom/db/android/api/bitmap/core/q;)Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v2, v4, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    invoke-static {v1, v2}, Lcom/db/android/api/utils/k;->a([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v4, Lcom/db/android/api/bitmap/core/q;->buffer:[B

    iput-object v2, p2, Lcom/db/android/api/bitmap/core/o;->data:[B

    array-length v1, v1

    iput v1, p2, Lcom/db/android/api/bitmap/core/o;->offset:I

    iget v1, v4, Lcom/db/android/api/bitmap/core/q;->length:I

    iget v2, p2, Lcom/db/android/api/bitmap/core/o;->offset:I

    sub-int/2addr v1, v2

    iput v1, p2, Lcom/db/android/api/bitmap/core/o;->length:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    invoke-interface {v0, p1, p2}, Lcom/db/android/api/bitmap/core/y;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public final clearCache()V
    .locals 0

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/f;->i()V

    invoke-virtual {p0}, Lcom/db/android/api/bitmap/core/f;->h()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/p;->close()V

    :cond_0
    return-void
.end method

.method public final h()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->ai:Lcom/db/android/api/bitmap/core/p;

    invoke-virtual {v0}, Lcom/db/android/api/bitmap/core/p;->delete()V

    :cond_0
    return-void
.end method

.method public final i(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    invoke-interface {v0, p1}, Lcom/db/android/api/bitmap/core/y;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    invoke-interface {v0}, Lcom/db/android/api/bitmap/core/y;->evictAll()V

    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/db/android/api/bitmap/core/f;->l(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/db/android/api/bitmap/core/f;->k(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, p1, v0}, Lcom/db/android/api/bitmap/core/f;->a(Ljava/lang/String;[B)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/db/android/api/bitmap/core/f;->aj:Lcom/db/android/api/bitmap/core/y;

    invoke-interface {v0, p1}, Lcom/db/android/api/bitmap/core/y;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
