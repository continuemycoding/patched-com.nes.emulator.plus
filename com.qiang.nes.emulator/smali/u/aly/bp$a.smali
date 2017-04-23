.class Lu/aly/bp$a;
.super Lu/aly/do;
.source "Response.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/do",
        "<",
        "Lu/aly/bp;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lu/aly/bp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 348
    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    .line 350
    :goto_0
    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    .line 351
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-nez v1, :cond_0

    .line 385
    invoke-virtual {p1}, Lu/aly/de;->k()V

    .line 389
    invoke-virtual {p2}, Lu/aly/bp;->e()Z

    move-result v0

    if-nez v0, :cond_4

    .line 390
    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'resp_code\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 391
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :cond_0
    iget-short v1, v0, Lu/aly/cz;->c:S

    packed-switch v1, :pswitch_data_0

    .line 381
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    .line 383
    :goto_1
    invoke-virtual {p1}, Lu/aly/de;->m()V

    goto :goto_0

    .line 356
    :pswitch_0
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    .line 357
    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->a:I

    .line 358
    invoke-virtual {p2, v3}, Lu/aly/bp;->a(Z)V

    goto :goto_1

    .line 360
    :cond_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 364
    :pswitch_1
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 365
    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    .line 366
    invoke-virtual {p2, v3}, Lu/aly/bp;->b(Z)V

    goto :goto_1

    .line 368
    :cond_2
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 372
    :pswitch_2
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_3

    .line 373
    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    .line 374
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->a(Lu/aly/de;)V

    .line 375
    invoke-virtual {p2, v3}, Lu/aly/bp;->c(Z)V

    goto :goto_1

    .line 377
    :cond_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    .line 393
    :cond_4
    invoke-virtual {p2}, Lu/aly/bp;->l()V

    .line 394
    return-void

    .line 354
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
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
    .line 343
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->b(Lu/aly/de;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p2}, Lu/aly/bp;->l()V

    .line 400
    invoke-static {}, Lu/aly/bp;->m()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    .line 401
    invoke-static {}, Lu/aly/bp;->n()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 402
    iget v0, p2, Lu/aly/bp;->a:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    .line 403
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 404
    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    invoke-virtual {p2}, Lu/aly/bp;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lu/aly/bp;->o()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 407
    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 411
    :cond_0
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p2}, Lu/aly/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    invoke-static {}, Lu/aly/bp;->q()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    .line 414
    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/de;)V

    .line 415
    invoke-virtual {p1}, Lu/aly/de;->c()V

    .line 418
    :cond_1
    invoke-virtual {p1}, Lu/aly/de;->d()V

    .line 419
    invoke-virtual {p1}, Lu/aly/de;->b()V

    .line 420
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
    .line 343
    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$a;->a(Lu/aly/de;Lu/aly/bp;)V

    return-void
.end method
