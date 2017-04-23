.class Lu/aly/bk$a;
.super Lu/aly/do;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/do",
        "<",
        "Lu/aly/bk;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bk$1;)V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Lu/aly/bk$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/16 v4, 0xb

    const/4 v3, 0x1

    .line 402
    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    .line 404
    :goto_0
    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    .line 405
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-nez v1, :cond_0

    .line 446
    invoke-virtual {p1}, Lu/aly/de;->k()V

    .line 450
    invoke-virtual {p2}, Lu/aly/bk;->n()Z

    move-result v0

    if-nez v0, :cond_5

    .line 451
    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 452
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_0
    iget-short v1, v0, Lu/aly/cz;->c:S

    packed-switch v1, :pswitch_data_0

    .line 442
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    .line 444
    :goto_1
    invoke-virtual {p1}, Lu/aly/de;->m()V

    goto :goto_0

    .line 410
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_1

    .line 411
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bk;->a:Ljava/lang/String;

    .line 412
    invoke-virtual {p2, v3}, Lu/aly/bk;->a(Z)V

    goto :goto_1

    .line 414
    :cond_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 418
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_2

    .line 419
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bk;->b:Ljava/lang/String;

    .line 420
    invoke-virtual {p2, v3}, Lu/aly/bk;->b(Z)V

    goto :goto_1

    .line 422
    :cond_2
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 426
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_3

    .line 427
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bk;->c:Ljava/lang/String;

    .line 428
    invoke-virtual {p2, v3}, Lu/aly/bk;->c(Z)V

    goto :goto_1

    .line 430
    :cond_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 434
    :pswitch_3
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_4

    .line 435
    invoke-virtual {p1}, Lu/aly/de;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bk;->d:J

    .line 436
    invoke-virtual {p2, v3}, Lu/aly/bk;->d(Z)V

    goto :goto_1

    .line 438
    :cond_4
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 454
    :cond_5
    invoke-virtual {p2}, Lu/aly/bk;->o()V

    .line 455
    return-void

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 397
    check-cast p2, Lu/aly/bk;

    invoke-virtual {p0, p1, p2}, Lu/aly/bk$a;->b(Lu/aly/de;Lu/aly/bk;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 459
    invoke-virtual {p2}, Lu/aly/bk;->o()V

    .line 461
    invoke-static {}, Lu/aly/bk;->q()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    .line 462
    iget-object v0, p2, Lu/aly/bk;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 463
    invoke-static {}, Lu/aly/bk;->r()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 464
    iget-object v0, p2, Lu/aly/bk;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 467
    :cond_0
    iget-object v0, p2, Lu/aly/bk;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 468
    invoke-virtual {p2}, Lu/aly/bk;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-static {}, Lu/aly/bk;->s()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 470
    iget-object v0, p2, Lu/aly/bk;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 474
    :cond_1
    iget-object v0, p2, Lu/aly/bk;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 475
    invoke-static {}, Lu/aly/bk;->t()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 476
    iget-object v0, p2, Lu/aly/bk;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 477
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 479
    :cond_2
    invoke-static {}, Lu/aly/bk;->u()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 480
    iget-wide v0, p2, Lu/aly/bk;->d:J

    invoke-virtual {p1, v0, v1}, Lu/aly/de;->a(J)V

    .line 481
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 482
    invoke-virtual {p1}, Lu/aly/de;->d()V

    .line 483
    invoke-virtual {p1}, Lu/aly/de;->b()V

    .line 484
    return-void
.end method

.method public synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 397
    check-cast p2, Lu/aly/bk;

    invoke-virtual {p0, p1, p2}, Lu/aly/bk$a;->a(Lu/aly/de;Lu/aly/bk;)V

    return-void
.end method
