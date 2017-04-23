.class public Lu/aly/ci;
.super Ljava/lang/Object;
.source "TDeserializer.java"


# instance fields
.field private final a:Lu/aly/de;

.field private final b:Lu/aly/dr;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lu/aly/cy$a;

    invoke-direct {v0}, Lu/aly/cy$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/ci;-><init>(Lu/aly/dg;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lu/aly/dg;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lu/aly/dr;

    invoke-direct {v0}, Lu/aly/dr;-><init>()V

    iput-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    .line 59
    iget-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-interface {p1, v0}, Lu/aly/dg;->a(Lu/aly/ds;)Lu/aly/de;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    .line 60
    return-void
.end method

.method private varargs a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/16 v1, 0xb

    .line 242
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lu/aly/ci;->j([BLu/aly/cm;[Lu/aly/cm;)Lu/aly/cz;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 245
    sparse-switch p1, :sswitch_data_0

    .line 288
    :cond_0
    const/4 v0, 0x0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    :goto_0
    return-object v0

    .line 247
    :sswitch_0
    :try_start_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 248
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->t()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto :goto_0

    .line 252
    :sswitch_1
    :try_start_2
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->u()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto :goto_0

    .line 257
    :sswitch_2
    :try_start_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->y()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto :goto_0

    .line 262
    :sswitch_3
    :try_start_4
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 263
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->v()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto :goto_0

    .line 267
    :sswitch_4
    :try_start_5
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->w()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto/16 :goto_0

    .line 272
    :sswitch_5
    :try_start_6
    iget-byte v0, v0, Lu/aly/cz;->b:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto/16 :goto_0

    .line 277
    :sswitch_6
    :try_start_7
    iget-byte v0, v0, Lu/aly/cz;->b:B

    if-ne v0, v1, :cond_0

    .line 278
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->z()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto/16 :goto_0

    .line 282
    :sswitch_7
    :try_start_8
    iget-byte v0, v0, Lu/aly/cz;->b:B

    if-ne v0, v1, :cond_0

    .line 283
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->A()Ljava/nio/ByteBuffer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .line 292
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto/16 :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 290
    :try_start_9
    new-instance v1, Lu/aly/cl;

    invoke-direct {v1, v0}, Lu/aly/cl;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 292
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 293
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    throw v0

    .line 245
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x6 -> :sswitch_3
        0x8 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x64 -> :sswitch_7
    .end sparse-switch
.end method

.method private varargs j([BLu/aly/cm;[Lu/aly/cm;)Lu/aly/cz;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 298
    iget-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v0, p1}, Lu/aly/dr;->a([B)V

    .line 300
    array-length v0, p3

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Lu/aly/cm;

    .line 301
    aput-object p2, v3, v1

    move v0, v1

    .line 302
    :goto_0
    array-length v4, p3

    if-ge v0, v4, :cond_0

    .line 303
    add-int/lit8 v4, v0, 0x1

    aget-object v5, p3, v0

    aput-object v5, v3, v4

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->j()Lu/aly/dj;

    move-object v0, v2

    .line 314
    :cond_1
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_5

    .line 315
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    .line 319
    iget-byte v4, v0, Lu/aly/cz;->b:B

    if-eqz v4, :cond_2

    iget-short v4, v0, Lu/aly/cz;->c:S

    aget-object v5, v3, v1

    invoke-interface {v5}, Lu/aly/cm;->a()S

    move-result v5

    if-le v4, v5, :cond_3

    .line 335
    :cond_2
    :goto_2
    return-object v2

    .line 323
    :cond_3
    iget-short v4, v0, Lu/aly/cz;->c:S

    aget-object v5, v3, v1

    invoke-interface {v5}, Lu/aly/cm;->a()S

    move-result v5

    if-eq v4, v5, :cond_4

    .line 325
    iget-object v4, p0, Lu/aly/ci;->a:Lu/aly/de;

    iget-byte v5, v0, Lu/aly/cz;->b:B

    invoke-static {v4, v5}, Lu/aly/dh;->a(Lu/aly/de;B)V

    .line 326
    iget-object v4, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v4}, Lu/aly/de;->m()V

    goto :goto_1

    .line 329
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 330
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 331
    iget-object v4, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v4}, Lu/aly/de;->j()Lu/aly/dj;

    goto :goto_1

    :cond_5
    move-object v2, v0

    .line 335
    goto :goto_2
.end method


# virtual methods
.method public varargs a([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public a(Lu/aly/cf;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lu/aly/ci;->a(Lu/aly/cf;[B)V

    .line 347
    return-void
.end method

.method public a(Lu/aly/cf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 88
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lu/aly/ci;->a(Lu/aly/cf;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->B()V

    .line 94
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_1
    new-instance v0, Lu/aly/cl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cl;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    throw v0
.end method

.method public a(Lu/aly/cf;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v0, p2}, Lu/aly/dr;->a([B)V

    .line 71
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-interface {p1, v0}, Lu/aly/cf;->a(Lu/aly/de;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v0}, Lu/aly/dr;->e()V

    .line 74
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->B()V

    .line 76
    return-void

    .line 73
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 74
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    throw v0
.end method

.method public varargs a(Lu/aly/cf;[BLu/aly/cm;[Lu/aly/cm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 107
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lu/aly/ci;->j([BLu/aly/cm;[Lu/aly/cm;)Lu/aly/cz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-interface {p1, v0}, Lu/aly/cf;->a(Lu/aly/de;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    iget-object v0, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v0}, Lu/aly/dr;->e()V

    .line 115
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->B()V

    .line 117
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    new-instance v1, Lu/aly/cl;

    invoke-direct {v1, v0}, Lu/aly/cl;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 115
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    throw v0
.end method

.method public varargs b([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Byte;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    return-object v0
.end method

.method public varargs c([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Double;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    return-object v0
.end method

.method public varargs d([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Short;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    return-object v0
.end method

.method public varargs e([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 176
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public varargs f([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Long;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0xa

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public varargs g([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 200
    const/16 v0, 0xb

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public varargs h([BLu/aly/cm;[Lu/aly/cm;)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1, p2, p3}, Lu/aly/ci;->a(B[BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public varargs i([BLu/aly/cm;[Lu/aly/cm;)Ljava/lang/Short;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 226
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lu/aly/ci;->j([BLu/aly/cm;[Lu/aly/cm;)Lu/aly/cz;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->j()Lu/aly/dj;

    .line 229
    iget-object v0, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v0}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    iget-short v0, v0, Lu/aly/cz;->c:S

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 235
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 236
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    :goto_0
    return-object v0

    .line 231
    :cond_0
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 236
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    :try_start_1
    new-instance v1, Lu/aly/cl;

    invoke-direct {v1, v0}, Lu/aly/cl;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lu/aly/ci;->b:Lu/aly/dr;

    invoke-virtual {v1}, Lu/aly/dr;->e()V

    .line 236
    iget-object v1, p0, Lu/aly/ci;->a:Lu/aly/de;

    invoke-virtual {v1}, Lu/aly/de;->B()V

    throw v0
.end method
