.class Lu/aly/bq$c;
.super Lu/aly/dp;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lu/aly/dp",
        "<",
        "Lu/aly/bq;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bq$1;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lu/aly/bq$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    .line 900
    check-cast p1, Lu/aly/dk;

    .line 901
    iget-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 902
    iget-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 903
    iget-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 904
    iget v0, p2, Lu/aly/bq;->d:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    .line 905
    iget v0, p2, Lu/aly/bq;->e:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    .line 906
    iget v0, p2, Lu/aly/bq;->f:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    .line 907
    iget-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/nio/ByteBuffer;)V

    .line 908
    iget-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 909
    iget-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 911
    invoke-virtual {p2}, Lu/aly/bq;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 914
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(Ljava/util/BitSet;I)V

    .line 915
    invoke-virtual {p2}, Lu/aly/bq;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget v0, p2, Lu/aly/bq;->j:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    .line 918
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
    .line 895
    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$c;->a(Lu/aly/de;Lu/aly/bq;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cl;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 923
    check-cast p1, Lu/aly/dk;

    .line 924
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    .line 925
    invoke-virtual {p2, v2}, Lu/aly/bq;->a(Z)V

    .line 926
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    .line 927
    invoke-virtual {p2, v2}, Lu/aly/bq;->b(Z)V

    .line 928
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    .line 929
    invoke-virtual {p2, v2}, Lu/aly/bq;->c(Z)V

    .line 930
    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->d:I

    .line 931
    invoke-virtual {p2, v2}, Lu/aly/bq;->d(Z)V

    .line 932
    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->e:I

    .line 933
    invoke-virtual {p2, v2}, Lu/aly/bq;->e(Z)V

    .line 934
    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->f:I

    .line 935
    invoke-virtual {p2, v2}, Lu/aly/bq;->f(Z)V

    .line 936
    invoke-virtual {p1}, Lu/aly/dk;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    .line 937
    invoke-virtual {p2, v2}, Lu/aly/bq;->g(Z)V

    .line 938
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    .line 939
    invoke-virtual {p2, v2}, Lu/aly/bq;->h(Z)V

    .line 940
    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    .line 941
    invoke-virtual {p2, v2}, Lu/aly/bq;->i(Z)V

    .line 942
    invoke-virtual {p1, v2}, Lu/aly/dk;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->j:I

    .line 945
    invoke-virtual {p2, v2}, Lu/aly/bq;->j(Z)V

    .line 947
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
    .line 895
    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$c;->b(Lu/aly/de;Lu/aly/bq;)V

    return-void
.end method
