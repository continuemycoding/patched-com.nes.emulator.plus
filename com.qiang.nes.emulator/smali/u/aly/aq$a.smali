.class public Lu/aly/aq$a;
.super Ljava/lang/Object;
.source "CacheImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lu/aly/aq;

.field private b:Lu/aly/bz$h;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/aq;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 696
    iput-object p1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    iput v1, p0, Lu/aly/aq$a;->c:I

    .line 691
    iput v1, p0, Lu/aly/aq$a;->d:I

    .line 693
    iput v1, p0, Lu/aly/aq$a;->e:I

    .line 694
    iput v1, p0, Lu/aly/aq$a;->f:I

    .line 697
    invoke-static {p1}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/af$a;->a(II)[I

    move-result-object v0

    .line 698
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/aq$a;->c:I

    .line 699
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/aq$a;->d:I

    .line 700
    return-void
.end method

.method private b(II)Lu/aly/bz$h;
    .locals 4

    .prologue
    .line 769
    .line 771
    packed-switch p1, :pswitch_data_0

    .line 799
    :pswitch_0
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    .line 803
    :goto_0
    return-object v0

    .line 773
    :pswitch_1
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_0
    new-instance v0, Lu/aly/bz$d;

    invoke-direct {v0}, Lu/aly/bz$d;-><init>()V

    goto :goto_0

    .line 776
    :pswitch_2
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$e;

    if-eqz v0, :cond_1

    .line 777
    iget-object v1, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    move-object v0, v1

    .line 778
    check-cast v0, Lu/aly/bz$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lu/aly/bz$e;->a(J)V

    move-object v0, v1

    goto :goto_0

    .line 780
    :cond_1
    new-instance v0, Lu/aly/bz$e;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/bz$e;-><init>(Lu/aly/be;J)V

    goto :goto_0

    .line 784
    :pswitch_3
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_2
    new-instance v0, Lu/aly/bz$f;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    .line 785
    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$f;-><init>(Lu/aly/be;)V

    goto :goto_0

    .line 788
    :pswitch_4
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_3
    new-instance v0, Lu/aly/bz$g;

    invoke-direct {v0}, Lu/aly/bz$g;-><init>()V

    goto :goto_0

    .line 791
    :pswitch_5
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_4
    new-instance v0, Lu/aly/bz$i;

    .line 792
    invoke-static {}, Lu/aly/aq;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 795
    :pswitch_6
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_5
    new-instance v0, Lu/aly/bz$j;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    .line 796
    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$j;-><init>(Lu/aly/be;)V

    goto :goto_0

    .line 799
    :cond_6
    new-instance v0, Lu/aly/bz$d;

    invoke-direct {v0}, Lu/aly/bz$d;-><init>()V

    goto :goto_0

    .line 771
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .prologue
    .line 807
    iput p1, p0, Lu/aly/aq$a;->e:I

    .line 808
    iput p2, p0, Lu/aly/aq$a;->f:I

    .line 809
    return-void
.end method

.method public a(Lu/aly/af$a;)V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 812
    invoke-virtual {p1, v0, v0}, Lu/aly/af$a;->a(II)[I

    move-result-object v0

    .line 813
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/aq$a;->c:I

    .line 814
    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/aq$a;->d:I

    .line 815
    return-void
.end method

.method protected a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 706
    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/bh;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bh;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 708
    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v2, v2, Lu/aly/bz$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    invoke-virtual {v2}, Lu/aly/bz$h;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 709
    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    :goto_1
    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    .line 754
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v0

    .line 708
    goto :goto_0

    .line 709
    :cond_2
    new-instance v0, Lu/aly/bz$b;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/bh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/aly/bz$b;-><init>(Lu/aly/be;Lu/aly/bh;)V

    goto :goto_1

    .line 711
    :cond_3
    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v2, v2, Lu/aly/bz$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    invoke-virtual {v2}, Lu/aly/bz$h;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 712
    :goto_3
    if-nez v1, :cond_0

    .line 713
    if-eqz p1, :cond_5

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 714
    new-instance v0, Lu/aly/bz$c;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lu/aly/bz$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    .line 715
    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lu/aly/aq;->a(Lu/aly/aq;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    .line 711
    goto :goto_3

    .line 718
    :cond_5
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/af$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 722
    new-instance v0, Lu/aly/bz$a;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$a;-><init>(Lu/aly/be;)V

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_2

    .line 723
    :cond_6
    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "RPT"

    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 728
    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 729
    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v0}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 730
    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v0}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/af$a;->d(I)I

    move-result v0

    .line 737
    :cond_7
    :goto_4
    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lu/aly/aq$a;->b(II)Lu/aly/bz$h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto/16 :goto_2

    .line 731
    :cond_8
    iget v0, p0, Lu/aly/aq$a;->d:I

    if-lez v0, :cond_9

    .line 732
    iget v0, p0, Lu/aly/aq$a;->d:I

    goto :goto_4

    .line 734
    :cond_9
    iget v0, p0, Lu/aly/aq$a;->f:I

    goto :goto_4

    .line 739
    :cond_a
    iget v1, p0, Lu/aly/aq$a;->e:I

    .line 740
    iget v0, p0, Lu/aly/aq$a;->f:I

    .line 741
    iget v2, p0, Lu/aly/aq$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 742
    iget v1, p0, Lu/aly/aq$a;->c:I

    .line 743
    iget v0, p0, Lu/aly/aq$a;->d:I

    .line 745
    :cond_b
    invoke-direct {p0, v1, v0}, Lu/aly/aq$a;->b(II)Lu/aly/bz$h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto/16 :goto_2
.end method

.method public b(Z)Lu/aly/bz$h;
    .locals 1

    .prologue
    .line 757
    invoke-virtual {p0, p1}, Lu/aly/aq$a;->a(Z)V

    .line 758
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    return-object v0
.end method
