.class Lu/aly/bl$c;
.super Lu/aly/dp;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dp",
        "<",
        "Lu/aly/bl;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lu/aly/bl$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 427
    check-cast p1, Lu/aly/dk;

    .line 428
    iget-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 429
    iget-wide v0, p2, Lu/aly/bl;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(J)V

    .line 430
    iget v0, p2, Lu/aly/bl;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    .line 431
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
    .line 422
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->a(Lu/aly/de;Lu/aly/bl;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 436
    check-cast p1, Lu/aly/dk;

    .line 437
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v2}, Lu/aly/bl;->a(Z)V

    .line 439
    invoke-virtual {p1}, Lu/aly/dk;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bl;->b:J

    .line 440
    invoke-virtual {p2, v2}, Lu/aly/bl;->b(Z)V

    .line 441
    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->c:I

    .line 442
    invoke-virtual {p2, v2}, Lu/aly/bl;->c(Z)V

    .line 443
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
    .line 422
    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->b(Lu/aly/de;Lu/aly/bl;)V

    return-void
.end method
