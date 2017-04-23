.class Lu/aly/bo$c;
.super Lu/aly/dp;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dp",
        "<",
        "Lu/aly/bo;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bo$1;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lu/aly/bo$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 431
    check-cast p1, Lu/aly/dk;

    .line 432
    iget-wide v0, p2, Lu/aly/bo;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(J)V

    .line 433
    iget-object v0, p2, Lu/aly/bo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 435
    invoke-virtual {p2}, Lu/aly/bo;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 438
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(Ljava/util/BitSet;I)V

    .line 439
    invoke-virtual {p2}, Lu/aly/bo;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p2, Lu/aly/bo;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 442
    :cond_1
    return-void
.end method

.method public bridge synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 426
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$c;->a(Lu/aly/de;Lu/aly/bo;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 447
    check-cast p1, Lu/aly/dk;

    .line 448
    invoke-virtual {p1}, Lu/aly/dk;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bo;->b:J

    .line 449
    invoke-virtual {p2, v2}, Lu/aly/bo;->b(Z)V

    .line 450
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bo;->c:Ljava/lang/String;

    .line 451
    invoke-virtual {p2, v2}, Lu/aly/bo;->c(Z)V

    .line 452
    invoke-virtual {p1, v2}, Lu/aly/dk;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bo;->a:Ljava/lang/String;

    .line 455
    invoke-virtual {p2, v2}, Lu/aly/bo;->a(Z)V

    .line 457
    :cond_0
    return-void
.end method

.method public bridge synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 426
    check-cast p2, Lu/aly/bo;

    invoke-virtual {p0, p1, p2}, Lu/aly/bo$c;->b(Lu/aly/de;Lu/aly/bo;)V

    return-void
.end method
