.class Lu/aly/bq$d;
.super Ljava/lang/Object;
.source "UMEnvelope.java"

# interfaces
.implements Lu/aly/dn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/aly/bq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bq$1;)V
    .locals 0

    .prologue
    .line 888
    invoke-direct {p0}, Lu/aly/bq$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bq$c;
    .locals 2

    .prologue
    .line 891
    new-instance v0, Lu/aly/bq$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bq$c;-><init>(Lu/aly/bq$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dm;
    .locals 1

    .prologue
    .line 888
    invoke-virtual {p0}, Lu/aly/bq$d;->a()Lu/aly/bq$c;

    move-result-object v0

    return-object v0
.end method
